-- FindIt: Rebuild 서버 스키마 (MySQL 8.0+)
-- 기획서 "작업 우선순위 v.0.5.docx" 1순위 DB 스키마 구현
--
-- 생성 순서: 부모 → 자식. DROP 은 역순.

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `push_log`;
DROP TABLE IF EXISTS `ad_click_log`;
DROP TABLE IF EXISTS `event_log`;
DROP TABLE IF EXISTS `ad_reward_log`;
DROP TABLE IF EXISTS `admin_tokens`;
DROP TABLE IF EXISTS `item_upgrade_log`;
DROP TABLE IF EXISTS `skill_catalog`;
DROP TABLE IF EXISTS `login_logs`;
DROP TABLE IF EXISTS `iap_receipts`;
DROP TABLE IF EXISTS `rankings`;
DROP TABLE IF EXISTS `skills`;
DROP TABLE IF EXISTS `inventories`;
DROP TABLE IF EXISTS `wallets`;
DROP TABLE IF EXISTS `ad_images`;
DROP TABLE IF EXISTS `images`;
DROP TABLE IF EXISTS `notices`;
DROP TABLE IF EXISTS `members`;

SET FOREIGN_KEY_CHECKS=1;

-- -----------------------------------------------------
-- members: 회원 (이메일, 암호, 닉네임, 캐릭터)
-- -----------------------------------------------------
CREATE TABLE `members` (
  `user_id` VARCHAR(128) NOT NULL COMMENT '이메일 또는 facebook UID (클라의 userId 와 동일)',
  `user_pass_hash` VARCHAR(255) NOT NULL COMMENT 'bcrypt 해시 (Guest/Facebook 의 경우 sentinel)',
  `user_nick` VARCHAR(64) NOT NULL,
  `user_character` TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '0~2 캐릭터 인덱스',
  `user_device` VARCHAR(16) NOT NULL DEFAULT '0' COMMENT '1=Android, 2=iOS 등',
  `auth_type` ENUM('email','guest','facebook') NOT NULL DEFAULT 'email',
  `fcm_token` VARCHAR(512) DEFAULT NULL COMMENT 'Firebase Cloud Messaging 토큰',
  `last_active_at` TIMESTAMP NULL DEFAULT NULL COMMENT 'DAU 계산용',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uk_user_nick` (`user_nick`),
  KEY `idx_last_active` (`last_active_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- wallets: 재화 (코인, 포인트, 보석)
-- 보석(gem)은 기획서 "스킬트리_02.xlsx+" 부터 도입된 세번째 재화
-- -----------------------------------------------------
CREATE TABLE `wallets` (
  `user_id` VARCHAR(128) NOT NULL,
  `level` INT UNSIGNED NOT NULL DEFAULT 1,
  `score` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `coin` BIGINT UNSIGNED NOT NULL DEFAULT 10 COMMENT '기획 초기값 10',
  `point` INT UNSIGNED NOT NULL DEFAULT 2 COMMENT '스킬 포인트, 초기값 2',
  `gem` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '보석 (유료 재화)',
  `attack` INT UNSIGNED NOT NULL DEFAULT 0,
  `defense` INT UNSIGNED NOT NULL DEFAULT 0,
  `hp` INT UNSIGNED NOT NULL DEFAULT 100,
  `inventory_size` TINYINT UNSIGNED NOT NULL DEFAULT 3 COMMENT '기본 3 → 9단계 × +3 = 최대 30',
  `skill_deck_count` TINYINT UNSIGNED NOT NULL DEFAULT 1 COMMENT '기본 1 → 최대 4 (SETSKILL_TOTALNUM)',
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_wallets_user` FOREIGN KEY (`user_id`) REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- skill_catalog: 44개 스킬 마스터 데이터 (기획 findit_item,skill,shop_20130702.xlsx)
-- -----------------------------------------------------
CREATE TABLE `skill_catalog` (
  `skill_id` INT NOT NULL,
  `code` VARCHAR(64) NOT NULL,
  `name_ko` VARCHAR(64) NOT NULL,
  `name_en` VARCHAR(64) NOT NULL,
  `group_code` ENUM('cat','dog','explosion','flame','snow','powerful_ex','powerful_fl','powerful_sn') NOT NULL,
  `tier` TINYINT UNSIGNED NOT NULL,
  `unlock_level` INT UNSIGNED NOT NULL,
  `attack_duration` DECIMAL(3,1) NOT NULL,
  `point_cost` INT UNSIGNED NOT NULL DEFAULT 1,
  `required_skill_ids` VARCHAR(255) NOT NULL DEFAULT '',
  `asset_group` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`skill_id`),
  UNIQUE KEY `uk_code` (`code`),
  KEY `idx_group_tier` (`group_code`, `tier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- item_upgrade_log: 아이템 강화 시도 감사 로그
-- -----------------------------------------------------
CREATE TABLE `item_upgrade_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `inventory_id` BIGINT UNSIGNED NOT NULL,
  `from_level` TINYINT UNSIGNED NOT NULL,
  `to_level` TINYINT UNSIGNED NOT NULL,
  `success` BOOLEAN NOT NULL,
  `coin_cost` INT UNSIGNED NOT NULL,
  `flux_used` ENUM('none','flux','advanced_flux') NOT NULL DEFAULT 'none',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- admin_tokens: 어드민 API 접근 토큰
-- -----------------------------------------------------
CREATE TABLE `admin_tokens` (
  `token` VARCHAR(128) NOT NULL,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revoked_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- ad_reward_log: 광고 보상 수령 이력 (24h rate limit)
-- -----------------------------------------------------
CREATE TABLE `ad_reward_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `ad_id` BIGINT UNSIGNED NOT NULL,
  `coin_reward` INT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- event_log: 클라가 보고하는 이벤트 (Google Analytics 대체)
-- -----------------------------------------------------
CREATE TABLE `event_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) DEFAULT NULL,
  `event_name` VARCHAR(64) NOT NULL,
  `payload` JSON DEFAULT NULL,
  `session_id` VARCHAR(64) DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_event_time` (`event_name`, `created_at`),
  KEY `idx_user_time` (`user_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- ad_click_log: 광고 클릭 이력
-- -----------------------------------------------------
CREATE TABLE `ad_click_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) DEFAULT NULL,
  `ad_id` BIGINT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_ad_time` (`ad_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- push_log: FCM 푸시 발송 이력
-- -----------------------------------------------------
CREATE TABLE `push_log` (
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

-- -----------------------------------------------------
-- inventories: 보유 아이템
-- itemNo 는 Items.java 의 typeno (pen=38~40, ring=41~42, berry=43~48, potion=49~53, gold=55~58, etc=0~2)
-- -----------------------------------------------------
CREATE TABLE `inventories` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `item_no` INT NOT NULL COMMENT 'Items.java mTypeNo',
  `item_type` VARCHAR(16) NOT NULL COMMENT 'PEN/RING/BERRY/POTION/GOLD/ETC',
  `quantity` INT UNSIGNED NOT NULL DEFAULT 1,
  `upgrade_level` TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '아이템 강화 단계 0~10',
  `seqs` VARCHAR(255) DEFAULT NULL COMMENT 'Items.java mSeqs (구매/장착 이력 문자열)',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_item` (`user_id`, `item_no`),
  KEY `idx_user` (`user_id`),
  CONSTRAINT `fk_inv_user` FOREIGN KEY (`user_id`) REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- skills: 학습 스킬
-- skillId: Objects.java Skill.mId (13, 14, 15, ...) — 기획서 기준 최대 44개 예정
-- -----------------------------------------------------
CREATE TABLE `skills` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `skill_id` INT NOT NULL,
  `learned_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_skill` (`user_id`, `skill_id`),
  KEY `idx_user` (`user_id`),
  CONSTRAINT `fk_skills_user` FOREIGN KEY (`user_id`) REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- rankings: 일/주 집계 (cron 으로 summary 생성)
-- 실시간 순위는 wallets.score 기준 view / query 로 제공
-- -----------------------------------------------------
CREATE TABLE `rankings` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `period` ENUM('daily','weekly') NOT NULL,
  `period_date` DATE NOT NULL COMMENT '집계 기준 날짜',
  `score` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `rank_no` INT UNSIGNED NOT NULL DEFAULT 0,
  `delta` INT NOT NULL DEFAULT 0 COMMENT '전일 대비 순위 변화(+상승/-하락)',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_period` (`user_id`, `period`, `period_date`),
  KEY `idx_period_rank` (`period`, `period_date`, `rank_no`),
  CONSTRAINT `fk_rank_user` FOREIGN KEY (`user_id`) REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- notices: 공지사항
-- -----------------------------------------------------
CREATE TABLE `notices` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `body` TEXT NOT NULL,
  `is_visible` BOOLEAN NOT NULL DEFAULT TRUE,
  `starts_at` TIMESTAMP NULL DEFAULT NULL,
  `ends_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_visible` (`is_visible`, `starts_at`, `ends_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- images: 틀린그림 스테이지 이미지 (좌표 포함)
-- 기획서 findit_틀린그림가이드_20120704.xls 포맷 준수
-- -----------------------------------------------------
CREATE TABLE `images` (
  `img_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` VARCHAR(255) NOT NULL COMMENT '원본 파일명 (market001.png 등)',
  `x_size` INT UNSIGNED NOT NULL,
  `y_size` INT UNSIGNED NOT NULL,
  `x` INT NOT NULL DEFAULT 0 COMMENT '이미지 표시 x',
  `y` INT NOT NULL DEFAULT 0 COMMENT '이미지 표시 y',
  `img_type` TINYINT UNSIGNED NOT NULL DEFAULT 0,
  `image_cut` TEXT NOT NULL COMMENT 'JSON: 7개 틀린 부위 [{x,y,w,h}, ...]',
  `url_download` VARCHAR(512) DEFAULT NULL COMMENT 'CDN URL',
  `url_detail` VARCHAR(512) DEFAULT NULL,
  `url_video` VARCHAR(512) DEFAULT NULL,
  `view` TINYINT UNSIGNED NOT NULL DEFAULT 1,
  `view_count` INT UNSIGNED NOT NULL DEFAULT 0,
  `reg_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`img_id`),
  KEY `idx_view` (`view`, `reg_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- ad_images: 광고 이미지
-- -----------------------------------------------------
CREATE TABLE `ad_images` (
  `ad_id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad_image` VARCHAR(512) NOT NULL COMMENT '광고 이미지 URL',
  `ad_name` VARCHAR(255) NOT NULL,
  `ad_url` VARCHAR(512) DEFAULT NULL COMMENT '클릭 시 이동 URL',
  `expire_date` DATETIME NOT NULL,
  `view_count` INT UNSIGNED NOT NULL DEFAULT 0,
  `click_count` INT UNSIGNED NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ad_id`),
  KEY `idx_expire` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- iap_receipts: 결제 영수증 검증 이력 (Google Play, Samsung)
-- -----------------------------------------------------
CREATE TABLE `iap_receipts` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `store` ENUM('google','samsung','olleh','tstore') NOT NULL,
  `product_id` VARCHAR(128) NOT NULL COMMENT '상점 SKU',
  `purchase_token` TEXT NOT NULL,
  `order_id` VARCHAR(255) DEFAULT NULL,
  `amount_coin` INT UNSIGNED NOT NULL DEFAULT 0,
  `amount_gem` INT UNSIGNED NOT NULL DEFAULT 0,
  `verified` BOOLEAN NOT NULL DEFAULT FALSE,
  `verified_at` TIMESTAMP NULL DEFAULT NULL,
  `raw_response` TEXT DEFAULT NULL COMMENT '스토어 API 원본 응답',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_store_order` (`store`, `order_id`),
  KEY `idx_user` (`user_id`),
  KEY `idx_purchase_token` (`purchase_token`(128)),
  CONSTRAINT `fk_iap_user` FOREIGN KEY (`user_id`) REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- login_logs: 중복 로그인 차단 + 감사 로그
-- -----------------------------------------------------
CREATE TABLE `login_logs` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `session_token` VARCHAR(128) NOT NULL,
  `ip` VARCHAR(45) DEFAULT NULL,
  `user_agent` VARCHAR(255) DEFAULT NULL,
  `logged_in_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logged_out_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_active` (`user_id`, `logged_out_at`),
  CONSTRAINT `fk_log_user` FOREIGN KEY (`user_id`) REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
