#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────
# Cloud Run 서버 배포
# 빌드 → Artifact Registry 푸시 → Cloud Run 배포
# ──────────────────────────────────────────────────────────────────────────
set -euo pipefail

PROJECT_ID="${PROJECT_ID:-findit-494900}"
REGION="${REGION:-us-central1}"
ARTIFACT_REPO="${ARTIFACT_REPO:-findit}"
SERVICE="${SERVICE:-findit-api}"
SQL_INSTANCE="${SQL_INSTANCE:-findit-db}"
TAG="${TAG:-$(date +%Y%m%d-%H%M%S)}"

IMAGE="$REGION-docker.pkg.dev/$PROJECT_ID/$ARTIFACT_REPO/server:$TAG"

cd "$(dirname "$0")/.."
gcloud config set project "$PROJECT_ID"

echo "▶ Cloud Build — $IMAGE"
gcloud builds submit server/ --tag "$IMAGE" --timeout=10m

echo "▶ Cloud Run deploy — $SERVICE"
gcloud run deploy "$SERVICE" \
  --image="$IMAGE" \
  --region="$REGION" \
  --platform=managed \
  --allow-unauthenticated \
  --cpu=1 --memory=512Mi \
  --min-instances=0 --max-instances=10 \
  --timeout=60 \
  --add-cloudsql-instances="$PROJECT_ID:$REGION:$SQL_INSTANCE" \
  --set-env-vars="DB_USER=findit,DB_NAME=findit_game,DB_SOCKET=/cloudsql/$PROJECT_ID:$REGION:$SQL_INSTANCE,NODE_ENV=production" \
  --set-secrets="DB_PASSWORD=db-password:latest,RECAPTCHA_SECRET=recaptcha-secret:latest,APPLE_SHARED_SECRET=apple-shared-secret:latest"

URL="$(gcloud run services describe "$SERVICE" --region="$REGION" --format='value(status.url)')"
cat <<EOF

✅ 배포 완료.
   서비스: $SERVICE
   URL:    $URL
   헬스체크: $URL/healthz
   어드민:  $URL/admin/ui  (X-Admin-Token 필요)

다음 단계:
   1) 클라이언트 Property.SERVER_DOMAIN 을 $URL 로 갱신
   2) 사이트 index.html 의 fetch URL 도 동일하게 갱신
   3) APK 재빌드 후 site/findit-test.apk 로 복사, 사이트 배포
EOF
