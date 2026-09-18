# FindIt 게임 서버 — GCP 배포 가이드

이 문서는 `game.apk` 가 호출하는 REST API 서버와 정적 에셋 서버를 GCP 에
올리는 방법을 정리합니다. 원본 서버(`14.63.220.39`)는 이미 서비스하지
않으므로, 엔드포인트 스펙에 맞춰 백엔드를 새로 구축한다는 전제입니다.

---

## 1. 게임이 요구하는 서버 구성 요소

APK 를 분석한 결과, 다음 요소가 필요합니다.

### 1.1 REST JSON API (필수)
`http://<서버>/app/member/*.json` 형태의 엔드포인트.

| 경로 | 용도 |
|---|---|
| `/app/member/join.json` | 회원가입 (이메일/비밀번호/닉네임) |
| `/app/member/login.json` | 로그인 (세션 반환) |
| `/app/member/addCoin.json` | 코인 적립 (광고 보상 등) |
| `/app/member/spendCoin.json` | 코인 차감 |
| `/app/member/buyItemAndSpendCoin.json` | 아이템 구매 |
| `/app/member/spendMyItem.json` | 보유 아이템 사용 |
| `/app/member/buySkillAndSpendPoint.json` | 스킬 구매 |
| `/app/member/hitViewCount.json` | 광고 조회 카운트 |
| `/app/member/newImageList.json` | 스테이지 이미지 목록 |
| `/app/member/newAdImageList.json` | 광고 이미지 목록 |
| `/app/member/mutiAddUp.json` | 멀티플레이 매칭/집계 |

### 1.2 정적 에셋 CDN (필수)
`downloadFile()` 으로 이미지(`.png`) / 사운드(`.ogg`) / 애니메이션 XML
등을 내려받습니다. 수백 MB~수 GB 예상.

### 1.3 데이터베이스 (필수)
- 회원 (이메일, 암호화된 패스워드, 닉네임, 캐릭터)
- 재화 (코인, 포인트, 보유 아이템/스킬)
- 랭킹 (점수, 시간, 집계 테이블)
- 공지사항
- IAP 영수증 (Google Play / Samsung IAP 검증 결과)

### 1.4 IAP 서버 검증 (강력 권장)
- Google Play Billing: `purchases.products.get` 호출
- Samsung IAP: Samsung Checkout API 호출
- 서버측 검증 없이 클라이언트 신뢰 시 결제 위조 취약

### 1.5 선택 사항
- 멀티플레이 매칭용 WebSocket/Realtime (WaitingRoom 기능)
- 공지/이벤트 관리용 어드민
- 로그/분석

---

## 2. 아키텍처 — 3가지 티어

규모에 따라 서비스 구성을 다르게 잡습니다. 모두 **asia-northeast3 (서울)**
리전 기준.

### Tier 1 — 프로토타입 / 소프트런칭 (DAU < 1,000)
**"서버리스 + 관리형 DB" 구성**. 트래픽 없으면 과금 거의 없음.

```
[Android]
    │
    ▼
[Cloud Load Balancing (선택)]
    │
    ▼
[Cloud Run]  ←── API 서버 (Spring Boot / Node.js / Go 컨테이너)
    │
    ├──▶ [Cloud SQL for MySQL — db-f1-micro]
    └──▶ [Cloud Storage + Cloud CDN] ←── 에셋
           
[Secret Manager] ←── IAP 키, DB 패스워드
[Cloud Logging / Monitoring]
```

### Tier 2 — 정식 런칭 (DAU 1,000 ~ 10,000)
**"VM + 관리형 DB + 캐시" 구성**. 안정성 확보.

```
[Android]
    │
    ▼
[Cloud Load Balancing + Cloud Armor (DDoS)]
    │
    ▼
[GCE MIG (e2-medium × 2)] 또는 [Cloud Run with min-instances=2]
    │
    ├──▶ [Cloud SQL for MySQL — db-g1-small, HA 없음]
    ├──▶ [Memorystore for Redis — 1GB basic]  ←── 세션/랭킹 캐시
    └──▶ [Cloud Storage + Cloud CDN]
```

