# Decompiled Reference

`android_project/` 디렉터리는 원본 APK (2012-2013) 의 디컴파일 결과. **reference 만** 사용 — 정식 클라는 `client_flutter/`.

## 무엇을 위해 보존하는가

1. **게임 룰의 진실 자료** — 점수 공식, AI 시간, 콤보, 강화 확률 등 기획서에 일부 누락된 부분
2. **UI/UX 동작 비교** — Flutter 클라가 원본과 일관되게 동작하는지 검증
3. **자산 추출** — 임시 PNG/사운드 자산 (`assets/images/`)
4. **결제 분기 — KT/SKT 코드** — 어떻게 구현됐는지 reference (서비스 종료지만 패턴 참조)

---

## 디렉터리 구조

```
android_project/
├── app/
│   ├── build.gradle             # AGP 7.x (구), 빌드 시 일부 호환 이슈
│   └── src/main/
│       ├── AndroidManifest.xml
│       ├── java/
│       │   ├── com/findit/battle/    # ★ 게임 핵심
│       │   ├── com/kt/olleh/inapp/   # KT IAP (서비스 종료, 제거 대상)
│       │   ├── com/feelingk/iap/     # SKT T-Store IAP (서비스 종료, 제거 대상)
│       │   └── com/jargoandroid/connectnetwork/  # 네트워크 wrapper
│       └── res/
│           ├── drawable-hdpi-v4/  # 481 PNG (스킬/캐릭터/UI)
│           ├── values/strings.xml
│           ├── values-ko/strings.xml
│           ├── layout/*.xml
│           └── xml/network_security_config.xml  # § 1.2 에서 추가
└── build.gradle
```

---

## 핵심 파일 — `com/findit/battle/`

### `GameView.java` (3870 줄) ★

**진실 자료의 보고**. 원본 게임 루프 전체 — 점수/콤보/HP/AI/스킬/렌더링.

주요 클래스 (중첩):
- `GameView` — Canvas 기반 SurfaceView (Flutter 의 `CustomPainter` 대응)
- `GameView.MainMenu` — 메인 메뉴
- `GameView.Result` — 결과 화면
- `GameView.BattleRoom` (1224~1870 줄) — 배틀룸
- `GameView.GameRoom` (1872~3870 줄) — 게임 진행

핵심 상수:
```java
public static final int GAMETIME = 40;            // 40초
public static final int FINDRECT_TOTALNUM = 10;   // ★ 원본은 10이지만 기획은 7. 04-24.md §1.4 에서 7로 교체됨
public static final int SKILLWINDOW_TOTALNUM = 8;
public static final int FINDIMAGE_TOTALNUM = 1000;
```

핵심 메서드:
- `getAIFindTime()` — AI 발견 시간 공식 (Lv 1=6.97s, Lv 100=4.0s)
- `calculateScore()` — 점수 공식 (승자 +100 + 콤보)
- `comboScoreBonus()` / `comboTimeBonus()` — 콤보 보너스 함수
- `enterBattleRoom()` — 배틀룸 진입 흐름
- `enterGameRoom()` — 게임 시작
- `setItemsData()` — 아이템 로드

**디컴파일 변수명 주의**: `r0`, `r5`, `mTimeCount`, `mLeftReady` 등 jadx 가 휴리스틱 치환. 의미 추론은 원본 메서드 시그니처 + 주변 컨텍스트로.

### `Items.java` (307 줄)

**아이템 카탈로그** — 6 카테고리 가격/효과. Flutter 측 `lib/game/item_catalog.dart` 가 이 파일 1:1 이식.

```java
// PEN 3종
int[] pentypeno  = {38, 39, 40};
int[] penpower   = {10, 16, 20};
int[] penprice   = {50, 100, 200};

// RING 2종
int[] ringtypeno = {41, 42};
int[] ringpower  = {12, 18};
int[] ringprice  = {80, 150};

// BERRY 6종, POTION 5종, GOLD 4종, ETC 3종 ...
```

