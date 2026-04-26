# Game Design

원본 게임 (2012-2013) 의 모든 룰·공식·밸런스를 보존한 설계 문서. 진실 자료(SoT)는 **서버 [`balance.js`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/server/src/util/balance.js)** + 클라 [`util/constants.dart`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/client_flutter/lib/util/constants.dart).

원본 기획서:
- `docs/AI_틀린부위 찾는 시간공식_01.xlsx`
- `docs/findit_item,skill,shop_20130702.xlsx`
- `docs/findit_shop_items_20121220.xlsx`
- `docs/레벨별 첨수체계_기본능력치_02.xlsx`
- `docs/스킬트리_04.xlsx`
- `docs/용어정리.docx`
- `docs/작업 우선순위 v.0.5.docx`

---

## 핵심 게임 룰

### 게임 시간
```
GAMETIME = 40 (초)
```
카운트다운. 0 도달 시 누가 더 많이 찾았는가로 승부 결정.

### 틀린 부위 갯수
```
FINDRECT_TOTALNUM = 7
```
한 이미지당 정확히 7개. 누가 먼저 7개 다 찾으면 즉시 승리.

### 스킬덱
```
SKILLWINDOW_TOTALNUM = 8 (풀)
스킬덱 슬롯 = 1..4 (확장으로 늘림)
한 게임에 5개 스킬 선택해서 사용
```

---

## AI 발견 시간 공식

```
baseTime = 7 - (level × 0.03)  초
jitter = ±15% 랜덤
finalTime = baseTime × (1 + uniform(-0.15, +0.15))
clamped = clamp(finalTime, 1.0, 7.0)
```

레벨별 평균 발견 시간:

| Lv | base | 분산 (±15%) | min | max |
|---:|---:|---|---:|---:|
| 1 | 6.97s | 5.92 ~ 8.02 | 1.0 (clamp 위) | 7.0 |
| 10 | 6.70s | 5.69 ~ 7.70 | 1.0 | 7.0 |
| 30 | 6.10s | 5.18 ~ 7.01 | 1.0 | 7.0 |
| 50 | 5.50s | 4.67 ~ 6.32 | 1.0 | 6.32 |
| 100 | 4.00s | 3.40 ~ 4.60 | 1.0 | 4.60 |

구현:
- 서버: `server/src/util/balance.js` (참조용 — AI 는 클라 자체 수행)
- 클라: `lib/util/constants.dart::aiFindTimeSeconds(level)`
- 클라: `lib/game/game_controller.dart::_nextAiFindTime(level)` (jitter + clamp)

---

## 점수 공식

```
승자 점수 = findNum × 50 + 100 + comboBonus
패자 점수 = findNum × 50 + comboBonus
```

`findNum` = 본인이 찾은 정답 개수 (0~7)
`comboBonus` = 게임 중 누적된 콤보 보너스 합계 (현재 구현은 시간 보너스로 직접 반영, 점수 보너스는 추후 분리 가능)

승부 결정:
1. 누가 7/7 → 그 사람 즉시 승
2. 시간 만료 → `findNum` 더 많은 쪽 승
3. 상대 이탈 → 본인 승
4. (TBD) HP 0 → 본인 패

---

## 콤보 보너스

연속 정답 시 콤보 카운트 ↑ → 보너스 적립.

| 콤보 | 점수 보너스 | 시간 보너스 (초) |
|---:|---:|---:|
| 1 | +100 | +1 |
| 2 | +200 | +2 |
| 3 | +400 | +4 |
| 4+ | +700 | +7 |

콤보 리셋 조건:
- 본인이 오답 터치 → `combo = 0`
- 상대가 정답 발견 → 본인 `combo = 0`
- 게임 종료

구현:
```dart
// lib/util/constants.dart
static const List<int> comboScoreBonus = [100, 200, 400, 700];
static const List<int> comboTimeBonus  = [1, 2, 4, 7];

static int comboScore(int combo) =>
  combo <= 0 ? 0 : comboScoreBonus[combo - 1 < 4 ? combo - 1 : 3];
static int comboTime(int combo) =>
  combo <= 0 ? 0 : comboTimeBonus[combo - 1 < 4 ? combo - 1 : 3];
```