### Tier 3 — 대규모 (DAU 10,000+)
**"GKE + HA DB + CDN + 모니터링" 풀 스택**.

```
[Android]
    │
    ▼
[Cloud Load Balancing + Cloud Armor + Cloud CDN]
    │
    ▼
[GKE Autopilot 클러스터]  ←── API / 매칭 서비스 / 크론
    │
    ├──▶ [Cloud SQL for MySQL — db-n1-standard-2 + Read Replica + HA]
    ├──▶ [Memorystore for Redis — 5GB standard HA]
    ├──▶ [Cloud Storage (multi-region)]
    └──▶ [Pub/Sub] ←── 이벤트/분석 파이프라인
         [BigQuery] ←── 로그 분석
```

---

## 3. 월 예상 비용 (USD, 서울 리전)

> 2026-04 시점 정가 기준. 실제 요금은 트래픽/스토리지 사용량에 따라 변동.
> 신규 가입 시 **$300 무료 크레딧 + 90일** 제공.

### Tier 1 — 프로토타입 (≈ $35–55/월)

| 항목 | SKU | 예상 |
|---|---|---|
| API 컴퓨트 | Cloud Run (월 200만 요청, vCPU 0.5 × 512MB) | **$0–5** |
| DB | Cloud SQL `db-f1-micro` (1 vCPU 공유, 0.6GB, 10GB SSD) | **$9–12** |
| 에셋 스토리지 | Cloud Storage Standard 50GB | **$1** |
| CDN | Cloud CDN (100GB egress/월) | **$10–12** |
| 네트워크 egress | Asia 외부 50GB | **$5–6** |
| 로드밸런서 | HTTPS LB (1개) | **$18** (생략하고 Cloud Run URL 직접 쓰면 $0) |
| Secret Manager | 10개 시크릿 | **$0.06** |
| 로깅/모니터링 | 기본 무료 티어 내 | **$0** |
| **합계** | | **약 $35–55** |

**비용 최소화 팁**
- 로드밸런서 생략 → Cloud Run 기본 도메인(`*.run.app`)으로 앱이 직접 호출
- Cloud SQL 대신 SQLite (Cloud Run + 영속 불가) 또는 Firestore 무료 티어
- Firestore 무료 티어: 1GiB 저장, 일 50K 읽기 / 20K 쓰기 / 20K 삭제

### Tier 2 — 정식 런칭 (≈ $180–320/월)

| 항목 | SKU | 예상 |
|---|---|---|
| API 컴퓨트 | GCE `e2-medium` × 2 (MIG) | **$54** |
| DB | Cloud SQL `db-g1-small` (1.7GB, 50GB SSD) | **$35–45** |
| Redis | Memorystore 1GB basic | **$35** |
| 에셋 스토리지 | Cloud Storage 500GB | **$10** |
| CDN | Cloud CDN (1TB egress/월) | **$90** |
| 로드밸런서 | HTTPS LB + Cloud Armor 기본 | **$23** |
| 네트워크 egress | 추가 500GB | **$55** |
| Secret Manager / 로깅 | | **$2** |
| **합계** | | **약 $180–320** |

### Tier 3 — 대규모 (≈ $600–1,200/월+)

| 항목 | SKU | 예상 |
|---|---|---|
| GKE Autopilot | 4 vCPU / 16GB 평균 사용 | **$170** |
| DB (HA) | `db-n1-standard-2` Primary + Standby + Read Replica | **$260–300** |
| Redis | Memorystore 5GB standard HA | **$170** |
| CDN | 5TB egress/월 | **$400** |
| 스토리지 | 2TB multi-region | **$50** |
| 로드밸런서 + Armor | Managed Rules 포함 | **$40** |
| 모니터링/로그 | 수백 GB 로그 | **$30–80** |
| **합계** | | **약 $600–1,200** |

---

