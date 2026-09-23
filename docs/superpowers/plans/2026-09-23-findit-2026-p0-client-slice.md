# FindIt 2026 P0 — 클라이언트 수직 슬라이스 구현 계획 (Plan 5)

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** 게스트로 들어가 매칭되고, 40초 배틀을 치고, 결과를 보는 **한 줄기**를 Flutter 클라이언트로 완성한다. 서버 계약을 실제 클라이언트가 끝에서 끝까지 통과시킨다.

**Architecture:** 순수 Dart 계층(프로토콜 봉투 · 매치 상태 기계 · 좌표 변환)과 I/O 계층(REST · WS)과 화면 계층(Flame 배틀 · 결과)을 나눈다. 상태 기계는 위젯도 소켓도 모르고, 배틀 씬은 앱 상태를 직접 읽지 않는다(스펙 §7.1).

**Tech Stack:** Flutter 3.44.0 · Dart 3.12.0 · Flame 1.38 · Riverpod 3.4 · web_socket_channel 3.0 · http 1.6

**Spec:** [`docs/superpowers/specs/2026-09-18-findit-2026-p0-design.md`](../specs/2026-09-18-findit-2026-p0-design.md)

**Codex/타 에이전트용 사본:** [`docs/plans/2026-09-23-findit-2026-p0-client-slice-codex.md`](../../plans/2026-09-23-findit-2026-p0-client-slice-codex.md) — 내용은 같고 실행 지침만 다르다. **한쪽을 고치면 다른 쪽도 고칠 것.**

---

## 이 계획서가 다루지 않는 것

스펙 §7 의 클라이언트 전체를 한 계획서에 담으면 검토할 수 없는 크기가 된다. **둘로 나눈다.**

- **Plan 5 (여기)** — 수직 슬라이스. 네트워크 계층 · 매치 상태 기계 · 배틀 씬 · 결과 화면. 진입은 게스트 자동 로그인으로 최소화한다.
- **Plan 6** — 폭. 로그인·가입·로비·대기실의 Material 3 화면, `l10n` ko/en, 골든 테스트, iOS·Android 빌드 파이프라인.

**수직 슬라이스를 먼저 하는 이유.** Plan 4 에서 서버 테스트 434 개가 전부 통과하는데도 서명 콘텐츠 URL 이 운영에서 전부 403 이었다. 실제 클라이언트가 이미지를 받아 화면에 그리기 전까지는 그런 결함이 드러나지 않는다. 화면을 예쁘게 만드는 일보다 **계약이 진짜로 맞물리는지**가 먼저다.

---

## Global Constraints

- **Flutter 3.44.0 / Dart 3.12.0** 고정. 스펙 §2 의 결정이고, `pubspec.yaml` 의 `environment` 로 강제한다.
- **모든 판정은 서버가 한다** (스펙 §10-3). 클라이언트는 히트/미스를 **판단하지 않는다** — 탭을 보내고 `REVEAL`·`LOCK` 을 받아 그린다.
- **좌표는 이미지 픽셀 공간으로 보낸다.** 서버는 퍼즐 원본 좌표계(예: 640×720)만 안다. 화면 좌표를 그대로 보내면 전부 빗나간다.
- **40초를 클라 시계로 재지 않는다.** 남은 시간 표시는 `START.durationMs` 로 그리되, 종료는 서버의 `END` 가 결정한다.
- **`ui/md3` 와 `ui/legacy` 를 물리적으로 분리한다** (스펙 §7.2). 한 파일에서 섞이면 결국 둘 다 아닌 것이 된다.
- **생성물을 손으로 고치지 않는다.** `app/lib/domain/protocol.g.dart` 는 `npm run protocol:dart` 산출물이다. 드리프트 가드가 CI 에서 돈다.
- **에셋은 생성물이다.** `app/assets/legacy`(190개) 와 `app/assets/audio`(11개) 는 gitignore 대상이고 `npm run content:all` 이 만든다. 체크아웃만으로는 없다.
- **커밋**: Task당 1커밋. 한국어 본문 + Conventional Commits 접두어. 끝에 `Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>`.
- **TDD**: 실패하는 테스트 → 실패 확인 → 최소 구현 → 통과 확인 → 커밋.

---

## Review Focus

스펙이 함축하지만 어느 Task 의 테스트도 저절로 건드리지 않는, 사람을 물 가능성이 높은 다섯 가지.

1. **좌표 변환** — 이미지는 `BoxFit.contain` 으로 letterbox 되어 그려진다. 화면 탭을 이미지 좌표로 되돌릴 때 **스케일과 레터박스 오프셋**을 둘 다 빼야 한다. 하나라도 틀리면 "정확히 눌렀는데 미스" 가 되고, 미스는 2초 잠금이라 플레이가 불가능해진다. → Task 4.
2. **`MATCH_FOUND` 가 진행 중인 매치를 덮어쓴다** — 난입(스펙 §3.6). 클라가 이것을 오류로 처리하면 난입당한 쪽이 멈춘다. 프로토콜에 "중단" 메시지가 없어서 정한 계약이다. → Task 4 (상태 기계가 그 규칙을 갖는다).
3. **에셋이 없는 채로 빌드된다** — `app/assets/legacy` 는 생성물이다. `pubspec.yaml` 이 없는 디렉터리를 선언하면 `flutter pub get` 이 실패하고, 있는데 비면 런타임에 빈 화면이 된다. → Task 1.
4. **재연결 뒤의 상태** — 소켓이 끊기면 서버는 그 매치를 `LEAVE` 로 끝낸다(Plan 4). 클라가 재연결해서 예전 매치를 이어가려 하면 영원히 오지 않을 프레임을 기다린다. 재연결은 **로비로 돌아가는 것**이다. → Task 5.
5. **서버가 보낸 적 없는 메시지** — 알 수 없는 `t`, 필드 누락, 잘린 JSON. 소켓 한 통에 앱이 죽으면 안 된다. → Task 2.

---

## 실행 방식

- **각 Task 를 끝낼 때마다 그 Task 의 diff 를 독립적으로 검토하는 단계를 넣어라.** Plan 4 에서 독립 검토가 17건을 잡았고 17건 모두 유효했다.
- **계약을 문장으로 선언했으면, 그 계약을 실패시킬 수 있는 검사를 함께 두어라.** Plan 4 결함의 거의 전부가 이 규칙을 어긴 데서 나왔다. "X 를 먼저 한다", "Y 에 닿지 않는다" 같은 순서·부재 계약은 결과가 아니라 **호출 기록**으로 확인해야 한다.
- **변이를 넣어 확인한다.** 각 Task 끝의 변이 표는 "이 줄을 지우면 이 테스트가 실패해야 한다" 이고, 실패하지 않으면 테스트가 잘못된 것이다.

---

## 조사 기록 — 환경과 서버에서 확인한 것

계획을 쓰기 전에 직접 돌려 확인했다.

**툴체인.** `Flutter 3.44.0 • stable • Dart 3.12.0` 이 설치돼 있다. `flutter test` 와 `flutter analyze` 가 **헤드리스로 동작한다** — 시뮬레이터 없이 검증 고리가 닫힌다. Flame 1.38.2 의 `FlameGame` 을 `testWidgets` 안에서 띄워 `onLoad` 와 컴포넌트 추가까지 확인했다.

**패키지 해석.** `flame 1.38.2`(Flutter ≥3.41) · `flutter_riverpod 3.4.3`(sdk ^3.12) · `web_socket_channel 3.0.3` · `http 1.6.0` · `shared_preferences 2.5.5` · `path_provider 2.1.6` 전부 이 SDK 에서 맞는다.

**서버가 실제로 내주는 것** (Plan 4 머지 후 직접 띄워 확인).

```
POST /auth/guest        → { token }
GET  /content/manifest  → { version, puzzles: [{ id, width, height }] }   ← 좌표 없음
GET  /content/:matchId/:kind/:index?exp=&sig=  → 200 image/webp
```

`START` 는 `{ puzzleId, imageUrl, width, height, targetCount, durationMs }` 다. **rect 좌표도 `targetIndices` 도 없다.** `REVEAL` 이 `{ by, index, x, y, w, h, patchUrl }` 로 **이미 찾은 것만** 준다.

**이미지 합성 방식.** `base.webp` 는 퍼즐 원본 크기(예: `a0001` 은 640×720)이고, 패치는 **rect 와 정확히 같은 크기**다(`a0001` 의 rect 130×130 → `patch_01.webp` 130×130). 즉 `REVEAL` 의 `(x, y)` 에 패치를 그대로 얹으면 된다.

**생성된 Dart 타입.** `app/lib/domain/protocol.g.dart`(407줄, 클래스 17개)에 메시지별 `fromJson`/`toJson` 과 `MessageType` 열거형·와이어 이름 맵이 있다. **봉투(`{t, seq, d}`)는 없다** — 그건 데이터 모양이 아니라 동작이라 Task 2 가 손으로 쓴다.

**배틀 화면에 쓸 레거시 에셋.** `game_count_num_1~3` · `game_count_go` · `game_result_win`/`lose` · `game_stat_num_0~5` · 9-patch 8종이 `app/assets/legacy` 에 있다.

---

## 파일 구조

```
app/
├─ pubspec.yaml
├─ analysis_options.yaml
├─ lib/
│  ├─ core/
│  │   └─ config.dart          ← 서버 주소 (--dart-define)
│  ├─ domain/
│  │   ├─ protocol.g.dart      ← 생성물 (손대지 않는다)
│  │   ├─ match_state.dart     ← 순수 상태 기계
│  │   └─ viewport.dart        ← 좌표 변환 (순수)
│  ├─ net/
│  │   ├─ envelope.dart        ← {t, seq, d} 코덱
│  │   ├─ rest_client.dart     ← 게스트 토큰 · 매니페스트
│  │   └─ ws_client.dart       ← 연결 · 재연결 · 지수 백오프
│  ├─ features/
│  │   ├─ battle/battle_scene.dart   ← Flame  [레거시 룩]
│  │   ├─ battle/battle_page.dart
│  │   └─ result/result_page.dart    ← [레거시 룩]
│  ├─ ui/legacy/               ← 비트맵 위젯
│  └─ app.dart                 ← 진입 (게스트 자동 로그인 → 큐)
└─ test/
   ├─ domain/ · net/ · features/
```

**경계 규칙 셋.**

1. `domain/` 은 `flutter` 를 import 하지 않는다. 순수 Dart 라 `dart test` 로도 돈다.
2. `features/battle/battle_scene.dart` 는 소켓을 모른다. 상태를 주입받고 탭을 콜백으로 올린다.
3. `net/` 은 화면을 모른다. 프레임을 `MatchState` 로 접고 스트림으로 내보낸다.

---

### Task 1: 프로젝트 골격 · 툴체인 고정 · CI

**Files:**
- Create: `app/pubspec.yaml`, `app/analysis_options.yaml`, `app/lib/core/config.dart`, `app/lib/app.dart`, `app/test/smoke_test.dart`
- Modify: `.github/workflows/ci.yml` (Flutter 잡 추가), `.gitignore`

**Interfaces:**
- Produces: `class AppConfig { static String get apiBase; static String get wsBase }`

**`app/` 은 아직 Flutter 프로젝트가 아니다.** `lib/domain/protocol.g.dart`(Plan 1 생성물)와 `assets/` 만 있다. `flutter create` 로 덮어쓰면 **생성물이 날아간다.** 파일을 직접 만든다.

**에셋이 생성물이라는 점이 함정이다** (Review Focus 3). `app/assets/legacy` 와 `app/assets/audio` 는 gitignore 대상이고 `npm run content:all` 이 만든다. `pubspec.yaml` 이 **없는 디렉터리**를 선언하면 `flutter pub get` 이 거기서 죽는다. CI 도 `content:all` 을 먼저 돌려야 한다 — Plan 3 에서 `content/images/` 로 똑같이 당했다.

**서버 주소는 `--dart-define` 으로 받는다.** 소스에 `localhost` 를 박으면 실기기에서 아무 데도 닿지 않는다.

- [ ] **Step 1: 실패하는 테스트 작성**

`app/test/smoke_test.dart`:

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/core/config.dart';
import 'package:findit/domain/protocol.g.dart';

void main() {
  test('기본 서버 주소는 로컬이다', () {
    // --dart-define 없이 돌리면 개발 기본값. 실기기 빌드는 반드시 주입한다.
    expect(AppConfig.apiBase, 'http://localhost:8080');
    expect(AppConfig.wsBase, 'ws://localhost:8080');
  });

  test('생성된 프로토콜 타입이 붙어 있다 — 손으로 쓴 사본이 아니다', () {
    // 이 단언이 깨지면 protocol.g.dart 가 사라졌거나 스키마가 바뀐 것이다.
    expect(messageTypeWire[MessageType.start], 'START');
    expect(messageTypeWire[MessageType.matchFound], 'MATCH_FOUND');
    expect(MessageType.values.length, 17);
  });
}
```

- [ ] **Step 2: 실패 확인**

Run: `cd app && flutter test`
Expected: FAIL — `pubspec.yaml` 이 없다.

- [ ] **Step 3: 구현**

`app/pubspec.yaml`:

```yaml
name: findit
description: FindIt 2026 클라이언트
publish_to: none
version: 0.1.0

environment:
  sdk: ^3.12.0
  flutter: ">=3.44.0"

dependencies:
  flutter:
    sdk: flutter
  flame: ^1.38.2
  flutter_riverpod: ^3.4.3
  web_socket_channel: ^3.0.3
  http: ^1.6.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0

flutter:
  uses-material-design: true
  # 이 두 디렉터리는 npm run content:all 이 만든다 (gitignore 대상).
  # 없는 상태로 pub get 하면 여기서 죽는다.
  assets:
    - assets/legacy/
    - assets/audio/
```

`app/analysis_options.yaml`:

```yaml
include: package:flutter_lints/flutter.yaml

analyzer:
  errors:
    # 생성물은 검사하지 않는다. 손으로 고치지 않기 때문이다.
    unused_import: error
  exclude:
    - lib/domain/protocol.g.dart

linter:
  rules:
    - prefer_const_constructors
    - avoid_print
```

`app/lib/core/config.dart`:

```dart
/// 서버 주소. 실기기·시뮬레이터에서는 localhost 가 아무 데도 닿지 않으므로
/// 빌드 때 주입한다:
///   flutter run --dart-define=API_BASE=http://192.168.0.10:8080 \
///               --dart-define=WS_BASE=ws://192.168.0.10:8080
class AppConfig {
  const AppConfig._();

  static const String apiBase =
      String.fromEnvironment('API_BASE', defaultValue: 'http://localhost:8080');

  static const String wsBase =
      String.fromEnvironment('WS_BASE', defaultValue: 'ws://localhost:8080');
}
```

`app/lib/app.dart` — 지금은 자리만 잡는다. Task 7 이 채운다:

```dart
import 'package:flutter/material.dart';

