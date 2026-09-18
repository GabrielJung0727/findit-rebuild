-- 2026-04-26: §10 IAP Apple 추가 — `iap_receipts.store` enum 에 'apple' 추가.
--
-- Apple App Store Server API v1 (`/verifyReceipt`) 또는 v2 (JWS) 영수증 모두
-- store='apple' 로 기록. transaction_id 가 orderId 자리에 들어감.

SET NAMES utf8mb4;

ALTER TABLE `iap_receipts`
  MODIFY COLUMN `store` ENUM('google','samsung','olleh','tstore','apple') NOT NULL;
