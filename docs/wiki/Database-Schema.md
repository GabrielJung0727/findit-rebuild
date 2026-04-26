# Database Schema

MySQL 8 / InnoDB / utf8mb4 / 17 테이블 (베이스 8 + 마이그 9).

소스: [`server/sql/schema.sql`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/server/sql/schema.sql) + [`server/sql/migrations/`](https://github.com/GabrielJung0727/findit-rebuild/tree/main/server/sql/migrations).

## ER 개요

```
                 ┌──────────┐
                 │ members  │
                 │ user_id  │ ◄─────────────┐
                 └────┬─────┘                │
                      │ 1:1                   │ N:1
              ┌───────┴──────────┐            │
              ▼                  ▼            │
         ┌─────────┐        ┌─────────┐       │
         │ wallets │        │skills,  │       │
         │ coin/gem│        │inventories,     │
         │ score   │        │login_logs,      │
         └─────────┘        │push_log,        │
                            │event_log...     │
                            └─────────────────┘
                                              │
                            ┌─────────────────┤
                            ▼                 │
                       ┌──────────┐           │
                       │iap_      │           │
                       │receipts  │           │
                       │ UNIQUE:  │           │
                       │  token   │           │
                       └──────────┘           │
                                              │
   ┌──────────┐    ┌──────────┐               │
   │ images   │    │ad_images │               │
   │ imageCut │    │          │               │
   └────┬─────┘    └────┬─────┘               │
        │                │                    │
        │                ▼                    │
        │           ┌──────────┐               │
        │           │ad_click_ │               │
        │           │log,      │               │
        │           │ad_reward_│ ──────────────┤
        │           │log       │               │
        │           └──────────┘               │
        │                                      │
        └──→ (참조 없음 — 이미지는 매칭 시 라우팅)│
                                               │
   ┌──────────┐                                 │
   │skill_    │ ◄─ skills.skill_id              │
   │catalog   │                                 │
   │ 44 rows  │                                 │
   └──────────┘                                 │
                                                │
   ┌──────────┐    ┌──────────┐    ┌──────────┐
   │notices   │    │rankings  │    │admin_    │
   │          │    │          │    │tokens    │
   └──────────┘    └──────────┘    └──────────┘
```

---

## 베이스 8 테이블 (`schema.sql`)

### 1. `members` — 회원 마스터

```sql
CREATE TABLE `members` (
  `user_id`        VARCHAR(128) NOT NULL,         -- 이메일 또는 guest_/fb_ prefix
  `user_pass_hash` VARCHAR(255) NOT NULL,         -- bcrypt (guest/facebook 은 '!')
  `user_nick`      VARCHAR(64)  NOT NULL,
  `user_character` TINYINT      NOT NULL DEFAULT 0,
  `user_device`    VARCHAR(64)  NOT NULL DEFAULT '1',
  `auth_type`      ENUM('email','guest','facebook') NOT NULL DEFAULT 'email',
  `created_at`     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_active_at` TIMESTAMP NULL DEFAULT NULL,   -- DAU 계산용 (mig 002)
  `fcm_token`      VARCHAR(512) DEFAULT NULL,     -- FCM 푸시 (mig 002)
  `avatar_url`     VARCHAR(512) DEFAULT NULL,     -- (예약, 미사용)
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uk_nick` (`user_nick`),
  KEY `idx_last_active` (`last_active_at`)
) ENGINE=InnoDB CHARSET=utf8mb4;
```

**주요 인덱스**:
- PK: `user_id` (이메일 또는 `guest_xxx`/`fb_xxx`)
- UNIQUE: `user_nick` (가입 시 중복 차단)
- `idx_last_active` — DAU/WAU 집계용

**시드 (seed.sql)**:
- `test@findit.com` — bcrypt('1234'), Lv 1
- `alice@findit.com` — Lv 15
- `bob@findit.com` — Lv 30

---

### 2. `wallets` — 1:1 with members, 재화 + 능력치

```sql
CREATE TABLE `wallets` (
  `user_id`           VARCHAR(128) NOT NULL,
  `level`             INT          NOT NULL DEFAULT 1,
  `score`             BIGINT       NOT NULL DEFAULT 0,
  `coin`              BIGINT       NOT NULL DEFAULT 10,
  `point`             INT          NOT NULL DEFAULT 2,
  `gem`               INT          NOT NULL DEFAULT 0,
  `attack`            INT          NOT NULL DEFAULT 0,
  `defense`           INT          NOT NULL DEFAULT 0,
  `hp`                INT          NOT NULL DEFAULT 110,
  `inventory_size`    INT          NOT NULL DEFAULT 3,    -- (mig 001) 3..30
  `skill_deck_count`  INT          NOT NULL DEFAULT 1,    -- (mig 001) 1..4
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_wallet_user` FOREIGN KEY (`user_id`)
    REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB CHARSET=utf8mb4;
```

가입 시 동시 INSERT (트랜잭션). `coin=10, point=2` 기본값 = 안드 원본 `DBAdapter.java` 와 일치.

---

### 3. `inventories` — 보유 아이템

```sql
CREATE TABLE `inventories` (
  `id`            BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`       VARCHAR(128) NOT NULL,
  `item_no`       INT          NOT NULL,         -- Items.java typeNo (38..58)
  `item_type`     ENUM('PEN','RING','BERRY','POTION','GOLD','ETC') NOT NULL,
  `quantity`      INT          NOT NULL DEFAULT 1,
  `upgrade_level` TINYINT      NOT NULL DEFAULT 0,  -- (mig 001) 0..9
  `seqs`          VARCHAR(255) DEFAULT NULL,        -- 안드 호환, 미사용
  `created_at`    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_item` (`user_id`, `item_no`),
  CONSTRAINT `fk_inv_user` FOREIGN KEY (`user_id`)
    REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB CHARSET=utf8mb4;
```

**포인트**:
- UNIQUE `(user_id, item_no)` — 같은 아이템은 한 row 에 quantity 누적
- `ON DUPLICATE KEY UPDATE quantity = quantity + VALUES(quantity)` 패턴으로 buyItem 처리

---

### 4. `skills` — 학습한 스킬

```sql
CREATE TABLE `skills` (
  `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`    VARCHAR(128) NOT NULL,
  `skill_id`   INT NOT NULL,                       -- skill_catalog 의 skill_id 참조
  `learned_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_skill` (`user_id`, `skill_id`),
  CONSTRAINT `fk_skill_user` FOREIGN KEY (`user_id`)
    REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB CHARSET=utf8mb4;
```

UNIQUE 제약 → 같은 스킬 중복 학습 차단.

---

### 5. `rankings` — 일/주 랭킹 스냅샷

```sql
CREATE TABLE `rankings` (
  `id`           BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`      VARCHAR(128) NOT NULL,
  `period`       ENUM('daily','weekly') NOT NULL,
  `period_date`  DATE         NOT NULL,
  `rank_no`      INT          NOT NULL,
  `score`        BIGINT       NOT NULL,
  `delta`        INT          NOT NULL DEFAULT 0,    -- 어제 대비 변동
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_period_user` (`period`, `period_date`, `user_id`),
  KEY `idx_period_rank` (`period`, `period_date`, `rank_no`)
) ENGINE=InnoDB CHARSET=utf8mb4;
```

**현재**: cron 으로 daily snapshot 만 운영. weekly 는 후속.

`rankListFriends.json` 응답의 `delta` 는 어제 row 와 현재 score 비교로 계산.

---

### 6. `notices` — 공지

```sql
CREATE TABLE `notices` (
  `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title`      VARCHAR(255) NOT NULL,
  `body`       TEXT         NOT NULL,
  `is_visible` BOOLEAN      NOT NULL DEFAULT TRUE,
  `starts_at`  TIMESTAMP NULL,
  `ends_at`    TIMESTAMP NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_visible` (`is_visible`, `starts_at`, `ends_at`)
) ENGINE=InnoDB CHARSET=utf8mb4;
```

`/app/member/notice.json` 가 WHERE 절로 활성 항목만 → HTML 렌더해서 반환.

---

### 7. `images` — 틀린그림 스테이지

```sql
CREATE TABLE `images` (
  `img_id`       BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `img`          VARCHAR(255) NOT NULL,             -- "market001.png"
  `x_size`       INT UNSIGNED NOT NULL,             -- 원본 가로
  `y_size`       INT UNSIGNED NOT NULL,             -- 원본 세로
  `x`            INT NOT NULL DEFAULT 0,            -- 표시 좌표 (안드 호환)
  `y`            INT NOT NULL DEFAULT 0,
  `img_type`     TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `image_cut`    TEXT NOT NULL,                     -- JSON: 7개 좌표 [{x,y,w,h}]
  `url_download` VARCHAR(512) DEFAULT NULL,         -- 원본 PNG CDN URL
  `url_detail`   VARCHAR(512) DEFAULT NULL,         -- 광고 클릭 이동 URL
  `url_video`    VARCHAR(512) DEFAULT NULL,
  `ad_caption`   VARCHAR(255) DEFAULT NULL,         -- (mig 003) 광고 문구
  `view`         TINYINT UNSIGNED NOT NULL DEFAULT 1,  -- 노출 on/off
  `view_count`   INT UNSIGNED NOT NULL DEFAULT 0,
  `reg_date`     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`img_id`),
  KEY `idx_view` (`view`, `reg_date`)
) ENGINE=InnoDB CHARSET=utf8mb4;
```

**포인트**:
- `image_cut` 은 JSON 문자열 (TEXT). 클라가 `parseImageCutJson()` 으로 디코드.
- 7개 cut 강제 검증 — 서버 `validateImageCut()` (admin POST/PUT 시) + 클라 검증기 (`validate-image-set.js`)
- [[Asset-Pipeline]] 참조

---

### 8. `ad_images` — 광고 이미지

```sql
CREATE TABLE `ad_images` (
  `ad_id`        BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad_image`     VARCHAR(512) NOT NULL,             -- 광고 이미지 URL
  `ad_name`      VARCHAR(255) NOT NULL,
  `ad_url`       VARCHAR(512) DEFAULT NULL,         -- 클릭 이동 URL
  `expire_date`  DATETIME     NOT NULL,
  `view_count`   INT UNSIGNED NOT NULL DEFAULT 0,
  `click_count`  INT UNSIGNED NOT NULL DEFAULT 0,   -- (mig 002)
  `created_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ad_id`),
  KEY `idx_expire` (`expire_date`)
) ENGINE=InnoDB CHARSET=utf8mb4;
```

CTR = `click_count / view_count` (어드민 `/admin/analytics/ads` 에서 계산).

---

### 9. `iap_receipts` — 영수증 검증 이력

```sql
CREATE TABLE `iap_receipts` (
  `id`             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`        VARCHAR(128) NOT NULL,
  `store`          ENUM('google','samsung','olleh','tstore','apple') NOT NULL,  -- (mig 004 추가 'apple')
  `product_id`     VARCHAR(128) NOT NULL,             -- 스토어 SKU
  `purchase_token` TEXT NOT NULL,                     -- Google purchaseToken / Apple base64 receipt
  `order_id`       VARCHAR(255) DEFAULT NULL,
  `amount_coin`    INT UNSIGNED NOT NULL DEFAULT 0,
  `amount_gem`     INT UNSIGNED NOT NULL DEFAULT 0,
  `verified`       BOOLEAN NOT NULL DEFAULT FALSE,
  `verified_at`    TIMESTAMP NULL DEFAULT NULL,
  `raw_response`   TEXT NULL,                         -- 스토어 API 응답 4000자 자름
  `created_at`     TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_purchase_token` (`purchase_token`(255)),  -- (mig 002 추가)
  UNIQUE KEY `uk_store_order` (`store`, `order_id`),
  KEY `idx_user_store` (`user_id`, `store`)
) ENGINE=InnoDB CHARSET=utf8mb4;
```

**중복 차단 메커니즘**:
1. `purchase_token` UNIQUE — 같은 토큰 두 번 사용 불가 (가장 강력)
2. `(store, order_id)` UNIQUE — 같은 주문 ID 중복 차단

`olleh`/`tstore` enum 값은 04-24.md §3 의 KT/SKT 제거 대상이지만 enum 변경은 호환성 위해 유지.

[[IAP-Integration]] 참조.

---

### 10. `login_logs` — 세션 토큰 + 로그인 이력

```sql
CREATE TABLE `login_logs` (
  `id`             BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`        VARCHAR(128) NOT NULL,
  `session_token`  VARCHAR(64)  NOT NULL,
  `ip`             VARCHAR(64)  DEFAULT NULL,
  `user_agent`     VARCHAR(512) DEFAULT NULL,
  `logged_in_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logged_out_at`  TIMESTAMP NULL DEFAULT NULL,        -- 로그아웃 / 강제 종료 시
  PRIMARY KEY (`id`),
  KEY `idx_token` (`session_token`),
  KEY `idx_user_active` (`user_id`, `logged_out_at`)
) ENGINE=InnoDB CHARSET=utf8mb4;
```

**세션 흐름**:
1. login.json 성공 → 24바이트 opaque 토큰 발급 + 이 테이블 INSERT
2. 같은 user_id 의 기존 active (`logged_out_at IS NULL`) 행은 모두 `logged_out_at = NOW()` 로 갱신 → 중복 로그인 강제 종료
3. logout.json → 해당 토큰의 `logged_out_at = NOW()`

검증 미들웨어 (현재 부분 구현):
```sql
SELECT user_id FROM login_logs
WHERE session_token = ? AND logged_out_at IS NULL
LIMIT 1
```

---

## 마이그레이션 — 4 파일

### 001 `skills_and_expansion.sql` (2026-04-25)

```sql
-- 새 테이블 4개
CREATE TABLE skill_catalog (...);     -- 44개 스킬 마스터
CREATE TABLE item_upgrade_log (...);  -- 강화 감사
CREATE TABLE admin_tokens (...);      -- 어드민 인증
CREATE TABLE ad_reward_log (...);     -- 광고 보상 24h 카운트

-- 컬럼 추가
ALTER TABLE wallets
  ADD COLUMN inventory_size INT NOT NULL DEFAULT 3,
  ADD COLUMN skill_deck_count INT NOT NULL DEFAULT 1;
ALTER TABLE inventories
  ADD COLUMN upgrade_level TINYINT NOT NULL DEFAULT 0;
```

#### `skill_catalog`
```sql
CREATE TABLE `skill_catalog` (
  `skill_id`            INT NOT NULL,
  `code`                VARCHAR(64),
  `name_ko`             VARCHAR(64),
  `name_en`             VARCHAR(64),
  `group_code`          VARCHAR(16),    -- 'cat', 'dog', 'exp', 'flame', 'snow'
  `tier`                TINYINT,        -- 1..9
  `unlock_level`        INT,
  `attack_duration`     DECIMAL(4,2),
  `point_cost`          INT,
  `required_skill_ids`  VARCHAR(64),    -- CSV "14,20"
  `asset_group`         VARCHAR(32),
  PRIMARY KEY (`skill_id`)
);
```

44 row INSERT (`seed_skills.sql`). [[Game-Design#스킬-시스템--44개-스킬-트리]] 참조.

#### `item_upgrade_log`
```sql
CREATE TABLE `item_upgrade_log` (
  `id`           BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`      VARCHAR(128) NOT NULL,
  `inventory_id` BIGINT UNSIGNED NOT NULL,
  `from_level`   TINYINT NOT NULL,
  `to_level`     TINYINT NOT NULL,
  `success`      BOOLEAN NOT NULL,
  `coin_cost`    INT NOT NULL,
  `flux_used`    ENUM('none','flux','advanced_flux') NOT NULL DEFAULT 'none',
  `created_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)
);
```

부정 결제 분석 / 분쟁 시 추적용.

#### `admin_tokens`
```sql
CREATE TABLE `admin_tokens` (
  `token`         VARCHAR(64) NOT NULL,
  `description`   VARCHAR(255),
  `created_at`    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revoked_at`    TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`token`)
);
```

기본 시드: `dev-admin-token-change-me` — **운영 시 반드시 회전**.

#### `ad_reward_log`
```sql
CREATE TABLE `ad_reward_log` (
  `id`          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`     VARCHAR(128) NOT NULL,
  `ad_id`       BIGINT UNSIGNED NOT NULL,
  `coin_reward` INT NOT NULL,
  `created_at`  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)  -- 24h 카운트 쿼리용
);
```

---

### 002 `priority2.sql` (2026-04-25)

```sql
-- members
ALTER TABLE members
  ADD COLUMN fcm_token VARCHAR(512),
  ADD COLUMN last_active_at TIMESTAMP NULL,
  ADD INDEX idx_last_active (last_active_at);

-- 새 테이블
CREATE TABLE event_log (...);     -- 분석 이벤트 (game_start, purchase 등)
CREATE TABLE ad_click_log (...);  -- 광고 클릭

-- 컬럼 추가
ALTER TABLE ad_images ADD COLUMN click_count INT UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE iap_receipts ADD UNIQUE KEY uk_purchase_token (purchase_token(255));
```

#### `event_log`
```sql
CREATE TABLE `event_log` (
  `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`    VARCHAR(128) DEFAULT NULL,         -- NULL = 익명
  `event_name` VARCHAR(64)  NOT NULL,             -- 'game_start', 'purchase', ...
  `payload`    JSON         DEFAULT NULL,         -- 자유 형식, 4000자 자름
  `session_id` VARCHAR(64)  DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_event_time` (`event_name`, `created_at`),
  KEY `idx_user_time` (`user_id`, `created_at`)
);
```

#### `ad_click_log`
```sql
CREATE TABLE `ad_click_log` (
  `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`    VARCHAR(128) DEFAULT NULL,
  `ad_id`      BIGINT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_ad_time` (`ad_id`, `created_at`)
);
```

`iap_receipts.purchase_token` UNIQUE 추가 — 같은 영수증 재사용 차단.

---

### 003 `image_ad_caption.sql` (2026-04-25)

```sql
ALTER TABLE images
  ADD COLUMN ad_caption VARCHAR(255) DEFAULT NULL;
```

원본 xls 의 "광고문구" 컬럼 매핑. [[Asset-Pipeline]] 참조.

---

### 004 `iap_apple.sql` (2026-04-26)

```sql
ALTER TABLE iap_receipts
  MODIFY COLUMN store ENUM('google','samsung','olleh','tstore','apple') NOT NULL;
```

Apple App Store 영수증 store 값 추가. [[IAP-Integration#Apple]] 참조.

---

## `push_log` — 푸시 송신 이력 (mig 002 일부)

```sql
CREATE TABLE `push_log` (
  `id`           BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id`      VARCHAR(128) DEFAULT NULL,
  `type`         VARCHAR(32) NOT NULL,            -- 'invite', 'notice', 'custom'
  `title`        VARCHAR(255),
  `body`         TEXT,
  `data`         JSON,
  `success`      BOOLEAN NOT NULL,
  `error_msg`    VARCHAR(512) DEFAULT NULL,
  `created_at`   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)
);
```

[[Push-Notifications]] 참조.

---

## 자주 쓰는 쿼리

### 어제 vs 오늘 랭킹 (delta 계산)
```sql
SELECT m.user_id, w.score,
       (SELECT rank_no FROM rankings
        WHERE user_id = m.user_id AND period='daily'
          AND period_date = DATE_SUB(CURDATE(), INTERVAL 1 DAY)) AS yesterday_rank,
       RANK() OVER (ORDER BY w.score DESC) AS today_rank
FROM wallets w JOIN members m ON m.user_id = w.user_id;
```

### 24h 광고 보상 일일 상한
```sql
SELECT COUNT(*) FROM ad_reward_log
WHERE user_id = ? AND created_at >= DATE_SUB(NOW(), INTERVAL 1 DAY);
```

### 상위 매출 SKU
```sql
SELECT product_id, SUM(amount_coin) AS coins, COUNT(*) AS sales
FROM iap_receipts
WHERE verified = TRUE AND created_at >= DATE_SUB(NOW(), INTERVAL 30 DAY)
GROUP BY product_id ORDER BY sales DESC;
```

### 활성 세션 (현재 로그인 중인 사용자)
```sql
SELECT user_id, session_token, logged_in_at FROM login_logs
WHERE logged_out_at IS NULL
  AND logged_in_at >= DATE_SUB(NOW(), INTERVAL 30 DAY);
```

### 인기 이벤트 top 50 (24h)
```sql
SELECT event_name, COUNT(*) AS cnt
FROM event_log
WHERE created_at >= DATE_SUB(NOW(), INTERVAL 24 HOUR)
GROUP BY event_name ORDER BY cnt DESC LIMIT 50;
```

---

## 운영 시 권장

### 인덱스 추가
- `members.created_at` — 가입 추세 분석 시
- `iap_receipts.created_at` — 매출 추이 (현재 PK 만 있음)
- `event_log.created_at` 단독 — 시간 범위 + GROUP BY

### Partition (대용량)
- `event_log` — 월 단위 RANGE (1년 후 archive)
- `ad_click_log` 도 동일

### 백업
- Cloud SQL 자동 백업 1일 + Point-in-time recovery 7일 권장
- iap_receipts / event_log / item_upgrade_log 는 절대 truncate 금지 (분쟁 / 정산 추적)

### 성능 모니터링
- Cloud SQL Insights 또는 `EXPLAIN` 으로 slow query 추적
- 가장 무거운 쿼리: `rankList` (전체 순회) — 매번 RANK() OVER 라 LIMIT 100 으로 cap

---

## 마이그레이션 적용

### 신규 환경
```bash
cd server
npm run db:init   # 자동: schema.sql + 4 mig + seed
```

### 기존 환경에 마이그 추가
```bash
mysql -u findit -p findit < server/sql/migrations/004_iap_apple.sql
```

또는 `db-init.js` 가 idempotent (`IF NOT EXISTS` / `ADD COLUMN IF NOT EXISTS` 사용) — 재실행해도 안전.

---

## 외래키 정책

`ON DELETE CASCADE`:
- `wallets`, `inventories`, `skills`, `login_logs`, `push_log`, `event_log` 의 `user_id` → members 삭제 시 자동 연쇄

`ON DELETE NO ACTION` (기본):
- `iap_receipts`, `item_upgrade_log`, `ad_reward_log` — 회원 삭제해도 결제/감사 기록은 보존 (분쟁 추적)

회원 탈퇴 시:
```sql
DELETE FROM members WHERE user_id = ?;
-- → wallets/inventories/skills/login_logs/push_log/event_log 자동 삭제
-- → iap_receipts/item_upgrade_log 는 user_id 만 보관 (orphan)
```