class FindItApp extends StatelessWidget {
  const FindItApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FindIt',
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      home: const Scaffold(body: Center(child: Text('FindIt'))),
    );
  }
}
```

`.github/workflows/ci.yml` 에 잡을 더한다:

```yaml
  flutter:
    name: analyze + test (flutter)
    runs-on: ubuntu-latest
    timeout-minutes: 20
    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-node@v4
        with:
          node-version: '24'
          cache: npm
          cache-dependency-path: package-lock.json

      - name: install
        run: npm ci

      # app/assets/legacy 와 app/assets/audio 는 gitignore 대상 생성물이다.
      # pubspec.yaml 이 선언한 디렉터리가 없으면 pub get 이 거기서 죽는다.
      - name: 에셋 생성
        run: npm run content:all

      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.44.0'
          channel: stable
          cache: true

      - name: pub get
        working-directory: app
        run: flutter pub get

      # 생성물이 스키마와 어긋나지 않았는지. 재생성해서 diff 가 나면 실패.
      - name: 프로토콜 드리프트
        run: |
          npm run protocol:dart
          git diff --exit-code app/lib/domain/protocol.g.dart

      - name: analyze
        working-directory: app
        run: flutter analyze

      - name: test
        working-directory: app
        run: flutter test
```

`.gitignore` 에 더한다:

```
app/.dart_tool/
app/build/
app/ios/
app/android/
app/.flutter-plugins-dependencies
```

> **`app/ios` 와 `app/android` 를 무시하는 이유.** Plan 5 는 `flutter test` 만 돌린다. 플랫폼 폴더는 Plan 6 의 빌드 파이프라인이 `flutter create --platforms` 로 만들고, 그때 서명·번들 ID 설정과 함께 커밋한다. 지금 넣으면 아무도 검증하지 않는 수천 줄이 들어온다.

- [ ] **Step 4: 통과 확인**

```bash
npm run content:all
cd app && flutter pub get && flutter analyze && flutter test
```
Expected: PASS — 2 tests, `No issues found!`

**에셋 전제를 확인한다** — 이 Task 가 막으려는 것이 정확히 그것이다:

```bash
ls app/assets/legacy | wc -l   # 190
ls app/assets/audio | wc -l    # 11
```

- [ ] **Step 5: 커밋**

```bash
git add app/pubspec.yaml app/analysis_options.yaml app/lib app/test .github/workflows/ci.yml .gitignore
git commit -m "$(cat <<'EOF'
feat(app): Flutter 프로젝트 골격 + CI 잡

app/ 에는 Plan 1 이 만든 protocol.g.dart 와 에셋만 있었다. flutter create 로
덮으면 생성물이 날아가므로 파일을 직접 만든다.

에셋이 생성물이라는 점을 pubspec 과 CI 양쪽에 반영한다. app/assets/legacy
와 app/assets/audio 는 gitignore 대상이고 npm run content:all 이 만든다.
pubspec 이 선언한 디렉터리가 없으면 pub get 이 거기서 죽는다 — Plan 3 에서
content/images/ 로 똑같이 당했다.

서버 주소를 --dart-define 으로 받는다. 소스에 localhost 를 박으면 실기기에서
아무 데도 닿지 않는다.

app/ios 와 app/android 는 무시한다. Plan 5 는 flutter test 만 돌리고, 플랫폼
폴더는 Plan 6 의 빌드 파이프라인이 서명·번들 ID 설정과 함께 넣는다. 지금
넣으면 아무도 검증하지 않는 수천 줄이 들어온다.

CI 에 프로토콜 드리프트 검사를 넣는다. 재생성해서 diff 가 나면 실패한다 —
생성물을 손으로 고치는 것을 막는 장치다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 2: 프로토콜 봉투 코덱

**Files:**
- Create: `app/lib/net/envelope.dart`
- Test: `app/test/net/envelope_test.dart`

**Interfaces:**
- Consumes: `protocol.g.dart` 의 `MessageType`·`messageTypeWire`
- Produces:
  - `class Envelope { final MessageType type; final int seq; final Map<String, dynamic> data }`
  - `String encodeEnvelope(MessageType type, int seq, Map<String, dynamic> data)`
  - `Envelope? decodeEnvelope(String raw)` — 모양이 어긋나면 `null`

**생성기가 봉투를 만들지 않는 이유.** `protocol.g.dart` 는 메시지별 데이터 클래스만 낸다. 봉투는 데이터 모양이 아니라 **동작**이다 — 모르는 타입을 어떻게 다루는지, 잘린 JSON 에 무엇을 하는지는 클라이언트의 정책이다. 손으로 쓰고 테스트한다.

**Review Focus 5 — 서버가 보낸 적 없는 메시지.** 프레임 한 통에 앱이 죽으면 안 된다. `decodeEnvelope` 는 **던지지 않고 `null` 을 준다.** 호출부는 그것을 버리고 로그만 남긴다. 서버는 조작된 프레임에 연결을 끊지만(Plan 4 게이트웨이), 클라이언트에게 서버는 신뢰 대상이므로 끊는 대신 무시한다.

- [ ] **Step 1: 실패하는 테스트 작성**

`app/test/net/envelope_test.dart`:

```dart
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/protocol.g.dart';
import 'package:findit/net/envelope.dart';

void main() {
  group('인코딩', () {
    test('와이어 이름으로 나간다 — enum 이름이 아니다', () {
      final raw = encodeEnvelope(MessageType.queueJoin, 1, {'mode': 'casual'});
      final json = jsonDecode(raw) as Map<String, dynamic>;
      // 'queueJoin' 이 나가면 서버가 알 수 없는 메시지로 끊는다.
      expect(json['t'], 'QUEUE_JOIN');
      expect(json['seq'], 1);
      expect(json['d'], {'mode': 'casual'});
    });

    test('페이로드가 없는 메시지도 d 를 빈 객체로 싣는다', () {
      final json = jsonDecode(encodeEnvelope(MessageType.ready, 7, {}))
          as Map<String, dynamic>;
      // 서버의 decodeEnvelope 은 d 가 객체가 아니면 거부한다.
      expect(json['d'], isA<Map<String, dynamic>>());
      expect(json['d'], isEmpty);
    });

    test('모든 c2s 타입이 왕복한다', () {
      for (final type in MessageType.values) {
        final wire = messageTypeWire[type]!;
        final decoded = decodeEnvelope(encodeEnvelope(type, 1, const {}));
        expect(decoded, isNotNull, reason: '$wire 가 왕복하지 못했다');
        expect(decoded!.type, type);
      }
    });
  });

  group('디코딩 — 던지지 않는다', () {
    Envelope? d(Object? body) => decodeEnvelope(jsonEncode(body));

    test('정상 프레임을 읽는다', () {
      final e = d({'t': 'START', 'seq': 3, 'd': {'puzzleId': 'a0001'}});
      expect(e!.type, MessageType.start);
      expect(e.seq, 3);
      expect(e.data['puzzleId'], 'a0001');
    });

    test('JSON 이 아니면 null', () => expect(decodeEnvelope('{{{'), isNull));
    test('배열이면 null', () => expect(d([1, 2]), isNull));
    test('t 가 없으면 null', () => expect(d({'seq': 1, 'd': {}}), isNull));
    test('모르는 t 면 null — 서버가 늘어나도 앱이 죽지 않는다',
        () => expect(d({'t': 'FUTURE_MSG', 'seq': 1, 'd': {}}), isNull));
    test('seq 가 정수가 아니면 null', () => expect(d({'t': 'START', 'seq': 'x', 'd': {}}), isNull));
    test('d 가 객체가 아니면 null', () => expect(d({'t': 'START', 'seq': 1, 'd': 5}), isNull));
    test('d 가 배열이면 null — typeof 로는 걸러지지 않는 모양이다',
        () => expect(d({'t': 'START', 'seq': 1, 'd': []}), isNull));
    test('d 가 없으면 null', () => expect(d({'t': 'START', 'seq': 1}), isNull));
  });
}
```

- [ ] **Step 2: 실패 확인**

Run: `cd app && flutter test test/net/envelope_test.dart`
Expected: FAIL — `Target of URI doesn't exist: 'package:findit/net/envelope.dart'`

- [ ] **Step 3: 구현**

`app/lib/net/envelope.dart`:

```dart
import 'dart:convert';

import '../domain/protocol.g.dart';

/// 와이어 이름 → 열거형. 생성물의 맵을 뒤집어 한 번만 만든다.
final Map<String, MessageType> _byWire = {
  for (final entry in messageTypeWire.entries) entry.value: entry.key,
};

class Envelope {
  final MessageType type;
  final int seq;
  final Map<String, dynamic> data;

  const Envelope({required this.type, required this.seq, required this.data});
}

String encodeEnvelope(MessageType type, int seq, Map<String, dynamic> data) {
  // 와이어 이름으로 내보낸다. enum 이름('queueJoin')을 그대로 보내면 서버가
  // 알 수 없는 메시지로 보고 연결을 끊는다.
  return jsonEncode({'t': messageTypeWire[type], 'seq': seq, 'd': data});
}

/// 모양이 어긋나면 **던지지 않고 null 을 준다.**
///
/// 프레임 한 통에 앱이 죽으면 안 된다. 서버가 나중에 메시지를 늘려도 구버전
/// 클라이언트는 그것만 버리고 계속 돌아야 한다.
Envelope? decodeEnvelope(String raw) {
  final Object? parsed;
  try {
    parsed = jsonDecode(raw);
  } on FormatException {
    return null;
  }

  if (parsed is! Map<String, dynamic>) return null;

  final type = _byWire[parsed['t']];
  if (type == null) return null;

  final seq = parsed['seq'];
  if (seq is! int) return null;

  // Dart 에서 List 는 Map 이 아니므로 is! Map 하나로 걸러진다.
  final data = parsed['d'];
  if (data is! Map<String, dynamic>) return null;

  return Envelope(type: type, seq: seq, data: data);
}
```

- [ ] **Step 4: 통과 확인**

Run: `cd app && flutter test test/net/ && flutter analyze`
Expected: PASS — 12 tests (누적 14).

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| `messageTypeWire[type]` → `type.name` | `와이어 이름으로 나간다` |
| `_byWire[...]` 대신 `MessageType.values.byName(...)` | `모르는 t 면 null` (예외를 던진다) |
| `seq is! int` 검사 제거 | `seq 가 정수가 아니면 null` |
| `data is! Map<String, dynamic>` 검사 제거 | `d 가 객체가 아니면 null` · `d 가 배열이면 null` |

- [ ] **Step 5: 커밋**

```bash
git add app/lib/net/envelope.dart app/test/net/envelope_test.dart
git commit -m "$(cat <<'EOF'
feat(app): 프로토콜 봉투 코덱

생성기는 메시지별 데이터 클래스만 낸다. 봉투는 데이터 모양이 아니라
동작이다 — 모르는 타입을 어떻게 다루는지, 잘린 JSON 에 무엇을 하는지는
클라이언트의 정책이라 손으로 쓰고 테스트한다.

와이어 이름으로 내보낸다. enum 이름('queueJoin')을 그대로 보내면 서버가
알 수 없는 메시지로 보고 연결을 끊는다.

디코딩은 던지지 않고 null 을 준다. 프레임 한 통에 앱이 죽으면 안 되고,
서버가 나중에 메시지를 늘려도 구버전 클라이언트는 그것만 버리고 계속
돌아야 한다. byName 을 쓰면 모르는 이름에서 예외가 나므로 역방향 맵을 쓴다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 3: REST 클라이언트 + 매니페스트 캐시

**Files:**
- Create: `app/lib/net/rest_client.dart`
- Test: `app/test/net/rest_client_test.dart`

**Interfaces:**
- Consumes: `AppConfig`
- Produces:
  - `class PuzzleMeta { final String id; final int width; final int height }`
  - `class Manifest { final String version; final List<PuzzleMeta> puzzles }`
  - `abstract interface class RestClient { Future<String> guestToken(); Future<Manifest> manifest(); }`
  - `RestClient createRestClient({http.Client? httpClient, String? base})`

**매니페스트를 캐싱하는 이유** (스펙 §10-6). 퍼즐 30세트의 메타데이터는 버전이 바뀔 때만 달라진다. 매번 받으면 로비 진입이 느려진다. **`version` 이 같으면 재사용한다.**

**캐시를 메모리에만 둔다.** 디스크 캐시는 Plan 6 이 `shared_preferences` 로 붙인다. P0 슬라이스에서 디스크를 끌어오면 테스트가 플랫폼 채널에 묶여 `flutter test` 만으로 돌지 않는다.

**`http.Client` 를 주입받는다.** 실제 네트워크에 붙는 테스트는 느리고 흔들린다. `MockClient` 로 응답을 고정한다.

- [ ] **Step 1: 실패하는 테스트 작성**

`app/test/net/rest_client_test.dart`:

```dart
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:findit/net/rest_client.dart';

void main() {
  group('게스트 토큰', () {
    test('POST /auth/guest 의 토큰을 돌려준다', () async {
      late http.Request seen;
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((req) async {
          seen = req;
          return http.Response(jsonEncode({'token': 'g-1'}), 200);
        }),
      );

      expect(await client.guestToken(), 'g-1');
      expect(seen.method, 'POST');
      expect(seen.url.path, '/auth/guest');
    });

    test('200 이 아니면 던진다 — 조용히 빈 토큰을 쓰면 안 된다', () async {
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async => http.Response('nope', 503)),
      );
      expect(client.guestToken(), throwsA(isA<RestException>()));
    });
  });

  group('매니페스트', () {
    test('버전과 퍼즐 메타를 읽는다', () async {
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async => http.Response(
            jsonEncode({
              'version': 'v7',
              'puzzles': [
                {'id': 'a0001', 'width': 640, 'height': 720},
              ],
            }),
            200)),
      );

      final m = await client.manifest();
      expect(m.version, 'v7');
      expect(m.puzzles.single.id, 'a0001');
      expect(m.puzzles.single.width, 640);
    });

    test('두 번째 호출은 네트워크를 다시 때리지 않는다 — 캐시', () async {
      var calls = 0;
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async {
          calls += 1;
          return http.Response(
              jsonEncode({'version': 'v7', 'puzzles': const []}), 200);
        }),
      );

      await client.manifest();
      await client.manifest();

      // 결과만 보면 캐시가 없어도 똑같다. 호출 수로만 잡힌다.
      expect(calls, 1);
    });

    test('좌표가 섞여 와도 모델에 들어가지 않는다 — 스펙 §6.3', () async {
      // 서버는 좌표를 싣지 않는다. 그래도 클라 모델이 그것을 받아 두면
      // 나중에 화면에 흘릴 길이 생긴다. 모델에 자리가 없어야 한다.
      final client = createRestClient(
        base: 'http://x',
        httpClient: MockClient((_) async => http.Response(
            jsonEncode({
              'version': 'v7',
              'puzzles': [
                {
                  'id': 'a0001', 'width': 640, 'height': 720,
                  'rects': [
                    {'x': 1, 'y': 2, 'w': 3, 'h': 4},
                  ],
                },
              ],
            }),
            200)),
      );

      final m = await client.manifest();
      expect(jsonEncode(m.puzzles.single.toJson()),
          jsonEncode({'id': 'a0001', 'width': 640, 'height': 720}));
    });
  });
}
```

- [ ] **Step 2: 실패 확인**

Run: `cd app && flutter test test/net/rest_client_test.dart`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 구현**

`app/pubspec.yaml` 의 `dev_dependencies` 에 더한다 — `MockClient` 가 거기 있다:

```yaml
  http: ^1.6.0   # dependencies 쪽. testing.dart 는 같은 패키지에 들어 있다.
