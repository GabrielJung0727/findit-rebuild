-- 005_gifts: 친구 선물 (코인/아이템). routes/gifts.js + util/gifts.js.
-- 기존 운영 DB 에 추가 적용용 (fresh 설치는 schema.sql 에 포함됨).

CREATE TABLE IF NOT EXISTS `gifts` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_user` VARCHAR(128) NOT NULL,
  `to_user` VARCHAR(128) NOT NULL,
  `kind` ENUM('coin','item') NOT NULL DEFAULT 'coin',
  `amount` INT UNSIGNED NOT NULL DEFAULT 0 COMMENT '코인 금액 또는 아이템 수량',
  `item_no` INT DEFAULT NULL COMMENT 'kind=item 일 때 Items.java mTypeNo',
  `claimed_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_to_unclaimed` (`to_user`, `claimed_at`),
  KEY `idx_from_time` (`from_user`, `created_at`),
  CONSTRAINT `fk_gift_from` FOREIGN KEY (`from_user`) REFERENCES `members`(`user_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gift_to` FOREIGN KEY (`to_user`) REFERENCES `members`(`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