---

## 레벨 시스템 (1~100)

### 누적 점수 임계값
1Lv 부터 100Lv 까지 도달에 필요한 누적 점수 (`balance.js LEVEL_SCORE`).
- 1Lv = 5,000
- 10Lv ≈ 175,710
- 30Lv ≈ 8,393,580
- 50Lv ≈ 5천만대
- 100Lv ≈ 6.6억

### 기본 능력치 (`LEVEL_ABILITY[101]`)

| Lv | attack | defense | hp |
|---:|---:|---:|---:|
| 1 | 0.50 | 0.50 | 110 |
| 10 | 0.55 | 0.55 | 200 |
| 30 | 0.65 | 0.65 | 600 |
| 50 | 0.85 | 0.85 | 1500 |
| 100 | 1.57 | 1.57 | 5000 |

### 등급 (A ~ J)
10레벨 단위로 등급 부여:
| 레벨 범위 | 등급 |
|---|---|
| 1~10 | A |
| 11~20 | B |
| ... | ... |
| 91~100 | J |

서버: `gradeForLevel(level)` 함수 (`balance.js`)

### 클라 캐싱
- 로그인 직후 `GET /app/member/levelTable.json` 한 번 호출 → 101 행 캐싱
- HP 자동 재계산: `mLevel` 증가 시 `mHP = HP_BY_LEVEL[mLevel]`

---

## 스킬 시스템 — 44개 스킬 트리

원본 기획서 `스킬트리_04.xlsx` 의 44개 스킬을 5계열 × tier 1~9 로 배치.

### 계열 (group_code)
| 코드 | 한글 | tier 범위 | 표현 |
|---|---|---|---|
| `cat` | 고양이발톱 1~9 | T1~T9 | 🐱 |
| `dog` | 강아지발자국 1~5 | T1~T5 | 🐶 |
| `exp` | 폭발 1~5 | T1~T5 | 💥 |
| `flame` | 불꽃 1~5 | T1~T5 | 🔥 |
| `snow` | 눈꽃 1~5 | T1~T5 | ❄ |
| (강력 변형) | 강력폭발/강력불꽃/강력눈꽃 각 5 | T1~T5 | 강화 분기 |

### 표 (44개 모두)