```

`app/lib/net/rest_client.dart`:

```dart
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../core/config.dart';

class RestException implements Exception {
  final String message;
  const RestException(this.message);
  @override
  String toString() => 'RestException: $message';
}

/// 클라이언트가 아는 퍼즐 정보의 전부다.
///
/// **좌표를 담을 자리가 없다** (스펙 §6.3). 서버는 싣지 않지만, 모델에
/// 자리를 만들어 두면 언젠가 채워져 화면으로 흘러나간다.
class PuzzleMeta {
  final String id;
  final int width;
  final int height;

  const PuzzleMeta({required this.id, required this.width, required this.height});

  factory PuzzleMeta.fromJson(Map<String, dynamic> json) => PuzzleMeta(
        id: json['id'] as String,
        width: json['width'] as int,
        height: json['height'] as int,
      );

  Map<String, dynamic> toJson() => {'id': id, 'width': width, 'height': height};
}

class Manifest {
  final String version;
  final List<PuzzleMeta> puzzles;
  const Manifest({required this.version, required this.puzzles});
}

abstract interface class RestClient {
  Future<String> guestToken();
  Future<Manifest> manifest();
}

RestClient createRestClient({http.Client? httpClient, String? base}) =>
    _HttpRestClient(httpClient ?? http.Client(), base ?? AppConfig.apiBase);

class _HttpRestClient implements RestClient {
  final http.Client _http;
  final String _base;
  Manifest? _cached;

  _HttpRestClient(this._http, this._base);

  @override
  Future<String> guestToken() async {
    final res = await _http.post(Uri.parse('$_base/auth/guest'));
    if (res.statusCode != 200) {
      // 조용히 빈 토큰을 쓰면 WS 가 AUTH 에서 끊기고, 원인이 여기가 아니라
      // 소켓처럼 보인다.
      throw RestException('게스트 발급 실패 (${res.statusCode})');
    }
    return (jsonDecode(res.body) as Map<String, dynamic>)['token'] as String;
  }

  @override
  Future<Manifest> manifest() async {
    final cached = _cached;
    if (cached != null) return cached;

    final res = await _http.get(Uri.parse('$_base/content/manifest'));
    if (res.statusCode != 200) {
      throw RestException('매니페스트 실패 (${res.statusCode})');
    }

    final json = jsonDecode(res.body) as Map<String, dynamic>;
    final manifest = Manifest(
      version: json['version'] as String,
      puzzles: [
        for (final p in json['puzzles'] as List<dynamic>)
          PuzzleMeta.fromJson(p as Map<String, dynamic>),
      ],
    );
    return _cached = manifest;
  }
}
```

- [ ] **Step 4: 통과 확인**

Run: `cd app && flutter test test/net/ && flutter analyze`
Expected: PASS — 이번 5 (누적 19).

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| `_cached` 반환 제거 (매번 요청) | `두 번째 호출은 네트워크를 다시 때리지 않는다` |
| `statusCode != 200` 검사 제거 | `200 이 아니면 던진다` |
| `PuzzleMeta` 에 `rects` 필드 추가 | `좌표가 섞여 와도 모델에 들어가지 않는다` |

- [ ] **Step 5: 커밋**

```bash
git add app/lib/net/rest_client.dart app/test/net/rest_client_test.dart
git commit -m "$(cat <<'EOF'
feat(app): REST 클라이언트 + 매니페스트 캐시

매니페스트는 버전이 바뀔 때만 달라진다 (스펙 §10-6). 매번 받으면 로비 진입이
느려지므로 메모리에 캐싱한다. 캐시는 결과로 검증되지 않아 호출 수로 본다.

디스크 캐시는 Plan 6 이 붙인다. P0 슬라이스에서 끌어오면 테스트가 플랫폼
채널에 묶여 flutter test 만으로 돌지 않는다.

PuzzleMeta 에 좌표를 담을 자리를 두지 않는다 (스펙 §6.3). 서버는 싣지 않지만
모델에 자리를 만들어 두면 언젠가 채워져 화면으로 흘러나간다. 좌표가 섞여 온
응답에서도 모델이 그것을 버리는지 테스트로 고정한다.

게스트 발급이 200 이 아니면 던진다. 조용히 빈 토큰을 쓰면 WS 가 AUTH 에서
끊기고, 원인이 여기가 아니라 소켓처럼 보인다.

http.Client 를 주입받아 MockClient 로 응답을 고정한다. 실제 네트워크에 붙는
테스트는 느리고 흔들린다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 4: 매치 상태 기계 + 좌표 변환 — 순수 Dart

**Files:**
- Create: `app/lib/domain/match_state.dart`, `app/lib/domain/viewport.dart`
- Test: `app/test/domain/match_state_test.dart`, `app/test/domain/viewport_test.dart`

**Interfaces:**
- Consumes: `protocol.g.dart`, Task 2 `Envelope`
- Produces:
  - `enum MatchPhase { idle, queued, matched, countdown, playing, ended }`
  - `class FoundRect { final int index; final Rect rect; final String patchUrl; final bool mine }`
  - `class MatchState` — `phase` · `matchId` · `puzzleId` · `imageUrl` · `imageSize` · `targetCount` · `durationMs` · `found` · `myFound` · `opponentFound` · `lockedUntilMs` · `blindedUntilMs` · `result`
  - `MatchState applyFrame(MatchState prev, Envelope frame)` — **순수 함수**
  - `class ImageViewport { Offset? toImage(Offset onScreen); Rect toScreen(Rect inImage); }`
  - `ImageViewport fitContain({required Size image, required Size box})`

> **`Viewport` 라는 이름을 쓰지 않는다.** `package:flutter/material.dart` 가 같은 이름의 위젯을 내보내므로, 배틀 씬처럼 둘을 함께 import 하는 파일에서 `ambiguous_import` 로 컴파일이 깨진다.

**`flutter` 를 import 하지 않는다.** `Offset`·`Size`·`Rect` 는 `dart:ui` 에 있다. 순수하게 두면 상태 기계와 좌표 변환을 위젯 없이 표 테스트로 고정할 수 있다.

**Review Focus 1 — 좌표 변환.** 이미지는 `BoxFit.contain` 으로 그려진다. 화면 탭을 이미지 좌표로 되돌리려면 **스케일과 레터박스 오프셋을 둘 다** 빼야 한다.

```
scale  = min(box.w / image.w, box.h / image.h)
offset = ((box - image * scale) / 2)
이미지좌표 = (화면좌표 - offset) / scale
```

하나라도 빠뜨리면 "정확히 눌렀는데 미스" 가 되고, 미스는 2초 잠금이라 **플레이 자체가 불가능해진다.** 레터박스 바깥을 누르면 `null` 을 주고 전송하지 않는다 — 서버에 쓰레기 탭을 보내 스스로 잠기게 만들 이유가 없다.

**Review Focus 2 — `MATCH_FOUND` 가 진행 중인 매치를 덮어쓴다.** 난입(스펙 §3.6)에서 서버는 이전 AI 판을 **정산 없이 버리고** 새 매치의 `MATCH_FOUND` 를 보낸다. 프로토콜에 "중단" 메시지가 없다. 상태 기계는 **어느 단계에서 받든 새 매치로 간다.**

> 이것은 스펙에 적혀 있던 것이 아니라 Plan 4 에서 정한 클라이언트 계약이다. 원작이 결과 화면을 건너뛰고 배틀룸으로 바로 가는 모양과 같다(`GameActivity.java:611-616`, `mResultPass = true`). 대안은 스펙 §8 에 `ABORT` 를 더하는 것이고, 그러면 서버도 한 줄 바뀐다. **이 계획서는 덮어쓰기로 간다** — 규칙이 한 줄이고 클라 상태 기계가 단순해진다.

- [ ] **Step 1: 실패하는 테스트 작성**

`app/test/domain/viewport_test.dart`:

```dart
import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/viewport.dart';

void main() {
  group('fitContain — 가로가 남는 경우 (세로 맞춤)', () {
    // 640x720 이미지를 800x720 상자에. scale=1, 좌우에 80 씩 남는다.
    final v = fitContain(image: const Size(640, 720), box: const Size(800, 720));

    test('중앙이 중앙으로', () {
      expect(v.toImage(const Offset(400, 360)), const Offset(320, 360));
    });

    test('이미지 좌상단은 레터박스 오프셋만큼 안쪽이다', () {
      expect(v.toImage(const Offset(80, 0)), const Offset(0, 0));
    });

    test('레터박스 바깥은 null — 서버에 쓰레기 탭을 보내지 않는다', () {
      expect(v.toImage(const Offset(10, 360)), isNull);
      expect(v.toImage(const Offset(790, 360)), isNull);
    });

    test('rect 를 화면 좌표로 되돌린다', () {
      expect(v.toScreen(const Rect.fromLTWH(0, 0, 130, 130)),
          const Rect.fromLTWH(80, 0, 130, 130));
    });
  });

  group('fitContain — 세로가 남는 경우 (가로 맞춤, 축소)', () {
    // 640x720 을 320x720 상자에. scale=0.5, 위아래에 180 씩 남는다.
    final v = fitContain(image: const Size(640, 720), box: const Size(320, 720));

    test('스케일을 되돌린다', () {
      // 화면 (160, 360) = 상자 중앙 → 이미지 중앙 (320, 360)
      expect(v.toImage(const Offset(160, 360)), const Offset(320, 360));
    });

    test('오프셋과 스케일을 둘 다 되돌린다', () {
      // 세로 오프셋 180, scale 0.5 → 화면 (0, 180) 이 이미지 (0, 0)
      expect(v.toImage(const Offset(0, 180)), const Offset(0, 0));
    });

    test('스케일만 되돌리고 오프셋을 빼먹으면 여기서 걸린다', () {
      // 오프셋을 무시하면 (0, 360) → (0, 720) 으로 이미지 밖이 된다.
      expect(v.toImage(const Offset(0, 360)), const Offset(0, 360));
    });

    test('rect 도 스케일과 오프셋을 함께 받는다', () {
      expect(v.toScreen(const Rect.fromLTWH(100, 100, 130, 130)),
          const Rect.fromLTWH(50, 230, 65, 65));
    });
  });

  test('딱 맞으면 오프셋이 없다', () {
    final v = fitContain(image: const Size(640, 720), box: const Size(640, 720));
    expect(v.toImage(const Offset(1, 1)), const Offset(1, 1));
  });
}
```

`app/test/domain/match_state_test.dart`:

```dart
import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/match_state.dart';
import 'package:findit/domain/protocol.g.dart';
import 'package:findit/net/envelope.dart';

Envelope f(MessageType t, Map<String, dynamic> d) =>
    Envelope(type: t, seq: 1, data: d);

const _found = {
  'matchId': 'm1', 'opponentName': '상대', 'opponentLevel': 3, 'isAi': false,
};
const _start = {
  'puzzleId': 'a0001', 'imageUrl': '/c/m1/base', 'width': 640, 'height': 720,
  'targetCount': 5, 'durationMs': 40000,
};

MatchState _playing() {
  var s = MatchState.initial();
  s = applyFrame(s, f(MessageType.matchFound, _found));
  s = applyFrame(s, f(MessageType.countdown, {'seconds': 3}));
  return applyFrame(s, f(MessageType.start, _start));
}

void main() {
  group('진행', () {
    test('QUEUED 면 대기다', () {
      final s = applyFrame(MatchState.initial(), f(MessageType.queued, {'position': 0}));
      expect(s.phase, MatchPhase.queued);
    });

    test('MATCH_FOUND 가 상대 정보를 싣는다', () {
      final s = applyFrame(MatchState.initial(), f(MessageType.matchFound, _found));
      expect(s.phase, MatchPhase.matched);
      expect(s.matchId, 'm1');
      expect(s.opponentName, '상대');
      expect(s.isAi, isFalse);
    });

    test('START 가 이미지 크기와 목표 수를 싣는다', () {
      final s = _playing();
      expect(s.phase, MatchPhase.playing);
      expect(s.imageSize, const Size(640, 720));
      expect(s.targetCount, 5);
      expect(s.durationMs, 40000);
    });

    test('REVEAL 이 찾은 rect 를 쌓고 누가 찾았는지 남긴다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.reveal, {
        'by': 'me', 'index': 2, 'x': 10, 'y': 20, 'w': 130, 'h': 130,
        'patchUrl': '/c/m1/patch/2',
      }));
      expect(s.found.single.index, 2);
      expect(s.found.single.mine, isTrue);
      expect(s.myFound, 1);
    });

    test('OPPONENT_PROGRESS 가 상대 진행을 갱신한다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.opponentProgress, {'found': 3}));
      expect(s.opponentFound, 3);
    });

    test('END 가 결과를 싣고 끝낸다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.end, {
        'result': 'win', 'myFound': 3, 'opponentFound': 2,
        'score': 700, 'coinDelta': 5, 'expDelta': 30,
      }));
      expect(s.phase, MatchPhase.ended);
      expect(s.result!.result, 'win');
      expect(s.result!.score, 700);
    });
  });

  group('잠금과 블라인드', () {
    test('LOCK 이 잠금 시각을 민다', () {
      final s = applyFrame(_playing(), f(MessageType.lock, {'durationMs': 2000}));
      expect(s.lockedUntilMs, greaterThan(0));
    });

    test('BLIND 가 방해 시각과 효과 id 를 싣는다', () {
      final s = applyFrame(_playing(),
          f(MessageType.blind, {'durationMs': 1500, 'effectId': 'hand_01'}));
      expect(s.blindedUntilMs, greaterThan(0));
      expect(s.blindEffectId, 'hand_01');
    });
  });

  group('난입 — MATCH_FOUND 가 진행 중인 매치를 덮어쓴다', () {
    test('playing 중에 와도 새 매치로 간다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.reveal, {
        'by': 'me', 'index': 0, 'x': 0, 'y': 0, 'w': 1, 'h': 1, 'patchUrl': 'u',
      }));
      expect(s.found, hasLength(1));

      s = applyFrame(s, f(MessageType.matchFound,
          {...  _found, 'matchId': 'm2', 'isAi': true}));

      // 오류로 처리하거나 무시하면 난입당한 쪽이 멈춘다.
      expect(s.phase, MatchPhase.matched);
      expect(s.matchId, 'm2');
      // 이전 판의 흔적이 남으면 새 판에 남의 rect 가 그려진다.
      expect(s.found, isEmpty);
      expect(s.myFound, 0);
      expect(s.result, isNull);
    });

    test('ended 중에 와도 새 매치로 간다', () {
      var s = applyFrame(_playing(), f(MessageType.end, {
        'result': 'lose', 'myFound': 0, 'opponentFound': 5,
        'score': 0, 'coinDelta': 0, 'expDelta': 0,
      }));
      s = applyFrame(s, f(MessageType.matchFound, _found));
      expect(s.phase, MatchPhase.matched);
      expect(s.result, isNull);
    });
  });

  test('ERROR 는 상태를 바꾸지 않는다 — 표시는 화면이 한다', () {
    final before = _playing();
    final after = applyFrame(before,
        f(MessageType.error, {'code': 'bad_frame', 'message': 'x'}));
    expect(after.phase, before.phase);
  });
}
```

