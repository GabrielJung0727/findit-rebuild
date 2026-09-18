#!/usr/bin/env bash
# =====================================================
# FindIt Rebuild — GCP 배포 + APK 빌드 자동화 스크립트
# 사용법: ./deploy.sh
# =====================================================
set -euo pipefail

# ── 색상 출력 ──────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; CYAN='\033[0;36m'; NC='\033[0m'
info()  { echo -e "${CYAN}[INFO]${NC}  $*"; }
ok()    { echo -e "${GREEN}[OK]${NC}    $*"; }
warn()  { echo -e "${YELLOW}[WARN]${NC}  $*"; }
die()   { echo -e "${RED}[ERR]${NC}   $*" >&2; exit 1; }

# ── 설정 (여기만 수정) ─────────────────────────────
PROJECT_ID="${PROJECT_ID:-}"
BILLING_ACCOUNT="${BILLING_ACCOUNT:-}"   # XXXXXX-XXXXXX-XXXXXX
REGION="us-central1"
SERVICE_NAME="findit-api"
DB_INSTANCE="findit-db"
DB_NAME="findit_game"
DB_USER="findit"
DB_PASSWORD="${DB_PASSWORD:-}"           # 환경변수 or 입력받음
KEYSTORE_PATH="./android_project/findit-release.keystore"
APK_OUT="./findit-test.apk"

# ── 값 검증 / 입력 ────────────────────────────────
[[ -z "$PROJECT_ID" ]]      && read -rp "GCP 프로젝트 ID: " PROJECT_ID
[[ -z "$BILLING_ACCOUNT" ]] && read -rp "결제 계정 ID (XXXXXX-XXXXXX-XXXXXX): " BILLING_ACCOUNT
[[ -z "$DB_PASSWORD" ]]     && { read -rsp "DB 패스워드 설정: " DB_PASSWORD; echo; }

export PROJECT_ID BILLING_ACCOUNT DB_PASSWORD

echo ""
info "=== Step 1. gcloud 프로젝트 설정 ==="
gcloud config set project "$PROJECT_ID"
ok "프로젝트: $PROJECT_ID"

info "=== Step 2. 결제 계정 연결 ==="
gcloud billing projects link "$PROJECT_ID" \
  --billing-account="$BILLING_ACCOUNT" && ok "결제 계정 연결 완료"

info "=== Step 3. API 활성화 ==="
gcloud services enable \
  run.googleapis.com \
  sqladmin.googleapis.com \
  secretmanager.googleapis.com \
  cloudbuild.googleapis.com \
  artifactregistry.googleapis.com \
  storage.googleapis.com \
  logging.googleapis.com \
  monitoring.googleapis.com
ok "API 활성화 완료"

info "=== Step 4. Artifact Registry 생성 ==="
gcloud artifacts repositories create findit \
  --repository-format=docker \
  --location="$REGION" \
  --quiet 2>/dev/null || warn "이미 존재 — 건너뜀"

info "=== Step 5. Cloud SQL 생성 (db-f1-micro, us-central1) ==="
if ! gcloud sql instances describe "$DB_INSTANCE" --quiet &>/dev/null; then
  gcloud sql instances create "$DB_INSTANCE" \
    --database-version=MYSQL_8_0 \
    --tier=db-f1-micro \
    --region="$REGION" \
    --storage-size=10GB \
    --storage-type=SSD \
    --backup-start-time=03:00 \
    --quiet
  gcloud sql users create "$DB_USER" --instance="$DB_INSTANCE" --password="$DB_PASSWORD"
  gcloud sql databases create "$DB_NAME" --instance="$DB_INSTANCE"
  ok "Cloud SQL 생성 완료"
else
  warn "Cloud SQL 인스턴스 이미 존재 — 건너뜀"
fi

info "=== Step 6. Secret Manager 저장 ==="
echo -n "$DB_PASSWORD" | gcloud secrets create db-password --data-file=- --quiet 2>/dev/null \
  || echo -n "$DB_PASSWORD" | gcloud secrets versions add db-password --data-file=- --quiet
ok "DB 패스워드 시크릿 저장"

