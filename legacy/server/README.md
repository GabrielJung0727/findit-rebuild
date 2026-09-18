# FindIt Rebuild — 게임 서버

원본 `14.63.220.39` 서버(2012~2014 운영 후 사망)를 대체하는 Node.js + Express + MySQL 기반 게임 서버.

- **스택**: Node.js 18+ / Express 4 / MySQL 8 / TCP 소켓 (Node `net`)
- **배포 타겟**: GCP Cloud Run + Cloud SQL (참고: [GCP_DEPLOYMENT.md](../GCP_DEPLOYMENT.md))
- **포트**: HTTP 8080 / TCP 22131 (원본 동일)
- **구현 완료**: 1순위 13개 REST + 소켓 7개 코드 + 8개 DB 테이블

---

## 빠른 시작 (로컬)

```bash
# 1. MySQL 기동 (Docker)
cd server
docker compose up -d
# → MySQL 이 schema.sql / seed.sql 을 자동 초기화 (/docker-entrypoint-initdb.d)

# 2. 의존성 설치
npm install

# 3. 환경변수
cp .env.example .env

# 4. 실행
npm start
# [db] connected
# [http] listening on :8080
# [socket] listening on 0.0.0.0:22131
```

### 헬스체크
```bash
curl http://localhost:8080/healthz
# {"ok":true}
```

### 샘플 호출 (시드 데이터)
```bash
# 로그인 (test@findit.com / 1234)
curl "http://localhost:8080/app/member/login.json?userId=test@findit.com&userPass=1234"

# 랭킹
curl "http://localhost:8080/app/member/rankList?userId=test@findit.com"

# 공지 (HTML)
curl "http://localhost:8080/app/member/notice.json"
```

---

## 프로젝트 구조

```
server/
├── README.md
├── package.json
├── docker-compose.yml        # 로컬 MySQL
├── .env.example
├── sql/
│   ├── schema.sql            # 8개 테이블 정의
│   └── seed.sql              # 테스트 계정/아이템/스킬/공지
└── src/
    ├── index.js              # Express + 소켓 부트스트랩
    ├── db.js                 # mysql2 pool + tx helper
    ├── routes/
    │   └── member.js         # /app/member/* 13개 엔드포인트
    ├── socket/
    │   └── server.js         # TCP 22131 (코드 100~107)
    └── util/
        ├── codes.js          # result 코드 상수
        └── protocol.js       # <4자리길이><body> 프레임 인코더/파서
```

---

## REST API 계약

모두 HTTP GET (클라는 application/x-www-form-urlencoded) · 쿼리스트링 · JSON 응답.

| # | Path | 파라미터 | 응답 주요 필드 | 클라 위치 |
|---|---|---|---|---|
| 1 | `/app/member/join.json` | userId, userPass, userCharacter, userDevice, userNick | result | JoinActivity.java:396 |
| 2 | `/app/member/login.json` | userId, userPass, userDevice | result, user{userId,level,score,coin,point,userNick,userCharacter}, item[], skill[] | GameActivity.java:900 |
| 3 | `/app/member/addCoin.json` | userId, coin | result, coin | InventoryActivity_*.java:2217 |
| 4 | `/app/member/spendCoin.json` | userId, coin | result, coin | InventoryActivity_*.java:2230 |
| 5 | `/app/member/buyItemAndSpendCoin.json` | userId, itemNo, coin, quantity | result, coin, itemNo, quantity | InventoryActivity_*.java:2180 |
| 6 | `/app/member/spendMyItem.json` | userId, itemNo, quantity | result, itemNo, quantity | GameActivity.java:945 |
| 7 | `/app/member/buySkillAndSpendPoint.json` | userId, skillId, point | result, skill[] | InventoryActivity_*.java:2201 |
| 8 | `/app/member/hitViewCount.json` | adId | result | GameActivity.java:1002 |
| 9 | `/app/member/newImageList.json` | imgId | result, list[{imgId,img,xSize,ySize,x,y,imgType,imageCut,urlDownload,urlDetail,urlVideo,view,viewCount,regDate}] | GameActivity.java:960 |
| 10 | `/app/member/newAdImageList.json` | adId | result, list[{adId,adImage,adName,expireDate}] | GameActivity.java:990 |
| 11 | `/app/member/mutiAddUp.json` | userId, level, score, coin, point | result, user{...} | GameActivity.java:927 |
| 12 | `/app/member/rankList` (GET) | userId | list[{ranking,friendId,sumpoint}] | RankActivity.java:81 |
| 13 | `/app/member/notice.json` (GET, HTML) | - | HTML | NoticeActivity.java:13 (WebView) |
| 14 | `/app/member/itemPurchaseHistList` (GET) | userId | list[{regDate,itemName,quantity}] | InventoryActivity_*.java:2298 |

### Result 코드 (클라 파싱 기준)
| 코드 | 의미 | 출처 |
|---|---|---|
| `000` | 성공 | `JSON_VALUE_RESULT_PASS` |
| `900` | 이미 게임 종료/유저 없음 | `JSON_VALUE_RESULT_ALREADYEXIT` |
| `901` | 비밀번호 틀림 | `JSON_VALUE_RESULT_NOPASSWORD` |
| `910` | 이미 가입된 아이디 (join) | 서버 신규 정의 |
| `911` | 이미 게임 중 | `JSON_VALUE_RESULT_ALREADYGAME` |
| `999` | ID 없음/파라미터 오류 | `JSON_VALUE_RESULT_NOID` |

---

## TCP 소켓 프로토콜 (port 22131)

