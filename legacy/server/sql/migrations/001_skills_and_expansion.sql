-- 2026-04-25: 1.5 (스킬 트리) + 1.6 (재화/아이템 확장) + 1.9 (레벨 체계)
-- 기존 배포 시 재실행 안전. 신규 배포는 schema.sql 만 사용해도 됨.

SET NAMES utf8mb4;

-- -----------------------------------------------------
-- wallets: 인벤토리/스킬덱 슬롯 크기
-- -----------------------------------------------------
ALTER TABLE `wallets`
  ADD COLUMN IF NOT EXISTS `inventory_size` TINYINT UNSIGNED NOT NULL DEFAULT 3
    COMMENT '인벤토리 총 슬롯 수 (기본 3, 확장 시 +3씩 최대 30)',
  ADD COLUMN IF NOT EXISTS `skill_deck_count` TINYINT UNSIGNED NOT NULL DEFAULT 1
    COMMENT '스킬덱 개수 (기본 1, 최대 4 — Objects.SETSKILL_TOTALNUM)';

-- -----------------------------------------------------
-- skill_catalog: 44개 스킬 마스터 데이터 (기획 findit_item,skill,shop_20130702.xlsx)
-- -----------------------------------------------------
DROP TABLE IF EXISTS `skill_catalog`;
CREATE TABLE `skill_catalog` (
  `skill_id` INT NOT NULL COMMENT 'Skill.mId (고유) — 13,14,... 체계',
  `code` VARCHAR(64) NOT NULL COMMENT '식별자 (cat_claw_1, dog_print_1, ...)',
  `name_ko` VARCHAR(64) NOT NULL,
  `name_en` VARCHAR(64) NOT NULL,
  `group_code` ENUM('cat','dog','explosion','flame','snow','powerful_ex','powerful_fl','powerful_sn') NOT NULL,
  `tier` TINYINT UNSIGNED NOT NULL COMMENT '계열 내 단계 (1~9)',
  `unlock_level` INT UNSIGNED NOT NULL COMMENT '최소 레벨',
  `attack_duration` DECIMAL(3,1) NOT NULL COMMENT '공격 지속시간(초)',
  `point_cost` INT UNSIGNED NOT NULL DEFAULT 1,
  `required_skill_ids` VARCHAR(255) NOT NULL DEFAULT ''
    COMMENT '선행 스킬 CSV (예: "13,14"). 모두 학습해야 해금',
  `asset_group` VARCHAR(32) NOT NULL
    COMMENT '클라 애니메이션 에셋 그룹 (cat/dog/explosion/flame/snow/... — 같은 그룹은 같은 에셋 재사용)',
  PRIMARY KEY (`skill_id`),
  UNIQUE KEY `uk_code` (`code`),
  KEY `idx_group_tier` (`group_code`, `tier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- item_upgrade_log: 아이템 강화 시도 이력 (감사 + 업그레이드 확률 검증)
-- -----------------------------------------------------
DROP TABLE IF EXISTS `item_upgrade_log`;
CREATE TABLE `item_upgrade_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `inventory_id` BIGINT UNSIGNED NOT NULL,
  `from_level` TINYINT UNSIGNED NOT NULL,
  `to_level` TINYINT UNSIGNED NOT NULL,
  `success` BOOLEAN NOT NULL,
  `coin_cost` INT UNSIGNED NOT NULL,
  `flux_used` ENUM('none','flux','advanced_flux') NOT NULL DEFAULT 'none'
    COMMENT '확률 보정 아이템',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- admin_tokens: 어드민 API 접근 토큰
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `admin_tokens` (
  `token` VARCHAR(128) NOT NULL,
  `name` VARCHAR(64) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revoked_at` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- -----------------------------------------------------
-- ad_reward_log: 광고 보상 수령 이력 (사용자당 24h 상한 체크)
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ad_reward_log` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(128) NOT NULL,
  `ad_id` BIGINT UNSIGNED NOT NULL,
  `coin_reward` INT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_time` (`user_id`, `created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