## 4. 초기 GCP 세팅 (30분)

### 4.1 사전 준비
```bash
# macOS에 gcloud CLI 설치
brew install --cask google-cloud-sdk

# 로그인
gcloud auth login
gcloud auth application-default login
```

### 4.2 프로젝트 생성 & 결제 연결
```bash
# 프로젝트 생성 (ID는 전역 고유해야 함)
export PROJECT_ID="findit-game-prod"
gcloud projects create $PROJECT_ID --name="FindIt Game"
gcloud config set project $PROJECT_ID

# 결제 계정 연결 (콘솔에서 한 번은 수동으로 등록 필요)
gcloud billing accounts list
gcloud billing projects link $PROJECT_ID \
  --billing-account=XXXXXX-XXXXXX-XXXXXX
```

### 4.3 필요한 API 활성화
```bash
gcloud services enable \
  run.googleapis.com \
  sqladmin.googleapis.com \
  secretmanager.googleapis.com \
  cloudbuild.googleapis.com \
  artifactregistry.googleapis.com \
  storage.googleapis.com \
  compute.googleapis.com \
  containerregistry.googleapis.com \
  logging.googleapis.com \
  monitoring.googleapis.com
```

### 4.4 예산 알림 (과금 방지)
콘솔 → **결제 → 예산 및 알림** 에서:
- 월 예산 $50 설정 (Tier 1 기준)
- 50% / 90% / 100% 도달 시 이메일 알림
- 초과 시 자동 중단은 **지원 안 됨** → 알림을 꼭 걸 것

---

## 5. Tier 1 실전 배포 (Cloud Run + Cloud SQL)

가장 많이 쓰는 구성을 단계별로.

### 5.1 Artifact Registry 생성 (Docker 이미지 저장소)
```bash
gcloud artifacts repositories create findit \
  --repository-format=docker \
  --location=asia-northeast3
```

### 5.2 Cloud SQL 인스턴스 생성
```bash
gcloud sql instances create findit-db \
  --database-version=MYSQL_8_0 \
  --tier=db-f1-micro \
  --region=asia-northeast3 \
  --storage-size=10GB \
  --storage-type=SSD \
  --backup-start-time=03:00

# 사용자/DB 생성
gcloud sql users create findit --instance=findit-db --password=XXXX
gcloud sql databases create findit_game --instance=findit-db
```

### 5.3 Secret Manager 에 비밀 저장
```bash
echo -n "SuperSecretPassword" | \
  gcloud secrets create db-password --data-file=-

echo -n "google-play-service-account-json" | \
  gcloud secrets create play-iap-key --data-file=-
```

### 5.4 서버 코드 컨테이너화 예시 (Spring Boot)
`Dockerfile`:
```dockerfile
FROM eclipse-temurin:21-jre-alpine
COPY target/findit-server.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]
```

빌드 & 푸시:
```bash
IMAGE="asia-northeast3-docker.pkg.dev/$PROJECT_ID/findit/server:v1"
gcloud builds submit --tag $IMAGE
```

### 5.5 Cloud Run 배포
```bash
gcloud run deploy findit-api \
  --image=$IMAGE \
  --region=asia-northeast3 \
  --platform=managed \
  --allow-unauthenticated \
  --cpu=0.5 --memory=512Mi \
  --min-instances=0 --max-instances=10 \
  --add-cloudsql-instances=$PROJECT_ID:asia-northeast3:findit-db \
  --set-env-vars=DB_HOST=/cloudsql/$PROJECT_ID:asia-northeast3:findit-db \
  --set-secrets=DB_PASSWORD=db-password:latest
```

배포 후 출력되는 `https://findit-api-xxxx.run.app` 을 APK 의
`SERVER_DOMAIN` 상수에 반영해야 합니다.

### 5.6 정적 에셋 업로드
```bash
gsutil mb -l asia-northeast3 gs://findit-assets
gsutil -m cp -r ./assets/* gs://findit-assets/
gsutil iam ch allUsers:objectViewer gs://findit-assets  # 공개
```