- [ ] **Step 2: 실패 확인**

Run: `cd app && flutter test test/domain/`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 구현**

`app/lib/domain/viewport.dart`:

```dart
import 'dart:ui';

/// 이미지 좌표계 ↔ 화면 좌표계.
///
/// 서버는 퍼즐 원본 좌표계(예: 640×720)만 안다. 화면 좌표를 그대로 보내면
/// 전부 빗나가고, 빗나감은 2초 잠금이라 플레이 자체가 불가능해진다.
class ImageViewport {
  final double scale;
  final Offset offset;
  final Size image;

  const ImageViewport({required this.scale, required this.offset, required this.image});

  /// 레터박스 바깥이면 null. 서버에 쓰레기 탭을 보내 스스로 잠기게 만들
  /// 이유가 없다.
  Offset? toImage(Offset onScreen) {
    final x = (onScreen.dx - offset.dx) / scale;
    final y = (onScreen.dy - offset.dy) / scale;
    if (x < 0 || y < 0 || x > image.width || y > image.height) return null;
    return Offset(x, y);
  }

  Rect toScreen(Rect inImage) => Rect.fromLTWH(
        inImage.left * scale + offset.dx,
        inImage.top * scale + offset.dy,
        inImage.width * scale,
        inImage.height * scale,
      );
}

/// BoxFit.contain 과 같은 배치를 계산한다.
ImageViewport fitContain({required Size image, required Size box}) {
  final scale = (box.width / image.width) < (box.height / image.height)
      ? box.width / image.width
      : box.height / image.height;

  // **오프셋을 빠뜨리지 말 것.** 스케일만 되돌리면 레터박스가 있는 방향에서
  // 좌표가 통째로 밀린다.
  final offset = Offset(
    (box.width - image.width * scale) / 2,
    (box.height - image.height * scale) / 2,
  );

  return ImageViewport(scale: scale, offset: offset, image: image);
}
```

`app/lib/domain/match_state.dart`:

```dart
import 'dart:ui';

import '../net/envelope.dart';
import 'protocol.g.dart';

enum MatchPhase { idle, queued, matched, countdown, playing, ended }

class FoundRect {
  final int index;
  final Rect rect;
  final String patchUrl;
  final bool mine;

  const FoundRect({
    required this.index,
    required this.rect,
    required this.patchUrl,
    required this.mine,
  });
}

class MatchResult {
  final String result;
  final int myFound;
  final int opponentFound;
  final int score;
  final int coinDelta;
  final int expDelta;

  const MatchResult({
    required this.result,
    required this.myFound,
    required this.opponentFound,
    required this.score,
    required this.coinDelta,
    required this.expDelta,
  });
}

class MatchState {
  final MatchPhase phase;
  final String? matchId;
  final String? opponentName;
  final int opponentLevel;
  final bool isAi;
  final String? puzzleId;
  final String? imageUrl;
  final Size? imageSize;
  final int targetCount;
  final int durationMs;
  final List<FoundRect> found;
  final int opponentFound;
  final int lockedUntilMs;
  final int blindedUntilMs;
  final String? blindEffectId;
  final MatchResult? result;

  const MatchState({
    required this.phase,
    this.matchId,
    this.opponentName,
    this.opponentLevel = 0,
    this.isAi = false,
    this.puzzleId,
    this.imageUrl,
    this.imageSize,
    this.targetCount = 0,
    this.durationMs = 0,
    this.found = const [],
    this.opponentFound = 0,
    this.lockedUntilMs = 0,
    this.blindedUntilMs = 0,
    this.blindEffectId,
    this.result,
  });

  factory MatchState.initial() => const MatchState(phase: MatchPhase.idle);

  int get myFound => found.where((f) => f.mine).length;

  MatchState _copy({
    MatchPhase? phase,
    List<FoundRect>? found,
    int? opponentFound,
    int? lockedUntilMs,
    int? blindedUntilMs,
    String? blindEffectId,
    MatchResult? result,
    String? puzzleId,
    String? imageUrl,
    Size? imageSize,
    int? targetCount,
    int? durationMs,
  }) =>
      MatchState(
        phase: phase ?? this.phase,
        matchId: matchId,
        opponentName: opponentName,
        opponentLevel: opponentLevel,
        isAi: isAi,
        puzzleId: puzzleId ?? this.puzzleId,
        imageUrl: imageUrl ?? this.imageUrl,
        imageSize: imageSize ?? this.imageSize,
        targetCount: targetCount ?? this.targetCount,
        durationMs: durationMs ?? this.durationMs,
        found: found ?? this.found,
        opponentFound: opponentFound ?? this.opponentFound,
        lockedUntilMs: lockedUntilMs ?? this.lockedUntilMs,
        blindedUntilMs: blindedUntilMs ?? this.blindedUntilMs,
        blindEffectId: blindEffectId ?? this.blindEffectId,
        result: result ?? this.result,
      );
}

/// 서버 프레임 하나를 접는다. **순수 함수다** — 소켓도 위젯도 모른다.
MatchState applyFrame(MatchState prev, Envelope frame) {
  final d = frame.data;

  switch (frame.type) {
    case MessageType.queued:
      return prev._copy(phase: MatchPhase.queued);

    case MessageType.matchFound:
      // **어느 단계에서 받든 새 매치로 간다.** 난입에서 서버는 이전 AI 판을
      // 정산 없이 버리고 이것을 보낸다 (스펙 §3.6). 프로토콜에 "중단"
      // 메시지가 없다. 오류로 처리하거나 무시하면 난입당한 쪽이 멈춘다.
      //
      // 이전 판의 흔적을 남기지 않는 것도 중요하다 — found 가 남으면 새 판에
      // 남의 rect 가 그려진다.
      final m = MatchFoundMessage.fromJson(d);
      return MatchState(
        phase: MatchPhase.matched,
        matchId: m.matchId,
        opponentName: m.opponentName,
        opponentLevel: m.opponentLevel,
        isAi: m.isAi,
      );

    case MessageType.countdown:
      return prev._copy(phase: MatchPhase.countdown);

    case MessageType.start:
      final s = StartMessage.fromJson(d);
      return prev._copy(
        phase: MatchPhase.playing,
        puzzleId: s.puzzleId,
        imageUrl: s.imageUrl,
        imageSize: Size(s.width.toDouble(), s.height.toDouble()),
        targetCount: s.targetCount,
        durationMs: s.durationMs,
        found: const [],
      );

    case MessageType.reveal:
      final r = RevealMessage.fromJson(d);
      return prev._copy(found: [
        ...prev.found,
        FoundRect(
          index: r.index,
          rect: Rect.fromLTWH(
              r.x.toDouble(), r.y.toDouble(), r.w.toDouble(), r.h.toDouble()),
          patchUrl: r.patchUrl,
          mine: r.by == 'me',
        ),
      ]);

    case MessageType.opponentProgress:
      return prev._copy(
          opponentFound: OpponentProgressMessage.fromJson(d).found);

    case MessageType.lock:
      return prev._copy(
          lockedUntilMs: prev.lockedUntilMs + LockMessage.fromJson(d).durationMs);

    case MessageType.blind:
      final b = BlindMessage.fromJson(d);
      return prev._copy(
        blindedUntilMs: prev.blindedUntilMs + b.durationMs,
        blindEffectId: b.effectId,
      );

    case MessageType.end:
      final e = EndMessage.fromJson(d);
      return prev._copy(
        phase: MatchPhase.ended,
        result: MatchResult(
          result: e.result,
          myFound: e.myFound,
          opponentFound: e.opponentFound,
          score: e.score,
          coinDelta: e.coinDelta,
          expDelta: e.expDelta,
        ),
      );

    // ERROR 는 상태를 바꾸지 않는다. 표시는 화면이 한다.
    // c2s 타입은 서버에서 오지 않는다 — 와도 무시한다.
    default:
      return prev;
  }
}
```

> **`r.by == 'me'` 는 서버가 고쳐져야 성립한다.** 확인해 보니 현재 서버는 `REVEAL` 을 `to: 'both'` 로 한 번만 만들면서 `by: slot`(`'p1'`/`'p2'`)을 싣는다(`reducer.ts:239`). 클라이언트는 자기 슬롯을 알 방법이 없다 — `MATCH_FOUND` 도 슬롯을 싣지 않는다. 그대로 두면 **내가 찾은 것도 전부 상대 것으로 그려진다.** **Task 5 가 서버를 고친다.** 이 Task 의 단위 테스트는 봉투를 손으로 만들므로 순서에 관계없이 통과한다.

- [ ] **Step 4: 통과 확인**

Run: `cd app && flutter test test/domain/ && flutter analyze`
Expected: PASS — viewport 9 + match_state 11 (누적 39).

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| `fitContain` 의 `offset` 을 `Offset.zero` 로 | `오프셋과 스케일을 둘 다 되돌린다` · `스케일만 되돌리고…` |
| `toImage` 의 경계 검사 제거 | `레터박스 바깥은 null` |
| `matchFound` 가 `prev._copy(...)` 로 이전 상태를 이어받음 | `playing 중에 와도 새 매치로 간다` (found 가 남는다) |
| `matchFound` 를 `phase == playing` 일 때 무시 | 같은 테스트 |

- [ ] **Step 5: 커밋**

```bash
git add app/lib/domain/match_state.dart app/lib/domain/viewport.dart app/test/domain/
git commit -m "$(cat <<'EOF'
feat(app): 매치 상태 기계 + 좌표 변환

둘 다 순수 Dart 다. flutter 를 import 하지 않아 위젯 없이 표 테스트로
고정된다.

좌표 변환은 스케일과 레터박스 오프셋을 둘 다 되돌린다. 하나라도 빠뜨리면
"정확히 눌렀는데 미스" 가 되고, 미스는 2초 잠금이라 플레이 자체가 불가능해진다.
스케일만 되돌린 구현에서 실패하는 테스트를 따로 뒀다.

레터박스 바깥 탭은 null 을 준다. 서버에 쓰레기 탭을 보내 스스로 잠기게 만들
이유가 없다.

MATCH_FOUND 는 어느 단계에서 받든 새 매치로 간다. 난입에서 서버는 이전 AI
판을 정산 없이 버리고 이것을 보내는데 프로토콜에 "중단" 메시지가 없다
(스펙 §3.6). 오류로 처리하거나 무시하면 난입당한 쪽이 멈춘다. 이전 판의
found 를 비우는 것도 중요하다 — 남으면 새 판에 남의 rect 가 그려진다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 5: 서버 — `REVEAL.by` 를 수신자 기준으로

**Files:**
- Modify: `server/src/battle/reducer.ts`, `server/src/battle/reducer.test.ts`

**Interfaces:**
- Produces: `REVEAL.by` 가 `'me' | 'opponent'` 를 갖는다 (이전: `'p1' | 'p2'`)

**클라이언트가 자기 슬롯을 알 방법이 없다.** 현재 `REVEAL` 은 `to: 'both'` 로 한 번 만들어지고 `by: slot` 을 싣는다(`reducer.ts:239`). 양쪽이 같은 값을 받는데 `MATCH_FOUND` 는 슬롯을 싣지 않는다. 그래서 클라는 그 `REVEAL` 이 자기 것인지 상대 것인지 판단할 수 없고, **내가 찾은 rect 도 상대 것으로 그린다.**

**이 프로토콜의 다른 s2c 는 이미 수신자 기준이다.** `END.myFound`·`END.opponentFound`·`OPPONENT_PROGRESS.found` 가 전부 받는 사람 관점으로 쓰여 있다. `REVEAL.by` 가 절대 슬롯인 것이 오히려 예외다. 규약에 맞춘다.

**스키마는 바뀌지 않는다.** `by` 는 `str` 그대로이고 값만 달라진다. Dart 생성물도 그대로다.

- [ ] **Step 1: 실패하는 테스트 작성**

`server/src/battle/reducer.test.ts` 의 기존 단언을 고치고 하나를 더한다:

```typescript
  it('REVEAL 을 양쪽에 보내되 by 는 받는 사람 기준이다', () => {
    const state = playing();
    const { x, y } = centerOfUnrevealed(state);
    const result = reduce(state, { kind: 'TAP', slot: 'p1', x, y }, ctx(COUNTDOWN_MS + 500));

    const reveals = result.outbound.filter((outbound) => outbound.type === 'REVEAL');
    // 받는 사람마다 값이 달라야 하므로 하나로는 만들 수 없다.
    expect(reveals).toHaveLength(2);

    const mine = reveals.find((r) => r.to === 'p1')!;
    const theirs = reveals.find((r) => r.to === 'p2')!;
    expect(mine.payload).toMatchObject({ by: 'me' });
    expect(theirs.payload).toMatchObject({ by: 'opponent' });

    // 좌표는 양쪽이 같아야 한다 — 같은 rect 다.
    // (patchUrl 을 한 번만 만드는지는 아래 별도 테스트가 호출 수로 본다.
    //  testUrls.patch 가 순수 함수라 결과 비교로는 구분되지 않는다.)
    expect(theirs.payload['index']).toBe(mine.payload['index']);
    expect(theirs.payload['patchUrl']).toBe(mine.payload['patchUrl']);

    expect(result.state.p1.found).toHaveLength(1);
    expect(result.state.p1.combo).toBe(1);
  });

it('패치 URL 을 한 번만 만들어 양쪽에 같은 것을 준다', () => {
    const state = playing();
    const { x, y } = centerOfUnrevealed(state);

    // **호출 수를 세야 잡힌다.** testUrls.patch 는 순수 함수라 같은 인자로
    // 두 번 불러도 같은 문자열이 나온다. 결과만 비교하면 수신자마다 새로
    // 만드는 구현과 구분되지 않는다.
    let patchCalls = 0;
    const counting: ReduceContext = {
      ...ctx(COUNTDOWN_MS + 500),
      urls: {
        base: testUrls.base,
        patch: (matchId: string, rectIndex: number) => {
          patchCalls += 1;
          return testUrls.patch(matchId, rectIndex);
        },
      },
    };

    const result = reduce(state, { kind: 'TAP', slot: 'p1', x, y }, counting);
    const reveals = result.outbound.filter((outbound) => outbound.type === 'REVEAL');

    expect(reveals).toHaveLength(2);
    expect(patchCalls).toBe(1);
    expect(reveals[1]!.payload['patchUrl']).toBe(reveals[0]!.payload['patchUrl']);
  });

  it('p2 가 찾으면 p2 에게 me 가 간다 — 슬롯이 고정돼 있지 않다', () => {
    const state = playing();
    const { x, y } = centerOfUnrevealed(state);
    const result = reduce(state, { kind: 'TAP', slot: 'p2', x, y }, ctx(COUNTDOWN_MS + 500));

    const reveals = result.outbound.filter((outbound) => outbound.type === 'REVEAL');
    expect(reveals.find((r) => r.to === 'p2')!.payload).toMatchObject({ by: 'me' });
    expect(reveals.find((r) => r.to === 'p1')!.payload).toMatchObject({ by: 'opponent' });
  });
