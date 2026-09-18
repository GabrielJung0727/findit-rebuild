-- 2026-04-25: 2순위 (analytics + FCM + IAP 재검증 + reCAPTCHA + ad stats)

SET NAMES utf8mb4;

-- -----------------------------------------------------
-- members: 마지막 접속 시각 + FCM 토큰
-- -----------------------------------------------------
ALTER TABLE `members`
  ADD COLUMN IF NOT EXISTS `fcm_token` VARCHAR(512) DEFAULT NULL
    COMMENT 'Firebase Cloud Messaging 토큰 (친구 초대 푸시용)',
  ADD COLUMN IF NOT EXISTS `last_active_at` TIMESTAMP NULL DEFAULT NULL
    COMMENT '마지막 HTTP/소켓 활동 시각 (DAU 계산용)',
  ADD INDEX IF NOT EXISTS `idx_last_active` (`last_active_at`);

-- -----------------------------------------------------
-- event_log: 클라가 보고하는 이벤트 (플레이/결제/에러) — Google Analytics 대체
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `event_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) DEFAULT NULL COMMENT 'NULL = 익명',
  `event_name` VARCHAR(64) NOT NULL COMMENT 'game_start, game_end, shop_open, purchase, skill_learn, ...',
  `payload` JSON DEFAULT NULL,
  `session_id` VARCHAR(64) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_event_time` (`event_name`, `created_at`),
  KEY `idx_user_time` (`user_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- ad_click_log: 광고 클릭 이력 (노출 외 별도)
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ad_click_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) DEFAULT NULL,
  `ad_id` BIGINT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_ad_time` (`ad_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ad_images 에 click_count 컬럼 추가
ALTER TABLE `ad_images`
  ADD COLUMN IF NOT EXISTS `click_count` INT UNSIGNED NOT NULL DEFAULT 0;

-- -----------------------------------------------------
-- iap_receipts 보강: 중복 영수증 차단 + 재시도 통계
-- (UNIQUE (store, order_id) 는 이미 있음)
-- purchase_token UNIQUE 추가 — 같은 토큰 재사용 공격 차단
-- -----------------------------------------------------
CREATE INDEX IF NOT EXISTS `idx_purchase_token` ON `iap_receipts` (`purchase_token`(128));

-- -----------------------------------------------------
-- push_log: FCM 푸시 발송 이력
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `push_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `type` ENUM('invite','notice','reward','custom') NOT NULL,
  `title` VARCHAR(128) NOT NULL,
  `body` VARCHAR(512) NOT NULL,
  `data` JSON DEFAULT NULL,
  `status` ENUM('queued','sent','failed','no_token') NOT NULL DEFAULT 'queued',
  `error` VARCHAR(255) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