| skill_id | code | 한글 | group | tier | unlockLv | duration | pointCost | requiredSkillIds |
|---:|---|---|---|---:|---:|---:|---:|---|
| 14 | cat_1 | 고양이발톱1 | cat | 1 | 1 | 1.0s | 1 | (없음) |
| 20 | cat_2 | 고양이발톱2 | cat | 2 | 2 | 1.1 | 1 | 14 |
| 21 | cat_3 | 고양이발톱3 | cat | 3 | 3 | 1.2 | 1 | 20 |
| 22 | cat_4 | 고양이발톱4 | cat | 4 | 4 | 1.3 | 1 | 21 |
| 23 | cat_5 | 고양이발톱5 | cat | 5 | 5 | 1.4 | 1 | 22 |
| 24 | cat_6 | 고양이발톱6 | cat | 6 | 6 | 1.5 | 1 | 23 |
| 25 | cat_7 | 고양이발톱7 | cat | 7 | 7 | 1.6 | 1 | 24 |
| 26 | cat_8 | 고양이발톱8 | cat | 8 | 8 | 1.7 | 1 | 25 |
| 27 | cat_9 | 고양이발톱9 | cat | 9 | 9 | 1.8 | 1 | 26 |
| 13 | dog_1 | 강아지발자국1 | dog | 1 | 10 | 1.9 | 1 | 23 |
| 30 | dog_2 | 강아지발자국2 | dog | 2 | 11 | 2.0 | 1 | 13 |
| 31 | dog_3 | 강아지발자국3 | dog | 3 | 12 | 2.1 | 1 | 30 |
| 32 | dog_4 | 강아지발자국4 | dog | 4 | 13 | 2.2 | 1 | 31 |
| 33 | dog_5 | 강아지발자국5 | dog | 5 | 14 | 2.3 | 1 | 32 |
| 15 | exp_1 | 폭발1 | exp | 1 | 15 | 2.0 | 1 | 26+33 (선행 2개) |
| 40 | exp_2 | 폭발2 | exp | 2 | 16 | 2.1 | 1 | 15 |
| 41 | exp_3 | 폭발3 | exp | 3 | 17 | 2.2 | 1 | 40 |
| 42 | exp_4 | 폭발4 | exp | 4 | 18 | 2.3 | 1 | 41 |
| 43 | exp_5 | 폭발5 | exp | 5 | 19 | 2.4 | 1 | 42 |
| 16 | fl_1 | 불꽃1 | flame | 1 | 20 | 2.5 | 1 | 43 |
| 50 | fl_2 | 불꽃2 | flame | 2 | 21 | 2.6 | 1 | 16 |
| 51 | fl_3 | 불꽃3 | flame | 3 | 22 | 2.7 | 1 | 50 |
| 52 | fl_4 | 불꽃4 | flame | 4 | 23 | 2.8 | 1 | 51 |
| 53 | fl_5 | 불꽃5 | flame | 5 | 24 | 2.9 | 1 | 52 |
| 17 | sn_1 | 눈꽃1 | snow | 1 | 25 | 3.0 | 1 | 53 |
| 60 | sn_2 | 눈꽃2 | snow | 2 | 26 | 3.2 | 1 | 17 |
| 61 | sn_3 | 눈꽃3 | snow | 3 | 27 | 3.4 | 1 | 60 |
| 62 | sn_4 | 눈꽃4 | snow | 4 | 28 | 3.5 | 1 | 61 |
| 63 | sn_5 | 눈꽃5 | snow | 5 | 29 | 4.0 | 1 | 62 |
| 18 | pexp_1 | 강력폭발1 | exp | 1 (강화) | 30 | 4.1 | 1 | 63 |
| 70~73 | pexp_2~5 | 강력폭발2~5 | exp | 2~5 | 31~34 | 4.2~5.0 | 1 | (체인) |
| 19 | pfl_1 | 강력불꽃1 | flame | 1 (강화) | 35 | 5.1 | 1 | 73 |
| 80~83 | pfl_2~5 | 강력불꽃2~5 | flame | 2~5 | 36~39 | 5.2~6.0 | 1 | (체인) |
| 90~94 | psn_1~5 | 강력눈꽃1~5 | snow | 1~5 (강화) | 40~44 | 6.1~7.0 | 1 | (체인) |

### 학습 검증 (서버)
`POST /app/member/learnSkill.json`:
1. wallet.point ≥ pointCost 확인
2. wallet.level ≥ unlockLevel 확인
3. requiredSkillIds 모두 본인 `skills` 테이블에 있는지 확인
4. 모두 통과 시: point 차감 + skills 테이블 INSERT