```

- [ ] **Step 2: 실패 확인**

Run: `npx vitest run server/src/battle/reducer.test.ts`
Expected: FAIL — `expected length 2, received 1`

- [ ] **Step 3: 구현**

`server/src/battle/reducer.ts` 의 `revealOutbound` 를 고친다:

```typescript
  // REVEAL 은 **받는 사람 기준**으로 by 를 쓴다. 이 프로토콜의 다른 s2c 가
  // 이미 그렇다 — END.myFound, OPPONENT_PROGRESS.found. 절대 슬롯('p1')을
  // 보내면 클라이언트가 자기 슬롯을 알 방법이 없어(MATCH_FOUND 도 슬롯을
  // 싣지 않는다) 내가 찾은 것도 상대 것으로 그린다.
  //
  // 값이 수신자마다 다르므로 to: 'both' 하나로는 만들 수 없다.
  //
  // **URL 은 한 번만 만들어 둘이 나눠 쓴다.** 스펙 §6.3 은 패치 URL 을
  // "일회용" 으로 규정했고, Plan 3 은 그것을 TTL + 매치·인덱스 바인딩으로
  // 좁히면서 "엄격한 1회 소비는 P1 에서 재검토" 라고 적어 뒀다. P1 이 Redis
  // 사용 표시로 진짜 1회 소비를 구현하면, 한 rect 에 URL 을 두 번 만드는
  // 코드는 토큰을 둘 태우고 먼저 것을 무효화할 수도 있다.
  const patchUrl = ctx.urls.patch(next.matchId, hit);
  const revealPayload = {
    index: hit,
    x: rect.x,
    y: rect.y,
    w: rect.w,
    h: rect.h,
    patchUrl,
  };

  const revealOutbound: Outbound[] = [
    { to: slot, type: 'REVEAL', payload: { by: 'me', ...revealPayload } },
    { to: other, type: 'REVEAL', payload: { by: 'opponent', ...revealPayload } },
    { to: other, type: 'OPPONENT_PROGRESS', payload: { found: next[slot].found.length } },
  ];
```

- [ ] **Step 4: 통과 확인**

```bash
DATABASE_URL=postgres://findit:findit@localhost:5432/findit \
REDIS_URL=redis://localhost:6379 \
npm test && npm run typecheck
```
Expected: PASS — 434 → **436** tests, skip 0 (REVEAL 테스트 2개 + 호출 수 1개, 기존 1개 대체).

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| 두 `REVEAL` 을 `to: 'both'` 하나로 되돌림 | `REVEAL 을 양쪽에 보내되 by 는 받는 사람 기준이다` |
| 양쪽 모두 `by: 'me'` | `p2 가 찾으면 p2 에게 me 가 간다` |
| `patchUrl` 을 수신자마다 새로 만듦 (`urls.patch` 를 두 번 호출) | `패치 URL 을 한 번만 만들어 양쪽에 같은 것을 준다` |

> **결과 비교로는 이 변이가 잡히지 않는다.** `testUrls.patch` 는 순수 함수라 같은 인자로 두 번 불러도 같은 문자열이 나온다. **호출 수**를 세야 한다 — 이 계획서가 반복해 말하는 "부재·횟수 계약은 결과가 아니라 호출 기록으로 본다" 의 또 다른 사례다.

- [ ] **Step 5: 커밋**

```bash
git add server/src/battle/reducer.ts server/src/battle/reducer.test.ts
git commit -m "$(cat <<'EOF'
fix(server): REVEAL.by 를 수신자 기준으로

클라이언트를 쓰기 시작하면서 드러났다. REVEAL 이 to: 'both' 로 한 번
만들어지면서 by: slot('p1'/'p2')을 실었는데, MATCH_FOUND 도 슬롯을 싣지
않으므로 클라이언트는 그 REVEAL 이 자기 것인지 판단할 방법이 없다. 그대로
두면 내가 찾은 rect 도 전부 상대 것으로 그려진다.

이 프로토콜의 다른 s2c 는 이미 수신자 기준이다 — END.myFound,
END.opponentFound, OPPONENT_PROGRESS.found. REVEAL.by 가 절대 슬롯인 것이
오히려 예외였다. 규약에 맞춘다.

값이 수신자마다 다르므로 to: 'both' 하나로는 만들 수 없다. 슬롯별로 두 번
만들되 URL 은 한 번만 만들어 나눠 쓴다. 스펙 §6.3 이 패치 URL 을 "일회용"
으로 규정했고 Plan 3 이 엄격한 1회 소비를 P1 로 미뤄 뒀다 — P1 이 Redis
사용 표시로 그것을 구현하면 한 rect 에 URL 을 두 번 만드는 코드는 토큰을
둘 태운다.

그 계약은 결과 비교로 검증되지 않는다. 테스트 픽스처의 patch 가 순수
함수라 두 번 불러도 같은 문자열이 나오기 때문이다. urls.patch 호출 수를
세는 테스트를 따로 뒀다.

스키마는 바뀌지 않는다. by 는 str 그대로이고 값만 달라지므로 Dart 생성물도
그대로다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 6: WS 클라이언트 — 연결 · 재연결 · 상태 접기

**Files:**
- Create: `app/lib/net/socket.dart`, `app/lib/net/ws_client.dart`
- Test: `app/test/net/ws_client_test.dart`

**Interfaces:**
- Consumes: Task 2 `Envelope`, Task 4 `MatchState`·`applyFrame`
- Produces:
  - `abstract interface class Socket { Stream<String> get incoming; void send(String raw); Future<void> close(); }`
  - `typedef SocketFactory = Future<Socket> Function(Uri url)`
  - `class WsClient { Stream<MatchState> get states; Future<void> connect(); void joinQueue(); void leaveQueue(); void ready(); void tap(int x, int y); void useSkill(String id); Future<void> dispose(); }`
  - `Socket Function` 기본 구현 — `web_socket_channel` 어댑터

**소켓을 좁은 포트 뒤에 둔다.** `web_socket_channel` 의 `WebSocketChannel` 은 추상 클래스라 가짜로 만들기 번거롭고, 테스트가 그 패키지 구현에 묶인다. `Stream<String>` + `send` + `close` 세 개면 충분하다.

**Review Focus 4 — 재연결 뒤의 상태.** 소켓이 끊기면 **서버는 그 매치를 `LEAVE` 로 끝낸다**(Plan 4 게이트웨이의 `onClose`). 재연결해서 예전 매치를 이어가려 하면 영원히 오지 않을 프레임을 기다린다. **재연결은 로비로 돌아가는 것**이다 — 상태를 `idle` 로 되돌리고 다시 `AUTH` 한다.

**지수 백오프.** 서버가 죽었을 때 초당 수십 번 두드리면 복구를 방해한다. 500ms 에서 시작해 두 배씩, 8초에서 멈춘다. **지터를 섞는다** — 안 섞으면 끊긴 클라들이 같은 순간에 몰려 돌아온다.

**초기화 시점이 중요하다.** `connect()` 가 돌아온 순간이 아니라 **프레임을 한 번 받은 뒤** 되돌린다. 소켓이 열렸다는 것과 그 연결을 쓸 수 있다는 것은 다르다 — 서버가 기동 중이거나 과부하라 열자마자 끊으면, 연결 성공에서 초기화하는 구현은 **영원히 500ms 마다 두드린다.**

- [ ] **Step 1: 실패하는 테스트 작성**

`app/test/net/ws_client_test.dart`:

```dart
import 'dart:async';
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/match_state.dart';
import 'package:findit/net/socket.dart';
import 'package:findit/net/ws_client.dart';

class FakeSocket implements Socket {
  final _in = StreamController<String>.broadcast();
  final List<String> sent = [];
  bool closed = false;

  @override
  Stream<String> get incoming => _in.stream;
  @override
  void send(String raw) => sent.add(raw);
  @override
  Future<void> close() async { closed = true; await _in.close(); }

  void serverSends(String type, Map<String, dynamic> d) =>
      _in.add(jsonEncode({'t': type, 'seq': 1, 'd': d}));
  /// 프라이버시는 라이브러리 단위다. 테스트 파일에서 _in 에 직접 닿을 수
  /// 없으므로 통로를 연다.
  void raw(String frame) => _in.add(frame);
  /// 닫힌 뒤에 부르면 StreamController 가 던진다. 실제 소켓도 닫힌 뒤에는
  /// 아무것도 전달하지 않으므로 여기서 걸러 준다.
  void drop() {
    if (!_in.isClosed) _in.addError(const SocketException('끊김'));
  }

  Map<String, dynamic> sentAt(int i) => jsonDecode(sent[i]) as Map<String, dynamic>;
}

class SocketException implements Exception {
  final String message;
  const SocketException(this.message);
}

void main() {
  late List<FakeSocket> made;
  late List<Duration> waited;

  WsClient build({String token = 't-1'}) {
    made = [];
    waited = [];
    return WsClient(
      url: Uri.parse('ws://x'),
      token: token,
      connect: (_) async { final s = FakeSocket(); made.add(s); return s; },
      // 실시간을 기다리지 않는다. 얼마를 기다리려 했는지만 기록한다.
      sleep: (d) async { waited.add(d); },
    );
  }

  test('연결하면 AUTH 를 먼저 보낸다', () async {
    final c = build();
    await c.connect();
    expect(made.single.sentAt(0)['t'], 'AUTH');
    expect(made.single.sentAt(0)['d'], {'token': 't-1'});
    await c.dispose();
  });

  test('서버 프레임이 상태로 접힌다', () async {
    final c = build();
    await c.connect();
    final seen = <MatchState>[];
    final sub = c.states.listen(seen.add);

    made.single.serverSends('QUEUED', {'position': 0});
    made.single.serverSends('MATCH_FOUND', {
      'matchId': 'm1', 'opponentName': '상대', 'opponentLevel': 1, 'isAi': true,
    });
    await Future<void>.delayed(Duration.zero);

    expect(seen.last.phase, MatchPhase.matched);
    expect(seen.last.matchId, 'm1');
    await sub.cancel();
    await c.dispose();
  });

  test('모양이 깨진 프레임은 버리고 계속 돈다', () async {
    final c = build();
    await c.connect();
    final seen = <MatchState>[];
    final sub = c.states.listen(seen.add);

    made.single.raw('{{{');
    made.single.serverSends('FUTURE_MSG', const {});
    made.single.serverSends('QUEUED', {'position': 0});
    await Future<void>.delayed(Duration.zero);

    // 앞의 둘이 스트림을 죽였다면 마지막이 오지 않는다.
    expect(seen.last.phase, MatchPhase.queued);
    await sub.cancel();
    await c.dispose();
  });

  test('보내는 메시지가 와이어 이름으로 나간다', () async {
    final c = build();
    await c.connect();
    c.joinQueue();
    c.ready();
    c.tap(231, 402);
    c.useSkill('hand_01');

    final types = [for (var i = 1; i < made.single.sent.length; i += 1)
      made.single.sentAt(i)['t']];
    expect(types, ['QUEUE_JOIN', 'READY', 'TAP', 'SKILL']);
    expect(made.single.sentAt(3)['d'], {'x': 231, 'y': 402});
    await c.dispose();
  });

  group('재연결', () {
    test('끊기면 다시 연결하고 AUTH 를 다시 보낸다', () async {
      final c = build();
      await c.connect();
      made.first.drop();
      await Future<void>.delayed(Duration.zero);
      await Future<void>.delayed(Duration.zero);

      expect(made.length, 2);
      expect(made.last.sentAt(0)['t'], 'AUTH');
      await c.dispose();
    });

    test('재연결하면 상태가 idle 로 돌아간다 — 서버는 그 매치를 이미 끝냈다', () async {
      final c = build();
      await c.connect();
      final seen = <MatchState>[];
      final sub = c.states.listen(seen.add);

      made.first.serverSends('MATCH_FOUND', {
        'matchId': 'm1', 'opponentName': 'x', 'opponentLevel': 1, 'isAi': true,
      });
      await Future<void>.delayed(Duration.zero);
      expect(seen.last.phase, MatchPhase.matched);

      made.first.drop();
      await Future<void>.delayed(Duration.zero);
      await Future<void>.delayed(Duration.zero);

      // 예전 매치를 이어가려 하면 영원히 오지 않을 프레임을 기다린다.
      expect(seen.last.phase, MatchPhase.idle);
      await sub.cancel();
      await c.dispose();
    });

    test('백오프가 두 배씩 늘고 상한에서 멈춘다', () async {
      final c = build();
      await c.connect();

      // **마이크로태스크 두 번으로는 부족하다.** _reconnect 는 cancel ·
      // sleep · connect 를 연달아 await 하므로, 새 소켓이 생길 때까지
      // 기다려야 다음 drop 이 그 소켓을 향한다. 안 그러면 이미 죽은 소켓을
      // 여섯 번 두드리고 재연결은 한 번만 일어난다.
      for (var i = 0; i < 6; i += 1) {
        final before = made.length;
        made.last.drop();
        for (var spin = 0; spin < 100 && made.length == before; spin += 1) {
          await Future<void>.delayed(Duration.zero);
        }
        expect(made.length, before + 1, reason: '${i + 1}번째 재연결이 일어나지 않았다');
      }

      final ms = waited.map((d) => d.inMilliseconds).toList();
      expect(ms, hasLength(6));

      // **단조 증가로 보면 안 된다.** 상한에 닿은 뒤에는 지터 때문에
      // 8133 다음에 8008 이 나올 수 있다. 차례마다 기댓값 구간을 본다:
      //   500 · 1000 · 2000 · 4000 · 8000 · 8000(상한), 각각 ×[1, 1.5] 지터.
      for (var i = 0; i < ms.length; i += 1) {
        final base = (500 * (1 << i)).clamp(500, 8000);
        expect(ms[i], inInclusiveRange(base, (base * 1.5).round()),
            reason: '${i + 1}번째 대기 ${ms[i]}ms 가 ${base}ms 대가 아니다');
      }
      await c.dispose();
    });

    test('프레임을 한 번 받으면 백오프가 처음으로 되돌아간다', () async {
      final c = build();
      await c.connect();

      // 프레임 없이 두 번 끊는다 → 500, 1000 으로 늘어난다.
      for (var i = 0; i < 2; i += 1) {
        final before = made.length;
        made.last.drop();
        for (var spin = 0; spin < 100 && made.length == before; spin += 1) {
          await Future<void>.delayed(Duration.zero);
        }
      }
      expect(waited.last.inMilliseconds, greaterThan(900));

      // 이번에는 프레임이 온다 = 이 연결은 쓸 수 있다.
      made.last.serverSends('QUEUED', {'position': 0});
      await Future<void>.delayed(Duration.zero);

      final before = made.length;
      made.last.drop();
      for (var spin = 0; spin < 100 && made.length == before; spin += 1) {
        await Future<void>.delayed(Duration.zero);
      }

      // 되돌리지 않으면 여기가 2000 대가 된다.
      expect(waited.last.inMilliseconds, inInclusiveRange(500, 750));
      await c.dispose();
    });

    test('dispose 뒤에는 다시 연결하지 않는다', () async {
      final c = build();
      await c.connect();
      await c.dispose();

      // dispose 가 소켓을 닫았는지 먼저 본다. 안 닫혔다면 아래 단언이
      // 통과해도 의미가 없다 — 끊길 일이 없었을 뿐이다.
      expect(made.first.closed, isTrue);

      made.first.drop();
      for (var spin = 0; spin < 20; spin += 1) {
        await Future<void>.delayed(Duration.zero);
      }
      expect(made.length, 1);
    });
  });
}
```

