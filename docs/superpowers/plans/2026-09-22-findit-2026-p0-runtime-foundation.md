# FindIt 2026 P0 — 서버 런타임 기반 Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** `docker compose up` 으로 뜨고, 계정/게스트로 로그인하고, 퍼즐 콘텐츠를 **매치별 서명 URL**로 받아갈 수 있는 서버를 만든다.

**Architecture:** Plan 2 의 순수 배틀 엔진을 감쌀 껍데기를 먼저 세운다. 이 계획은 I/O 만 담당한다 — 게임 규칙은 한 줄도 넣지 않는다. PostgreSQL 은 영속, Redis 는 세션과 휘발 상태, 둘 다 어댑터 뒤에 숨겨 도메인 코드가 드라이버를 모르게 한다.

**Tech Stack:** Node 24 LTS · TypeScript 5.7 · PostgreSQL 16 · Redis 7 · Docker Compose · vitest 3

**Spec:** [`docs/superpowers/specs/2026-09-18-findit-2026-p0-design.md`](../specs/2026-09-18-findit-2026-p0-design.md)

**Codex/타 에이전트용 사본:** [`docs/plans/2026-09-22-findit-2026-p0-runtime-foundation-codex.md`](../../plans/2026-09-22-findit-2026-p0-runtime-foundation-codex.md) — 내용은 같고 실행 지침만 다르다. **한쪽을 고치면 다른 쪽도 고칠 것.**

**Depends on:** Plan 1 (`packages/protocol`, `content/`), Plan 2 (`server/src/{platform,rules,content,battle}`)

## Global Constraints

- **Node 런타임**: 24 LTS. Docker `node:24-alpine`, CI `node-version: '24'`.
- **언어**: TypeScript. `any` 금지, `strict: true`, `noUncheckedIndexedAccess: true`.
- **게임 규칙 금지**: 이 계획은 규칙을 구현하지 않는다. 수치·판정이 필요하면 Plan 2 의 `rules/` · `battle/` 를 호출한다. `server/src/rules` 나 `server/src/battle` 을 **수정하지 않는다**.
- **시계·난수**: Plan 2 의 `Clock` · `Rng` 포트를 그대로 쓴다. **비테스트 코드**에서 `Date.now()` · `Math.random()` 직접 호출 금지 — 판정과 만료가 주입된 시계를 따라야 결정론적으로 검증된다. 테스트 픽스처가 고유 키를 만드는 용도는 이 제약의 대상이 아니지만, 같은 밀리초에 두 테스트가 돌면 충돌하므로 **단조 카운터를 쓴다**.
- **비밀값**: 커넥션 문자열·서명 키는 환경변수로만. 소스·테스트·Compose 파일에 실값을 쓰지 않는다. Gitleaks 가 CI 에서 돈다.
- **커밋**: Task당 1커밋. 한국어 본문 + Conventional Commits 접두어. 끝에 `Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>`.
- **`legacy/`는 읽기 전용**: v1 스키마를 참조하되 수정하지 않는다.

---

## 이 계획을 쓰기 전에 조사한 것

계획서를 기억으로 쓰다 Plan 2 에서 두 번 틀렸으므로(콤보 정산, 스킬 게이트), 원작과 v1 을 먼저 읽었다. 설계에 반영된 사실들이다.

**v1 세션** (`legacy/server/src/util/session.js`) — `crypto.randomBytes(24).toString('hex')` opaque 토큰을 `login_logs` 테이블에 저장한다. 로그인 시 기존 활성 세션을 전부 `logged_out_at` 처리해 **단일 활성 세션**을 강제한다. `verifyToken` 이 WS 게이트웨이의 인증 경로다.

**v1 매칭** (`legacy/server/src/socket/handlers.js`, 248줄) — 큐가 **없다**. `CREATEBATTLEROOM` / `ENTERBATTLEROOM` / `READY` 의 방 기반 모델이고, 원작의 대기실 리스트를 그대로 옮긴 것이다. AI 전환도 난입 처리도 없다.

**원작 AI 전환** (`GameView.java:3542-3550`) — `SINGLETIME = 100` 틱 동안 배틀룸에서 상대가 없으면(`mRightCharacterIndex < 0`) AI(인덱스 2)로 바꾼다. 큐가 아니라 **방 안에서** 일어난다. 프레임 카운터라 벽시계 시간으로 고정돼 있지 않다 — 스펙의 "5초"는 2026 재해석이다.

**원작 난입** (`GameActivity.java:611-616`) — 스펙 §3.6 의 보강 참조. 그 자리에서 상대만 교체되고 **정산은 일어나지 않는다**.

**v1 테이블** — `members` `wallets` `inventories` `skills` `rankings` `login_logs` `images` `notices` `gifts` `iap_receipts` 외 8개. P0 가 필요로 하는 건 그중 소수다.

---

## File Structure

```
server/src/
├─ platform/          (Plan 2 산출물 — 수정 금지)
│  ├─ clock.ts · rng.ts
│  ├─ config.ts       ← 환경변수 파싱·검증
│  ├─ logger.ts       ← 구조화 로그
│  ├─ pg.ts           ← PostgreSQL 풀 + query 헬퍼
│  └─ redis.ts        ← Redis 클라이언트 + 키 네임스페이스
├─ rules/ · battle/   (Plan 2 산출물 — 수정 금지)
├─ content/
│  ├─ (Plan 2: types · loader · assigner)
│  ├─ manifest.ts     ← 클라용 매니페스트 조립
│  └─ urls.ts         ← ContentUrls 구현 (서명 URL)
├─ identity/
│  ├─ types.ts        ← Account · GuestSession · Session
│  ├─ repository.ts   ← 계정 CRUD (pg)
│  ├─ password.ts     ← 해싱·검증
│  └─ session.ts      ← 세션 발급·검증 (redis + pg 감사)
└─ http/
   ├─ app.ts          ← 라우터 조립
   └─ routes/
      ├─ health.ts
      ├─ auth.ts      ← 가입·로그인·게스트
      └─ content.ts   ← 매니페스트·이미지

server/sql/
└─ 001_init.sql       ← P0 스키마

docker-compose.yml    ← pg + redis + server
server/Dockerfile
```

`identity/` 를 `http/` 에서 분리하는 이유는 Plan 4 의 WS 게이트웨이도 같은 세션 검증을 써야 하기 때문이다. HTTP 는 전송 수단일 뿐이다.

---

### Task 1: 설정 · 로깅 포트

**Files:**
- Create: `server/src/platform/config.ts`, `server/src/platform/logger.ts`
- Test: `server/src/platform/config.test.ts`

**Interfaces:**
- Consumes: 없음
- Produces:
  - `interface AppConfig { nodeEnv: 'development'|'test'|'production'; port: number; databaseUrl: string; redisUrl: string; contentUrlSecret: string; contentUrlTtlMs: number; contentDir: string }`
  - `function loadConfig(env: NodeJS.ProcessEnv): AppConfig` — 검증 실패 시 throw
  - `interface Logger { info(msg: string, fields?: Record<string, unknown>): void; warn(...): void; error(...): void }`
  - `function createLogger(nodeEnv: string): Logger`

**왜 인자로 받는가:** `loadConfig(env)` 가 `process.env` 를 직접 읽으면 테스트가 전역 상태를 오염시킨다. 인자로 받으면 케이스마다 독립된 객체를 넘길 수 있다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/platform/config.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { loadConfig } from './config.js';

const valid = {
  NODE_ENV: 'test',
  PORT: '8080',
  DATABASE_URL: 'postgres://u:p@localhost:5432/findit',
  REDIS_URL: 'redis://localhost:6379',
  CONTENT_URL_SECRET: 'a'.repeat(32),
  CONTENT_DIR: '/tmp/content',
};

