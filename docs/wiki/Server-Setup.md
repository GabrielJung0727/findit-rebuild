# Server Setup

Node.js + Express + MySQL 서버 셋업.

## 사전 요구사항

- Node.js 20+ (LTS 권장)
- Docker Desktop (MySQL 컨테이너용)
- Git

옵션: 직접 MySQL 8 설치 (Docker 안 쓸 때)

---

## 1. 의존성 설치

```bash
cd server
npm install
```

`package.json` 의존성:
```jsonc
{
  "dependencies": {
    "bcryptjs": "^2.4.3",        // 비밀번호 해시
    "dotenv": "^16.4.5",         // .env 파일 로드
    "express": "^4.19.2",        // HTTP 서버
    "morgan": "^1.10.0",         // 액세스 로그
    "mysql2": "^3.11.0"          // MySQL 클라
  },
  "optionalDependencies": {
    "firebase-admin": "^12.0.0", // FCM 푸시 (없어도 dev OK)
    "googleapis": "^144.0.0",    // Google Play 영수증 검증
    "ws": "^8.20.0"              // WebSocket gateway
  }
}
```

`optionalDependencies` 는 미설치 시 stub 으로 동작 (FCM 미작동, IAP 검증 verified=false 반환). 운영에서는 모두 설치 필수.

---

## 2. MySQL 띄우기 (Docker)

```bash
docker compose up -d
```

`docker-compose.yml` (이미 존재):
```yaml
services:
  mysql:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: rootpw
      MYSQL_DATABASE: findit
      MYSQL_USER: findit
      MYSQL_PASSWORD: findit
    ports:
      - "3306:3306"
    volumes:
      - mysql_data:/var/lib/mysql
volumes:
  mysql_data:
```

확인:
```bash
docker compose ps
# NAME               STATUS    PORTS
# server-mysql-1     Up        0.0.0.0:3306->3306/tcp
```

직접 MySQL 사용 시:
```sql
CREATE DATABASE findit DEFAULT CHARACTER SET utf8mb4;
CREATE USER 'findit'@'%' IDENTIFIED BY 'findit';
GRANT ALL ON findit.* TO 'findit'@'%';
```

---

## 3. 스키마 + 시드 적재

```bash
npm run db:init
```

이 명령이 하는 일 (`scripts/db-init.js`):
1. `sql/schema.sql` 적용 — 8 테이블 생성
2. `sql/migrations/001_skills_and_expansion.sql` 적용
3. `sql/migrations/002_priority2.sql` 적용
4. `sql/migrations/003_image_ad_caption.sql` 적용
5. `sql/migrations/004_iap_apple.sql` 적용
6. `sql/seed_skills.sql` 적용 — 44 스킬 카탈로그
7. `sql/seed.sql` 적용 — 테스트 계정 3 + 시드 이미지 1

검증:
```bash
docker exec -it server-mysql-1 mysql -ufindit -pfindit findit \
  -e "SHOW TABLES; SELECT user_id FROM members;"
```

기대 결과:
```
+---------------------+
| Tables_in_findit    |
+---------------------+
| ad_click_log        |
| ad_images           |
| ad_reward_log       |
| admin_tokens        |
| event_log           |
| iap_receipts        |
| images              |
| inventories         |
| item_upgrade_log    |
| login_logs          |
| members             |
| notices             |
| push_log            |
| rankings            |
| skill_catalog       |
| skills              |
| wallets             |
+---------------------+

user_id
test@findit.com
alice@findit.com
bob@findit.com
```

[[Database-Schema]] 에서 각 테이블 상세.

---

## 4. 서버 실행

### 개발 모드 (auto-reload)
```bash
npm run dev
```
내부적으로 `node --watch src/index.js` — 파일 저장 시 자동 재시작.

### 운영 모드
```bash
npm start
```
재시작 없이 단발 실행. PM2 / Docker 로 관리 권장.

### 출력
```
[db] connected
[http] listening on :8080
       admin UI: http://localhost:8080/admin/ui
[ws] gateway attached at /ws
[tcp] listening on 0.0.0.0:22131
```

3개 서비스 동시 가동:
- HTTP REST: `:8080`
- WebSocket: `:8080/ws` (HTTP 와 같은 포트, upgrade)
- TCP socket: `:22131` (디컴파일 안드 APK 호환용)

---

## 5. 환경변수

`server/.env` 파일 생성:
```ini
# 기본 — 비워도 OK (default 값 있음)
HTTP_PORT=8080
TCP_PORT=22131
TCP_HOST=0.0.0.0
LOG_LEVEL=dev

# DB — docker-compose.yml 와 일치
DB_HOST=127.0.0.1
DB_PORT=3306
DB_USER=findit
DB_PASSWORD=findit
DB_NAME=findit

# Google Play 영수증 검증 (운영)
GOOGLE_PLAY_SERVICE_ACCOUNT_JSON='{"type":"service_account",...}'
GOOGLE_PLAY_PACKAGE_NAME=com.findit.battle

# Samsung IAP (선택)
SAMSUNG_IAP_MODE=0
SAMSUNG_IAP_API_KEY=

# Apple App Store 영수증 검증
APPLE_SHARED_SECRET=
APPLE_USE_SANDBOX=1   # 개발/sandbox tester 시 1, 운영 시 빈 값(=production 우선 시도)

# reCAPTCHA v3 (가입 봇 차단)
RECAPTCHA_SECRET=
RECAPTCHA_MIN_SCORE=0.5

# 어드민 토큰 (운영 시 반드시 변경)
ADMIN_DEFAULT_TOKEN=dev-admin-token-change-me

# Firebase (FCM 푸시)
GOOGLE_APPLICATION_CREDENTIALS=/path/to/firebase-service-account.json
```