- [ ] **Step 2: 실패 확인**

Run: `cd app && flutter test test/net/ws_client_test.dart`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 구현**

`app/lib/net/socket.dart`:

```dart
import 'package:web_socket_channel/web_socket_channel.dart';

/// 소켓을 좁은 포트 뒤에 둔다. 테스트가 web_socket_channel 구현에 묶이지
/// 않고, 가짜를 세 줄로 만들 수 있다.
abstract interface class Socket {
  Stream<String> get incoming;
  void send(String raw);
  Future<void> close();
}

typedef SocketFactory = Future<Socket> Function(Uri url);

Future<Socket> connectWebSocket(Uri url) async {
  final channel = WebSocketChannel.connect(url);
  await channel.ready;
  return _ChannelSocket(channel);
}

class _ChannelSocket implements Socket {
  final WebSocketChannel _channel;
  _ChannelSocket(this._channel);

  @override
  Stream<String> get incoming => _channel.stream.map((e) => e as String);
  @override
  void send(String raw) => _channel.sink.add(raw);
  @override
  Future<void> close() => _channel.sink.close();
}
```

`app/lib/net/ws_client.dart`:

```dart
import 'dart:async';
import 'dart:math';

import '../domain/match_state.dart';
import '../domain/protocol.g.dart';
import 'envelope.dart';
import 'socket.dart';

const Duration _backoffMin = Duration(milliseconds: 500);
const Duration _backoffMax = Duration(seconds: 8);

class WsClient {
  final Uri url;
  final String token;
  final SocketFactory _connect;
  final Future<void> Function(Duration) _sleep;
  final Random _random;

  final _states = StreamController<MatchState>.broadcast();
  MatchState _state = MatchState.initial();
  Socket? _socket;
  StreamSubscription<String>? _sub;
  int _seq = 0;
  Duration _backoff = _backoffMin;
  bool _gotFrame = false;
  bool _disposed = false;

  WsClient({
    required this.url,
    required this.token,
    SocketFactory? connect,
    Future<void> Function(Duration)? sleep,
    Random? random,
  })  : _connect = connect ?? connectWebSocket,
        _sleep = sleep ?? ((d) => Future<void>.delayed(d)),
        _random = random ?? Random();

  Stream<MatchState> get states => _states.stream;
  MatchState get state => _state;

  Future<void> connect() async {
    if (_disposed) return;
    final socket = await _connect(url);
    _socket = socket;
    // **여기서 백오프를 초기화하지 않는다.** connect() 가 돌아왔다는 것은
    // 소켓이 열렸다는 뜻일 뿐이다. 서버가 열자마자 끊는 상태(기동 중,
    // 과부하)에서 초기화하면 영원히 500ms 마다 두드려 복구를 방해한다.
    // 프레임을 한 번이라도 받아야 "이 연결은 쓸 수 있다" 가 증명된다.
    _gotFrame = false;

    _sub = socket.incoming.listen(
      _onFrame,
      onError: (Object _) => _reconnect(),
      onDone: _reconnect,
      cancelOnError: false,
    );

    // AUTH 가 먼저다. 서버는 인증되지 않은 연결의 다른 메시지를 끊는다.
    _send(MessageType.auth, {'token': token});
  }

  void joinQueue() => _send(MessageType.queueJoin, {'mode': 'casual'});
  void leaveQueue() => _send(MessageType.queueLeave, const {});
  void ready() => _send(MessageType.ready, const {});
  void tap(int x, int y) => _send(MessageType.tap, {'x': x, 'y': y});
  void useSkill(String id) => _send(MessageType.skill, {'skillId': id});

  Future<void> dispose() async {
    _disposed = true;
    await _sub?.cancel();
    await _socket?.close();
    await _states.close();
  }

  void _send(MessageType type, Map<String, dynamic> data) {
    _seq += 1;
    _socket?.send(encodeEnvelope(type, _seq, data));
  }

  void _onFrame(String raw) {
    final envelope = decodeEnvelope(raw);
    // 모양이 깨졌거나 모르는 타입이면 버린다. 프레임 한 통에 스트림이
    // 죽으면 그 뒤로는 아무것도 못 받는다.
    if (envelope == null) return;

    // 프레임이 왔다 = 이 연결은 실제로 동작한다. 이제 백오프를 되돌린다.
    if (!_gotFrame) {
      _gotFrame = true;
      _backoff = _backoffMin;
    }

    _state = applyFrame(_state, envelope);
    if (!_states.isClosed) _states.add(_state);
  }

  Future<void> _reconnect() async {
    if (_disposed) return;

    await _sub?.cancel();
    _sub = null;
    _socket = null;

    // **로비로 돌아간다.** 소켓이 끊긴 순간 서버는 그 매치를 LEAVE 로
    // 끝냈다 (Plan 4 게이트웨이). 예전 매치를 이어가려 하면 영원히 오지
    // 않을 프레임을 기다린다.
    _state = MatchState.initial();
    if (!_states.isClosed) _states.add(_state);

    // 지터를 섞는다. 안 섞으면 끊긴 클라들이 같은 순간에 몰려 돌아와
    // 복구 중인 서버를 다시 넘어뜨린다.
    final jitter = 1 + _random.nextDouble() * 0.5;
    await _sleep(Duration(
        milliseconds: (_backoff.inMilliseconds * jitter).round()));

    final doubled = _backoff * 2;
    _backoff = doubled > _backoffMax ? _backoffMax : doubled;

    if (_disposed) return;
    try {
      await connect();
    } on Object {
      // 연결 자체가 실패하면 다시 물러났다 시도한다.
      unawaited(_reconnect());
    }
  }
}
```

- [ ] **Step 4: 통과 확인**

Run: `cd app && flutter test && flutter analyze`
Expected: PASS — 이번 9 (누적 48).

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| `_reconnect` 의 `_state = MatchState.initial()` 제거 | `재연결하면 상태가 idle 로 돌아간다` |
| `decodeEnvelope == null` 에서 `throw` | `모양이 깨진 프레임은 버리고 계속 돈다` |
| `connect()` 에서 AUTH 전송 제거 | `연결하면 AUTH 를 먼저 보낸다` |
| `_backoff` 를 늘리지 않음(항상 최소) | `백오프가 두 배씩 늘고 상한에서 멈춘다` |
| `connect()` 에서 `_backoff` 를 초기화 | `백오프가 두 배씩 늘고 상한에서 멈춘다` |
| `_onFrame` 의 `_backoff` 초기화 제거 | `프레임을 한 번 받으면 백오프가 처음으로 되돌아간다` |
| `dispose` 의 `_disposed` 검사 제거 | `dispose 뒤에는 다시 연결하지 않는다` |

- [ ] **Step 5: 커밋**

```bash
git add app/lib/net/socket.dart app/lib/net/ws_client.dart app/test/net/ws_client_test.dart
git commit -m "$(cat <<'EOF'
feat(app): WS 클라이언트 — 연결 · 재연결 · 상태 접기

소켓을 좁은 포트(Stream<String> + send + close) 뒤에 둔다. WebSocketChannel
은 추상 클래스라 가짜로 만들기 번거롭고, 테스트가 그 패키지 구현에 묶인다.

재연결은 로비로 돌아가는 것이다. 소켓이 끊긴 순간 서버는 그 매치를 LEAVE 로
끝냈다 (Plan 4 게이트웨이의 onClose). 예전 매치를 이어가려 하면 영원히 오지
않을 프레임을 기다린다.

지수 백오프에 지터를 섞는다. 500ms 에서 두 배씩 8초까지. 지터가 없으면
끊긴 클라들이 같은 순간에 몰려 돌아와 복구 중인 서버를 다시 넘어뜨린다.
테스트는 실시간을 기다리지 않고 얼마를 기다리려 했는지만 기록한다.

백오프는 연결에 성공한 순간이 아니라 **프레임을 한 번 받은 뒤** 초기화한다.
connect() 가 돌아왔다는 것은 소켓이 열렸다는 뜻일 뿐이고, 서버가 열자마자
끊는 상태(기동 중·과부하)에서 초기화하면 영원히 500ms 마다 두드려 복구를
방해한다.

모양이 깨졌거나 모르는 타입인 프레임은 버린다. 한 통에 스트림이 죽으면 그
뒤로는 아무것도 못 받는다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 7: 배틀 화면 — Flame 씬 · 합성 · 햅틱

**Files:**
- Create: `app/lib/features/battle/battle_scene.dart`, `app/lib/features/battle/battle_page.dart`, `app/lib/ui/legacy/legacy_bitmap.dart`
- Test: `app/test/features/battle_scene_test.dart`

**Interfaces:**
- Consumes: Task 4 `MatchState`·`Viewport`·`fitContain`
- Produces:
  - `typedef ImageLoader = Future<ui.Image> Function(String url)`
  - `class BattleScene extends FlameGame { BattleScene({required ImageLoader loadImage, required void Function(int x, int y) onTapImage}); void apply(MatchState next); }`

> **필드 이름을 `load` 로 두지 않는다.** `FlameGame` 이 이미 `load` 메서드를 갖고 있어 `conflicting_field_and_method` 로 컴파일이 깨진다.
  - `class LegacyBitmap extends StatelessWidget` — `assets/legacy/<name>.png`

**씬은 소켓도 앱 상태도 모른다** (스펙 §7.1). `apply(MatchState)` 로 상태를 받고 탭을 콜백으로 올린다. 그래야 소켓 없이 `testWidgets` 로 돌릴 수 있다 — Flame 1.38 이 헤드리스 위젯 테스트에서 동작하는 것은 확인해 뒀다.

**이미지 로딩도 포트다.** 배경과 패치는 **네트워크에서** 온다(`START.imageUrl`, `REVEAL.patchUrl`). Flame 의 `Images` 는 에셋 번들용이라 맞지 않고, 테스트가 실제 HTTP 에 붙으면 느리고 흔들린다. `Future<ui.Image> Function(String)` 을 주입받는다.

**합성 방식.** `base` 는 퍼즐 원본 크기(예: 640×720)이고 **패치는 rect 와 정확히 같은 크기**다(`a0001` 의 130×130 rect → `patch_01.webp` 130×130 — 확인함). `REVEAL` 의 `(x, y)` 에 그대로 얹는다.

**클라이언트는 히트를 판정하지 않는다.** 탭하면 좌표만 올린다. 패치는 **`REVEAL` 이 와야** 그려진다. 낙관적으로 먼저 그리면 미스일 때 되돌려야 하고, 그 순간 화면이 서버와 어긋난다.

**햅틱** (스펙 §7.3): 정답에 `HapticFeedback.mediumImpact()`, 오답에 `heavyImpact()`, 스킬 피격에 `vibrate()`. 판정이 서버에서 오므로 **`REVEAL`·`LOCK`·`BLIND` 를 받은 시점**에 울린다.

- [ ] **Step 1: 실패하는 테스트 작성**

`app/test/features/battle_scene_test.dart`:

```dart
import 'dart:ui' as ui;
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/match_state.dart';
import 'package:findit/features/battle/battle_scene.dart';

Future<ui.Image> _blank() {
  final recorder = ui.PictureRecorder();
  Canvas(recorder).drawRect(const Rect.fromLTWH(0, 0, 1, 1), Paint());
  return recorder.endRecording().toImage(1, 1);
}

MatchState _playing({List<FoundRect> found = const []}) => MatchState(
      phase: MatchPhase.playing,
      matchId: 'm1',
      imageUrl: '/c/m1/base',
      imageSize: const Size(640, 720),
      targetCount: 5,
      durationMs: 40000,
      found: found,
    );

FoundRect _rect(int i, {bool mine = true}) => FoundRect(
      index: i,
      rect: Rect.fromLTWH(10.0 * i, 20, 130, 130),
      patchUrl: '/c/m1/patch/$i',
      mine: mine,
    );

