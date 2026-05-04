#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────
# GCP 프로젝트 1회 초기 설정 — Findit
#
# 프로젝트:  findit-494900
# 번호:      434469624646
# 리전:      us-central1 (Always Free)
#
# 실행 전제: gcloud CLI 설치 + 로그인 (`gcloud auth login`)
#           결제 계정 활성화 (Free Trial 또는 자체 결제)
# ──────────────────────────────────────────────────────────────────────────
set -euo pipefail

PROJECT_ID="${PROJECT_ID:-findit-494900}"
REGION="${REGION:-us-central1}"
ARTIFACT_REPO="${ARTIFACT_REPO:-findit}"
SITE_BUCKET="${SITE_BUCKET:-findit-public}"
ASSETS_BUCKET="${ASSETS_BUCKET:-findit-assets}"

echo "▶ Project: $PROJECT_ID  /  Region: $REGION"

# 1) 프로젝트 활성화
gcloud config set project "$PROJECT_ID"
gcloud config set run/region "$REGION"
gcloud config set artifacts/location "$REGION"

# 2) 필요한 API 활성화 (1회)
echo "▶ Enabling APIs..."
gcloud services enable \
  run.googleapis.com \
  sqladmin.googleapis.com \
  secretmanager.googleapis.com \
  cloudbuild.googleapis.com \
  artifactregistry.googleapis.com \
  storage.googleapis.com \
  compute.googleapis.com \
  logging.googleapis.com \
  monitoring.googleapis.com

# 3) Artifact Registry 생성 (Docker 이미지 저장소)
echo "▶ Creating Artifact Registry..."
gcloud artifacts repositories create "$ARTIFACT_REPO" \
  --repository-format=docker \
  --location="$REGION" \
  --description="FindIt server containers" \
  || echo "  (already exists)"

# 4) Cloud Storage — 정적 사이트용 버킷
echo "▶ Creating site bucket: gs://$SITE_BUCKET"
gcloud storage buckets create "gs://$SITE_BUCKET" \
  --location="US" \
  --uniform-bucket-level-access \
  || echo "  (already exists)"

# 공개 읽기 권한
gcloud storage buckets add-iam-policy-binding "gs://$SITE_BUCKET" \
  --member=allUsers \
  --role=roles/storage.objectViewer

# 정적 웹사이트 설정
gcloud storage buckets update "gs://$SITE_BUCKET" \
  --web-main-page-suffix=index.html \
  --web-error-page=404.html

# 5) Cloud Storage — 게임 에셋용 버킷 (이미지/사운드)
echo "▶ Creating assets bucket: gs://$ASSETS_BUCKET"
gcloud storage buckets create "gs://$ASSETS_BUCKET" \
  --location="US" \
  --uniform-bucket-level-access \
  || echo "  (already exists)"

gcloud storage buckets add-iam-policy-binding "gs://$ASSETS_BUCKET" \
  --member=allUsers \
  --role=roles/storage.objectViewer

# 6) Secret Manager — 비밀값 저장 (수동 입력 권장)
echo "▶ Secret Manager — create secrets if missing"
for SECRET in db-password admin-token recaptcha-secret apple-shared-secret; do
  if ! gcloud secrets describe "$SECRET" >/dev/null 2>&1; then
    echo "  → create $SECRET (값은 별도 명령으로 추가)"
    echo -n "(빈 값 — 나중에 versions add 로 채울 것)" \
      | gcloud secrets create "$SECRET" --data-file=-
  else
    echo "  (exists) $SECRET"
  fi
done

# 7) 예산 알림 — 콘솔에서 수동 설정 필요 (CLI 미지원 옵션 많음)
cat <<EOF

✅ 초기 설정 완료.

⚠️ 다음 작업은 콘솔에서 수동으로:
   • 결제 → 예산 및 알림 → 월 예산 \$1 + 50/90/100% 메일 알림
   • Secret Manager → 각 secret 에 실제 값 추가:
       gcloud secrets versions add db-password         --data-file=- <<< "<password>"
       gcloud secrets versions add admin-token         --data-file=- <<< "<random 32-byte>"
       gcloud secrets versions add recaptcha-secret    --data-file=- <<< "<recaptcha key>"
       gcloud secrets versions add apple-shared-secret --data-file=- <<< "<apple secret>"

다음 단계:
   • 서버 배포:  scripts/deploy-server.sh
   • 사이트 배포: scripts/deploy-site.sh
   • DB 생성:    scripts/create-db.sh
EOF
