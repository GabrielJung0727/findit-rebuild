#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────
# 정적 사이트 + APK 를 Cloud Storage 에 배포
# ──────────────────────────────────────────────────────────────────────────
set -euo pipefail

PROJECT_ID="${PROJECT_ID:-findit-494900}"
SITE_BUCKET="${SITE_BUCKET:-findit-public}"
APK_PATH="${APK_PATH:-android_project/app/build/outputs/apk/debug/app-debug.apk}"
APK_TARGET_NAME="${APK_TARGET_NAME:-findit-test.apk}"

cd "$(dirname "$0")/.."
gcloud config set project "$PROJECT_ID"

# 1) HTML / CSS — site/ 디렉터리 통째로 업로드
echo "▶ Uploading site/ → gs://$SITE_BUCKET/"
gcloud storage cp -r "site/*" "gs://$SITE_BUCKET/" \
  --cache-control="public, max-age=300"   # 5분 캐시 (자주 갱신)

# index.html / 404.html 은 캐시 짧게 (배포 후 즉시 반영 위해)
gcloud storage objects update "gs://$SITE_BUCKET/index.html" \
  --cache-control="public, max-age=60, must-revalidate" \
  --content-type="text/html; charset=utf-8"
gcloud storage objects update "gs://$SITE_BUCKET/404.html" \
  --cache-control="public, max-age=60" \
  --content-type="text/html; charset=utf-8"

# 2) APK 업로드 (있으면)
if [ -f "$APK_PATH" ]; then
  echo "▶ Uploading APK: $APK_PATH → gs://$SITE_BUCKET/$APK_TARGET_NAME"
  gcloud storage cp "$APK_PATH" "gs://$SITE_BUCKET/$APK_TARGET_NAME" \
    --cache-control="public, max-age=300"
  gcloud storage objects update "gs://$SITE_BUCKET/$APK_TARGET_NAME" \
    --content-type="application/vnd.android.package-archive" \
    --content-disposition="attachment; filename=findit-test.apk"

  SIZE_MB=$(du -m "$APK_PATH" | awk '{print $1}')
  echo "  APK size: ${SIZE_MB} MB"
else
  echo "⚠️  APK 미존재: $APK_PATH"
  echo "    먼저 빌드: cd android_project && ./gradlew assembleDebug"
  echo "    또는 site/findit-test.apk 에 직접 복사 후 다시 실행"
fi

# 3) 결과
SITE_URL="https://storage.googleapis.com/$SITE_BUCKET/index.html"
APK_URL="https://storage.googleapis.com/$SITE_BUCKET/$APK_TARGET_NAME"

cat <<EOF

✅ 배포 완료.
   사이트: $SITE_URL
   APK:    $APK_URL

📱 단축 URL (커스텀 도메인 + Cloud Load Balancer 사용 시):
   https://findit.example.com/
   https://findit.example.com/findit-test.apk

QR 코드 / 카톡 공유:
   $SITE_URL
EOF