`.env` 는 `.gitignore` 에 등록 ⇒ 시크릿 누출 방지.

---

## 6. 어드민 UI

브라우저: http://localhost:8080/admin/ui

첫 진입 시 토큰 입력 다이얼로그 → `dev-admin-token-change-me` (시드)

탭:
- **개요** — 회원수 / DAU / WAU / 24h IAP
- **통계** — DAU 추이 (7/30일), 매출 추이, 이벤트 top 50
- **결제** — IAP 영수증 검증 이력 + verified 비율
- **스테이지** — 이미지 CRUD (POST 시 `imageCut` JSON 검증 자동)
- **광고** — `ad_images` CRUD + CTR
- **공지** — notice CRUD
- **푸시** — 사용자 단건 또는 broadcast

토큰은 `localStorage` 에 저장 (페이지 새로고침해도 유지).

---

## 7. API 호출 테스트

```bash
# 헬스체크
curl http://localhost:8080/healthz
# {"ok":true}

# 가입
curl -X POST http://localhost:8080/app/member/join.json \
  -H "Content-Type: application/json" \
  -d '{"userId":"new@findit.com","userPass":"abcd","userNick":"new","userCharacter":0}'
# {"result":"000"}

# 로그인
curl -X POST http://localhost:8080/app/member/login.json \
  -H "Content-Type: application/json" \
  -d '{"userId":"test@findit.com","userPass":"1234"}'
# {"result":"000","token":"...","user":{...},"item":[],"skill":[]}

# 스킬 카탈로그 (44개)
curl http://localhost:8080/app/member/skillCatalog.json | jq '.list | length'
# 44

# 어드민 — 통계
curl -H "X-Admin-Token: dev-admin-token-change-me" \
  http://localhost:8080/admin/analytics/overview
# {"members":3,"dauToday":0,...}
```

전체 27 endpoint: [[API-Reference]]

---

## 8. WebSocket 테스트

`wscat` 으로:
```bash
npm install -g wscat
wscat -c ws://localhost:8080/ws

> |100|test@findit.com
< |100|000|1|test@findit.com,0|1|test@findit.com,0
```

[[WebSocket-Protocol]] 에서 시퀀스 다이어그램 + 코드별 페이로드.

---

## 9. 로그 / 디버깅

### Morgan HTTP 로그
```
::ffff:127.0.0.1 - POST /app/member/login.json HTTP/1.1 200 - 12.345 ms
```

`LOG_LEVEL` 옵션:
- `dev` — 컬러 + 짧은 형식 (개발 기본)
- `combined` — Apache 표준 (운영 권장)
- `tiny` — 최소

### 핸들러 로그
```
[ws] connect 127.0.0.1
[ws] handler error: ...
[tcp] close test@findit.com
[socket] invite push failed: <error>
```

### DB 쿼리 로그 (선택)
`mysql2` 의 `debug: true` 옵션 활용 — `src/db.js` 에서 임시 활성:
```js
const pool = mysql.createPool({ ..., debug: true });
```

---

## 10. 운영 배포

### Cloud Run (권장)

```bash
gcloud run deploy findit-server \
  --source . \
  --region asia-northeast3 \
  --platform managed \
  --allow-unauthenticated \
  --set-env-vars "DB_HOST=...,DB_USER=...,..."
```

WebSocket 지원: Cloud Run 기본으로 OK (timeout 60s, --timeout=3600 권장).

### Cloud SQL
```bash
gcloud sql instances create findit-db \
  --database-version=MYSQL_8_0 \
  --tier=db-f1-micro \
  --region=asia-northeast3
```

서버 → Cloud SQL Auth Proxy 또는 Private IP 권장.

### 시크릿
- Secret Manager 에 등록 → Cloud Run env 에 mount
- `APPLE_SHARED_SECRET`, `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON`, `RECAPTCHA_SECRET`, `ADMIN_DEFAULT_TOKEN` 등

상세: [GCP_DEPLOYMENT.md](https://github.com/GabrielJung0727/findit-rebuild/blob/main/GCP_DEPLOYMENT.md), [[Release-Process]]

---

## 11. 트러블슈팅

| 증상 | 해결 |
|---|---|
| `[db] connection failed` | MySQL 컨테이너 ready 대기 (`docker compose logs mysql` 확인) |
| Port 8080 in use | 다른 프로세스 종료 또는 `HTTP_PORT=8081` |
| `[ws] ws package not installed` | `npm install ws --save-optional` |
| 어드민 UI 401 | 토큰 헤더 확인. 기본 토큰 `dev-admin-token-change-me` |
| WebSocket 연결 close 즉시 | URL 경로 `/ws` 누락 — 상대 경로 `/ws` 또는 `wss://host/ws` |
| `iap_receipts duplicate_token` | 같은 영수증 재사용 차단 (정상). 다른 token 으로 결제 |

상세 [[Troubleshooting]].
