-- 로컬 개발용 시드 데이터

-- 테스트 계정: test@findit.com / 1234
INSERT INTO `members` (`user_id`, `user_pass_hash`, `user_nick`, `user_character`, `user_device`, `auth_type`)
VALUES
  ('test@findit.com',  '$2a$10$D9A3q7vEQLgC8.oEZbYXMu8VBQBzqLQ6K0s9gY1PE4Iq1gB4kL7FC', 'tester',  0, '1', 'email'),
  ('alice@findit.com', '$2a$10$D9A3q7vEQLgC8.oEZbYXMu8VBQBzqLQ6K0s9gY1PE4Iq1gB4kL7FC', 'alice',   1, '1', 'email'),
  ('bob@findit.com',   '$2a$10$D9A3q7vEQLgC8.oEZbYXMu8VBQBzqLQ6K0s9gY1PE4Iq1gB4kL7FC', 'bob',     2, '1', 'email');

INSERT INTO `wallets` (`user_id`, `level`, `score`, `coin`, `point`, `gem`, `attack`, `defense`, `hp`)
VALUES
  ('test@findit.com',  1,   0,   10, 2, 0, 0, 0, 110),
  ('alice@findit.com', 15,  175710, 500, 15, 5, 5, 5, 300),
  ('bob@findit.com',   30,  839358, 1200, 30, 20, 10, 10, 500);

INSERT INTO `inventories` (`user_id`, `item_no`, `item_type`, `quantity`)
VALUES
  ('alice@findit.com', 38, 'PEN', 1),
  ('alice@findit.com', 41, 'RING', 1),
  ('alice@findit.com', 43, 'BERRY', 5),
  ('bob@findit.com',   40, 'PEN', 1),
  ('bob@findit.com',   42, 'RING', 1);

INSERT INTO `skills` (`user_id`, `skill_id`) VALUES
  ('alice@findit.com', 13),
  ('alice@findit.com', 14),
  ('bob@findit.com',   13),
  ('bob@findit.com',   14),
  ('bob@findit.com',   15),
  ('bob@findit.com',   16);

INSERT INTO `notices` (`title`, `body`, `is_visible`) VALUES
  ('서버 재구축 완료', '원본 14.63.220.39 서버 대체 서버가 배포되었습니다. 기획 2013-07-02 최종 밸런스 적용.', TRUE),
  ('신규 보석 재화', '보석(Gem) 재화가 추가되었습니다. 유료 상품 구매 시 지급됩니다.', TRUE);

INSERT INTO `images` (`img`, `x_size`, `y_size`, `image_cut`, `url_download`, `view`) VALUES
  ('market001.png', 800, 480,
   '[{"x":195,"y":66,"w":100,"h":100},{"x":445,"y":6,"w":130,"h":130},{"x":287,"y":630,"w":100,"h":80},{"x":451,"y":208,"w":80,"h":80},{"x":0,"y":117,"w":100,"h":100},{"x":213,"y":416,"w":80,"h":80},{"x":560,"y":354,"w":80,"h":90}]',
   'https://cdn.findit.example/images/market001.png', 1);

INSERT INTO `ad_images` (`ad_image`, `ad_name`, `ad_url`, `expire_date`) VALUES
  ('https://cdn.findit.example/ads/sample.png', '샘플 광고', 'https://example.com', DATE_ADD(NOW(), INTERVAL 90 DAY));