describe('loadConfig', () => {
  it('유효한 환경을 파싱한다', () => {
    const c = loadConfig(valid);
    expect(c).toMatchObject({
      nodeEnv: 'test',
      port: 8080,
      databaseUrl: valid.DATABASE_URL,
      redisUrl: valid.REDIS_URL,
      contentDir: valid.CONTENT_DIR,
    });
  });

  it.each(['DATABASE_URL', 'REDIS_URL', 'CONTENT_URL_SECRET'])(
    '%s 가 없으면 던진다 — 기본값으로 뜨면 운영에서 조용히 틀린 DB 를 본다',
    (key) => {
      const env = { ...valid };
      delete (env as Record<string, string | undefined>)[key];
      expect(() => loadConfig(env)).toThrow(new RegExp(key));
    },
  );

  it('서명 키가 32자 미만이면 던진다', () => {
    expect(() => loadConfig({ ...valid, CONTENT_URL_SECRET: 'short' })).toThrow(/32/);
  });

  it('PORT 가 숫자가 아니면 던진다', () => {
    expect(() => loadConfig({ ...valid, PORT: 'eighty' })).toThrow(/PORT/);
  });

  it('PORT 기본값은 8080 이다', () => {
    const env = { ...valid };
    delete (env as Record<string, string | undefined>)['PORT'];
    expect(loadConfig(env).port).toBe(8080);
  });

  it('알 수 없는 NODE_ENV 를 거부한다', () => {
    expect(() => loadConfig({ ...valid, NODE_ENV: 'staging' })).toThrow(/NODE_ENV/);
  });

  it('서명 URL 기본 TTL 은 5분이다', () => {
    expect(loadConfig(valid).contentUrlTtlMs).toBe(300_000);
  });

  it('반환된 설정에 비밀값이 그대로 실려 있다 — 로그에 찍지 말 것', () => {
    // 이 테스트는 계약을 문서화한다. logger 는 config 객체를 통째로 찍으면 안 된다.
    expect(loadConfig(valid).contentUrlSecret).toBe(valid.CONTENT_URL_SECRET);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/platform/config.test.ts`
Expected: FAIL — `Cannot find module './config.js'`

- [ ] **Step 3: 구현**

`server/src/platform/config.ts`:

```typescript
/** 서명 URL 키 최소 길이. 32바이트 미만은 HMAC 강도가 의미 없다. */
const MIN_SECRET_LENGTH = 32;
const DEFAULT_PORT = 8080;
const DEFAULT_CONTENT_URL_TTL_MS = 300_000;

export type NodeEnv = 'development' | 'test' | 'production';

export interface AppConfig {
  nodeEnv: NodeEnv;
  port: number;
  databaseUrl: string;
  redisUrl: string;
  /** 콘텐츠 서명 URL 의 HMAC 키. 로그에 절대 찍지 않는다. */
  contentUrlSecret: string;
  contentUrlTtlMs: number;
  contentDir: string;
}

function required(env: NodeJS.ProcessEnv, key: string): string {
  const v = env[key];
  if (v === undefined || v === '') throw new Error(`설정 누락: ${key}`);
  return v;
}

/**
 * 환경변수를 파싱한다. process.env 를 직접 읽지 않고 인자로 받는 이유는
 * 테스트가 전역 상태를 건드리지 않게 하기 위함이다.
 *
 * 누락된 값에 기본값을 채우지 않는다 — 운영에서 조용히 틀린 DB 를 보는 것보다
 * 부팅에 실패하는 편이 낫다.
 */
export function loadConfig(env: NodeJS.ProcessEnv): AppConfig {
  const nodeEnv = env['NODE_ENV'] ?? 'development';
  if (nodeEnv !== 'development' && nodeEnv !== 'test' && nodeEnv !== 'production') {
    throw new Error(`설정 오류: NODE_ENV 는 development|test|production (${nodeEnv})`);
  }

  const portRaw = env['PORT'];
  const port = portRaw === undefined || portRaw === '' ? DEFAULT_PORT : Number(portRaw);
  if (!Number.isInteger(port) || port < 1 || port > 65535) {
    throw new Error(`설정 오류: PORT 가 정수 포트가 아님 (${portRaw})`);
  }

  const contentUrlSecret = required(env, 'CONTENT_URL_SECRET');
  if (contentUrlSecret.length < MIN_SECRET_LENGTH) {
    throw new Error(`설정 오류: CONTENT_URL_SECRET 은 ${MIN_SECRET_LENGTH}자 이상이어야 함`);
  }

  return {
    nodeEnv,
    port,
    databaseUrl: required(env, 'DATABASE_URL'),
    redisUrl: required(env, 'REDIS_URL'),
    contentUrlSecret,
    contentUrlTtlMs: DEFAULT_CONTENT_URL_TTL_MS,
    contentDir: required(env, 'CONTENT_DIR'),
  };
}
```

`server/src/platform/logger.ts`:

```typescript
export interface Logger {
  info(msg: string, fields?: Record<string, unknown>): void;
  warn(msg: string, fields?: Record<string, unknown>): void;
  error(msg: string, fields?: Record<string, unknown>): void;
}

/**
 * 운영에서는 한 줄 JSON, 개발에서는 사람이 읽는 형태.
 * 필드를 인자로 분리한 이유는 문자열 보간으로 비밀값이 섞여 들어가는 것을 막기 위함이다.
 */
export function createLogger(nodeEnv: string): Logger {
  const emit = (level: string, msg: string, fields?: Record<string, unknown>): void => {
    if (nodeEnv === 'production') {
      console.log(JSON.stringify({ level, msg, ts: new Date().toISOString(), ...fields }));
    } else {
      const tail = fields && Object.keys(fields).length > 0 ? ` ${JSON.stringify(fields)}` : '';
      console.log(`[${level}] ${msg}${tail}`);
    }
  };

  return {
    info: (m, f) => emit('info', m, f),
    warn: (m, f) => emit('warn', m, f),
    error: (m, f) => emit('error', m, f),
  };
}
```

- [ ] **Step 4: 통과 확인**

Run: `npx vitest run server/src/platform/config.test.ts && npm run typecheck`
Expected: PASS — 10 tests (`it.each` 3행 포함해 7 + 3). typecheck exit 0.

- [ ] **Step 5: 커밋**

```bash
git add server/src/platform/config.ts server/src/platform/logger.ts server/src/platform/config.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 설정·로깅 포트

loadConfig 가 process.env 를 직접 읽지 않고 인자로 받는다. 테스트가
전역 상태를 오염시키지 않게 하려는 것이다.

누락된 값에 기본값을 채우지 않는다. DATABASE_URL 이 없을 때 localhost 로
떨어지면 운영에서 조용히 틀린 DB 를 보게 된다. 부팅에 실패하는 편이 낫다.

로거는 메시지와 필드를 분리해 받는다. 문자열 보간을 허용하면 비밀값이
섞여 들어가는 경로가 생긴다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 2: P0 스키마 + PostgreSQL 어댑터

**Files:**
- Create: `server/sql/001_init.sql`, `server/src/platform/pg.ts`
- Test: `server/src/platform/pg.test.ts`
- Modify: `server/package.json` (`pg` 의존성)

**Interfaces:**
- Consumes: Task 1 의 `AppConfig`
- Produces:
  - `interface Db { query<T>(sql: string, params?: unknown[]): Promise<T[]>; tx<T>(fn: (db: Db) => Promise<T>): Promise<T>; close(): Promise<void> }`
  - `function createDb(databaseUrl: string): Db`

**스키마 (P0 최소).** v1 은 18 테이블이지만 P0 가 쓰는 건 아래뿐이다. 나머지(`gifts` `iap_receipts` `rankings` `notices` `ad_images` 등)는 P1+ 에서 필요할 때 마이그레이션으로 추가한다.

| 테이블 | 용도 |
|---|---|
| `account` | 이메일·비밀번호 해시·별칭·캐릭터 |
| `player_profile` | 레벨·누적점수·코인·스킬포인트 |
| `session_log` | 세션 발급 감사 기록 (v1 `login_logs` 대응) |
| `match_history` | 매치 결과 |
| `guest_session` | 게스트 식별자 — 게임 상태가 아니라 광고 노출 카운팅용 |
| `inventory_item` | 보유 아이템 (P0 완료 정의 4번) |
| `content_version` | 배포된 콘텐츠 버전 |

> **정정 (스펙 우선)**: 이 계획의 초안은 `guest_session` 과 `inventory_item` 을 뺐다.
> **스펙 §6.5 가 둘 다 명시한다.** 스펙이 구속력 있는 문서이므로 넣는다.
>
> `guest_session` 의 근거는 PDF 의 게스트 규정이다 — "승패·경험치·아이템은 저장되지 않으며
> **광고 노출만 카운팅**". 광고 노출을 게스트별로 세려면 Redis 세션보다 오래 사는 식별자가
> 있어야 한다. 게임 상태는 여전히 저장하지 않는다.
>
> `inventory_item` 은 P0 완료 정의 4번("아이템 3종 동작")에 직접 걸린다. Plan 2 의
> `PlayerState.itemAttackBonusMs` · `itemDefenseReductionMs` 가 0 으로 비어 있고 주석이
> "Plan 3 의 인벤토리가 채운다" 라고 적혀 있다. 이 테이블 없이는 그 자리를 채울 수 없다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/platform/pg.test.ts` — **실제 PostgreSQL 이 필요하다.** `DATABASE_URL` 이 없으면 스킵한다.

```typescript
import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { createDb, type Db } from './pg.js';

// Date.now() 대신 단조 카운터. 같은 밀리초에 두 테스트가 돌면 충돌한다.
let seq = 0;
const uniq = (): string => `${process.pid}-${++seq}`;

const url = process.env['DATABASE_URL'];
const suite = url ? describe : describe.skip;

suite('pg 어댑터', () => {
  let db: Db;

  beforeAll(async () => {
    db = createDb(url!);
    await db.query(readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8'));
  });
  afterAll(async () => { await db.close(); });

  it('스키마의 P0 테이블이 전부 생성된다', async () => {
    const rows = await db.query<{ table_name: string }>(
      `SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'`,
    );
    const names = rows.map((r) => r.table_name).sort();
    // 스펙 §6.5 가 명시한 테이블이 전부 있어야 한다.
    expect(names).toEqual(
      ['account', 'content_version', 'guest_session', 'inventory_item',
       'match_history', 'player_profile', 'session_log'].sort(),
    );
  });

  it('001_init.sql 을 두 번 적용해도 스키마가 그대로다 — 재기동 시 매번 돈다', async () => {
    // toBeDefined() 로는 목적을 검증하지 못한다. DDL 은 행을 내지 않으므로
    // [] 를 단언하고, 재적용 뒤에도 테이블이 온전한지 직접 확인한다.
    const sql = readFileSync(resolve(import.meta.dirname, '../../sql/001_init.sql'), 'utf8');
    await expect(db.query(sql)).resolves.toEqual([]);

    const rows = await db.query<{ table_name: string }>(
      `SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'`,
    );
    expect(rows.map((r) => r.table_name).sort()).toEqual(
      ['account', 'content_version', 'guest_session', 'inventory_item',
       'match_history', 'player_profile', 'session_log'].sort(),
    );
  });

  it('다중 문장 질의도 T[] 계약을 지킨다', async () => {
    // node-postgres 는 여기서 QueryResult 배열을 돌려준다. 어댑터가 정규화하지
    // 않으면 .rows 가 undefined 가 되어 Promise<T[]> 계약이 깨진다.
    const rows = await db.query<{ n: number }>('SELECT 1 AS n; SELECT 2 AS n;');
    expect(Array.isArray(rows)).toBe(true);
    expect(rows.map((r) => r.n)).toEqual([1, 2]);
  });

  it('파라미터 바인딩이 동작한다', async () => {
    const rows = await db.query<{ n: number }>('SELECT $1::int AS n', [42]);
    expect(rows[0]?.n).toBe(42);
  });

  it('이메일이 중복되면 거부한다', async () => {
    const email = `dup-${uniq()}@example.com`;
    await db.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)',
      [email, 'x', 'a']);
    await expect(
      db.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)',
        [email, 'y', 'b']),
    ).rejects.toThrow();
  });

  it('tx 는 예외 시 롤백한다', async () => {
    const email = `rb-${uniq()}@example.com`;
    await expect(
      db.tx(async (t) => {
        await t.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)',
          [email, 'x', 'a']);
        throw new Error('의도적 실패');
      }),
    ).rejects.toThrow(/의도적 실패/);

    const rows = await db.query('SELECT 1 FROM account WHERE email = $1', [email]);
    expect(rows).toHaveLength(0);
  });

  it('tx 는 성공 시 커밋한다', async () => {
    const email = `ok-${uniq()}@example.com`;
    await db.tx(async (t) => {
      await t.query('INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3)',
        [email, 'x', 'a']);
    });
    expect(await db.query('SELECT 1 FROM account WHERE email = $1', [email])).toHaveLength(1);
  });

  it('inventory_item 은 account 삭제 시 함께 지워진다', async () => {
    const email = `inv-${uniq()}@example.com`;
    const [acc] = await db.query<{ id: string }>(
      'INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3) RETURNING id',
      [email, 'x', 'a'],
    );
    await db.query('INSERT INTO inventory_item(account_id, item_code, quantity) VALUES($1,$2,$3)',
      [acc!.id, 'slot_item_pen_01', 1]);
    await db.query('DELETE FROM account WHERE id = $1', [acc!.id]);
    expect(await db.query('SELECT 1 FROM inventory_item WHERE account_id = $1', [acc!.id]))
      .toHaveLength(0);
  });

  it('같은 계정이 같은 아이템 행을 두 번 가질 수 없다', async () => {
    const email = `dupinv-${uniq()}@example.com`;
    const [acc] = await db.query<{ id: string }>(
      'INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3) RETURNING id',
      [email, 'x', 'a'],
    );
    await db.query('INSERT INTO inventory_item(account_id, item_code) VALUES($1,$2)',
      [acc!.id, 'slot_item_ring_01']);
    await expect(
      db.query('INSERT INTO inventory_item(account_id, item_code) VALUES($1,$2)',
        [acc!.id, 'slot_item_ring_01']),
    ).rejects.toThrow();
  });

  it('게스트 토큰 해시는 중복될 수 없다', async () => {
    const h = `hash-${uniq()}`;
    await db.query('INSERT INTO guest_session(token_hash) VALUES($1)', [h]);
    await expect(db.query('INSERT INTO guest_session(token_hash) VALUES($1)', [h]))
      .rejects.toThrow();
  });

  it('player_profile 은 account 삭제 시 함께 지워진다', async () => {
    const email = `cas-${uniq()}@example.com`;
    const [acc] = await db.query<{ id: string }>(
      'INSERT INTO account(email, password_hash, nickname) VALUES($1,$2,$3) RETURNING id',
      [email, 'x', 'a'],
    );
    await db.query('INSERT INTO player_profile(account_id) VALUES($1)', [acc!.id]);
    await db.query('DELETE FROM account WHERE id = $1', [acc!.id]);
    expect(await db.query('SELECT 1 FROM player_profile WHERE account_id = $1', [acc!.id]))
      .toHaveLength(0);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `DATABASE_URL=postgres://findit:findit@localhost:5432/findit npx vitest run server/src/platform/pg.test.ts`
Expected: FAIL — 모듈 없음. (PostgreSQL 이 안 떠 있으면 스킵되므로, Task 6 의 Compose 를 먼저 띄워도 된다. 아래 Step 4 참조.)

- [ ] **Step 3: 스키마 작성**

`server/sql/001_init.sql` — 재실행 가능해야 한다. 서버가 부팅할 때마다 적용한다.

```sql
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

-- 세션 발급 감사. 검증 자체는 Redis 가 하고 여기는 기록만 남긴다
-- (v1 login_logs 대응 — 다만 v1 은 검증도 여기서 했다).
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

-- 게스트 식별자. 스펙 §6.5 가 요구한다.
-- 게임 상태(승패·경험치·아이템)는 저장하지 않는다 — 광고 노출 카운팅에만 쓴다.
CREATE TABLE IF NOT EXISTS guest_session (
  id           uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  token_hash   text NOT NULL UNIQUE,
  ad_views     int  NOT NULL DEFAULT 0,
  created_at   timestamptz NOT NULL DEFAULT now(),
  last_seen_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT guest_session_ad_views_nonneg CHECK (ad_views >= 0)
);

-- 보유 아이템. P0 는 pen_01 · ring_01 · posion_01 셋만 쓰지만 item_code 를
-- 자유 문자열로 두어 P1 의 카탈로그 확장을 막지 않는다.
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
```

> **`gen_random_uuid()`** 는 PostgreSQL 13+ 내장이라 확장이 필요 없다.
> **`session_log.token_hash`** — 원문 토큰을 저장하지 않는다. DB 가 유출돼도 세션을 탈취할 수 없어야 한다. v1 은 원문을 저장했다(`login_logs.session_token`).

- [ ] **Step 4: 어댑터 구현**

```bash
npm install --workspace server pg
npm install --workspace server --save-dev @types/pg
```

`server/src/platform/pg.ts`:

```typescript
import { Pool, type PoolClient, type QueryResult } from 'pg';

/**
 * node-postgres 는 **다중 문장 질의**(파라미터 없는 simple query)에 `QueryResult` 하나가
 * 아니라 **배열**을 돌려준다. 타입 정의에는 없는 런타임 동작이라 `.rows` 를 그냥 읽으면
 * `undefined` 가 나온다 — `001_init.sql` 처럼 DDL 여러 개를 한 번에 보낼 때 정확히 그렇다.
 *
 * 둘 다 `T[]` 로 정규화한다. DDL 은 행을 내지 않으므로 `[]` 가 된다.
 */
function toRows<T>(result: QueryResult | QueryResult[]): T[] {
  if (Array.isArray(result)) return result.flatMap((r) => (r.rows ?? []) as T[]);
  return (result.rows ?? []) as T[];
}

export interface Db {
  /**
   * 항상 배열을 돌려준다. 행을 내지 않는 질의(DDL 등)는 `[]` 다.
   * 다중 문장 질의는 모든 문장의 행을 이어 붙인다.
   */
  query<T = Record<string, unknown>>(sql: string, params?: unknown[]): Promise<T[]>;
  /** 콜백 안의 모든 질의가 한 트랜잭션으로 묶인다. 예외가 나면 롤백한다. */
  tx<T>(fn: (db: Db) => Promise<T>): Promise<T>;
  close(): Promise<void>;
}

function wrapClient(client: PoolClient): Db {
  return {
    async query<T>(sql: string, params: unknown[] = []): Promise<T[]> {
      return toRows<T>((await client.query(sql, params)) as unknown as QueryResult);
    },
    // 중첩 트랜잭션은 쓰지 않는다. 필요해지면 SAVEPOINT 로 명시적으로 도입한다.
    async tx<T>(fn: (db: Db) => Promise<T>): Promise<T> {
      return fn(wrapClient(client));
    },
    async close(): Promise<void> {
      // 트랜잭션 클라이언트는 tx() 가 반환한다. 여기서 닫지 않는다.
    },
  };
}

export function createDb(databaseUrl: string): Db {
  const pool = new Pool({ connectionString: databaseUrl });

  return {
    async query<T>(sql: string, params: unknown[] = []): Promise<T[]> {
      return toRows<T>((await pool.query(sql, params)) as unknown as QueryResult);
    },

    async tx<T>(fn: (db: Db) => Promise<T>): Promise<T> {
      const client = await pool.connect();
      try {
        await client.query('BEGIN');
        const out = await fn(wrapClient(client));
        await client.query('COMMIT');
        return out;
      } catch (err) {
        await client.query('ROLLBACK');
        throw err;
      } finally {
        client.release();
      }
    },

    async close(): Promise<void> {
      await pool.end();
    },
  };
}
```

- [ ] **Step 5: 통과 확인**

PostgreSQL 이 필요하다. Task 6 의 Compose 가 아직 없으므로 임시로 띄운다:

```bash
docker run -d --name findit-pg-test -e POSTGRES_USER=findit -e POSTGRES_PASSWORD=findit \
  -e POSTGRES_DB=findit -p 5432:5432 postgres:16-alpine
```

Run: `DATABASE_URL=postgres://findit:findit@localhost:5432/findit npx vitest run server/src/platform/pg.test.ts`
Expected: PASS — 11 tests. `DATABASE_URL` 없이 돌리면 전부 skip 되고 실패하지 않아야 한다 (확인할 것).

- [ ] **Step 6: 커밋**

```bash
git add server/sql/001_init.sql server/src/platform/pg.ts server/src/platform/pg.test.ts server/package.json package-lock.json
git commit -m "$(cat <<'EOF'
feat(server): P0 스키마 + PostgreSQL 어댑터

v1 은 18테이블이지만 스펙 §6.5 가 명시한 7개만 옮긴다 — account,
guest_session, player_profile, inventory_item, match_history,
session_log, content_version. 나머지는 필요해질 때 마이그레이션으로 추가한다.

guest_session 은 게임 상태를 담지 않는다. 승패·경험치·아이템은 저장하지
않되, PDF 가 요구하는 "광고 노출만 카운팅" 을 게스트별로 세려면 Redis
세션보다 오래 사는 식별자가 있어야 한다.

inventory_item 은 P0 완료 정의 4번(아이템 3종 동작)에 걸린다. Plan 2 의
PlayerState.itemAttackBonusMs 가 0 으로 비어 있고 "Plan 3 의 인벤토리가
채운다" 라고 적혀 있다.

session_log 는 토큰 해시만 저장한다. v1 은 원문을 저장했는데(login_logs
.session_token), DB 가 유출되면 그대로 세션 탈취가 된다.

스키마는 재실행 가능하다 — 서버 부팅마다 적용되므로 두 번 돌아도 실패하면
안 된다. 재적용 후 테이블이 온전한지까지 테스트가 확인한다.

어댑터는 단일 결과와 다중 결과를 모두 T[] 로 정규화한다. node-postgres 는
다중 문장 질의에 QueryResult 배열을 돌려주는데 타입 정의에는 없는 런타임
동작이라, .rows 를 그냥 읽으면 undefined 가 나온다. 스키마 적용이 정확히
그 경로다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 3: Redis 어댑터

**Files:**
- Create: `server/src/platform/redis.ts`
- Test: `server/src/platform/redis.test.ts`
- Modify: `server/package.json` (`ioredis`)

**Interfaces:**
- Consumes: 없음
- Produces:
  - `interface Cache { get(key: string): Promise<string|null>; setEx(key: string, value: string, ttlMs: number): Promise<void>; del(key: string): Promise<void>; ping(timeoutMs?: number): Promise<void>; close(): Promise<void> }`
  - `function createCache(redisUrl: string, onError?: (err: Error) => void): Cache`
  - `const KEY: { session(token: string): string; guest(token: string): string }`

**키 네임스페이스를 함수로 두는 이유:** 문자열을 호출부마다 조립하면 오타가 조용한 캐시 미스가 된다. 한 곳에 모아 테스트로 고정한다.

**`ping` 이 포트에 있어야 하는 이유:** `createCache` 는 동기로 반환한다. ioredis 는 연결을 백그라운드로 맺고, 실패는 `'error'` **이벤트**로만 알린다 — 던지지 않는다. 그래서 Redis 가 죽어 있어도 `createCache` 는 멀쩡히 객체를 돌려주고, 아무도 명령을 보내지 않으면 부팅은 성공한다. Task 7 의 "Redis 에 연결하지 못하면 부팅에 실패한다" 는 계약은 **await 할 수 있는 무언가**가 없으면 지킬 수 없다. Postgres 는 부팅 중에 스키마를 적용하느라 실제로 질의하므로 저절로 드러나지만, Redis 는 Plan 3 의 부팅 경로에서 한 번도 쓰이지 않는다.

**`onError` 를 받는 이유:** ioredis 는 재연결을 시도할 때마다 `'error'` 를 낸다. 리스너가 없으면 `[ioredis] Unhandled error event` 한 줄이 찍힐 뿐 프로세스는 계속 돈다. 즉 **이 이벤트만으로는 아무도 죽지 않고, 아무도 알지 못한다.** 리스너를 붙여 운영자가 보는 로그로 보낸다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/platform/redis.test.ts`:

```typescript
import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { KEY, createCache, type Cache } from './redis.js';

let seq = 0;
const uniq = (): string => `${process.pid}-${++seq}`;

describe('KEY 네임스페이스', () => {
  it('세션과 게스트가 서로 다른 접두어를 쓴다', () => {
    expect(KEY.session('t')).toBe('findit:session:t');
    expect(KEY.guest('t')).toBe('findit:guest:t');
  });

  it('같은 토큰이라도 두 키가 충돌하지 않는다', () => {
    expect(KEY.session('x')).not.toBe(KEY.guest('x'));
  });
});

// 이 suite 는 REDIS_URL 없이도 돈다. 닿을 수 없는 주소를 일부러 쓰기 때문이다.
describe('연결 확인', () => {
  it('닿을 수 없으면 ping 이 거부된다 — 부팅을 실패시키기 위한 계약', async () => {
    const seen: Error[] = [];
    // 127.0.0.1:1 은 특권 포트라 아무것도 듣지 않는다. ECONNREFUSED 가 바로 온다.
    const dead = createCache('redis://127.0.0.1:1', (e) => seen.push(e));
    await expect(dead.ping(3_000)).rejects.toThrow();
    // 에러 리스너가 실제로 붙어 있어야 한다. 안 붙어 있으면 ioredis 가
    // 경고만 찍고 지나가므로, 여기서 잡지 않으면 아무 데서도 안 잡힌다.
    expect(seen.length).toBeGreaterThan(0);
    await dead.close();
  }, 10_000);
});

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('Redis 어댑터', () => {
  // **suite 본문 최상위에서 클라이언트를 만들지 말 것.**
  // describe.skip 도 콜백 본문은 평가한다. 여기서 createCache(url!) 를 부르면
  // url 이 undefined 여도 ioredis 가 기본 localhost 로 붙으려 하고,
  // "[ioredis] Unhandled error event" 가 뜬다 — skip 이 외부 연결을 막지 못한다.
  // beforeAll 은 skip 된 suite 에서 실행되지 않으므로 여기가 안전한 자리다.
  let cache: Cache;
  beforeAll(() => { cache = createCache(url!); });
  afterAll(async () => { await cache.close(); });

  it('넣은 값을 읽는다', async () => {
    const k = `findit:test:${uniq()}`;
    await cache.setEx(k, 'hello', 5_000);
    expect(await cache.get(k)).toBe('hello');
  });

  it('없는 키는 null 이다', async () => {
    expect(await cache.get(`findit:test:missing:${uniq()}`)).toBeNull();
  });

  it('지운 키는 null 이다', async () => {
    const k = `findit:test:del:${uniq()}`;
    await cache.setEx(k, 'v', 5_000);
    await cache.del(k);
    expect(await cache.get(k)).toBeNull();
  });

  it('TTL 이 지나면 사라진다', async () => {
    const k = `findit:test:ttl:${uniq()}`;
    await cache.setEx(k, 'v', 100);
    await new Promise((r) => setTimeout(r, 250));
    expect(await cache.get(k)).toBeNull();
  });

  it('TTL 이 0 이하면 던진다 — 즉시 사라지는 세션은 버그다', async () => {
    await expect(cache.setEx('findit:test:bad', 'v', 0)).rejects.toThrow(/ttl/i);
  });

  it('살아 있는 서버에는 ping 이 통과한다', async () => {
    await expect(cache.ping(3_000)).resolves.toBeUndefined();
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/platform/redis.test.ts`
Expected: FAIL — `Cannot find module './redis.js'`. (Redis 없이도 `KEY` 테스트 2개는 돌아야 한다.)

- [ ] **Step 3: 구현**

```bash
npm install --workspace server ioredis
```

`server/src/platform/redis.ts`:

```typescript
import Redis from 'ioredis';

const PREFIX = 'findit';

/**
 * 키 조립을 한 곳에 모은다. 호출부마다 문자열을 만들면 오타가
 * 조용한 캐시 미스가 되고, 그 미스는 "로그인이 가끔 풀린다" 로만 드러난다.
 */
export const KEY = {
  session: (token: string): string => `${PREFIX}:session:${token}`,
  guest: (token: string): string => `${PREFIX}:guest:${token}`,
} as const;

export interface Cache {
  get(key: string): Promise<string | null>;
  setEx(key: string, value: string, ttlMs: number): Promise<void>;
  del(key: string): Promise<void>;
  /**
   * 연결이 실제로 가능한지 확인한다. **부팅 경로에서 반드시 await 할 것.**
   * 이게 없으면 Redis 가 죽어 있어도 서버가 정상 기동한다 — createCache 는
   * 동기로 반환하고, ioredis 는 연결 실패를 던지지 않고 이벤트로만 알린다.
   */
  ping(timeoutMs?: number): Promise<void>;
  close(): Promise<void>;
}

export function createCache(redisUrl: string, onError?: (err: Error) => void): Cache {
  const client = new Redis(redisUrl, { lazyConnect: false, maxRetriesPerRequest: 3 });

  // 리스너가 없으면 ioredis 는 "[ioredis] Unhandled error event" 만 찍고 넘어간다.
  // 프로세스는 죽지 않고 운영자는 모른다. 붙여서 호출부로 넘긴다.
  client.on('error', (err: Error) => { onError?.(err); });

  return {
    async get(key: string): Promise<string | null> {
      return client.get(key);
    },

    async setEx(key: string, value: string, ttlMs: number): Promise<void> {
      if (!Number.isInteger(ttlMs) || ttlMs <= 0) {
        throw new Error(`setEx: ttlMs 는 1 이상 정수여야 함 (${ttlMs})`);
      }
      await client.set(key, value, 'PX', ttlMs);
    },

    async del(key: string): Promise<void> {
      await client.del(key);
    },

    async ping(timeoutMs = 5_000): Promise<void> {
      if (client.status === 'ready') {
        await client.ping();
        return;
      }
      // 아직 연결 중이면 'ready' 와 'error' 중 먼저 오는 쪽을 기다린다.
      // client.ping() 을 그냥 부르지 않는 이유: 연결이 끊긴 동안 명령은
      // 오프라인 큐에 쌓이고, 거부되기까지 재시도 정책에 좌우된다.
      // 이벤트를 직접 기다리면 ECONNREFUSED 가 즉시 거부로 이어진다.
      await new Promise<void>((resolve, reject) => {
        const cleanup = (): void => {
          clearTimeout(timer);
          client.off('ready', onReady);
          client.off('error', onFail);
        };
        const onReady = (): void => { cleanup(); resolve(); };
        const onFail = (err: Error): void => { cleanup(); reject(err); };
        const timer = setTimeout(() => {
          cleanup();
          // 주소는 넣지 않는다 — redis:// URL 에 비밀번호가 들어갈 수 있다.
          reject(new Error(`Redis 연결 시간 초과 (${timeoutMs}ms)`));
        }, timeoutMs);
        client.once('ready', onReady);
        client.once('error', onFail);
      });
    },

    async close(): Promise<void> {
      try {
        await client.quit();
      } catch {
        // 이미 끊긴 상태면 quit 이 거부된다. 종료 경로가 그것 때문에 죽을
        // 이유는 없다. disconnect 는 재연결 타이머까지 끊어 프로세스가
        // 매달리지 않게 한다.
        client.disconnect();
      }
    },
  };
}
```

- [ ] **Step 4: 통과 확인**

```bash
docker run -d --name findit-redis-test -p 6379:6379 redis:7-alpine
```

Run: `REDIS_URL=redis://localhost:6379 npx vitest run server/src/platform/redis.test.ts`
Expected: PASS — 9 tests.

**`REDIS_URL` 없이도 반드시 확인할 것:**

```bash
npx vitest run server/src/platform/redis.test.ts 2>&1 | grep -i ioredis
```
Expected: **아무 출력도 없어야 한다.** `[ioredis] Unhandled error event` 가 뜨면 skip 이
외부 연결을 막지 못한 것이다. 통과/스킵 숫자만 보면 이 누수가 보이지 않는다 —
`3 passed / 6 skipped` 로 정상처럼 나온다. (`연결 확인` suite 는 닿을 수 없는
주소를 일부러 쓰고 에러 리스너를 붙이므로 경고를 내지 않는다.)

- [ ] **Step 5: 커밋**

```bash
git add server/src/platform/redis.ts server/src/platform/redis.test.ts server/package.json package-lock.json
git commit -m "$(cat <<'EOF'
feat(server): Redis 어댑터 + 키 네임스페이스

키 조립을 KEY 한 곳에 모은다. 호출부마다 문자열을 만들면 오타가 조용한
캐시 미스가 되고, 그 미스는 "로그인이 가끔 풀린다" 로만 드러나 원인을
찾기 어렵다.

setEx 는 ttlMs <= 0 을 거부한다. 즉시 사라지는 세션은 버그이지 설정이 아니다.

ping 을 포트에 둔다. createCache 는 동기로 반환하고 ioredis 는 연결 실패를
던지지 않고 'error' 이벤트로만 알리기 때문에, await 할 수 있는 것이 없으면
"Redis 에 연결하지 못하면 부팅 실패" 라는 계약을 지킬 수 없다. Postgres 는
부팅 중 스키마를 적용하며 실제로 질의하니 저절로 드러나지만, Redis 는
Plan 3 부팅 경로에서 한 번도 쓰이지 않는다.

createCache 가 onError 를 받아 'error' 리스너를 붙인다. 리스너가 없으면
ioredis 는 경고 한 줄만 찍고 프로세스는 계속 돈다 — 아무도 죽지 않고
아무도 알지 못한다.

close 는 quit 실패를 삼키고 disconnect 로 떨어진다. 이미 끊긴 연결에서
quit 은 거부되는데, 종료 경로가 그것 때문에 죽을 이유는 없다.

통합 테스트의 클라이언트를 beforeAll 안에서 만든다. describe.skip 도 콜백
본문은 평가하므로, suite 최상위에서 createCache(url!) 를 부르면 url 이
undefined 여도 ioredis 가 기본 localhost 로 붙는다. 통과/스킵 숫자는 정상으로
보이지만 [ioredis] Unhandled error event 가 뜬다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 4: 계정 · 세션

**Files:**
- Create: `server/src/identity/types.ts`, `password.ts`, `repository.ts`, `session.ts`
- Test: `server/src/identity/password.test.ts`, `server/src/identity/session.test.ts`

**Interfaces:**
- Consumes: Task 2 `Db`, Task 3 `Cache`·`KEY`, Plan 2 `Clock`
- Produces:
  - `hashPassword(plain: string): Promise<string>` · `verifyPassword(plain: string, hash: string): Promise<boolean>`
  - `interface Principal { kind: 'account'; accountId: string } | { kind: 'guest'; guestId: string }`
  - `createAccount(db, { email, password, nickname, characterId }): Promise<{ accountId: string }>`
  - `findAccountByEmail(db, email)` · `createSession(deps, accountId)` · `createGuestSession(deps)` · `verifySession(deps, token): Promise<Principal | null>` · `revokeSession(deps, token)`

**v1 대비 바뀌는 것 둘.**

1. **검증은 Redis 가 한다.** v1 은 매 WS 프레임마다 `login_logs` 를 SELECT 했다. 세션 검증은 가장 빈번한 질의이므로 DB 를 태우면 안 된다. Postgres 에는 감사 기록만 남긴다.
2. **토큰 원문을 저장하지 않는다.** `session_log.token_hash` 에 SHA-256 만 넣는다. Redis 키는 토큰 자체를 쓰지만 TTL 이 있고 유출 표면이 다르다.

**단일 활성 세션은 유지한다** — v1 과 원작의 동작이고, 중복 로그인 감지가 P1 의 요구사항이다.

**비밀번호는 4~12자** (스펙 §6 UI 플로우). 짧지만 원작 제약이라 따른다. 그래서 해싱 강도가 더 중요하다 — bcrypt cost 12.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/identity/password.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { MAX_PASSWORD_LENGTH, MIN_PASSWORD_LENGTH, hashPassword, verifyPassword } from './password.js';

describe('비밀번호', () => {
  it('원작 제약을 따른다 — 4~12자', () => {
    expect(MIN_PASSWORD_LENGTH).toBe(4);
    expect(MAX_PASSWORD_LENGTH).toBe(12);
  });

  it('해시는 원문을 담지 않는다', async () => {
    const h = await hashPassword('secret12');
    expect(h).not.toContain('secret12');
  });

  it('같은 비밀번호도 매번 다른 해시가 된다 — salt 가 붙는다', async () => {
    expect(await hashPassword('secret12')).not.toBe(await hashPassword('secret12'));
  });

  it('올바른 비밀번호를 검증한다', async () => {
    expect(await verifyPassword('secret12', await hashPassword('secret12'))).toBe(true);
  });

  it('틀린 비밀번호를 거부한다', async () => {
    expect(await verifyPassword('wrong123', await hashPassword('secret12'))).toBe(false);
  });

  it.each(['abc', 'a'.repeat(13)])('길이 제약을 벗어난 %s 를 거부한다', async (pw) => {
    await expect(hashPassword(pw)).rejects.toThrow(/4|12/);
  });

  it('손상된 해시에 대해 던지지 않고 false 를 준다 — DB 오염이 500 이 되면 안 된다', async () => {
    expect(await verifyPassword('secret12', 'not-a-hash')).toBe(false);
  });
});
```

`server/src/identity/session.test.ts` — Redis 가 필요하다.

```typescript
import { afterAll, beforeAll, describe, expect, it } from 'vitest';
import { TestClock } from '../platform/clock.js';
import { createCache, KEY, type Cache } from '../platform/redis.js';
import {
  createGuestSession, createSession, revokeSession, verifySession, type SessionDeps,
} from './session.js';

const url = process.env['REDIS_URL'];
const suite = url ? describe : describe.skip;

suite('세션', () => {
  const clock = new TestClock(1_000_000);
  // Postgres 감사 기록은 여기서 검증하지 않는다 — 스텁을 넣는다.
  const audit = { issued: [] as string[], revoked: [] as string[] };
  const guests = { ids: [] as string[] };

  // **cache 와 deps 를 함께 beforeAll 에서 만든다.** 둘을 떼어 놓으면 안 된다.
  //
  // cache 만 beforeAll 로 옮기는 것은 Task 3 과 같은 이유로 필요하다 —
  // describe.skip 도 콜백 본문은 평가하므로, suite 최상위에서
  // createCache(url!) 를 부르면 url 이 undefined 여도 ioredis 가 localhost 로
  // 붙는다.
  //
  // 그런데 deps 를 최상위에 남겨 두면 `{ cache, ... }` 가 suite 평가 시점의
  // cache **값**(= undefined)을 복사한다. 나중에 beforeAll 이 변수에 대입해도
  // 이미 복사된 객체는 바뀌지 않는다. 모든 테스트가
  // "Cannot read properties of undefined (reading 'setEx')" 로 죽는다.
  // 객체 리터럴은 참조를 만드는 게 아니라 값을 복사한다.
  let cache: Cache;
  let deps: SessionDeps;

  beforeAll(() => {
    cache = createCache(url!, () => {});
    deps = {
      cache,
      clock,
      guests: {
        register: async (tokenHash: string) => {
          const id = `guest-${tokenHash.slice(0, 8)}`;
          guests.ids.push(id);
          return id;
        },
      },
      audit: {
        recordIssued: async (accountId: string, tokenHash: string) => { audit.issued.push(tokenHash); },
        recordRevoked: async (tokenHash: string) => { audit.revoked.push(tokenHash); },
      },
    };
  });

  afterAll(async () => { await cache.close(); });

  it('계정 세션을 발급하고 검증한다', async () => {
    const { token } = await createSession(deps, 'acc-1');
    expect(await verifySession(deps, token)).toEqual({ kind: 'account', accountId: 'acc-1' });
  });

  it('게스트 세션은 계정과 구분된다', async () => {
    const { token } = await createGuestSession(deps);
    const p = await verifySession(deps, token);
    expect(p?.kind).toBe('guest');
  });

  it('게스트 세션이 영속 식별자를 발급받는다 — 광고 카운팅용 (스펙 §6.5)', async () => {
    const before = guests.ids.length;
    await createGuestSession(deps);
    expect(guests.ids.length).toBe(before + 1);
  });

  it('게스트는 단일 활성 제약을 받지 않는다 — 계정이 아니다', async () => {
    const a = await createGuestSession(deps);
    const b = await createGuestSession(deps);
    expect(await verifySession(deps, a.token)).not.toBeNull();
    expect(await verifySession(deps, b.token)).not.toBeNull();
  });

  it('토큰은 매번 다르고 충분히 길다', async () => {
    const a = (await createSession(deps, 'acc-1')).token;
    const b = (await createSession(deps, 'acc-1')).token;
    expect(a).not.toBe(b);
    expect(a.length).toBeGreaterThanOrEqual(48);
  });

  it('없는 토큰은 null 이다', async () => {
    expect(await verifySession(deps, 'nope')).toBeNull();
  });

  it('빈 토큰은 null 이다 — Redis 를 때리기 전에 걸러야 한다', async () => {
    expect(await verifySession(deps, '')).toBeNull();
  });

  it('폐기한 세션은 검증되지 않는다', async () => {
    const { token } = await createSession(deps, 'acc-2');
    await revokeSession(deps, token);
    expect(await verifySession(deps, token)).toBeNull();
  });

  it('새 로그인이 같은 계정의 이전 세션을 무효화한다 — 단일 활성 세션', async () => {
    const first = await createSession(deps, 'acc-3');
    const second = await createSession(deps, 'acc-3');
    expect(await verifySession(deps, first.token)).toBeNull();
    expect(await verifySession(deps, second.token)).not.toBeNull();
  });

  it('동시 로그인에서도 활성 세션이 하나만 남는다', async () => {
    // get → del → set 방식이면 둘 다 살아남는다. 이 테스트가 그것을 잡는다.
    const [a, b] = await Promise.all([
      createSession(deps, 'acc-race'),
      createSession(deps, 'acc-race'),
    ]);
    const valid = (await Promise.all([
      verifySession(deps, a.token),
      verifySession(deps, b.token),
    ])).filter((p) => p !== null);
    expect(valid).toHaveLength(1);
  });

  it('이전 토큰의 logout 이 새 로그인 세션을 무효화하지 않는다', async () => {
    // ACTIVE 를 지우는 구현이면 여기서 깨진다 — 방금 로그인한 사용자가
    // 즉시 로그아웃된다.
    const first = await createSession(deps, 'acc-logout-race');
    const second = await createSession(deps, 'acc-logout-race');
    await revokeSession(deps, first.token);       // 뒤늦게 도착한 logout
    expect(await verifySession(deps, second.token)).not.toBeNull();
  });

  it('감사 기록에 원문 토큰이 들어가지 않는다', async () => {
    const { token } = await createSession(deps, 'acc-4');
    expect(audit.issued).not.toContain(token);
    expect(audit.issued.at(-1)).toMatch(/^[0-9a-f]{64}$/);
  });

  it('Redis 에 저장된 값에도 원문 토큰이 없다', async () => {
    const { token } = await createSession(deps, 'acc-5');
    const raw = await cache.get(KEY.session(token));
    expect(raw).not.toBeNull();
    expect(raw).not.toContain(token);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/identity/`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 구현**

```bash
npm install --workspace server bcryptjs
npm install --workspace server --save-dev @types/bcryptjs
```

`server/src/identity/password.ts`:

```typescript
import bcrypt from 'bcryptjs';

/** 원작 UI 제약 (스펙 §6). 짧아서 해싱 강도가 더 중요하다. */
export const MIN_PASSWORD_LENGTH = 4;
export const MAX_PASSWORD_LENGTH = 12;
const BCRYPT_COST = 12;

export async function hashPassword(plain: string): Promise<string> {
  if (plain.length < MIN_PASSWORD_LENGTH || plain.length > MAX_PASSWORD_LENGTH) {
    throw new Error(`비밀번호는 ${MIN_PASSWORD_LENGTH}~${MAX_PASSWORD_LENGTH}자여야 함`);
  }
  return bcrypt.hash(plain, BCRYPT_COST);
}

/** 손상된 해시에 대해 던지지 않는다 — DB 오염이 500 이 되면 원인 파악이 늦어진다. */
export async function verifyPassword(plain: string, hash: string): Promise<boolean> {
  try {
    return await bcrypt.compare(plain, hash);
  } catch {
    return false;
  }
}
```

`server/src/identity/types.ts`:

```typescript
export type Principal =
  | { kind: 'account'; accountId: string }
  | { kind: 'guest'; guestId: string };

export interface SessionAudit {
  recordIssued(accountId: string, tokenHash: string): Promise<void>;
  recordRevoked(tokenHash: string): Promise<void>;
}

/** 게스트 식별자 발급. 게임 상태가 아니라 광고 노출 카운팅용이다 (스펙 §6.5). */
export interface GuestRegistry {
  register(tokenHash: string): Promise<string>;
}
```

`server/src/identity/session.ts`:

```typescript
import { createHash, randomBytes } from 'node:crypto';
import type { Clock } from '../platform/clock.js';
import { KEY, type Cache } from '../platform/redis.js';
import type { GuestRegistry, Principal, SessionAudit } from './types.js';

const TOKEN_BYTES = 24;             // hex 48자
const SESSION_TTL_MS = 7 * 24 * 60 * 60 * 1000;

export interface SessionDeps {
  cache: Cache;
  clock: Clock;
  audit: SessionAudit;
  guests: GuestRegistry;
}

function newToken(): string {
  return randomBytes(TOKEN_BYTES).toString('hex');
}

/** 감사 기록과 인덱싱에 쓰는 해시. 원문 토큰은 어디에도 남기지 않는다. */
function hashToken(token: string): string {
  return createHash('sha256').update(token).digest('hex');
}

/** 계정당 현재 활성 토큰. 새 로그인이 이전 것을 밀어낸다. */
const ACTIVE = (accountId: string): string => `findit:active:${accountId}`;

/**
 * 단일 활성 세션 — v1 과 원작의 동작이다.
 *
 * 이전 토큰을 읽어서 지우는 방식(get → del → set)은 동시 로그인에서 깨진다.
 * 둘이 같은 이전 토큰을 읽고 둘 다 지운 뒤 각자 자기 것을 쓰면 **두 토큰이
 * 모두 살아남는다**. Lua 를 쓰지 않고 검증 구조로 푼다 — 토큰은 그 계정의
 * ACTIVE 와 일치할 때만 유효하다. 마지막에 ACTIVE 를 쓴 쪽이 이기고 진 쪽은
 * 자동으로 무효가 된다.
 */
export async function createSession(
  deps: SessionDeps,
  accountId: string,
): Promise<{ token: string }> {
  const token = newToken();
  const payload: Principal = { kind: 'account', accountId };
  await deps.cache.setEx(KEY.session(token), JSON.stringify(payload), SESSION_TTL_MS);
  await deps.cache.setEx(ACTIVE(accountId), token, SESSION_TTL_MS);
  await deps.audit.recordIssued(accountId, hashToken(token));
  return { token };
}

/**
 * 게스트 세션.
 *
 * 게임 상태(승패·경험치·아이템)는 저장하지 않는다. 다만 guest_session 행은
 * 만든다 — PDF 가 "광고 노출만 카운팅" 을 요구하고, 그러려면 Redis 세션보다
 * 오래 사는 식별자가 있어야 한다 (스펙 §6.5).
 */
export async function createGuestSession(deps: SessionDeps): Promise<{ token: string }> {
  const token = newToken();
  const tokenHash = hashToken(token);
  const guestId = await deps.guests.register(tokenHash);
  const payload: Principal = { kind: 'guest', guestId };
  await deps.cache.setEx(KEY.session(token), JSON.stringify(payload), SESSION_TTL_MS);
  return { token };
}

export async function verifySession(deps: SessionDeps, token: string): Promise<Principal | null> {
  if (!token) return null;               // Redis 를 때리기 전에 거른다
  const raw = await deps.cache.get(KEY.session(token));
  if (raw === null) return null;

  let principal: Principal;
  try {
    principal = JSON.parse(raw) as Principal;
  } catch {
    return null;
  }

  // 계정 세션은 ACTIVE 와 일치해야 유효하다. 이것이 단일 활성 세션을
  // 경쟁 조건 없이 보장한다 — 밀려난 토큰은 session 키가 남아 있어도 여기서 걸린다.
  if (principal.kind === 'account') {
    const active = await deps.cache.get(ACTIVE(principal.accountId));
    if (active !== token) return null;
  }
  return principal;
}

/**
 * 세션 폐기.
 *
 * **ACTIVE 를 지우지 않는다.** 지우면 다음 순서로 방금 로그인한 사용자가 즉시
 * 로그아웃된다.
 *
 *   1. oldToken 의 logout 이 verifySession 을 통과한다
 *   2. 새 로그인이 ACTIVE = newToken 을 쓴다
 *   3. 1번의 logout 이 뒤늦게 del(ACTIVE) 를 실행한다 → newToken 이 무효가 된다
 *
 * verifySession 이 세션 키와 ACTIVE 일치를 함께 보므로, **세션 키만 지워도**
 * 그 토큰은 즉시 무효가 된다. 남은 ACTIVE 는 다음 로그인이 덮어쓰거나 TTL 로
 * 사라진다. 이렇게 하면 Lua 없이도 순서에 무관해진다.
 */
export async function revokeSession(deps: SessionDeps, token: string): Promise<void> {
  await deps.cache.del(KEY.session(token));
  await deps.audit.recordRevoked(hashToken(token));
}
```

`server/src/identity/repository.ts`:

```typescript
import type { Db } from '../platform/pg.js';
import type { GuestRegistry, SessionAudit } from './types.js';

export interface AccountRow {
  id: string;
  email: string;
  password_hash: string;
  nickname: string;
  character_id: number;
}

export async function createAccount(
  db: Db,
  params: { email: string; passwordHash: string; nickname: string; characterId: number },
): Promise<{ accountId: string }> {
  return db.tx(async (t) => {
    const [row] = await t.query<{ id: string }>(
      `INSERT INTO account(email, password_hash, nickname, character_id)
       VALUES($1, $2, $3, $4) RETURNING id`,
      [params.email, params.passwordHash, params.nickname, params.characterId],
    );
    // 프로필이 없으면 첫 매치 정산이 실패한다. 같은 트랜잭션에서 만든다.
    await t.query(`INSERT INTO player_profile(account_id) VALUES($1)`, [row!.id]);
    return { accountId: row!.id };
  });
}

export async function findAccountByEmail(db: Db, email: string): Promise<AccountRow | null> {
  const rows = await db.query<AccountRow>(`SELECT * FROM account WHERE email = $1`, [email]);
  return rows[0] ?? null;
}

export function createGuestRegistry(db: Db): GuestRegistry {
  return {
    async register(tokenHash) {
      const [row] = await db.query<{ id: string }>(
        `INSERT INTO guest_session(token_hash) VALUES($1) RETURNING id`,
        [tokenHash],
      );
      return `guest-${row!.id}`;
    },
  };
}

/** Postgres 를 감사 기록으로만 쓴다. 검증 경로에는 관여하지 않는다. */
export function createSessionAudit(db: Db): SessionAudit {
  return {
    async recordIssued(accountId, tokenHash) {
      await db.query(
        `INSERT INTO session_log(account_id, token_hash) VALUES($1, $2)`,
        [accountId, tokenHash],
      );
    },
    async recordRevoked(tokenHash) {
      await db.query(
        `UPDATE session_log SET revoked_at = now()
          WHERE token_hash = $1 AND revoked_at IS NULL`,
        [tokenHash],
      );
    },
  };
}
```

- [ ] **Step 4: 통과 확인**

Run: `REDIS_URL=redis://localhost:6379 npx vitest run server/src/identity/ && npm run typecheck`
Expected: PASS — password 8 + session 13 = 21 tests.

- [ ] **Step 5: 커밋**

```bash
git add server/src/identity/ server/package.json package-lock.json
git commit -m "$(cat <<'EOF'
feat(server): 계정·세션

v1 대비 둘을 바꾼다.

검증을 Redis 로 옮긴다. v1 은 매 WS 프레임마다 login_logs 를 SELECT 했다.
세션 검증은 가장 빈번한 질의라 DB 를 태우면 안 된다. Postgres 에는 감사
기록만 남긴다.

토큰 원문을 저장하지 않는다. v1 은 login_logs.session_token 에 원문을
넣었는데, DB 가 유출되면 그대로 세션 탈취가 된다. SHA-256 만 남긴다.

단일 활성 세션은 유지한다 — v1 과 원작의 동작이고 중복 로그인 감지가
P1 요구사항이다.

게스트는 guest_session 행을 만든다. 게임 상태는 저장하지 않지만, PDF 의
"광고 노출만 카운팅" 을 게스트별로 세려면 Redis 세션보다 오래 사는
식별자가 필요하다 (스펙 §6.5).

단일 활성 세션은 Lua 없이 검증 구조로 보장한다. createSession 은 읽지 않고
쓰기만 하고, verifySession 이 토큰과 ACTIVE 의 일치를 본다. revokeSession 은
ACTIVE 를 지우지 않는다 — 지우면 뒤늦게 도착한 logout 이 방금 로그인한
사용자를 즉시 로그아웃시킨다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 5: 서명 콘텐츠 URL — `ContentUrls` 구현

**Files:**
- Create: `server/src/content/urls.ts`, `server/src/content/manifest.ts`
- Test: `server/src/content/urls.test.ts`

**Interfaces:**
- Consumes: Task 1 `AppConfig`, Plan 2 `ContentUrls` 인터페이스·`Clock`
- Produces:
  - `function createContentUrls(deps: { secret: string; ttlMs: number; clock: Clock }): ContentUrls`
  - `function verifyContentUrl(deps, params: { matchId, kind, index, exp, sig }): boolean`
  - `function buildManifest(puzzles, version): ClientManifest`

**Plan 2 가 넘긴 가장 중요한 책임이다.** 스펙 §6.3: 패치 URL 은 **매치별로 서명된 일회용 불투명 URL**이어야 한다. 예측 가능한 형태를 내보내면 클라가 `REVEAL` 하나로 규칙을 학습해 나머지 패치를 전부 선다운로드하고 base 와 템플릿 매칭해 정답을 복원할 수 있다 — 좌표 엔드포인트를 건드리지 않으므로 미스 잠금도 발동하지 않는다.

**설계.** `HMAC-SHA256(secret, matchId|kind|index|exp)` 를 URL 에 싣는다. 서버는 상태를 들지 않고 검증한다.

- `exp` 가 URL 에 포함되고 서명에 들어가므로 변조하면 서명이 깨진다
- `matchId` 가 서명에 들어가므로 다른 매치의 URL 을 가져다 쓸 수 없다
- `index` 가 서명에 들어가므로 인덱스를 바꿔 다른 패치를 열 수 없다 — **열거 차단의 핵심**

> **"일회용"의 범위.** HMAC 만으로는 같은 URL 을 TTL 안에 여러 번 쓸 수 있다. 진짜 1회 소비는 Redis 에 사용 표시를 남겨야 하는데, 그러면 이미지 로딩 재시도(네트워크 실패, 브라우저 프리페치)가 깨진다. **P0 는 TTL 5분 + 매치·인덱스 바인딩으로 한정한다.** 열거 공격은 이것으로 막힌다 — 공격자가 얻는 것은 자기가 이미 맞힌 rect 의 URL 뿐이다. 엄격한 1회 소비가 필요하다고 판단되면 P1 에서 재검토한다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/content/urls.test.ts`:

```typescript
import { describe, expect, it } from 'vitest';
import { TestClock } from '../platform/clock.js';
import { createContentUrls, parseContentUrl, verifyContentUrl } from './urls.js';

const secret = 's'.repeat(32);
const ttlMs = 300_000;
const make = (now = 1_000_000) => {
  const clock = new TestClock(now);
  return { clock, urls: createContentUrls({ secret, ttlMs, clock }) };
};

describe('서명 URL 발급', () => {
  it('base 와 patch 가 서로 다른 URL 을 낸다', () => {
    const { urls } = make();
    expect(urls.base('m1')).not.toBe(urls.patch('m1', 0));
  });

  it('URL 에 서명과 만료가 실린다', () => {
    const { urls } = make();
    const parsed = parseContentUrl(urls.patch('m1', 3));
    expect(parsed).toMatchObject({ matchId: 'm1', kind: 'patch', index: 3 });
    expect(parsed!.sig).toMatch(/^[0-9a-f]{64}$/);
    expect(parsed!.exp).toBe(1_000_000 + ttlMs);
  });

  it('인덱스가 다르면 서명도 다르다 — 이게 열거를 막는다', () => {
    const { urls } = make();
    expect(parseContentUrl(urls.patch('m1', 0))!.sig)
      .not.toBe(parseContentUrl(urls.patch('m1', 1))!.sig);
  });

  it('매치가 다르면 서명도 다르다', () => {
    const { urls } = make();
    expect(parseContentUrl(urls.patch('m1', 0))!.sig)
      .not.toBe(parseContentUrl(urls.patch('m2', 0))!.sig);
  });
});

describe('서명 검증', () => {
  it('발급한 URL 을 통과시킨다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, p)).toBe(true);
  });

  it('인덱스를 바꾸면 거부한다 — 다른 패치를 열 수 없다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...p, index: 3 })).toBe(false);
  });

  it('matchId 를 바꾸면 거부한다 — 다른 매치의 URL 을 재사용할 수 없다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...p, matchId: 'm2' })).toBe(false);
  });

  it('만료를 미래로 늘리면 거부한다 — exp 도 서명 대상이다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...p, exp: p.exp + 60_000 })).toBe(false);
  });

  it('TTL 이 지나면 거부한다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    clock.advance(ttlMs + 1);
    expect(verifyContentUrl({ secret, clock }, p)).toBe(false);
  });

  it('TTL 경계 직전은 통과한다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    clock.advance(ttlMs - 1);
    expect(verifyContentUrl({ secret, clock }, p)).toBe(true);
  });

  it('다른 키로 만든 서명을 거부한다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret: 'x'.repeat(32), clock }, p)).toBe(false);
  });

  it('서명 문자열이 길이만 같고 내용이 다르면 거부한다', () => {
    const { clock, urls } = make();
    const p = parseContentUrl(urls.patch('m1', 2))!;
    expect(verifyContentUrl({ secret, clock }, { ...p, sig: 'a'.repeat(64) })).toBe(false);
  });
});

describe('열거 시나리오 — 스펙 §6.3', () => {
  it('rect 0 의 URL 을 가진 클라가 rect 1~9 의 URL 을 만들 수 없다', () => {
    const { clock, urls } = make();
    const known = parseContentUrl(urls.patch('m1', 0))!;
    for (let i = 1; i < 10; i++) {
      // 인덱스만 바꿔치기: 서명이 맞지 않는다
      expect(verifyContentUrl({ secret, clock }, { ...known, index: i })).toBe(false);
    }
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/content/urls.test.ts`
Expected: FAIL — `Cannot find module './urls.js'`

- [ ] **Step 3: 구현**

`server/src/content/urls.ts`:

```typescript
import { createHmac, timingSafeEqual } from 'node:crypto';
import type { Clock } from '../platform/clock.js';
import type { ContentUrls } from '../battle/reducer.js';

export type ContentKind = 'base' | 'patch';

export interface SignedParams {
  matchId: string;
  kind: ContentKind;
  index: number;
  exp: number;
  sig: string;
}

/**
 * 서명 대상 문자열. 여기 들어간 값은 전부 변조 불가가 된다.
 *
 * index 가 포함되는 것이 열거 차단의 핵심이다. 클라가 rect 0 의 URL 을 받아도
 * index 만 1 로 바꾼 URL 은 서명이 맞지 않아 거부된다 (스펙 §6.3).
 */
function payload(p: Omit<SignedParams, 'sig'>): string {
  return `${p.matchId}|${p.kind}|${p.index}|${p.exp}`;
}

function sign(secret: string, p: Omit<SignedParams, 'sig'>): string {
  return createHmac('sha256', secret).update(payload(p)).digest('hex');
}

export function createContentUrls(deps: {
  secret: string;
  ttlMs: number;
  clock: Clock;
}): ContentUrls {
  const build = (matchId: string, kind: ContentKind, index: number): string => {
    const exp = deps.clock.now() + deps.ttlMs;
    const sig = sign(deps.secret, { matchId, kind, index, exp });
    const qs = new URLSearchParams({ exp: String(exp), sig });
    return `/content/${encodeURIComponent(matchId)}/${kind}/${index}?${qs.toString()}`;
  };

  return {
    base: (matchId) => build(matchId, 'base', 0),
    patch: (matchId, rectIndex) => build(matchId, 'patch', rectIndex),
  };
}

/** 테스트와 라우터가 쓰는 파서. 형식이 어긋나면 null. */
export function parseContentUrl(url: string): SignedParams | null {
  const [path, query] = url.split('?');
  if (!path || !query) return null;

  const m = /^\/content\/([^/]+)\/(base|patch)\/(\d+)$/.exec(path);
  if (!m) return null;

  const params = new URLSearchParams(query);
  const exp = Number(params.get('exp'));
  const sig = params.get('sig');
  if (!Number.isInteger(exp) || !sig) return null;

  return {
    matchId: decodeURIComponent(m[1]!),
    kind: m[2] as ContentKind,
    index: Number(m[3]!),
    exp,
    sig,
  };
}

export function verifyContentUrl(
  deps: { secret: string; clock: Clock },
  p: SignedParams,
): boolean {
  if (deps.clock.now() >= p.exp) return false;

  const expected = sign(deps.secret, p);
  const a = Buffer.from(expected, 'hex');
  const b = Buffer.from(p.sig, 'hex');
  // 길이가 다르면 timingSafeEqual 이 던진다. 먼저 거른다.
  if (a.length !== b.length) return false;
  return timingSafeEqual(a, b);
}
```

`server/src/content/manifest.ts`:

```typescript
import type { Puzzle } from './types.js';

export interface ManifestEntry {
  id: string;
  width: number;
  height: number;
}

export interface ClientManifest {
  version: string;
  puzzles: ManifestEntry[];
}

/**
 * 클라에 내려가는 매니페스트.
 *
 * rect 개수를 싣지 않는다 — 인덱스 규칙과 함께 알려지면 패치 URL 전체가
 * 계산 가능해진다 (스펙 §6.4). 개수는 START.targetCount 로만 전달한다.
 * 좌표는 말할 것도 없이 포함하지 않는다.
 */
export function buildManifest(puzzles: readonly Puzzle[], version: string): ClientManifest {
  return {
    version,
    puzzles: puzzles.map((p) => ({ id: p.id, width: p.width, height: p.height })),
  };
}
```

- [ ] **Step 4: 통과 확인**

Run: `npx vitest run server/src/content/ && npm run typecheck`
Expected: PASS — urls 15 + 기존 content 테스트. 특히 `rect 0 의 URL 을 가진 클라가 rect 1~9 의 URL 을 만들 수 없다` 가 통과해야 한다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/content/urls.ts server/src/content/manifest.ts server/src/content/urls.test.ts
git commit -m "$(cat <<'EOF'
feat(server): 서명 콘텐츠 URL — ContentUrls 구현

Plan 2 가 넘긴 가장 중요한 책임이다. 리듀서는 URL 을 만들 능력이 없고
ctx.urls 로만 받는데, 그 구현이 예측 가능한 형태를 내보내면 클라가
REVEAL 하나로 규칙을 학습해 나머지 패치를 전부 선다운로드하고 base 와
템플릿 매칭해 정답을 복원할 수 있다. 좌표 엔드포인트를 건드리지 않으므로
미스 잠금도 발동하지 않는다.

HMAC-SHA256(secret, matchId|kind|index|exp) 를 싣는다. index 가 서명
대상이라 인덱스만 바꿔치기한 URL 은 거부된다 — 이것이 열거 차단의 핵심이다.
matchId 도 서명 대상이라 다른 매치의 URL 을 재사용할 수 없고, exp 도
포함되므로 만료를 늘릴 수 없다.

"일회용" 은 TTL 5분 + 매치·인덱스 바인딩으로 한정한다. 진짜 1회 소비는
Redis 사용 표시가 필요한데 이미지 로딩 재시도가 깨진다. 열거는 이것으로
막히고, 공격자가 얻는 것은 자기가 이미 맞힌 rect 의 URL 뿐이다.

매니페스트에서 rect 개수를 뺀다. 인덱스 규칙과 함께 알려지면 URL 전체가
계산 가능해진다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 6: HTTP 라우트 — 헬스 · 인증 · 콘텐츠

**Files:**
- Create: `server/src/http/app.ts`, `server/src/http/routes/{health,auth,content}.ts`
- Test: `server/src/http/app.test.ts`
- Modify: `server/package.json` (`express`)

**Interfaces:**
- Consumes: Task 1~5 전부
- Produces: `function createApp(deps: AppDeps): express.Express`

**엔드포인트 (P0):**

| 메서드 | 경로 | 용도 |
|---|---|---|
| `GET` | `/health` | 컨테이너 헬스체크 |
| `POST` | `/auth/register` | 가입 |
| `POST` | `/auth/login` | 로그인 → 토큰 |
| `POST` | `/auth/guest` | 게스트 세션 |
| `POST` | `/auth/logout` | 세션 폐기 |
| `GET` | `/content/manifest` | 퍼즐 목록 + 버전 |
| `GET` | `/content/:matchId/:kind/:index` | 서명 검증 후 이미지 |

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/http/app.test.ts` — `supertest` 로 실제 HTTP 를 태운다.

```typescript
import { describe, expect, it } from 'vitest';
import request from 'supertest';
import { resolve } from 'node:path';
import { TestClock } from '../platform/clock.js';
import { createApp } from './app.js';
import { createContentUrls } from '../content/urls.js';
import { loadPuzzles } from '../content/loader.js';

const secret = 's'.repeat(32);
const clock = new TestClock(1_000_000);
const contentDir = resolve(import.meta.dirname, '../../../content');
const puzzles = loadPuzzles(resolve(contentDir, 'puzzles'));

// identity 는 인메모리 스텁. 여기서 검증할 것은 HTTP 계약이지 DB 가 아니다.
function stubDeps() {
  const sessions = new Map<string, { kind: 'account' | 'guest'; id: string }>();
  const logged: string[] = [];
  return {
    clock,
    log: { error: (m: string) => { logged.push(m); } },
    logged,
    config: { contentUrlSecret: secret, contentUrlTtlMs: 300_000, contentDir },
    puzzles,
    contentVersion: 'v-test',
    // Plan 3 에는 매치가 없으므로 항등. Plan 4 가 Redis 조회로 바꾼다.
    resolvePuzzleId: async (matchId: string) => matchId,
    identity: {
      register: async (email: string) => ({ accountId: `acc-${email}` }),
      login: async (email: string, password: string) => {
        if (password !== 'good') return null;
        const token = `t-${email}`;
        sessions.set(token, { kind: 'account', id: `acc-${email}` });
        return { token };
      },
      guest: async () => {
        const token = `g-${sessions.size}`;
        sessions.set(token, { kind: 'guest', id: token });
        return { token };
      },
      logout: async (token: string) => { sessions.delete(token); },
      verify: async (token: string) => sessions.get(token) ?? null,
    },
  };
}

describe('GET /health', () => {
  it('200 과 ok 를 준다', async () => {
    const res = await request(createApp(stubDeps())).get('/health');
    expect(res.status).toBe(200);
    expect(res.body).toMatchObject({ status: 'ok' });
  });
});

describe('인증', () => {
  it('로그인이 토큰을 준다', async () => {
    const res = await request(createApp(stubDeps()))
      .post('/auth/login').send({ email: 'a@b.c', password: 'good' });
    expect(res.status).toBe(200);
    expect(typeof res.body.token).toBe('string');
  });

  it('틀린 비밀번호는 401 이다', async () => {
    const res = await request(createApp(stubDeps()))
      .post('/auth/login').send({ email: 'a@b.c', password: 'bad' });
    expect(res.status).toBe(401);
  });

  it('401 응답이 계정 존재 여부를 흘리지 않는다', async () => {
    const app = createApp(stubDeps());
    const a = await request(app).post('/auth/login').send({ email: 'exists@b.c', password: 'bad' });
    const b = await request(app).post('/auth/login').send({ email: 'nope@b.c', password: 'bad' });
    expect(a.body).toEqual(b.body);
  });

  it('필드가 빠지면 400 이다', async () => {
    const res = await request(createApp(stubDeps())).post('/auth/login').send({ email: 'a@b.c' });
    expect(res.status).toBe(400);
  });

  it('게스트 세션을 발급한다', async () => {
    const res = await request(createApp(stubDeps())).post('/auth/guest').send({});
    expect(res.status).toBe(200);
    expect(typeof res.body.token).toBe('string');
  });

  it('응답 어디에도 비밀번호 해시가 없다', async () => {
    const res = await request(createApp(stubDeps()))
      .post('/auth/login').send({ email: 'a@b.c', password: 'good' });
    expect(JSON.stringify(res.body)).not.toMatch(/hash|\$2[aby]\$/);
  });
});

describe('비동기 핸들러 예외', () => {
  it('의존성이 throw 해도 500 으로 응답이 끝난다 — 매달리면 안 된다', async () => {
    const deps = stubDeps();
    deps.identity.guest = async () => { throw new Error('redis down'); };
    const res = await request(createApp(deps)).post('/auth/guest').send({});
    expect(res.status).toBe(500);
    expect(res.body).toEqual({ error: 'internal_error' });
  });

  it('예외를 로그에 남긴다', async () => {
    const deps = stubDeps();
    deps.identity.guest = async () => { throw new Error('redis down'); };
    await request(createApp(deps)).post('/auth/guest').send({});
    expect(deps.logged).toHaveLength(1);
  });
});

describe('GET /content/manifest', () => {
  it('버전과 퍼즐 목록을 준다', async () => {
    const res = await request(createApp(stubDeps())).get('/content/manifest');
    expect(res.status).toBe(200);
    expect(res.body.version).toBe('v-test');
    expect(res.body.puzzles).toHaveLength(30);
  });

  it('좌표도 rect 개수도 싣지 않는다 — 스펙 §6.4', () => {
    return request(createApp(stubDeps())).get('/content/manifest').then((res) => {
      for (const entry of res.body.puzzles) {
        expect(Object.keys(entry).sort()).toEqual(['height', 'id', 'width']);
      }
    });
  });
});

describe('GET /content/:matchId/:kind/:index', () => {
  const urls = createContentUrls({ secret, ttlMs: 300_000, clock });

  it('유효한 서명이면 이미지를 준다', async () => {
    const res = await request(createApp(stubDeps())).get(urls.base('a0001'));
    expect(res.status).toBe(200);
    expect(res.headers['content-type']).toMatch(/image\/webp/);
  });

  it('서명이 없으면 403 이다', async () => {
    const res = await request(createApp(stubDeps())).get('/content/a0001/base/0');
    expect(res.status).toBe(403);
  });

  it('인덱스를 바꾸면 403 이다 — 열거 차단', async () => {
    const signed = urls.patch('a0001', 0);
    const tampered = signed.replace('/patch/0?', '/patch/1?');
    expect((await request(createApp(stubDeps())).get(tampered)).status).toBe(403);
  });

  it('만료된 URL 은 403 이다', async () => {
    const late = new TestClock(1_000_000);
    const u = createContentUrls({ secret, ttlMs: 1, clock: late }).base('a0001');
    late.advance(10);
    const deps = stubDeps();
    deps.clock = late;
    expect((await request(createApp(deps)).get(u)).status).toBe(403);
  });

  it('없는 퍼즐은 404 다 — 서명이 유효해도', async () => {
    expect((await request(createApp(stubDeps())).get(urls.base('nope'))).status).toBe(404);
  });

  it('경로 탈출을 시도해도 404/403 이다', async () => {
    const res = await request(createApp(stubDeps())).get(urls.base('../../etc/passwd'));
    expect([403, 404]).toContain(res.status);
  });
});
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/http/app.test.ts`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 구현**

```bash
npm install --workspace server express
npm install --workspace server --save-dev @types/express supertest @types/supertest
```

구현에서 지켜야 할 것 넷. 전부 위 테스트가 강제한다.

1. **`/auth/login` 의 401 응답 본문이 계정 존재 여부에 따라 달라지면 안 된다.** 사용자 열거 취약점이다. 항상 같은 `{ error: 'invalid_credentials' }` 를 준다.
2. **`/content/:matchId/:kind/:index` 는 서명 검증을 먼저 하고, 그다음에 파일을 찾는다.** 순서를 뒤집으면 404/403 차이로 어떤 퍼즐이 존재하는지 알려주게 된다.
3. **`matchId` 를 경로로 쓰기 전에 정규화한다.** `../` 가 섞이면 `contentDir` 밖을 읽는다. `resolve` 결과가 `contentDir` 로 시작하는지 확인한다.
4. **응답에 `password_hash` 가 실리지 않는다.** 계정 행을 그대로 직렬화하지 말고 필요한 필드만 뽑는다.

`server/src/http/app.ts`:

```typescript
import express from 'express';
import { resolve, sep } from 'node:path';
import { existsSync } from 'node:fs';
import type { Clock } from '../platform/clock.js';
import type { Puzzle } from '../content/types.js';
import { buildManifest } from '../content/manifest.js';
import { parseContentUrl, verifyContentUrl } from '../content/urls.js';
import type { Principal } from '../identity/types.js';

export interface AppDeps {
  clock: Clock;
  log: { error(msg: string, fields?: Record<string, unknown>): void };
  config: { contentUrlSecret: string; contentUrlTtlMs: number; contentDir: string };
  puzzles: readonly Puzzle[];
  contentVersion: string;
  /**
   * 서명 URL 의 matchId 를 실제 퍼즐 id 로 바꾼다.
   *
   * Plan 2 리듀서는 `ctx.urls.base(matchId)` 로 URL 을 만드는데 파일은
   * `content/images/<puzzleId>/` 에 있다. 둘은 같지 않다. Plan 3 에는 매치가
   * 없으므로 항등 함수를 넣고, Plan 4 가 Redis 의 매치 상태 조회로 교체한다.
   * 주석이 아니라 주입점으로 두는 이유는, 교체를 잊으면 테스트가 아니라
   * 런타임 404 로만 드러나기 때문이다.
   */
  resolvePuzzleId(matchId: string): Promise<string | null>;
  identity: {
    register(email: string, password: string, nickname: string, characterId: number):
      Promise<{ accountId: string }>;
    login(email: string, password: string): Promise<{ token: string } | null>;
    guest(): Promise<{ token: string }>;
    logout(token: string): Promise<void>;
    verify(token: string): Promise<Principal | null>;
  };
}

/** contentDir 밖을 가리키면 null. 경로 탈출 차단. */
function safeContentPath(contentDir: string, ...parts: string[]): string | null {
  const full = resolve(contentDir, ...parts);
  const root = resolve(contentDir);
  if (full !== root && !full.startsWith(root + sep)) return null;
  return full;
}

/**
 * 비동기 핸들러 래퍼.
 *
 * `void (async () => {...})()` 로 감싸면 의존성이 throw 했을 때 rejection 이
 * 아무 데도 닿지 않아 **응답이 끝나지 않는다** — 클라는 타임아웃까지 매달린다.
 * 여기서 잡아 500 을 돌려주고 로그를 남긴다.
 */
function asyncRoute(
  log: AppDeps['log'],
  fn: (req: express.Request, res: express.Response) => Promise<void>,
): express.RequestHandler {
  return (req, res) => {
    fn(req, res).catch((err: unknown) => {
      log.error('라우트 처리 실패', {
        path: req.path,
        message: err instanceof Error ? err.message : String(err),
      });
      if (!res.headersSent) res.status(500).json({ error: 'internal_error' });
    });
  };
}

export function createApp(deps: AppDeps): express.Express {
  const app = express();
  app.use(express.json({ limit: '16kb' }));

  app.get('/health', (_req, res) => { res.json({ status: 'ok' }); });

  // ── 인증 ──────────────────────────────────────────────
  app.post('/auth/register', asyncRoute(deps.log, async (req, res) => {
      const { email, password, nickname, characterId } = req.body ?? {};
      if (typeof email !== 'string' || typeof password !== 'string' || typeof nickname !== 'string') {
        res.status(400).json({ error: 'invalid_request' });
        return;
      }
      try {
        const out = await deps.identity.register(email, password, nickname, Number(characterId) || 0);
        res.status(201).json({ accountId: out.accountId });
      } catch {
        // 이메일 중복인지 비밀번호 길이 위반인지 구분해 주지 않는다.
        res.status(409).json({ error: 'register_failed' });
      }
  }));

  app.post('/auth/login', asyncRoute(deps.log, async (req, res) => {
      const { email, password } = req.body ?? {};
      if (typeof email !== 'string' || typeof password !== 'string') {
        res.status(400).json({ error: 'invalid_request' });
        return;
      }
      const out = await deps.identity.login(email, password);
      if (out === null) {
        // 계정이 없는 경우와 비밀번호가 틀린 경우의 응답이 같아야 한다.
        // 다르면 사용자 열거가 된다.
        res.status(401).json({ error: 'invalid_credentials' });
        return;
      }
      res.json({ token: out.token });
  }));

  app.post('/auth/guest', asyncRoute(deps.log, async (_req, res) => {
    res.json({ token: (await deps.identity.guest()).token });
  }));

  app.post('/auth/logout', asyncRoute(deps.log, async (req, res) => {
    const token = req.header('authorization')?.replace(/^Bearer /, '') ?? '';
    await deps.identity.logout(token);
    res.status(204).end();
  }));

  // ── 콘텐츠 ────────────────────────────────────────────
  app.get('/content/manifest', (_req, res) => {
    res.json(buildManifest(deps.puzzles, deps.contentVersion));
  });

  app.get('/content/:matchId/:kind/:index', asyncRoute(deps.log, async (req, res) => {
    // 서명 검증을 먼저 한다. 파일 존재 확인을 먼저 하면 404/403 차이로
    // 어떤 퍼즐이 존재하는지 알려주게 된다.
    const parsed = parseContentUrl(req.originalUrl);
    if (parsed === null) {
      res.status(403).json({ error: 'forbidden' });
      return;
    }
    if (!verifyContentUrl({ secret: deps.config.contentUrlSecret, clock: deps.clock }, parsed)) {
      res.status(403).json({ error: 'forbidden' });
      return;
    }

    const puzzleId = await deps.resolvePuzzleId(parsed.matchId);
    if (puzzleId === null) {
      res.status(404).json({ error: 'not_found' });
      return;
    }

    const file = parsed.kind === 'base'
      ? 'base.webp'
      : `patch_${String(parsed.index + 1).padStart(2, '0')}.webp`;

    const full = safeContentPath(deps.config.contentDir, 'images', puzzleId, file);
    if (full === null || !existsSync(full)) {
      res.status(404).json({ error: 'not_found' });
      return;
    }
    res.type('image/webp').sendFile(full);
  }));

  return app;
}
```

- [ ] **Step 4: 통과 확인**

Run: `npx vitest run server/src/http/ && npm run typecheck`
Expected: PASS — 17 tests. 특히 `401 응답이 계정 존재 여부를 흘리지 않는다`, `인덱스를 바꾸면 403 이다`, `경로 탈출을 시도해도 404/403 이다` 가 통과해야 한다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/http/ server/package.json package-lock.json
git commit -m "$(cat <<'EOF'
feat(server): HTTP 라우트 — 헬스·인증·콘텐츠

네 가지를 테스트로 강제한다.

로그인 401 응답이 계정 존재 여부에 따라 달라지지 않는다. 다르면 사용자
열거가 된다.

콘텐츠 라우트는 서명 검증을 먼저 하고 파일을 나중에 찾는다. 순서를
뒤집으면 404/403 차이로 어떤 퍼즐이 존재하는지 알려주게 된다.

matchId 를 경로로 쓰기 전에 정규화한다. ../ 가 섞이면 contentDir 밖을 읽는다.

응답에 password_hash 가 실리지 않는다. 계정 행을 그대로 직렬화하지 않는다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 7: 부팅 · Docker Compose

**Files:**
- Create: `server/src/main.ts`, `server/Dockerfile`, `docker-compose.yml`, `.env.example`, `.dockerignore`
- Modify: `package.json` (스크립트), `.gitignore` (`.env`)

**Interfaces:**
- Consumes: Task 1~6 전부
- Produces: `docker compose up` 으로 뜨는 서버

**부팅 순서.** 설정 → 로거 → DB/Redis 연결 → **Redis 연결 확인(`await cache.ping()`)** → 스키마 적용 → 콘텐츠 로드 → 콘텐츠 버전 기록 → HTTP 리슨. **DB 나 Redis 에 연결하지 못하면 부팅에 실패한다** — 반쯤 뜬 서버가 트래픽을 받는 것보다 낫다.

> `ping` 을 빼먹으면 이 계약은 **Redis 쪽에서 그냥 거짓말이 된다.** DB 는 스키마를 적용하며 실제로 질의하니 연결 실패가 드러나지만, Redis 는 Plan 3 부팅 경로에서 한 번도 쓰이지 않는다. `createCache` 는 동기로 반환하고 ioredis 는 연결 오류를 던지지 않으므로, Redis 가 죽어 있어도 서버는 정상 기동해 로그인 요청을 받고 전부 500 을 낸다.

- [ ] **Step 1: `.env.example` 과 Compose 작성**

`.env.example` — 실값은 넣지 않는다. Gitleaks 가 CI 에서 돈다.

```bash
NODE_ENV=development
PORT=8080
DATABASE_URL=postgres://findit:findit@postgres:5432/findit
REDIS_URL=redis://redis:6379
# openssl rand -hex 32 으로 생성할 것
CONTENT_URL_SECRET=change-me-to-32-bytes-hex-value-00
CONTENT_DIR=/app/content
```

`docker-compose.yml`:

```yaml
services:
  postgres:
    image: postgres:16-alpine
    environment:
      POSTGRES_USER: findit
      POSTGRES_PASSWORD: findit
      POSTGRES_DB: findit
    ports: ['5432:5432']
    volumes: ['pgdata:/var/lib/postgresql/data']
    healthcheck:
      test: ['CMD-SHELL', 'pg_isready -U findit']
      interval: 5s
      timeout: 3s
      retries: 10

  redis:
    image: redis:7-alpine
    ports: ['6379:6379']
    healthcheck:
      test: ['CMD', 'redis-cli', 'ping']
      interval: 5s
      timeout: 3s
      retries: 10

  server:
    build:
      context: .
      dockerfile: server/Dockerfile
    env_file: [.env]
    environment:
      DATABASE_URL: postgres://findit:findit@postgres:5432/findit
      REDIS_URL: redis://redis:6379
      CONTENT_DIR: /app/content
    ports: ['8080:8080']
    depends_on:
      postgres: { condition: service_healthy }
      redis: { condition: service_healthy }

volumes:
  pgdata:
```

> `depends_on` 에 `condition: service_healthy` 를 쓰는 이유는, 컨테이너가 떴다는 것과 DB 가 접속을 받는다는 것이 다르기 때문이다. 이게 없으면 서버가 먼저 떠서 연결 실패로 죽는다.

`.dockerignore` — **이게 없으면 `legacy/` 3,400여 파일과 `node_modules` 가 빌드 컨텍스트로 전송된다.** 빌드가 몇 분씩 걸리고 이미지에 원작 APK 까지 들어간다.

```
node_modules
**/node_modules
**/dist
**/*.tsbuildinfo
legacy
docs
.git
.github
.superpowers
landing
*.md
.env
```

> `content/` 는 **제외하지 않는다** — 이미지에 들어가야 한다. `legacy/` 를 빼는 것이 핵심이다.

`server/Dockerfile` — 멀티스테이지. 워크스페이스 루트를 컨텍스트로 받는다.

```dockerfile
# 빌드 컨텍스트는 저장소 루트다 (npm workspaces 때문).
FROM node:24-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
COPY packages/protocol/package.json packages/protocol/
COPY tools/package.json tools/
COPY server/package.json server/
RUN npm ci

FROM node:24-alpine AS runtime
WORKDIR /app
ENV NODE_ENV=production
COPY --from=deps /app/node_modules ./node_modules
COPY package.json tsconfig.base.json tsconfig.json ./
COPY packages ./packages
COPY server ./server
COPY content ./content
EXPOSE 8080
CMD ["npx", "tsx", "server/src/main.ts"]
```

> `content/` 를 이미지에 넣는 이유는 P0 가 로컬 파일에서 서빙하기 때문이다. CDN 으로 옮기는 것은 P1 이다. `content/images/` 는 gitignore 대상이므로 **이미지를 빌드 전에 생성해야 한다** — `npm run content:all` 을 먼저 돌릴 것.

- [ ] **Step 2: 부팅 엔트리 작성**

`server/src/main.ts`:

```typescript
import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { loadConfig } from './platform/config.js';
import { createLogger } from './platform/logger.js';
import { SystemClock } from './platform/clock.js';
import { createDb } from './platform/pg.js';
import { createCache } from './platform/redis.js';
import { loadPuzzles } from './content/loader.js';
import { createApp } from './http/app.js';
import {
  createAccount, createGuestRegistry, createSessionAudit, findAccountByEmail,
} from './identity/repository.js';
import { hashPassword, verifyPassword } from './identity/password.js';
import {
  createGuestSession, createSession, revokeSession, verifySession,
} from './identity/session.js';

async function main(): Promise<void> {
  const config = loadConfig(process.env);
  const log = createLogger(config.nodeEnv);
  const clock = new SystemClock();

  const db = createDb(config.databaseUrl);
  const cache = createCache(config.redisUrl, (err) => log.error('Redis 오류', { err: err.message }));

  // createCache 는 동기다 — 여기까지 왔다고 Redis 에 닿은 것이 아니다.
  // 명시적으로 확인하지 않으면 Redis 없이도 서버가 떠서 로그인 요청을 받고
  // 전부 500 을 낸다. DB 는 바로 아래 스키마 적용에서 저절로 드러난다.
  await cache.ping();
  log.info('Redis 연결 확인');

  const schema = readFileSync(resolve(import.meta.dirname, '../sql/001_init.sql'), 'utf8');
  await db.query(schema);
  log.info('스키마 적용 완료');

  const manifestPath = resolve(config.contentDir, 'puzzles/manifest.json');
  const version = (JSON.parse(readFileSync(manifestPath, 'utf8')) as { version: string }).version;
  const puzzles = loadPuzzles(resolve(config.contentDir, 'puzzles'));
  await db.query(
    `INSERT INTO content_version(version) VALUES($1) ON CONFLICT (version) DO NOTHING`,
    [version],
  );
  log.info('콘텐츠 로드 완료', { puzzles: puzzles.length, version });

  const audit = createSessionAudit(db);
  const guests = createGuestRegistry(db);
  const sessionDeps = { cache, clock, audit, guests };

  const knownPuzzleIds = new Set(puzzles.map((p) => p.id));
  const app = createApp({
    clock,
    log,
    config,
    puzzles,
    contentVersion: version,
    // Plan 3 에는 매치가 없다. 알려진 퍼즐 id 만 통과시키는 항등 함수를 쓴다.
    // Plan 4 가 Redis 의 match:{id} 조회로 교체한다.
    resolvePuzzleId: async (matchId) => (knownPuzzleIds.has(matchId) ? matchId : null),
    identity: {
      register: async (email, password, nickname, characterId) =>
        createAccount(db, {
          email, nickname, characterId, passwordHash: await hashPassword(password),
        }),
      login: async (email, password) => {
        const account = await findAccountByEmail(db, email);
        // 계정이 없어도 해시 검증을 돌려 응답 시간 차이를 줄인다.
        const ok = await verifyPassword(password, account?.password_hash ?? '$2a$12$invalid');
        if (!account || !ok) return null;
        return createSession(sessionDeps, account.id);
      },
      guest: () => createGuestSession(sessionDeps),
      logout: (token) => revokeSession(sessionDeps, token),
      verify: (token) => verifySession(sessionDeps, token),
    },
  });

  const server = app.listen(config.port, () => {
    log.info('서버 기동', { port: config.port, nodeEnv: config.nodeEnv });
  });

  const shutdown = async (signal: string): Promise<void> => {
    log.info('종료 신호 수신', { signal });
    server.close();
    await Promise.allSettled([db.close(), cache.close()]);
    process.exit(0);
  };
  process.on('SIGTERM', () => void shutdown('SIGTERM'));
  process.on('SIGINT', () => void shutdown('SIGINT'));
}

void main().catch((err: unknown) => {
  console.error('부팅 실패:', err);
  process.exit(1);
});
```

루트 `package.json` 에 스크립트 추가:

```json
"server:dev": "tsx watch server/src/main.ts",
"compose:up": "npm run content:all && docker compose up --build -d",
"compose:down": "docker compose down"
```

`.gitignore` 에 `.env` 추가.

- [ ] **Step 3: 실제로 띄워 확인**

```bash
cp .env.example .env
# CONTENT_URL_SECRET 를 openssl rand -hex 32 결과로 교체
npm run compose:up
```

확인할 것:

```bash
curl -s localhost:8080/health
```
Expected: `{"status":"ok"}`

```bash
curl -s localhost:8080/content/manifest | head -c 200
```
Expected: `{"version":"...","puzzles":[{"id":"a0001",...`

**Redis 없이는 부팅에 실패해야 한다 — 반드시 확인할 것:**

Postgres 는 살려 둔 채 Redis 만 닿을 수 없게 한다. 그래야 실패 원인이 Redis 임이 분명해진다.

```bash
DATABASE_URL=postgres://findit:findit@localhost:5432/findit \
REDIS_URL=redis://127.0.0.1:1 \
CONTENT_URL_SECRET=$(openssl rand -hex 32) \
CONTENT_DIR=./content \
npx tsx server/src/main.ts; echo "exit=$?"
```
Expected: `exit=1`, 그리고 `부팅 실패:` 가 로그에 찍힌다. `서버 기동` 은 **찍히면 안 된다**.
프로세스가 매달리거나 exit 0 으로 끝나면 `ping` 을 await 하지 않은 것이다.

```bash
curl -s -X POST localhost:8080/auth/guest -H 'content-type: application/json' -d '{}'
```
Expected: `{"token":"..."}`

```bash
docker compose logs server | tail -5
```
Expected: `스키마 적용 완료` · `콘텐츠 로드 완료` · `서버 기동`

- [ ] **Step 4: 전체 테스트**

```bash
DATABASE_URL=postgres://findit:findit@localhost:5432/findit \
REDIS_URL=redis://localhost:6379 \
npm test
npm run typecheck
```
Expected: Plan 1·2 의 259개 + 이 계획의 신규 테스트 전부 통과. typecheck exit 0.

- [ ] **Step 5: 커밋**

```bash
git add server/src/main.ts server/Dockerfile .dockerignore docker-compose.yml .env.example .gitignore package.json
git commit -m "$(cat <<'EOF'
feat(server): 부팅 엔트리 + Docker Compose

DB 나 Redis 에 연결하지 못하면 부팅에 실패한다. 반쯤 뜬 서버가 트래픽을
받는 것보다 낫다.

compose 의 depends_on 에 condition: service_healthy 를 건다. 컨테이너가
떴다는 것과 DB 가 접속을 받는다는 것은 다르고, 이게 없으면 서버가 먼저
떠서 연결 실패로 죽는다.

Dockerfile 은 저장소 루트를 컨텍스트로 받는다 — npm workspaces 라
package-lock.json 이 루트에 있다. content/ 를 이미지에 넣으므로 빌드 전에
npm run content:all 을 돌려야 한다 (compose:up 스크립트가 함께 한다).

.env 는 gitignore 대상이고 .env.example 에는 실값을 넣지 않는다.
CONTENT_URL_SECRET 은 openssl rand -hex 32 로 만들 것.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

## 완료 기준

1. `npm run compose:up` 으로 pg·redis·server 가 뜬다
2. `/health` 가 200 을 준다
3. 게스트 세션을 발급받고 `/content/manifest` 를 받을 수 있다
4. 서명된 콘텐츠 URL 로 이미지를 받고, **인덱스를 바꾸면 403** 이다
5. 매니페스트에 좌표도 rect 개수도 없다
6. 로그인 401 이 계정 존재 여부를 흘리지 않는다
7. 스키마가 재실행 가능하다 — 두 번 적용해도 실패하지 않는다
8. 세션 토큰 원문이 Postgres 에도 로그에도 남지 않는다
9. 알려지지 않은 `matchId` 로 서명된 URL 은 서명이 유효해도 404 다
10. 스키마가 스펙 §6.5 의 테이블 7개를 전부 만든다
11. 동시 로그인에서도 활성 세션이 하나만 남는다
12. 뒤늦게 도착한 logout 이 새 로그인 세션을 무효화하지 않는다
13. 라우트 의존성이 throw 해도 500 으로 응답이 끝난다 — 매달리지 않는다
14. Plan 1·2 의 기존 259 테스트가 전부 그대로 통과한다
15. `DATABASE_URL`·`REDIS_URL` 없이 돌렸을 때 통합 테스트가 **외부 연결을 시도하지 않는다** — `[ioredis]` 경고가 없어야 한다
16. **Redis 에 닿지 못하면 부팅이 실패한다** — Postgres 가 살아 있어도 exit 1 이고 `서버 기동` 이 찍히지 않는다
17. `npm run typecheck` exit 0, CI 5개 체크 전부 통과

## 이 계획이 남기는 것 (Plan 4 의 입력)

- `createApp(deps)` — WS 게이트웨이가 같은 HTTP 서버에 붙는다
- `verifySession(deps, token)` — WS `AUTH` 프레임이 그대로 쓴다
- `createContentUrls({ secret, ttlMs, clock })` — **Plan 2 리듀서의 `ctx.urls` 에 주입할 구현**
- `Db` · `Cache` 어댑터 — 매칭 큐(Redis)와 정산(Postgres)이 쓴다
- `match_history` 테이블 — `END` 페이로드를 여기에 쓴다
- **`resolvePuzzleId` 를 반드시 교체해야 한다.** Plan 3 은 항등 함수를 넣어 두었다. Plan 2 리듀서가 만드는 URL 은 `matchId` 를 싣는데 파일은 퍼즐 id 로 저장돼 있으므로, Plan 4 가 Redis 의 매치 상태에서 퍼즐 id 를 찾아 돌려주도록 바꾸지 않으면 실제 매치의 모든 이미지가 404 가 된다
- **아직 없는 것**: 매칭 큐, AI 전환·난입, WS 게이트웨이, 정산 영속화, `player_profile` 갱신

## 다음 계획

- **Plan 4 — 실시간**: WS 게이트웨이, 매칭 큐(5초 AI 전환, 난입 시 정산 없이 상대 교체), 리듀서 구동과 `wakeAt` 스케줄링, `REVEAL` 마다 AI 재계획, 습득 스킬 검증, `READY` 타임아웃, 정산 영속화, 2-클라이언트 통합 테스트
- **Plan 5 — Flutter 클라**: MD3 메타 화면 + Flame 배틀 씬(레거시 룩)
