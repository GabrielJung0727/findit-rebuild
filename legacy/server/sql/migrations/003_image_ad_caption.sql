-- 2026-04-25: 이미지 콘텐츠 — 광고문구 컬럼 추가
-- 기획서 findit_틀린그림가이드_20120704.xls 의 "광고문구" / "관련URL" 필드 매핑.
--
-- xls 컬럼 → 서버 컬럼
--   원본파일명         → images.img
--   No. (1~7)          → image_cut[index]
--   좌표(x, y)         → image_cut[i].{x,y}
--   가로세로사이즈      → image_cut[i].{w,h}
--   광고문구           → images.ad_caption  (이번 마이그레이션에서 추가)
--   관련URL            → images.url_detail (클릭시 이동)

SET NAMES utf8mb4;

ALTER TABLE `images`
  ADD COLUMN IF NOT EXISTS `ad_caption` VARCHAR(255) DEFAULT NULL
    COMMENT '광고문구 — 이미지 클리어 시 노출되는 광고 카피 (xls 광고문구 컬럼)';