전체 표: [[Game-Design#아이템-시스템--6-카테고리]]

### `Objects.java` (~1000줄)

스킬 8개 (Flutter 클라가 8개 하드코딩, 서버 카탈로그 44개) + 캐릭터 클래스.

```java
public static final int SKILL_TOTALNUM = 50;       // 배열 크기
public static final int FINDRECT_TOTALNUM = 7;     // ★ 7개 (확정)
public static final int FINDIMAGE_TOTALNUM = 1000;
```

스킬:
- 0: 강아지발자국 / 1: 고양이발톱 / 2: 폭발 / 3: 불꽃 / 4: 눈꽃 / 5: 강력폭발 / 6: 강력불꽃 / 7: 강력눈꽃

확장된 44개 스킬은 `seed_skills.sql` 에 시드.

### `Property.java` (~50 줄)

서버 URL + 외부 서비스 ID 상수. § 1.2 에서 `10.0.2.2:8080` 으로 교체됨.

```java
public static final String SERVER_DOMAIN = "http://10.0.2.2:8080/";
public static final String SERVER_IP = "10.0.2.2";
public static final int SERVER_SOCKET_PORT = 22131;
public static final boolean USES_CLEARTEXT_TRAFFIC = true;
public static final String ADHUB_ID = "xv0d000000029e";
public static final String SAMSUNG_IAP_ID = "100000100952";
public static final String SAMSUNG_IAP_ITEM_ID_COIN1000 = "000001005358";
// ...
```

Flutter 의 `lib/util/property.dart` 가 1:1 매핑.

### `WaitingRoom.java` (415 줄)

대기실 UI. Dialog 기반 — Flutter 의 `WaitingRoomScreen` (`/waiting`) 대응.

핵심 흐름:
- `getUserList(email)` → 소켓 100 송신
- `MakeBattleRoomButton.onClick` → 소켓 101 송신
- `enterBattleRoom(roomname)` → 소켓 103 송신

### `JoinActivity.java` (508 줄)

회원가입 화면. Flutter `JoinScreen` 대응.

검증:
- 이메일 / 비번 / 닉네임 / 캐릭터 0~2 — `validation.js` + `lib/util/validation.dart` 가 1:1 mirror
- 중복 확인 (`/check_userid`) — `MemberApi.checkUserId` 로 이식

### `GameActivity.java` (~1500 줄)

전체 진입점. 로그인/소켓/이미지 다운로드 등 통합 관리.

핵심:
- `mLoginDlg` — 로그인 다이얼로그 (Flutter 는 `LoginScreen` 화면으로)
- `mGuestLoginDlg` — Guest 입장
- `mLoginResultHandler` — 로그인 응답 처리
- 소켓 코드 핸들러 100~107

### `DBAdapter.java` (~600 줄)

SQLite 로컬 DB. Flutter 클라는 서버 + secure_storage 로 대체 — 로컬 DB 사용 안 함.

원본 컬럼 (참고):
- `mEmail`, `mPassword`, `mAutoLogin`
- `mLevel`, `mScore`, `mCoin`, `mPoint`, `mGem`, `mHP`
- `mInventorySize`, `mSkillDeckCount`

Flutter 의 `AuthState` + `AuthUser` 가 같은 정보 보유 (서버 응답 캐싱).

### `InventoryActivity_Google.java` / `_SAMSUNG.java`

각 스토어별 IAP 처리. 거의 동일하고 IAP 어댑터만 다름.

`InventoryActivity_Google.java` 의 `결제 완료` Toast → Flutter `R.string.payment_complete` 로 추출됨.

---

## 디컴파일 코드 활용 패턴

### 1. 게임 룰 검증

Flutter 측 구현이 의심스러울 때:

```bash
# 원본 소스 검색
grep -n "getAIFindTime" android_project/app/src/main/java/com/findit/battle/GameView.java

# 결과:
# 2321: public float getAIFindTime() {
#   return 7.0f - ((float)this.mLevel * 0.03f);
# }
```

→ Flutter `lib/util/constants.dart::aiFindTimeSeconds` 와 같음 ✓

### 2. 누락된 룰 발견

기획서에 없는 룰이 코드에는 있을 수 있음:

```java
// GameView.java:2456
if (this.mLeftCombo == 0 && this.mRightCombo > 0) {
    this.mLeftCombo = 0;  // ← 상대 콤보 진행 중일 때 본인 콤보 영향?
}
```

→ 이런 패턴 발견 시 04-26.md 후속 항목으로 추가.

### 3. 자산 추출

```bash
ls android_project/app/src/main/res/drawable-hdpi-v4/ | head -20
# slot_item_pen_01.png ... 481 PNG
# charac2_0_head_0.png ... 캐릭터 헤드
# btn_*.png ... UI 버튼
```

§ 13 에서 29 PNG 추출 → `client_flutter/assets/images/`. 추가 자산 필요 시 같은 디렉터리에서.

### 4. 소켓 페이로드 형식

WebSocket 코드 100~107 의 정확한 페이로드 — 디컴파일 코드가 진실:

```java
// WaitingRoom.java::getUserList
String sendmsg = "|100|" + email;  // ← 페이로드 형식
String length = this.mGameView.getLengthText(sendmsg.length());
new doSendSocketMsgTask(this, null).execute(length + sendmsg, "false");
```

[[WebSocket-Protocol]] 의 코드별 페이로드 표가 이 코드 기반.

### 5. 안드 strings.xml → ARB 변환 시드

```bash
node client_flutter/tools/strings_xml_to_arb.js
# en/ko strings.xml 145키 → ARB 자동 변환
```

[[Internationalization]] 참조.

---

## 디컴파일 코드 한계

### 1. 변수명 추론 어려움

jadx 가 휴리스틱 치환:
- `r0`, `r5`, `r13` — 임시 변수 (의미 X)
- `this.mTimeCount` — 추정된 이름 (실제 의미는 다를 수 있음)

원본 시그니처 + 주변 컨텍스트로 의미 추론 필요.

### 2. 일부 메서드 누락 / 손상

특정 부분은 디컴파일 시 분석 실패 — `// jadx warning: ...` 주석으로 표기됨.

### 3. 라이브러리 코드

`com.kt.olleh.inapp` (KT IAP), `com.feelingk.iap` (SKT) 는 외부 SDK 의 디컴파일 — 변수명 / 메서드 더 어려움. 원작자 코드 X.

### 4. 빌드 가능 여부

`android_project/` 는 빌드 가능 (§ "안드로이드 스튜디오 실행 방법" 가이드 참조), 단:
- `Property.SERVER_DOMAIN` 을 `10.0.2.2` 로 교체해야 동작
- KT/SKT IAP 부분은 서비스 종료라 미작동
- API 33+ 호환성 이슈 일부 (예: `setAppCacheEnabled` deprecated)

---

## 수정 vs 보존 정책

### 절대 수정 X
- 디컴파일 결과 파일 자체 (역공학 reference 보존)

### 부분 수정 OK (이미 적용된 변경)
- `Property.java` — 서버 URL 만 교체 (`10.0.2.2:8080`)
- `network_security_config.xml` — § 1.2 에서 추가 (HTTPS 강제 + 평문 예외)
- `Items.java` — 2013 가격 spec 적용 (50/100/200 → 50/100/200, 일치) — 이미 04-24.md §1.7 에서 정합화

### 수정 권장 X — 새 코드는 client_flutter/
새 기능 추가는 무조건 Flutter 측. 디컴파일 코드는 reference 만.

---

## 제거 검토 대상

### KT Olleh IAP (서비스 종료)
- `InventoryActivity_Olleh.java`
- `com/kt/olleh/inapp/*`
- `AndroidManifest.xml` 의 `com.kt.olleh.inapp.SmsReceiver` / `TimerService`

KT 통신사 결제 서비스 종료됨. 04-24.md §3 에서 제거 검토 명시.

### SKT T-Store IAP (서비스 종료)
- `InventoryActivity_T.java`
- `com/feelingk/iap/*`

T 마켓 → ONE store 로 변경, 결제 SDK 다름. 신규는 ONE store IAP 별도 통합.

### 단순화 권장
KT/SKT 제거 → Google + Samsung + Apple 3트랙으로 단순화 (Flutter 측은 이미 그렇게 됨).

---

## 디컴파일 출처 / 도구

### 원본
- `game.apk` — 원본 APK 파일 (서비스 종료 시점에 캡처)

### 도구
- **jadx** (1.4.x) — Java 디컴파일러 → `jadx_output/` + `android_project/`
- **apktool** — 리소스 디컴파일 → `decoded_apk/`

### 재실행
```bash
jadx -d jadx_output game.apk
apktool d game.apk -o decoded_apk
```

---

## 자주 보는 곳 (TL;DR)

| 알고 싶은 것 | 위치 |
|---|---|
| 게임 시간 | `GameView.java::GAMETIME` (40s) |
| 7개 정답 | `Objects.java::FINDRECT_TOTALNUM` (7) |
| AI 공식 | `GameView.java::getAIFindTime()` |
| 점수 공식 | `GameView.java::calculateScore()` |
| 콤보 | `GameView.java::comboScoreBonus()` / `comboTimeBonus()` |
| 6 카테고리 가격 | `Items.java` |
| 8 스킬 | `Objects.java::SkillX` 클래스들 |
| 소켓 페이로드 | `WaitingRoom.java`, `GameActivity.java::handleSocketMsg` |
| 회원가입 검증 | `JoinActivity.java::validate*` |
| 서버 URL | `Property.java::SERVER_DOMAIN` |
| 캐릭터 PNG | `res/drawable-hdpi-v4/charac2_*` |
| 스킬 PNG | `res/drawable-hdpi-v4/slot_skill_*` |
| 한국어 / 영문 strings | `res/values-ko/strings.xml`, `res/values/strings.xml` |
| 네트워크 보안 | `res/xml/network_security_config.xml` |

---

## 비교 매트릭스 — 원본 vs Flutter

| 영역 | 원본 (Android Java) | Flutter 신규 |
|---|---|---|
| 진입 | `GameActivity` (Activity) | `main.dart::FinditApp` |
| 게임 루프 | `GameView` Canvas + Surface | `game_view.dart::GameView` + `CustomPainter` |
| 매칭 통신 | raw TCP `:22131` + 4자리 prefix | WebSocket `/ws` + 텍스트 프레임 |
| 인증 | bcrypt + SQLite 로컬 | bcrypt + opaque 토큰 + secure_storage |
| 상태 관리 | global Activity 멤버 변수 | Riverpod StateNotifier |
| 라우팅 | Activity Intent | go_router + redirect |
| 결제 | Google + KT + SKT + Samsung | Google + Apple + Samsung |
| 푸시 | Java 자체 | FCM + APNs |
| i18n | strings.xml 한·영 | ARB 한·영 (자동 변환) |
| 자산 | drawable-hdpi-v4 | assets/images/ |
| 광고 | adhub SDK | (TBD) AdMob |

---

## 기여 시 참고

- 기획서에 누락된 룰을 디컴파일 코드에서 발견 → GitHub Issue 로 보고
- Flutter 측이 원본과 다르게 동작 → `GameView.java` 검색 후 PR 로 정합화
- 새 자산 필요 → `drawable-hdpi-v4/` 에서 추출 후 `client_flutter/assets/` 로

[[Contributing]] 참조.