info "=== Step 7. 서버 이미지 빌드 & 푸시 ==="
IMAGE="$REGION-docker.pkg.dev/$PROJECT_ID/findit/$SERVICE_NAME:$(date +%Y%m%d-%H%M%S)"
(cd server && gcloud builds submit --tag "$IMAGE" --quiet)
ok "이미지 빌드 완료: $IMAGE"

info "=== Step 8. Cloud Run 배포 ==="
gcloud run deploy "$SERVICE_NAME" \
  --image="$IMAGE" \
  --region="$REGION" \
  --platform=managed \
  --allow-unauthenticated \
  --cpu=1 --memory=512Mi \
  --min-instances=0 --max-instances=10 \
  --add-cloudsql-instances="$PROJECT_ID:$REGION:$DB_INSTANCE" \
  --set-env-vars="DB_HOST=/cloudsql/$PROJECT_ID:$REGION:$DB_INSTANCE,DB_USER=$DB_USER,DB_NAME=$DB_NAME,NODE_ENV=production" \
  --set-secrets="DB_PASSWORD=db-password:latest" \
  --quiet

CLOUD_RUN_URL=$(gcloud run services describe "$SERVICE_NAME" \
  --region="$REGION" --format="value(status.url)")
ok "Cloud Run 배포 완료: $CLOUD_RUN_URL"

info "=== Step 9. healthz 확인 ==="
sleep 5
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$CLOUD_RUN_URL/healthz")
if [[ "$HTTP_STATUS" == "200" ]]; then
  ok "서버 응답 정상 (200)"
else
  warn "healthz 응답: $HTTP_STATUS — DB 연결 확인 필요"
fi

info "=== Step 10. Cloud Storage 에셋 버킷 생성 ==="
BUCKET="gs://findit-assets-$PROJECT_ID"
gsutil mb -l "$REGION" "$BUCKET" 2>/dev/null || warn "버킷 이미 존재"
gsutil iam ch allUsers:objectViewer "$BUCKET"
ok "에셋 버킷: $BUCKET"

info "=== Step 11. APK 서명 키스토어 생성 ==="
if [[ ! -f "$KEYSTORE_PATH" ]]; then
  keytool -genkeypair \
    -v \
    -keystore "$KEYSTORE_PATH" \
    -alias findit-key \
    -keyalg RSA -keysize 2048 \
    -validity 10000 \
    -storepass findit2026 \
    -keypass  findit2026 \
    -dname "CN=FindIt, OU=Dev, O=FindIt, L=Seoul, S=Seoul, C=KR"
  ok "키스토어 생성: $KEYSTORE_PATH"
else
  warn "키스토어 이미 존재 — 재사용"
fi

info "=== Step 12. Release APK 빌드 ==="
SERVER_URL_SLASH="${CLOUD_RUN_URL}/"
(cd android_project && \
  chmod +x gradlew && \
  ./gradlew assembleRelease \
    -PSERVER_URL="$SERVER_URL_SLASH" \
    -Pandroid.injected.signing.store.file="$(pwd)/findit-release.keystore" \
    -Pandroid.injected.signing.store.password=findit2026 \
    -Pandroid.injected.signing.key.alias=findit-key \
    -Pandroid.injected.signing.key.password=findit2026 \
    --quiet)

cp android_project/app/build/outputs/apk/release/app-release.apk "$APK_OUT"
ok "APK 빌드 완료: $APK_OUT"

# ── 최종 요약 ─────────────────────────────────────
echo ""
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}  배포 완료 요약${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "  🌐 서버 URL : ${CYAN}$CLOUD_RUN_URL${NC}"
echo -e "  📦 APK      : ${CYAN}$(pwd)/$APK_OUT${NC}"
echo -e "  💾 DB       : ${CYAN}$PROJECT_ID:$REGION:$DB_INSTANCE${NC}"
echo -e "  🪣 에셋     : ${CYAN}$BUCKET${NC}"
echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
echo "  📤 APK 공유 방법 (하나 선택):"
echo "     1) Google Drive 업로드 후 링크 공유"
echo "     2) Firebase App Distribution:"
echo "        firebase appdistribution:distribute $APK_OUT \\"
echo "          --app YOUR_FIREBASE_APP_ID \\"
echo "          --groups \"testers\""
echo ""