void main() {
  late List<String> loaded;
  late List<List<int>> taps;

  BattleScene build() {
    loaded = [];
    taps = [];
    return BattleScene(
      loadImage: (url) async { loaded.add(url); return _blank(); },
      onTapImage: (x, y) => taps.add([x, y]),
    );
  }

  testWidgets('START 의 이미지를 한 번만 받아 온다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    scene.apply(_playing());
    await tester.pump();
    scene.apply(_playing());   // 같은 상태가 또 와도
    await tester.pump();

    // 프레임마다 다시 받으면 네트워크가 터지고 화면이 깜빡인다.
    expect(loaded.where((u) => u == '/c/m1/base'), hasLength(1));
  });

  testWidgets('REVEAL 이 온 rect 만 패치를 받는다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    scene.apply(_playing());
    await tester.pump();
    expect(loaded.where((u) => u.contains('patch')), isEmpty);

    scene.apply(_playing(found: [_rect(1)]));
    await tester.pump();
    expect(loaded.where((u) => u.contains('patch')), ['/c/m1/patch/1']);
  });

  testWidgets('이미 그린 패치를 다시 받지 않는다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    scene.apply(_playing(found: [_rect(1)]));
    await tester.pump();
    scene.apply(_playing(found: [_rect(1), _rect(2)]));
    await tester.pump();

    expect(loaded.where((u) => u.contains('patch')),
        ['/c/m1/patch/1', '/c/m1/patch/2']);
  });

  // 기본 테스트 표면은 800x600 이다. **SizedBox 로 크기를 주려 하지 말 것** —
  // MaterialApp.home 은 꽉 찬 제약을 주므로 SizedBox 가 무시되고, 씬은
  // 그대로 800x600 이 된다. 기대값만 어긋나 원인을 찾기 어렵다.
  //
  // 640x720 이미지를 800x600 에 contain 하면:
  //   scale  = min(800/640, 600/720) = 600/720 = 0.8333…
  //   offset = ((800 - 640*0.8333)/2, 0) = (133.33, 0)   ← 좌우 레터박스
  // 화면 중앙 (400, 300) → 이미지 (320, 360) = 이미지 중앙.
  testWidgets('탭이 이미지 좌표로 올라간다 — 화면 좌표가 아니다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();
    scene.apply(_playing());
    await tester.pump();

    await tester.tapAt(const Offset(400, 300));
    // **그냥 pump() 로는 부족하다.** Flame 의 TapCallbacks 는 내부적으로
    // TapGestureRecognizer 를 쓰고, 그 deadline 타이머가 남으면 테스트가
    // "A Timer is still pending" 으로 실패한다.
    await tester.pump(const Duration(seconds: 1));

    // 화면 좌표를 그대로 보내면 [400, 300] 이 된다.
    // 오프셋을 빼먹으면 [480, 360] 이 된다.
    expect(taps, [[320, 360]]);
  });

  testWidgets('레터박스 바깥 탭은 올라가지 않는다', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();
    scene.apply(_playing());
    await tester.pump();

    // 좌우에 133px 씩 레터박스가 있다. x=10 은 이미지 밖이다.
    await tester.tapAt(const Offset(10, 300));
    await tester.pump(const Duration(seconds: 1));

    // 서버에 쓰레기 탭을 보내 스스로 2초 잠기게 만들 이유가 없다.
    expect(taps, isEmpty);
  });

  testWidgets('매치가 바뀌면 이전 판의 그림이 남지 않는다 — 난입', (tester) async {
    final scene = build();
    await tester.pumpWidget(MaterialApp(home: GameWidget(game: scene)));
    await tester.pump();

    scene.apply(_playing(found: [_rect(1)]));
    await tester.pump();

    // 난입: 새 matchId 와 새 imageUrl
    scene.apply(MatchState(
      phase: MatchPhase.playing, matchId: 'm2',
      imageUrl: '/c/m2/base', imageSize: const Size(640, 720),
      targetCount: 5, durationMs: 40000,
    ));
    await tester.pump();

    expect(loaded, contains('/c/m2/base'));
    // 새 매치의 패치는 새 URL 로 온다.
    scene.apply(MatchState(
      phase: MatchPhase.playing, matchId: 'm2',
      imageUrl: '/c/m2/base', imageSize: const Size(640, 720),
      targetCount: 5, durationMs: 40000,
      found: [FoundRect(
        index: 1, rect: const Rect.fromLTWH(10, 20, 130, 130),
        patchUrl: '/c/m2/patch/1', mine: true)],
    ));
    await tester.pump();

    // 이전 판의 패치를 지우지 않으면 index 1 이 이미 있다고 보고 새 것을
    // 받지 않는다 — 새 그림 위에 남의 rect 가 그대로 뜬다.
    expect(loaded.where((u) => u == '/c/m2/patch/1'), hasLength(1));
    expect(loaded.where((u) => u == '/c/m1/patch/1'), hasLength(1));
  });
}
```

- [ ] **Step 2: 실패 확인**

Run: `cd app && flutter test test/features/`
Expected: FAIL — 모듈 없음.

- [ ] **Step 3: 구현**

`app/lib/features/battle/battle_scene.dart`:

```dart
import 'dart:ui' as ui;

import 'package:flame/events.dart';
import 'package:flame/game.dart';
// services.dart 가 dart:ui 의 Offset·Size·Rect 를 함께 내보낸다.
// material.dart 를 더 넣으면 Viewport 이름이 겹치고 unnecessary_import 가 뜬다.
import 'package:flutter/services.dart';

import '../../domain/match_state.dart';
import '../../domain/viewport.dart';

/// 배경과 패치는 **네트워크에서** 온다. Flame 의 Images 는 에셋 번들용이고,
/// 테스트가 실제 HTTP 에 붙으면 느리고 흔들린다. 포트로 둔다.
typedef ImageLoader = Future<ui.Image> Function(String url);

/// 배틀 씬. **소켓도 앱 상태도 모른다** (스펙 §7.1).
/// apply(MatchState) 로 받고 탭을 콜백으로 올린다.
class BattleScene extends FlameGame with TapCallbacks {
  final ImageLoader loadImage;
  final void Function(int x, int y) onTapImage;

  // 필드 이름이 load 면 FlameGame.load 와 충돌한다.
  BattleScene({required this.loadImage, required this.onTapImage});

  MatchState _state = MatchState.initial();
  String? _loadedMatchId;
  ui.Image? _base;
  final Map<int, ui.Image> _patches = {};
  final Set<String> _inFlight = {};

  ImageViewport? get _viewport {
    final image = _state.imageSize;
    if (image == null) return null;
    // Vector2 의 확장 메서드(toSize/toOffset)는 flame/extensions.dart 에
    // 있다. 명시적으로 만들어 import 하나를 줄이고 의존을 줄인다.
    return fitContain(image: image, box: Size(size.x, size.y));
  }

  void apply(MatchState next) {
    final previous = _state;
    _state = next;

    // 매치가 바뀌면 이전 판의 그림을 전부 버린다. 남으면 새 그림 위에
    // 남의 rect 가 뜬다 (난입에서 실제로 일어난다).
    if (next.matchId != _loadedMatchId) {
      _loadedMatchId = next.matchId;
      _base = null;
      _patches.clear();
      _inFlight.clear();
    }

    final url = next.imageUrl;
    if (url != null && _base == null && _inFlight.add(url)) {
      loadImage(url).then((image) { _base = image; });
    }

    // REVEAL 이 온 것만 받는다. 클라이언트는 히트를 판정하지 않는다.
    for (final found in next.found) {
      if (_patches.containsKey(found.index)) continue;
      if (!_inFlight.add(found.patchUrl)) continue;
      loadImage(found.patchUrl).then((image) { _patches[found.index] = image; });
    }

    _haptics(previous, next);
  }

  /// 판정이 서버에서 오므로 프레임을 받은 시점에 울린다 (스펙 §7.3).
  void _haptics(MatchState before, MatchState after) {
    if (after.found.length > before.found.length &&
        after.found.last.mine) {
      HapticFeedback.mediumImpact();
    }
    if (after.lockedUntilMs > before.lockedUntilMs) {
      HapticFeedback.heavyImpact();
    }
    if (after.blindedUntilMs > before.blindedUntilMs) {
      HapticFeedback.vibrate();
    }
  }

  @override
  void onTapDown(TapDownEvent event) {
    final viewport = _viewport;
    if (viewport == null || _state.phase != MatchPhase.playing) return;

    // **이미지 좌표로 보낸다.** 서버는 퍼즐 원본 좌표계만 안다.
    // 레터박스 바깥이면 null 이고, 그때는 보내지 않는다 — 서버에 쓰레기
    // 탭을 보내 스스로 2초 잠기게 만들 이유가 없다.
    final inImage = viewport.toImage(
        Offset(event.localPosition.x, event.localPosition.y));
    if (inImage == null) return;

    onTapImage(inImage.dx.round(), inImage.dy.round());
  }

  @override
  void render(ui.Canvas canvas) {
    super.render(canvas);
    final viewport = _viewport;
    final base = _base;
    if (viewport == null || base == null) return;

    final dst = viewport.toScreen(
        ui.Rect.fromLTWH(0, 0, _state.imageSize!.width, _state.imageSize!.height));
    canvas.drawImageRect(
      base,
      ui.Rect.fromLTWH(0, 0, base.width.toDouble(), base.height.toDouble()),
      dst,
      ui.Paint(),
    );

    for (final found in _state.found) {
      final patch = _patches[found.index];
      if (patch == null) continue;
      canvas.drawImageRect(
        patch,
        ui.Rect.fromLTWH(0, 0, patch.width.toDouble(), patch.height.toDouble()),
        viewport.toScreen(found.rect),
        ui.Paint(),
      );
    }
  }
}
```

`app/lib/ui/legacy/legacy_bitmap.dart` — 배틀·결과 화면의 비트맵 위젯(스펙 §7.2):

```dart
import 'package:flutter/widgets.dart';

/// 레거시 비트맵 한 장. `assets/legacy/<name>.png` 를 그린다.
///
/// 이 위젯은 ui/legacy 에만 있다. Material 3 화면(로그인·로비)에서 쓰지 않는다 —
/// 두 디자인 언어가 한 파일에서 섞이면 결국 둘 다 아닌 것이 된다 (스펙 §7.2).
class LegacyBitmap extends StatelessWidget {
  final String name;
  final double? width;
  final double? height;

  const LegacyBitmap(this.name, {super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) => Image.asset(
        'assets/legacy/$name.png',
        width: width,
        height: height,
        // 레거시 에셋은 hdpi 시대 해상도다 (스펙 §5.2). 확대할 때 뭉개지는
        // 것보다 각진 편이 원작에 가깝다.
        filterQuality: FilterQuality.none,
      );
}
```

`app/lib/features/battle/battle_page.dart` — 씬을 감싸고 남은 시간·찾은 개수를 얹는다:

```dart
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../../domain/match_state.dart';
import 'battle_scene.dart';

class BattlePage extends StatefulWidget {
  final MatchState state;
  final ImageLoader loadImage;
  final void Function(int x, int y) onTap;

  const BattlePage({
    super.key,
    required this.state,
    required this.loadImage,
    required this.onTap,
  });

  @override
  State<BattlePage> createState() => _BattlePageState();
}

class _BattlePageState extends State<BattlePage> {
  late final BattleScene _scene =
      BattleScene(loadImage: widget.loadImage, onTapImage: widget.onTap);

  @override
  void initState() {
    super.initState();
    _scene.apply(widget.state);
  }

