# GCP 배포 스크립트

**프로젝트**: Findit
**프로젝트 ID**: `findit-494900`
**프로젝트 번호**: `434469624646`
**리전**: `us-central1` (Always Free 적용)

---

## 🔧 사전 준비

### 1. gcloud CLI 설치
- macOS: `brew install --cask google-cloud-sdk`
- Windows: [공식 인스톨러](https://cloud.google.com/sdk/docs/install#windows)

### 2. 인증 + 프로젝트 설정
```bash
gcloud auth login
gcloud auth application-default login
gcloud config set project findit-494900
```

### 3. 결제 활성화 확인
```bash
gcloud billing projects describe findit-494900
```

---

## 🚀 배포 순서 (최초 1회)

```bash
# 1. 프로젝트 초기 설정 — API 활성화 + 버킷 생성 + Secret Manager
./scripts/gcp-init.sh

# 2. Cloud SQL 인스턴스 + DB 생성 (~5분)
./scripts/create-db.sh

# 3. (수동) Secret 값 채우기 — Secret Manager 콘솔 또는 CLI
echo -n "<bcrypt salted password>" | gcloud secrets versions add db-password --data-file=-
echo -n "$(openssl rand -hex 32)"   | gcloud secrets versions add admin-token --data-file=-

# 4. (수동) DB 스키마 적용 — cloud-sql-proxy 통해
cloud-sql-proxy findit-494900:us-central1:findit-db &
mysql -h 127.0.0.1 -u findit -p findit_game < server/sql/schema.sql
mysql -h 127.0.0.1 -u findit -p findit_game < server/sql/seed.sql
mysql -h 127.0.0.1 -u findit -p findit_game < server/sql/seed_skills.sql

# 5. 서버 빌드 + Cloud Run 배포 (~3분)
./scripts/deploy-server.sh

# 6. APK 빌드 (Android Studio 또는 gradle)
cd android_project && ./gradlew assembleDebug && cd ..

# 7. 사이트 + APK 동시 배포
./scripts/deploy-site.sh
```

---

## 📦 스크립트 목록

| 스크립트 | 역할 | 빈도 |
|---|---|---|
| `gcp-init.sh` | API 활성화 / Artifact Registry / Storage / Secret Manager 초기 설정 | 1회만 |
| `create-db.sh` | Cloud SQL 인스턴스 + DB + 사용자 생성 | 1회만 |
| `deploy-server.sh` | Docker 빌드 + Cloud Run 배포 | 매 서버 변경 시 |
| `deploy-site.sh` | 사이트 + APK 를 Cloud Storage 에 업로드 | 매 사이트/APK 변경 시 |
| `deploy-site.ps1` | 위와 동일 (PowerShell) | (Windows) |

---

## 🔁 일상 운영

### 서버 코드 변경 후
```bash
./scripts/deploy-server.sh
```

### APK 재빌드 후
```bash
cd android_project && ./gradlew assembleDebug && cd ..
./scripts/deploy-site.sh
```

### 사이트만 갱신
```bash
./scripts/deploy-site.sh
```

---

## 🌐 배포된 URL

| 리소스 | URL |
|---|---|
| API 서버 | `https://findit-api-XXXXXX.us-central1.run.app` *(배포 후 확인)* |
| 헬스체크 | `https://findit-api-XXXXXX.us-central1.run.app/healthz` |
| 어드민 | `https://findit-api-XXXXXX.us-central1.run.app/admin/ui` |
| 사이트 | https://storage.googleapis.com/findit-public/index.html |
| APK | https://storage.googleapis.com/findit-public/findit-test.apk |

> 첫 `deploy-server.sh` 실행 후 출력되는 실제 URL 을 `Property.SERVER_DOMAIN_PROD` 에 반영해야 합니다.

---

## 💰 예상 비용

| 항목 | 무료 한도 안 | 한도 초과 시 |
|---|---|---|
| Cloud Run | 월 200만 요청 | $0.00002400/요청 |
| Cloud Storage | 5 GB | $0.020/GB/월 |
| Cloud SQL `db-f1-micro` | (무료 X) | ~$9/월 ($300 크레딧 25개월) |
| Network egress | 1 GB/월 | $0.12/GB |
| **합계 (DAU 100)** | **$0** | (무료 한도 안) |
| **합계 (DAU 1,000)** | $9~12 | Cloud SQL 만 청구 |

---

## ⚠️ 주의 사항

1. **TCP 소켓(22131) 은 Cloud Run 미지원**
   - 멀티플레이용 소켓 서버는 별도 GCE e2-micro 또는 GKE 에 배포해야 함
   - Cloud Run 으로는 HTTP REST API 만 서빙

2. **Cloud Run 도메인은 자동 생성**
   - `findit-api-<해시>-uc.a.run.app` 형식
   - 첫 배포 후 실제 URL 을 클라이언트 + 사이트에 반영

3. **Secret Manager 에 키 등록 필수**
   - `db-password` / `admin-token` / `recaptcha-secret` / `apple-shared-secret`
   - 미등록 시 Cloud Run 배포 실패

4. **예산 알림 필수**
   - 결제 콘솔 → 예산 및 알림 → $1 / 50/90/100% 메일
   - 무료 한도 초과 시 즉시 감지

---

## 📚 참조

- [GCP_DEPLOYMENT.md](../GCP_DEPLOYMENT.md) — 상세 배포 가이드 (3 Tier)
- [server/README.md](../server/README.md) — 서버 운영 가이드
- [docs/project_report.pdf](../docs/project_report.pdf) — 프로젝트 분석 보고서 (16장 GCP 배포 전략)
