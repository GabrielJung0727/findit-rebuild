-- 44개 스킬 시드 (기획 findit_item,skill,shop_20130702.xlsx "basic skill" 시트)
-- skill_id 할당 규칙: 기존 client 의 13~14 를 cat_claw_1/2 로 매핑, 15~ 부터 새 ID
-- 클라는 이 테이블을 받아 동적으로 스킬 목록을 구성 (또는 client hardcoded 8개는 tier 1~3 첫 슬롯들)
-- asset_group: 클라 애니메이션 에셋 재사용 그룹 (같은 그룹 = 같은 이미지)

-- 기존 client 호환 ID:
--   13 = Puppy's footprint → dog/tier1 로 배치
--   14 = Cat's claw        → cat/tier1
--   15~17 = Explosion 1,2,3
--   18~19 = Flame 1,2  (기존 8개 커버)
-- 신규 ID 20~ 으로 확장

SET NAMES utf8mb4;
DELETE FROM `skill_catalog`;

INSERT INTO `skill_catalog`
  (`skill_id`, `code`, `name_ko`, `name_en`, `group_code`, `tier`, `unlock_level`, `attack_duration`, `point_cost`, `required_skill_ids`, `asset_group`)
VALUES
  -- 고양이발톱 1~9 (cat) 기존 Skill.mId=14 호환으로 cat_1=14, 나머지 신규
  (14,  'cat_1',  '고양이발톱1',  'Cat''s claw 1',  'cat', 1, 1, 1.0, 1, '',       'cat'),
  (20,  'cat_2',  '고양이발톱2',  'Cat''s claw 2',  'cat', 2, 2, 1.1, 1, '14',     'cat'),
  (21,  'cat_3',  '고양이발톱3',  'Cat''s claw 3',  'cat', 3, 3, 1.2, 1, '20',     'cat'),
  (22,  'cat_4',  '고양이발톱4',  'Cat''s claw 4',  'cat', 4, 4, 1.3, 1, '21',     'cat'),
  (23,  'cat_5',  '고양이발톱5',  'Cat''s claw 5',  'cat', 5, 5, 1.4, 1, '22',     'cat'),
  (24,  'cat_6',  '고양이발톱6',  'Cat''s claw 6',  'cat', 6, 6, 1.5, 1, '23',     'cat'),
  (25,  'cat_7',  '고양이발톱7',  'Cat''s claw 7',  'cat', 7, 7, 1.6, 1, '24',     'cat'),
  (26,  'cat_8',  '고양이발톱8',  'Cat''s claw 8',  'cat', 8, 8, 1.7, 1, '25',     'cat'),
  (27,  'cat_9',  '고양이발톱9',  'Cat''s claw 9',  'cat', 9, 9, 1.8, 1, '26',     'cat'),

  -- 강아지발자국 1~5 (dog) — 선행 cat_5 (기획 기준)
  (13,  'dog_1',  '강아지발자국1','Puppy''s footprint 1','dog', 1, 10, 1.9, 1, '23',     'dog'),
  (30,  'dog_2',  '강아지발자국2','Puppy''s footprint 2','dog', 2, 11, 2.0, 1, '13',     'dog'),
  (31,  'dog_3',  '강아지발자국3','Puppy''s footprint 3','dog', 3, 12, 2.1, 1, '30',     'dog'),
  (32,  'dog_4',  '강아지발자국4','Puppy''s footprint 4','dog', 4, 13, 2.2, 1, '31',     'dog'),
  (33,  'dog_5',  '강아지발자국5','Puppy''s footprint 5','dog', 5, 14, 2.3, 1, '32',     'dog'),

  -- 폭발 1~5 (explosion) — 선행 cat_8 + dog_5
  (15,  'ex_1',   '폭발1',        'Explosion 1',    'explosion', 1, 15, 2.0, 1, '26,33', 'explosion'),
  (40,  'ex_2',   '폭발2',        'Explosion 2',    'explosion', 2, 16, 2.1, 1, '15',    'explosion'),
  (41,  'ex_3',   '폭발3',        'Explosion 3',    'explosion', 3, 17, 2.2, 1, '40',    'explosion'),
  (42,  'ex_4',   '폭발4',        'Explosion 4',    'explosion', 4, 18, 2.3, 1, '41',    'explosion'),
  (43,  'ex_5',   '폭발5',        'Explosion 5',    'explosion', 5, 19, 2.4, 1, '42',    'explosion'),

  -- 불꽃 1~5 (flame) — 선행 ex_5
  (16,  'fl_1',   '불꽃1',        'Flame 1',        'flame', 1, 20, 2.5, 1, '43',    'flame'),
  (50,  'fl_2',   '불꽃2',        'Flame 2',        'flame', 2, 21, 2.6, 1, '16',    'flame'),
  (51,  'fl_3',   '불꽃3',        'Flame 3',        'flame', 3, 22, 2.7, 1, '50',    'flame'),
  (52,  'fl_4',   '불꽃4',        'Flame 4',        'flame', 4, 23, 2.8, 1, '51',    'flame'),
  (53,  'fl_5',   '불꽃5',        'Flame 5',        'flame', 5, 24, 2.9, 1, '52',    'flame'),

  -- 눈꽃 1~5 (snow) — 선행 fl_5
  (17,  'sn_1',   '눈꽃1',        'Snowflake 1',    'snow', 1, 25, 3.0, 1, '53',    'snow'),
  (60,  'sn_2',   '눈꽃2',        'Snowflake 2',    'snow', 2, 26, 3.2, 1, '17',    'snow'),
  (61,  'sn_3',   '눈꽃3',        'Snowflake 3',    'snow', 3, 27, 3.4, 1, '60',    'snow'),
  (62,  'sn_4',   '눈꽃4',        'Snowflake 4',    'snow', 4, 28, 3.5, 1, '61',    'snow'),
  (63,  'sn_5',   '눈꽃5',        'Snowflake 5',    'snow', 5, 29, 4.0, 1, '62',    'snow'),

  -- 강력폭발 1~5 (powerful_ex) — 선행 ex_5
  (18,  'pex_1',  '강력폭발1',    'Powerful exp 1', 'powerful_ex', 1, 30, 4.1, 1, '43',    'powerful_ex'),
  (70,  'pex_2',  '강력폭발2',    'Powerful exp 2', 'powerful_ex', 2, 31, 4.3, 1, '18',    'powerful_ex'),
  (71,  'pex_3',  '강력폭발3',    'Powerful exp 3', 'powerful_ex', 3, 32, 4.5, 1, '70',    'powerful_ex'),
  (72,  'pex_4',  '강력폭발4',    'Powerful exp 4', 'powerful_ex', 4, 33, 4.7, 1, '71',    'powerful_ex'),
  (73,  'pex_5',  '강력폭발5',    'Powerful exp 5', 'powerful_ex', 5, 34, 5.0, 1, '72',    'powerful_ex'),

  -- 강력불꽃 1~5 (powerful_fl) — 선행 fl_5
  (19,  'pfl_1',  '강력불꽃1',    'Powerful fla 1', 'powerful_fl', 1, 35, 5.1, 1, '53',    'powerful_fl'),
  (80,  'pfl_2',  '강력불꽃2',    'Powerful fla 2', 'powerful_fl', 2, 36, 5.3, 1, '19',    'powerful_fl'),
  (81,  'pfl_3',  '강력불꽃3',    'Powerful fla 3', 'powerful_fl', 3, 37, 5.5, 1, '80',    'powerful_fl'),
  (82,  'pfl_4',  '강력불꽃4',    'Powerful fla 4', 'powerful_fl', 4, 38, 5.7, 1, '81',    'powerful_fl'),
  (83,  'pfl_5',  '강력불꽃5',    'Powerful fla 5', 'powerful_fl', 5, 39, 6.0, 1, '82',    'powerful_fl'),

  -- 강력눈꽃 1~5 (powerful_sn) — 선행 pfl_5
  (90,  'psn_1',  '강력눈꽃1',    'Powerful snow 1','powerful_sn', 1, 40, 6.1, 1, '83',    'powerful_sn'),
  (91,  'psn_2',  '강력눈꽃2',    'Powerful snow 2','powerful_sn', 2, 41, 6.3, 1, '90',    'powerful_sn'),
  (92,  'psn_3',  '강력눈꽃3',    'Powerful snow 3','powerful_sn', 3, 42, 6.5, 1, '91',    'powerful_sn'),
  (93,  'psn_4',  '강력눈꽃4',    'Powerful snow 4','powerful_sn', 4, 43, 6.7, 1, '92',    'powerful_sn'),
  (94,  'psn_5',  '강력눈꽃5',    'Powerful snow 5','powerful_sn', 5, 44, 7.0, 1, '93',    'powerful_sn');

-- 어드민 기본 토큰 (개발용 — 운영은 반드시 재발급)
INSERT INTO `admin_tokens`(`token`, `name`) VALUES
  ('dev-admin-token-change-me', 'local-dev');
