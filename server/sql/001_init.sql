-- FindIt 2026 P0 스키마.
-- 재실행 가능(idempotent)해야 한다 — 서버 부팅마다 적용된다.
-- v1(legacy/server/sql/schema.sql)은 18테이블이지만 P0가 쓰는 것만 옮긴다.

CREATE TABLE IF NOT EXISTS account (
  id            uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  email         text NOT NULL UNIQUE,
  password_hash text NOT NULL,
  nickname      text NOT NULL,
  character_id  int  NOT NULL DEFAULT 0,
  created_at    timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS player_profile (
  account_id   uuid PRIMARY KEY REFERENCES account(id) ON DELETE CASCADE,
  level        int    NOT NULL DEFAULT 1,
  total_score  bigint NOT NULL DEFAULT 0,
  coins        bigint NOT NULL DEFAULT 0,
  skill_points int    NOT NULL DEFAULT 0,
  updated_at   timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT player_profile_level_range CHECK (level BETWEEN 1 AND 100),
  CONSTRAINT player_profile_no_negative CHECK (total_score >= 0 AND coins >= 0 AND skill_points >= 0)
);

-- 세션 발급 감사. 검증 자체는 Redis가 하고 여기는 기록만 남긴다.
CREATE TABLE IF NOT EXISTS session_log (
  id            bigserial PRIMARY KEY,
  account_id    uuid REFERENCES account(id) ON DELETE CASCADE,
  token_hash    text NOT NULL,
  issued_at     timestamptz NOT NULL DEFAULT now(),
  revoked_at    timestamptz
);
CREATE INDEX IF NOT EXISTS session_log_account_idx ON session_log(account_id, issued_at DESC);

CREATE TABLE IF NOT EXISTS match_history (
  id             bigserial PRIMARY KEY,
  match_id       text NOT NULL,
  account_id     uuid REFERENCES account(id) ON DELETE CASCADE,
  puzzle_id      text NOT NULL,
  result         text NOT NULL,
  found_count    int  NOT NULL,
  opponent_found int  NOT NULL,
  score_delta    int  NOT NULL,
  coin_delta     int  NOT NULL,
  exp_delta      int  NOT NULL,
  vs_ai          boolean NOT NULL,
  ended_at       timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT match_history_result CHECK (result IN ('win', 'lose', 'draw'))
);
CREATE INDEX IF NOT EXISTS match_history_account_idx ON match_history(account_id, ended_at DESC);

-- 게스트 식별자. 게임 상태는 저장하지 않고 광고 노출 카운팅에만 쓴다.
CREATE TABLE IF NOT EXISTS guest_session (
  id           uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  token_hash   text NOT NULL UNIQUE,
  ad_views     int  NOT NULL DEFAULT 0,
  created_at   timestamptz NOT NULL DEFAULT now(),
  last_seen_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT guest_session_ad_views_nonneg CHECK (ad_views >= 0)
);

-- 보유 아이템. P0는 pen_01·ring_01·posion_01을 쓰고 P1 확장을 위해 코드값은 자유 문자열이다.
CREATE TABLE IF NOT EXISTS inventory_item (
  account_id uuid NOT NULL REFERENCES account(id) ON DELETE CASCADE,
  item_code  text NOT NULL,
  quantity   int  NOT NULL DEFAULT 0,
  equipped   boolean NOT NULL DEFAULT false,
  PRIMARY KEY (account_id, item_code),
  CONSTRAINT inventory_item_quantity_nonneg CHECK (quantity >= 0)
);

CREATE TABLE IF NOT EXISTS content_version (
  version    text PRIMARY KEY,
  applied_at timestamptz NOT NULL DEFAULT now()
);