  @override
  void didUpdateWidget(BattlePage old) {
    super.didUpdateWidget(old);
    _scene.apply(widget.state);
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.state;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(child: GameWidget(game: _scene)),
          Positioned(
            top: 48,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // 찾은 개수는 서버가 보낸 것만 센다.
                Text('${s.myFound} / ${s.targetCount}',
                    style: const TextStyle(color: Colors.white, fontSize: 20)),
                Text('상대 ${s.opponentFound}',
                    style: const TextStyle(color: Colors.white70, fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
```

> **남은 시간을 여기서 세지 않는다.** `START.durationMs` 로 진행 바를 그릴 수는 있지만, **종료는 서버의 `END` 가 결정한다.** 클라 시계로 끝내면 서버와 어긋나 "내 화면에서는 끝났는데 결과가 안 온다" 가 된다. 시각 표시는 Plan 6 이 붙인다.

- [ ] **Step 4: 통과 확인**

Run: `cd app && flutter test && flutter analyze`
Expected: PASS — 이번 6 (누적 54).

**변이로 확인할 것:**

| 변이 | 깨지는 테스트 |
|---|---|
| `_inFlight` 검사 제거 | `START 의 이미지를 한 번만 받아 온다` |
| `onTapDown` 이 `event.localPosition` 을 그대로 전달 | `탭이 이미지 좌표로 올라간다` |
| `toImage` 의 `null` 검사 제거 후 강제 변환 | `레터박스 바깥 탭은 올라가지 않는다` |
| `matchId` 변화 시 `_patches.clear()` 제거 | `매치가 바뀌면 이전 판의 그림이 남지 않는다` |
| `next.found` 대신 `targetCount` 만큼 미리 받기 | `REVEAL 이 온 rect 만 패치를 받는다` |

- [ ] **Step 5: 커밋**

```bash
git add app/lib/features/battle app/lib/ui/legacy app/test/features
git commit -m "$(cat <<'EOF'
feat(app): 배틀 씬 — 합성 · 좌표 · 햅틱

씬은 소켓도 앱 상태도 모른다 (스펙 §7.1). apply(MatchState) 로 받고 탭을
콜백으로 올린다. 그래야 소켓 없이 testWidgets 로 돌고, Flame 1.38 이 헤드리스
위젯 테스트에서 동작하는 것은 확인해 뒀다.

이미지 로딩도 포트다. 배경과 패치는 네트워크에서 오는데 Flame 의 Images 는
에셋 번들용이고, 테스트가 실제 HTTP 에 붙으면 느리고 흔들린다.

클라이언트는 히트를 판정하지 않는다. 탭하면 좌표만 올리고 패치는 REVEAL 이
와야 그린다. 낙관적으로 먼저 그리면 미스일 때 되돌려야 하고 그 순간 화면이
서버와 어긋난다.

탭을 이미지 좌표로 변환해 올린다. 화면 좌표를 그대로 보내면 전부 빗나가고,
빗나감은 2초 잠금이라 플레이 자체가 불가능해진다. 레터박스 바깥은 보내지
않는다.

매치가 바뀌면 이전 판의 그림을 전부 버린다. 남으면 새 그림 위에 남의 rect
가 뜬다 — 난입에서 실제로 일어난다.

햅틱은 REVEAL · LOCK · BLIND 를 받은 시점에 울린다 (스펙 §7.3). 판정이
서버에서 오기 때문이다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

### Task 8: 결과 화면 · 진입 배선 · 실서버 확인

**Files:**
- Create: `app/lib/features/result/result_page.dart`, `app/lib/net/network_image_loader.dart`, `app/lib/main.dart`
- Modify: `app/lib/app.dart`
- Test: `app/test/features/flow_test.dart`

**Interfaces:**
- Consumes: Task 1~7 전부
- Produces: 게스트 자동 로그인 → 큐 → 배틀 → 결과로 이어지는 화면 흐름

**진입을 최소로 둔다.** 로그인·가입·로비의 Material 3 화면은 Plan 6 이다. 여기서는 앱이 뜨면 게스트 토큰을 받아 곧장 큐에 들어간다. **그래야 계약이 맞물리는지를 화면 작업에 가리지 않고 확인할 수 있다.**

**결과 화면은 레거시 룩이다** (스펙 §7.2). `game_result_win`/`game_result_lose` 비트맵과 `game_stat_num_*` 숫자를 쓴다.

**`END` 의 값을 그대로 보여준다.** 클라가 점수를 다시 계산하지 않는다 — 서버가 이미 계산했고, 다시 세면 어긋난다(Plan 4 정산에서 같은 이유로 END 페이로드를 권위값으로 삼았다).

- [ ] **Step 1: 실패하는 테스트 작성**

`app/test/features/flow_test.dart`:

```dart
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/app.dart';
import 'package:findit/net/socket.dart';

class ScriptedSocket implements Socket {
  final _in = StreamController<String>.broadcast();
  final List<String> sent = [];
  @override
  Stream<String> get incoming => _in.stream;
  @override
  void send(String raw) => sent.add(raw);
  @override
  Future<void> close() async => _in.close();
  void push(String t, Map<String, dynamic> d) =>
      _in.add(jsonEncode({'t': t, 'seq': 1, 'd': d}));
  List<String> get types =>
      [for (final s in sent) (jsonDecode(s) as Map<String, dynamic>)['t'] as String];
}

void main() {
  testWidgets('앱이 뜨면 게스트 토큰을 받아 곧장 큐에 들어간다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();

    expect(socket.types, ['AUTH', 'QUEUE_JOIN']);
  });

  testWidgets('MATCH_FOUND 를 받으면 READY 를 보낸다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();

    socket.push('MATCH_FOUND', {
      'matchId': 'm1', 'opponentName': 'AI', 'opponentLevel': 1, 'isAi': true,
    });
    await tester.pump();
    await tester.pump();

    expect(socket.types.last, 'READY');
  });

  testWidgets('END 를 받으면 결과 화면이 서버 값을 그대로 보여준다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();

    socket.push('END', {
      'result': 'win', 'myFound': 3, 'opponentFound': 2,
      'score': 700, 'coinDelta': 5, 'expDelta': 30,
    });
    await tester.pump();
    await tester.pump();

    // 클라가 다시 계산하면 여기가 어긋난다.
    expect(find.text('700'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
  });

  testWidgets('결과에서 다시 하기를 누르면 큐에 다시 들어간다', (tester) async {
    final socket = ScriptedSocket();
    await tester.pumpWidget(FindItApp(
      guestToken: () async => 'g-1',
      connect: (_) async => socket,
      loadImage: (_) async => throw UnimplementedError(),
    ));
    await tester.pump();
    await tester.pump();
    socket.push('END', {
      'result': 'lose', 'myFound': 0, 'opponentFound': 5,
      'score': 0, 'coinDelta': 0, 'expDelta': 0,
    });
    await tester.pump();
    await tester.pump();

    await tester.tap(find.byKey(const Key('again')));
    await tester.pump();

    expect(socket.types.last, 'QUEUE_JOIN');
  });
}
```

- [ ] **Step 2: 실패 확인**

Run: `cd app && flutter test test/features/flow_test.dart`
Expected: FAIL — `FindItApp` 이 인자를 받지 않는다.

- [ ] **Step 3: 구현**

`app/lib/net/network_image_loader.dart`:

```dart
import 'dart:ui' as ui;

import 'package:http/http.dart' as http;

import '../core/config.dart';
import '../features/battle/battle_scene.dart';

/// 서명 URL 은 상대 경로로 온다 (`/content/<matchId>/base/0?exp=&sig=`).
/// 쿼리스트링을 잃으면 서명이 깨져 403 이 된다 — 문자열 이어붙이기로
/// 충분하고, Uri 조립으로 다시 인코딩하면 오히려 망가진다.
ImageLoader networkImageLoader({http.Client? client}) {
  final http.Client httpClient = client ?? http.Client();
  return (String url) async {
    final res = await httpClient.get(Uri.parse('${AppConfig.apiBase}$url'));
    if (res.statusCode != 200) {
      throw StateError('이미지 실패 (${res.statusCode}): $url');
    }
    final codec = await ui.instantiateImageCodec(res.bodyBytes);
    return (await codec.getNextFrame()).image;
  };
}
```

`app/lib/app.dart` — 흐름을 배선한다:

```dart
import 'dart:async';

import 'package:flutter/material.dart';

import 'core/config.dart';
import 'domain/match_state.dart';
import 'features/battle/battle_page.dart';
import 'features/battle/battle_scene.dart';
import 'features/result/result_page.dart';
import 'net/socket.dart';
import 'net/ws_client.dart';

class FindItApp extends StatefulWidget {
  final Future<String> Function() guestToken;
  final SocketFactory connect;
  final ImageLoader loadImage;

  const FindItApp({
    super.key,
    required this.guestToken,
    required this.connect,
    required this.loadImage,
  });

  @override
  State<FindItApp> createState() => _FindItAppState();
}

class _FindItAppState extends State<FindItApp> {
  WsClient? _ws;
  MatchState _state = MatchState.initial();

  @override
  void initState() {
    super.initState();
    unawaited(_start());
  }

  Future<void> _start() async {
    final token = await widget.guestToken();
    final ws = WsClient(
      url: Uri.parse('${AppConfig.wsBase}/'),
      token: token,
      connect: widget.connect,
    );
    _ws = ws;
    ws.states.listen(_onState);
    await ws.connect();
    // Plan 6 이 로비를 넣기 전까지는 곧장 큐로 간다.
    ws.joinQueue();
  }

  void _onState(MatchState next) {
    final before = _state;
    setState(() => _state = next);

    // 매칭되면 바로 준비한다. 대기실 화면은 Plan 6 이다.
    if (before.phase != MatchPhase.matched &&
        next.phase == MatchPhase.matched) {
      _ws?.ready();
    }
  }

  @override
  void dispose() {
    unawaited(_ws?.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'FindIt',
        theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
        home: switch (_state.phase) {
          MatchPhase.ended => ResultPage(
              result: _state.result!,
              onAgain: () => _ws?.joinQueue(),
            ),
          MatchPhase.playing || MatchPhase.countdown => BattlePage(
              state: _state,
              loadImage: widget.loadImage,
              onTap: (x, y) => _ws?.tap(x, y),
            ),
          _ => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
        },
      );
}
```

`app/lib/features/result/result_page.dart` — 레거시 룩:

```dart
import 'package:flutter/material.dart';

import '../../domain/match_state.dart';
import '../../ui/legacy/legacy_bitmap.dart';

class ResultPage extends StatelessWidget {
  final MatchResult result;
  final VoidCallback onAgain;

  const ResultPage({super.key, required this.result, required this.onAgain});

  @override
  Widget build(BuildContext context) {
    final won = result.result == 'win';
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LegacyBitmap(won ? 'game_result_win' : 'game_result_lose'),
            const SizedBox(height: 24),
            // 서버가 계산한 값을 그대로 보여준다. 다시 세면 어긋난다.
            Text('${result.score}',
                style: const TextStyle(color: Colors.white, fontSize: 32)),
            Text('${result.coinDelta}',
                style: const TextStyle(color: Colors.amber, fontSize: 24)),
            const SizedBox(height: 32),
            TextButton(
              key: const Key('again'),
              onPressed: onAgain,
              child: const Text('다시 하기'),
            ),
          ],
        ),
      ),
    );
  }
}
```

`app/lib/main.dart` — 실제 진입:

```dart
import 'package:flutter/material.dart';

import 'app.dart';
import 'net/network_image_loader.dart';
import 'net/rest_client.dart';
import 'net/socket.dart';

void main() {
  final rest = createRestClient();
  runApp(FindItApp(
    guestToken: rest.guestToken,
    connect: connectWebSocket,
    loadImage: networkImageLoader(),
  ));
}
```

- [ ] **Step 4: 통과 확인**

```bash
cd app && flutter test && flutter analyze
```
Expected: PASS — 이번 4, **총 58 tests**.

**실서버로 손으로 확인한다.** 이 Task 가 존재하는 이유가 그것이다 — Plan 4 에서 서버 테스트 434개가 전부 통과하는데도 서명 URL 이 운영에서 403 이었다.

```bash
# 터미널 1
npm run compose:up

# 터미널 2 — 시뮬레이터/실기기 주소로 바꿔 넣는다
cd app && flutter run \
  --dart-define=API_BASE=http://localhost:8080 \
  --dart-define=WS_BASE=ws://localhost:8080
```

확인할 것:
1. 앱이 뜨면 잠시 로딩 → **5초 뒤 AI 와 매칭**되어 배경 이미지가 뜬다
2. **틀린 부분을 누르면 그 자리에 패치가 그려진다** — 눌렀는데 아무 일도 없으면 좌표 변환이 틀린 것이다
3. 빈 곳을 누르면 **2초간 잠긴다**
4. 40초가 지나거나 5개를 다 찾으면 **결과 화면**이 뜨고 점수·코인이 보인다
5. `다시 하기` 로 한 판 더

- [ ] **Step 5: 커밋**

```bash
git add app/lib app/test
git commit -m "$(cat <<'EOF'
feat(app): 결과 화면 + 진입 배선

앱이 뜨면 게스트 토큰을 받아 곧장 큐에 들어가고, 매칭되면 바로 READY 를
보낸다. 로그인·로비·대기실의 Material 3 화면은 Plan 6 이다. 진입을 최소로
둬야 계약이 맞물리는지를 화면 작업에 가리지 않고 확인할 수 있다.

결과 화면은 END 의 값을 그대로 보여준다. 클라가 점수를 다시 계산하지
않는다 — 서버가 이미 계산했고 다시 세면 어긋난다. Plan 4 정산에서 같은
이유로 END 페이로드를 권위값으로 삼았다.

이미지 로더는 서명 URL 을 문자열로 이어붙인다. Uri 로 다시 조립하면
쿼리스트링이 재인코딩돼 서명이 깨지고 403 이 된다.

화면 전환을 MatchState.phase 하나로 결정한다. 난입으로 MATCH_FOUND 가
진행 중에 와도 상태 기계가 matched 로 되돌리므로 화면이 따라온다.

Co-Authored-By: Claude Opus 5 <noreply@anthropic.com>
EOF
)"
```

---

## 완료 기준

1. `flutter test` **58개** 통과, `flutter analyze` 경고 0
2. 서버 테스트가 **436개**로 늘고 skip 0 — Task 5 가 `REVEAL` 을 둘로 나눴다
3. CI 에 Flutter 잡이 있고 `npm run content:all` → `pub get` → 드리프트 검사 → `analyze` → `test` 순서로 돈다
4. **탭이 이미지 좌표로 나간다** — 스케일과 레터박스 오프셋을 둘 다 되돌린다
5. 레터박스 바깥 탭은 서버로 가지 않는다
6. **`REVEAL` 이 온 rect 만** 패치를 받는다 — 클라이언트가 히트를 판정하지 않는다
7. 같은 이미지를 두 번 받지 않는다
8. 매치가 바뀌면 이전 판의 그림이 남지 않는다 — 난입
9. `MATCH_FOUND` 가 어느 단계에서 와도 새 매치로 간다
10. 재연결하면 상태가 `idle` 로 돌아간다 — 서버는 그 매치를 이미 끝냈다
11. 백오프가 두 배씩 늘고 상한에서 멈추며 지터가 섞인다
12. 모양이 깨진 프레임에 스트림이 죽지 않는다
13. 매니페스트가 두 번째 호출에서 네트워크를 때리지 않는다
14. `PuzzleMeta` 에 좌표를 담을 자리가 없다
15. 결과 화면이 `END` 의 값을 그대로 보여준다
16. **실서버에 붙여 한 판을 끝까지 친다** — 이미지가 뜨고, 누르면 패치가 그려지고, 결과가 나온다

---

## 주의해서 볼 곳 — 저자가 가장 확신이 낮은 지점

**확인한 것 — 이 계획서의 Dart 코드를 실제로 돌렸다.** 22개 파일(약 1500줄)을 임시 Flutter 프로젝트에 풀어 `flutter analyze` 무경고, `flutter test` **58개 전부 통과**를 3회 연속 확인했다. 그 과정에서 계획서의 결함 일곱 개를 잡아 고쳤다:

| 잡은 것 | 어떻게 드러났나 |
|---|---|
| `BattleScene.load` 필드가 `FlameGame.load` 와 충돌 | `conflicting_field_and_method` — 컴파일 불가 |
| `Viewport` 가 Flutter 위젯과 이름 충돌 | `ambiguous_import` — 컴파일 불가 |
| 탭 테스트가 `SizedBox` 로 씬 크기를 주려 함 | `MaterialApp.home` 의 꽉 찬 제약에 무시돼 기대값이 어긋남 |
| 난입 테스트가 새 매치에 옛 패치 URL 사용 | 패치를 두 번 받는 것으로 잘못 보임 |
| 탭 뒤 `pump()` 만으로는 제스처 타이머가 남음 | `A Timer is still pending` |
| 백오프 루프가 마이크로태스크 두 번으로 부족 | 재연결이 한 번만 일어남 |
| **`connect()` 성공 시 백오프를 초기화** | 서버가 열자마자 끊으면 영원히 500ms 마다 재시도 |

마지막 것은 테스트 문제가 아니라 **설계 결함**이었다. 연결이 열린 것과 쓸 수 있는 것은 다르다 — 프레임을 한 번 받은 뒤에 초기화하도록 고쳤다.

그 밖에 확인한 것: Flutter 3.44.0 / Dart 3.12.0 설치, `flutter test`·`analyze` 헤드리스 동작, Flame 1.38.2 를 `testWidgets` 에서 띄워 `onLoad` 확인, 여섯 패키지의 SDK 제약, 서버의 `REVEAL.by = slot`(`reducer.ts:239`)과 그것을 단언하는 테스트가 한 곳뿐임, base/patch 이미지 크기가 rect 와 일치함.

**1. Flame 의 렌더 좌표계 (가장 위험).** `BattleScene.render` 가 `canvas` 에 직접 그린다. Flame 의 카메라 기본값이 캔버스를 변환하고 있으면 `toScreen` 이 계산한 좌표와 어긋난다. **탭 경로는 실제로 돌려 확인했다** — `TapCallbacks.localPosition` 이 씬 좌표와 같고, 800×600 표면에서 640×720 이미지의 중앙 탭이 이미지 중앙으로 변환된다. 하지만 테스트는 **그려지는 위치를 잡지 못한다.** 탭이 맞는데 그림이 밀려 있는 상태가 가능하다 — 화면을 봐야 안다. Task 8 의 손 확인 2번이 이것이다.

**2. 테스트 표면 크기에 기댄다.** 위젯 테스트의 기본 표면은 800×600 이고, 좌표 기대값이 그 수치에서 나온다. `SizedBox` 로 크기를 주려 하면 `MaterialApp.home` 의 꽉 찬 제약에 무시되어 조용히 어긋난다 — 실제로 한 번 당했다. 표면 크기를 바꾸려면 기대값을 다시 계산해야 한다.

**3. 서명 URL 의 상대 경로 조립.** `'${AppConfig.apiBase}$url'` 로 이어붙인다. `Uri.parse` 가 쿼리를 재인코딩해 `sig` 를 망가뜨리지 않는지 실제로 확인해야 한다. Plan 4 에서 서명 URL 이 403 이던 결함을 겪었으므로 같은 자리를 다시 본다.

**4. 이미지 디코딩 비용.** 640×720 WebP 를 매 매치마다 받아 디코딩한다. 패치까지 5장 더. 저사양 기기에서 프레임이 끊길 수 있고, P0 범위에서는 측정하지 않았다.

**5. `MATCH_FOUND` 덮어쓰기는 여전히 내가 정한 계약이다.** 상태 기계가 그 규칙을 갖고 테스트로 고정했지만, 사용자에게는 **아무 설명 없이 판이 바뀐다.** 화면에 "상대가 나타났습니다" 같은 표시를 붙일 자리가 필요할 수 있고, 그건 Plan 6 의 판단이다. 대안(스펙 §8 에 `ABORT` 추가)도 그때 다시 볼 값이 있다.

**6. 재접속이 없다는 사실이 클라이언트에서 더 아프다.** 지하철에서 한 칸 지나가면 판이 끝나고 로비로 돌아온다. 서버가 그렇게 설계됐으므로(Plan 4) 클라이언트가 할 수 있는 것은 없지만, 사용자에게는 "게임이 자꾸 튕긴다" 로 보인다. P1 에서 서버와 함께 다뤄야 한다.