### 프레임 형식
```
<4자리 zero-padded 길이><body>
```
- 길이는 body(`|code|...`)의 UTF-8 바이트 길이 (4자리 prefix 제외)
- 인코더: [protocol.js](src/util/protocol.js) `encodeLength`
- 참조: [GameView.java:422-434](../android_project/app/src/main/java/com/findit/battle/GameView.java#L422)

### 메시지 코드
| 코드 | 요청 (C→S) | 응답 (S→C) | 설명 |
|---|---|---|---|
| 100 | `\|100\|<userId>` | `\|100\|000\|<count>\|<csv list>\|<count>\|<csv list>` | 대기실 유저 목록 |
| 101 | `\|101\|` | `\|101\|000\|<roomName>` | 대전방 생성 |
| 102 | `\|102\|<roomName>\|<userName>` | `\|102\|000` (양측) | 방 나가기 |
| 103 | `\|103\|<roomName>` | `\|103\|000\|<상대 character>` (양측) | 방 입장 |
| 104 | `\|104\|<characterName>` | `\|104\|000\|<characterName>` (상대) | 준비 (손들기) |
| 106 | `\|106\|<charName>\|<leftNum>,<skillId>,<penalty>` | `\|106\|000\|<payload>` (상대) | 게임 액션 중계 |
| 107 | `\|107\|<targetUserId>\|<roomName>` | `\|107\|000\|<fromUser>\|<roomName>` (대상) | 초대 |

현재 상태는 **인메모리**입니다. DAU 1k 이하에서는 충분하지만 DAU 2k+ 부터 Redis 권장:
- `sessions` (socket → {userId, character, roomName})
- `waiting` (userId → socket)
- `rooms` (roomName → {creator, guest})

---

## DB 스키마 (8 테이블)

[sql/schema.sql](sql/schema.sql) 참조. 요약:

| 테이블 | 목적 |
|---|---|
| `members` | 회원 (이메일/bcrypt 암호/닉네임/캐릭터/auth_type) |
| `wallets` | 재화 (코인/포인트/**보석**/HP/공격력/방어력) |
| `inventories` | 보유 아이템 (upgrade_level 포함) |
| `skills` | 학습 스킬 |
| `rankings` | 일/주 집계 (+상승/하락 delta) |
| `notices` | 공지 |
| `images` | 틀린그림 스테이지 (image_cut = JSON 좌표 배열) |
| `ad_images` | 광고 배너 |
| `iap_receipts` | 결제 영수증 검증 이력 (Google/Samsung) |
| `login_logs` | 중복 로그인 차단 |

### 수동 초기화 (Docker 미사용 시)
```bash
mysql -u root -p < sql/schema.sql
mysql -u root -p findit_game < sql/seed.sql
```

---

## 클라이언트 변경 필요

원본 하드코딩을 새 도메인으로 교체:

```java
// Property.java:12
public static final String SERVER_DOMAIN = "https://findit-api-xxxx.run.app/";
```

동일 수정 필요 파일 (8군데):
- `GameActivity.java:121`
- `JoinActivity.java:48`
- `NoticeActivity.java:13`
- `RankActivity.java:31`
- `InventoryActivity_Google.java:110`
- `InventoryActivity_Olleh.java:112`
- `InventoryActivity_SAMSUNG.java:103`
- `InventoryActivity_T.java:103`

그리고 AndroidManifest: `android:usesCleartextTraffic="false"` (HTTPS 강제).

소켓은 `GameActivity.java` 의 소켓 연결 IP/PORT 를 교체.

---

## GCP 배포 (Cloud Run)

```bash
# Artifact Registry push
export PROJECT_ID=findit-game-prod
export IMAGE=asia-northeast3-docker.pkg.dev/$PROJECT_ID/findit/server:v1

# Dockerfile 만들기 (아래 예시)
gcloud builds submit --tag $IMAGE

gcloud run deploy findit-api \
  --image=$IMAGE \
  --region=asia-northeast3 \
  --platform=managed \
  --allow-unauthenticated \
  --cpu=1 --memory=512Mi \
  --min-instances=0 --max-instances=10 \
  --add-cloudsql-instances=$PROJECT_ID:asia-northeast3:findit-db \
  --set-env-vars=DB_SOCKET=/cloudsql/$PROJECT_ID:asia-northeast3:findit-db,DB_USER=findit,DB_NAME=findit_game \
  --set-secrets=DB_PASSWORD=db-password:latest
```

> Cloud Run 은 HTTP 만 지원합니다. TCP 소켓(22131)은 별도 **GCE VM** 또는 **GKE** 에 배포해야 합니다.
> 초기 단계에서는 REST 만 Cloud Run 에 올리고, 소켓은 보류(싱글플레이만 지원)해도 OK.

### 예시 Dockerfile
```dockerfile
FROM node:20-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev
COPY . .
EXPOSE 8080 22131
CMD ["node", "src/index.js"]
```

---

## 알려진 제약 / TODO

- [ ] IAP 영수증 서버 검증 (`iap_receipts` 테이블만 준비, Google/Samsung API 호출 로직 미구현)
- [ ] 세션 토큰 (JWT) — 현재는 userId 신뢰. 중복 로그인 검증 보강 필요
- [ ] `rankings` 일/주 집계 크론 (현재 `rankList` 는 실시간 score 기준)
- [ ] Redis 전환 (소켓 세션)
- [ ] Rate limiting (현재 없음)
- [ ] Facebook Login 연동 (`auth_type='facebook'` 처리)
- [ ] 이미지/광고 CDN 업로드 (Cloud Storage)

---

## 라이선스 / 출처

- 원본 게임 APK: FindIt (2012–2014)
- 기획서: `docs/` (2012–2013)
- 재구축: 2026-04
