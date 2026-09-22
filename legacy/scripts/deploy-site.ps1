# ──────────────────────────────────────────────────────────────────────────
# 정적 사이트 + APK 를 Cloud Storage 에 배포 (Windows PowerShell)
# ──────────────────────────────────────────────────────────────────────────
$ErrorActionPreference = 'Stop'

$PROJECT_ID      = if ($env:PROJECT_ID)      { $env:PROJECT_ID }      else { 'findit-494900' }
$SITE_BUCKET     = if ($env:SITE_BUCKET)     { $env:SITE_BUCKET }     else { 'findit-public' }
$APK_PATH        = if ($env:APK_PATH)        { $env:APK_PATH }        else { 'android_project\app\build\outputs\apk\debug\app-debug.apk' }
$APK_TARGET_NAME = if ($env:APK_TARGET_NAME) { $env:APK_TARGET_NAME } else { 'findit-test.apk' }

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot
gcloud config set project $PROJECT_ID | Out-Null

Write-Host "▶ Uploading site/ → gs://$SITE_BUCKET/" -ForegroundColor Cyan
gcloud storage cp -r "site/*" "gs://$SITE_BUCKET/" --cache-control="public, max-age=300"

gcloud storage objects update "gs://$SITE_BUCKET/index.html" `
  --cache-control="public, max-age=60, must-revalidate" `
  --content-type="text/html; charset=utf-8"
gcloud storage objects update "gs://$SITE_BUCKET/404.html" `
  --cache-control="public, max-age=60" `
  --content-type="text/html; charset=utf-8"

if (Test-Path $APK_PATH) {
  Write-Host "▶ Uploading APK: $APK_PATH → gs://$SITE_BUCKET/$APK_TARGET_NAME" -ForegroundColor Cyan
  gcloud storage cp $APK_PATH "gs://$SITE_BUCKET/$APK_TARGET_NAME" --cache-control="public, max-age=300"
  gcloud storage objects update "gs://$SITE_BUCKET/$APK_TARGET_NAME" `
    --content-type="application/vnd.android.package-archive" `
    --content-disposition="attachment; filename=findit-test.apk"

  $sizeMB = [Math]::Round((Get-Item $APK_PATH).Length / 1MB, 2)
  Write-Host "  APK size: ${sizeMB} MB"
} else {
  Write-Host "⚠️  APK 미존재: $APK_PATH" -ForegroundColor Yellow
  Write-Host "    먼저 빌드: cd android_project; .\gradlew.bat assembleDebug"
}

$siteUrl = "https://storage.googleapis.com/$SITE_BUCKET/index.html"
$apkUrl  = "https://storage.googleapis.com/$SITE_BUCKET/$APK_TARGET_NAME"

Write-Host ""
Write-Host "✅ 배포 완료." -ForegroundColor Green
Write-Host "   사이트: $siteUrl"
Write-Host "   APK:    $apkUrl"
