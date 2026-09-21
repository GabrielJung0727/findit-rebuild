# FindIt Test Site — APK 배포 페이지

GCP Cloud Storage 정적 호스팅으로 운영되는 **테스트 빌드 다운로드 페이지**.

- **프로젝트**: Findit (`findit-494900`)
- **버킷**: `gs://findit-public`
- **URL**: https://storage.googleapis.com/findit-public/index.html
- **APK URL**: https://storage.googleapis.com/findit-public/findit-test.apk

## 구성 파일

| 파일 | 용도 |
|---|---|
| `index.html` | 랜딩 페이지 — 다운로드 버튼 / 설치 가이드 / 서버 상태 |
| `404.html` | 잘못된 경로 접근 시 |
| `findit-test.apk` | 테스트 APK (배포 시 추가) |

## 디자인 컨셉

- **다크 그라디언트 hero** + **white download card** 대비
- 컬러: Navy `#1a1f36` / Blue `#4a90e2` / Green `#27ae60` 다운로드 CTA
- 모바일 반응형 (800px 미만은 단일 컬럼)
- 한글 우선, 시스템 폰트 fallback
- 다운로드 버튼 클릭 시 GCP 서버에 `apk_download` 이벤트 전송

## 배포

```bash
# 사이트 + (있으면) APK 동시 업로드
./scripts/deploy-site.sh

# Windows
.\scripts\deploy-site.ps1
```

## 로컬 미리보기

```bash
cd site
python -m http.server 8000
# → http://localhost:8000
```

## 커스텀 도메인 (선택)

기본 URL `storage.googleapis.com/...` 대신 `findit.example.com` 같은 도메인을 쓰려면:

1. 도메인 구입 (예: Cloud Domains $12/년 또는 외부)
2. Cloud Load Balancer 설정 (월 $18~) — 또는
3. Firebase Hosting 으로 이전 (무료 SSL + 커스텀 도메인) — 권장

비용 안 들이려면 `storage.googleapis.com` URL 그대로 사용.