### 5.7 Cloud CDN + LB (선택, Tier 1 에서는 생략 가능)
```bash
# Backend Bucket
gcloud compute backend-buckets create findit-cdn \
  --gcs-bucket-name=findit-assets --enable-cdn

# URL Map + Target Proxy + Forwarding Rule 생성
# (스크립트 10줄. 필요 시 ChatGPT/gemini 에 요청)
```

---

## 6. APK 쪽에서 해야 하는 작업

서버 도메인이 `14.63.220.39` 로 하드코딩되어 있으므로 교체가 필요합니다.

`android_project/app/src/main/java/com/findit/battle/` 하위의
`JoinActivity.java`, `RankActivity.java`, `NoticeActivity.java`,
`GameActivity.java`, `InventoryActivity_*.java` 에서:

```java
public static final String SERVER_DOMAIN = "http://14.63.220.39/";
```

를 다음과 같이 변경:

```java
public static final String SERVER_DOMAIN = "https://findit-api-xxxx.run.app/";
```

그리고 `AndroidManifest.xml` 의 `<application>` 태그에
**cleartextTraffic 금지** 권장(HTTPS 강제):
```xml
<application ... android:usesCleartextTraffic="false">
```
Cloud Run 은 기본 HTTPS 이므로 평문 허용이 불필요합니다.

---

## 7. CI/CD (선택)

Cloud Build 트리거로 GitHub push → 자동 빌드/배포:

`.cloudbuild.yaml`:
```yaml
steps:
- name: gcr.io/cloud-builders/docker
  args: ['build', '-t', '$_IMAGE', '.']
- name: gcr.io/cloud-builders/docker
  args: ['push', '$_IMAGE']
- name: gcr.io/google.com/cloudsdktool/cloud-sdk
  entrypoint: gcloud
  args: ['run', 'deploy', 'findit-api',
         '--image=$_IMAGE',
         '--region=asia-northeast3',
         '--platform=managed']
substitutions:
  _IMAGE: asia-northeast3-docker.pkg.dev/$PROJECT_ID/findit/server:$SHORT_SHA
```

---

## 8. 운영 체크리스트

- [ ] 예산 알림 설정 (결제 → 예산)
- [ ] Cloud SQL 자동 백업 활성화 + 보존 7일 이상
- [ ] Cloud Armor 에 악성 IP 차단 룰 (Tier 2+)
- [ ] Uptime Check 5분 간격 (Cloud Monitoring)
- [ ] 로그 기반 알림 — 5xx 에러율 1% 초과 시 Slack
- [ ] Secret Manager 에 모든 키/토큰 저장 (코드/env 에 평문 금지)
- [ ] IAM 최소 권한 — 배포 서비스 계정은 `run.developer` 만
- [ ] Cloud Logging 보존 기간 조정 (기본 30일, 민감 정보는 짧게)
- [ ] 결제 검증 서버 로직 필수 (클라이언트 영수증 재생 공격 방지)

---

## 9. 단계적 확장 전략

```
런칭 전     : Tier 1 (Cloud Run, $30–50/월)
DAU 500+    : min-instances=1 로 올려 콜드스타트 제거 ($10 추가)
DAU 2,000+  : Memorystore 추가 + Cloud SQL db-g1-small 업스케일 → Tier 2
DAU 10,000+ : GKE 전환 + Read Replica + Cloud Armor → Tier 3
```

처음부터 Tier 3 에 가지 말고, Tier 1 으로 시작 → 지표 보면서 확장이
표준입니다. Cloud Run ↔ GKE 는 컨테이너 이미지 그대로 이식 가능.

---

## 10. 참고 링크

- 가격 계산기: https://cloud.google.com/products/calculator
- Cloud Run 요금: https://cloud.google.com/run/pricing
- Cloud SQL 요금: https://cloud.google.com/sql/pricing
- 무료 티어: https://cloud.google.com/free/docs/free-cloud-features