[[API-Reference#learnSkill]] 참조.

### 스킬덱 vs 학습 스킬
- **학습한 스킬** = 영구 보유 (`skills` 테이블)
- **스킬덱** = 한 게임에 사용할 5개 선택 (학습한 것 중)
- 스킬덱 슬롯 자체는 1~4까지 확장 가능 (`expandSkillDeck`)

---

## 아이템 시스템 — 6 카테고리

원본 `Items.java` 1:1 보존. `lib/game/item_catalog.dart` 에 Dart 로 미러링.

### PEN — 자기 스킬 시간 증가 (3종)

| typeNo | 이름 | power | 효과 | 가격 (코인) |
|---:|---|---:|---|---:|
| 38 | 일반펜 | 10 | +0.5초 | 50 |
| 39 | 날개달린펜 | 16 | +0.8초 | 100 |
| 40 | 무지개펜 | 20 | +1.0초 | 200 |

### RING — 상대 스킬 시간 감소 (2종)

| typeNo | 이름 | power | 효과 | 가격 |
|---:|---|---:|---|---:|
| 41 | 은반지 | 12 | -0.6초 | 80 |
| 42 | 금반지 | 18 | -0.9초 | 150 |

### BERRY — 일회성 공격 아이템 (6종)

| typeNo | 이름 | power | 효과 | 가격 |
|---:|---|---:|---|---:|
| 43 | 폭발열매 | 24 | +1.2초 | 300 |
| 44 | 불꽃열매 | 10 | +0.5초 | 100 |
| 45 | 눈꽃열매 | 16 | +0.8초 | 200 |
| 46 | 강력폭발열매 | 44 | +2.2초 | 800 |
| 47 | 강력불꽃열매 | 30 | +1.5초 | 400 |
| 48 | 강력눈꽃열매 | 36 | +1.8초 | 600 |

### POTION — 방어 (5종)

| typeNo | 이름 | power | 효과 | 가격 | 수량 |
|---:|---|---:|---|---:|---:|
| 49 | 방어포션 | 6 | -0.3초 (1게임) | 10 | 99 |
| 50 | 좋은방어포션 | 12 | -0.6초 (1게임) | 80 | 99 |
| 51 | 고급방어포션 | 18 | -0.9초 (1게임) | 150 | 99 |
| 52 | 대용량 좋은방어포션 | 32 | -1.6초 (7일) | 500 | 1 |
| 53 | 대용량 고급방어포션 | 38 | -1.9초 (7일) | 700 | 1 |

대용량은 maxNum=1 (1회 구매 시 7일 사용권).

### GOLD — 코인팩 IAP (4종)

| typeNo | SKU | 코인 | USD | KRW (참고) |
|---:|---|---:|---:|---:|
| 55 | `coin_100` | 100 | $0.99 | ₩1,200 |
| 56 | `coin_250` | 250 | $1.99 | ₩2,500 |
| 57 | `coin_500` | 500 | $3.99 | ₩4,900 |
| 58 | `coin_650` | 650 | $4.99 | ₩6,000 |

[[IAP-Integration]] 참조.

### ETC — 스킬덱 확장 슬롯 (3종)

| typeNo | 이름 | 효과 | 비용 (코인) |
|---:|---|---|---:|
| 0 | 슬롯 1 → 2 | 스킬덱 +1 | 100 |
| 1 | 슬롯 2 → 3 | 스킬덱 +1 | 300 |
| 2 | 슬롯 3 → 4 | 스킬덱 +1 | 900 |

`POST /app/member/expandSkillDeck.json` 으로 사용.

### power 스케일

`mPower` 단위 = 20 단위 / 0.1초.
- power=10 → 0.5초
- power=20 → 1.0초
- power=18 → 0.9초

---

## 아이템 강화 시스템

`POST /app/member/upgradeItem.json` — 0~9 단계 (10 레벨).

### 확률 테이블 (`UPGRADE_RATES`)
| 강화 단계 | 성공률 | 코인 비용 |
|---:|---:|---:|
| 0 → 1 | 50% | 100 |
| 1 → 2 | 45% | 200 |
| 2 → 3 | 40% | 300 |
| 3 → 4 | 35% | 400 |
| 4 → 5 | 30% | 500 |
| 5 → 6 | 25% | 600 |
| 6 → 7 | 20% | 700 |
| 7 → 8 | 15% | 800 |
| 8 → 9 | 10% | 900 |

### 플럭스 (성공률 보정)
| `fluxUsed` 파라미터 | 보정 |
|---|---|
| `'none'` | (기본) |
| `'flux'` | +5% (eg. 50% → 55%) |
| `'advanced_flux'` | +10% |

### 실패 시
코인만 소모, 강화 단계 유지. (강화 실패 = 보호 — 0으로 떨어지지 X)

### 감사 로그
`item_upgrade_log` 테이블에 (user_id, inventory_id, from_level, to_level, success, coin_cost, flux_used) 기록.

---

## 인벤토리 / 스킬덱 확장

### 인벤토리 (3 → 30칸, 9단계)

`POST /app/member/expandInventory.json`

| 확장 단계 | inventory_size | 비용 (코인) |
|---:|---:|---:|
| 0 (기본) | 3 | — |
| 1 | 6 | 50 |
| 2 | 9 | 100 |
| 3 | 12 | 150 |
| ... | ... | ... |
| 9 (최대) | 30 | 450 |

비용 공식: `cost(n) = 50 × n` (n=1..9)

### 스킬덱 (1 → 4, 3단계)

`POST /app/member/expandSkillDeck.json`

| 확장 단계 | skill_deck_count | 비용 (코인) |
|---:|---:|---:|
| 0 (기본) | 1 | — |
| 1 | 2 | 100 |
| 2 | 3 | 300 |
| 3 (최대) | 4 | 900 |

---

## 광고 시스템

### 광고 유형 2가지
1. **게임 이미지 광고** — 7개 imageCut 중 하나가 광고 PPL. `images.ad_caption` + `url_detail` 필드.
2. **광고 배너** — 별도 `ad_images` 테이블. 대기실/로딩 등 화면에 노출.

### 광고 보상 (`adReward`)
- 일일 상한: **20회** (`AD_REWARD_DAILY_CAP`)
- 회당 보상: **5 코인** (`AD_REWARD_COIN_PER_VIEW`)
- 24h 슬라이딩 윈도우 (`ad_reward_log` 테이블)

### 광고 클릭 추적 (`adClick`)
- `ad_images.click_count` 증분
- `ad_click_log` 에 (user_id, ad_id, created_at) 기록

CTR = `click_count / view_count` — 어드민 `/admin/analytics/ads` 에서 집계.

---

## HP 시스템

### 현재 구현
- 로그인 응답에 `user.hp` 포함 → 클라가 표시
- 레벨업 시 `mHP = HP_BY_LEVEL[mLevel]` 자동 재계산
- 게임 화면 HUD 에 HP 바 표시 (자기/상대)

### 미구현 (TBD)
- HP 깎이는 룰 — 어떤 스킬이 데미지를 주는지 기획서 미정의
- HP 0 도달 시 처리 (`GameEndReason.hpZero` enum 은 정의됨)

기획 결정 후 구현 — 04-24.md §1.4 마지막 bullet 참조.

---

## 콘텐츠 포맷 — 1+7 PNG

### 한 세트 = 8 PNG

| 파일 | 역할 |
|---|---|
| `<basename>.png` | 원본 이미지 (배경) — 자유 크기 (예: 640×720) |
| `<basename>_1.png` | 1번 틀린 부위 패치 (정확히 imageCut[0].w × h) |
| `<basename>_2.png` | 2번 패치 |
| ... | ... |
| `<basename>_7.png` | 7번 패치 |

### 좌표 (`image_cut` JSON)

```json
[
  {"x": 195, "y": 66,  "w": 100, "h": 100},
  {"x": 445, "y":  6,  "w": 130, "h": 130},
  {"x": 287, "y": 630, "w": 100, "h":  80},
  {"x": 451, "y": 208, "w":  80, "h":  80},
  {"x":   0, "y": 117, "w": 100, "h": 100},
  {"x": 213, "y": 416, "w":  80, "h":  80},
  {"x": 560, "y": 354, "w":  80, "h":  90}
]
```

좌표계: 좌상단 (0, 0). x = 오른쪽 양, y = 아래 양.

### 강제 규칙 (서버 + 검증기)
1. `imageCut.length === 7` (정확히 7)
2. `x, y, w, h` 모두 비음수 정수
3. `w > 0`, `h > 0`
4. `x + w ≤ xSize`, `y + h ≤ ySize` (경계 침범 X)
5. 패치 PNG 의 실제 W×H = `imageCut[i].w × h`

검증기:
```bash
node server/scripts/validate-image-set.js \
  --manifest path/to/<basename>.manifest.json
```

[[Asset-Pipeline]] 참조.

---

## 캐릭터 (0, 1, 2)

### 현재
- 로그인 응답 `user.userCharacter` (0~2 정수)
- JoinScreen / ProfileScreen 에서 picker
- 디컴파일 안드 drawable-hdpi 에서 추출한 `charac2_0/1/2_head_0.png` 임시 사용

### 원본 기획
- 캐릭터별 고유 능력치 — 미구현 (기획서 미정)
- 사진기로 얼굴 교체 — `image_picker` 로 로컬 미리보기만 (서버 업로드 미구현)

[[Asset-Pipeline]] 참조.

---

## 매칭 (멀티플레이)

### 흐름
1. 양 플레이어가 WebSocket `/ws` 접속
2. 코드 100 → 대기실 유저 목록
3. P1 코드 101 → 방 생성 (`@room_<n>`)
4. P1 코드 107 → P2 초대
5. P2 코드 103 → 입장 + 양측에 상대 캐릭터 송신
6. 양측 코드 104 → 준비 (캐릭터 번호 송신)
7. 양측 ready + 5 스킬 픽 → 게임 시작
8. 게임 중 코드 106 → 액션 중계 (정답 발견 등)
9. 게임 종료 → 코드 102 또는 자동 종료

[[WebSocket-Protocol]] 에서 시퀀스 다이어그램 + 페이로드.

### 현재 한계 (W3 후속)
- 양 클라가 같은 imgId 를 골라야 함 — 현재 "첫 활성 이미지" 정책으로 우연 일치
- 정식 매칭은 서버가 mutual image id 라우팅 (방 생성 시 imgId 결정 → guest 입장 시 같은 id 전달)

---

## 결과 / 보상

### `mutiAddUp.json`
게임 종료 시 클라가 호출:
```http
POST /app/member/mutiAddUp.json
{userId, level, score, coin, point}
```

서버 처리:
```sql
UPDATE wallets SET
  level = GREATEST(level, ?),
  score = score + ?,
  coin  = coin  + ?,
  point = point + ?
WHERE user_id = ?
```

`level` 은 **GREATEST** (감소 X), 나머지는 **증분**.

### 레벨업 자동 포인트 (TBD)
서버에서 점수 합산 후 `levelForScore(newScore)` 로 새 레벨 계산 → 레벨 차이만큼 `point += diff` 적용 — 미구현 (04-24.md §1.9 last bullet).

---

## 진실 자료 SoT 정리

| 영역 | 진실 자료 |
|---|---|
| 점수/레벨/HP/등급 공식 | 서버 [`util/balance.js`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/server/src/util/balance.js) |
| AI 시간 공식 | 클라 [`util/constants.dart`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/client_flutter/lib/util/constants.dart)::aiFindTimeSeconds |
| 콤보 보너스 | 동일 (`comboScore`/`comboTime`) |
| 아이템 가격/효과 | 클라 [`game/item_catalog.dart`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/client_flutter/lib/game/item_catalog.dart) (안드 `Items.java` 1:1 이식) |
| 강화 확률 | 서버 `balance.js::UPGRADE_RATES` |
| 스킬 트리 | 서버 [`sql/seed_skills.sql`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/server/sql/seed_skills.sql) (44 row INSERT) |
| 콘텐츠 포맷 | [docs/CONTENT_PRODUCTION_GUIDE.md](https://github.com/GabrielJung0727/findit-rebuild/blob/main/docs/CONTENT_PRODUCTION_GUIDE.md) |
| 디컴파일 reference | `android_project/app/src/main/java/com/findit/battle/GameView.java` |

원본 기획 누락분 (TBD):
- HP 데미지 룰
- 레벨업 자동 포인트 지급
- 친구 요청 (아이템/코인 선물)
- 캐릭터별 고유 능력치
