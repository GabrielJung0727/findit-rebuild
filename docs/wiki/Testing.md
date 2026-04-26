# Testing

106 passing tests + 테스트 추가 가이드 + 패턴.

## 테스트 분포

```
test/
├── api/                            # 32 tests (REST/WS/IAP/Push wrappers)
│   ├── _helper.dart                # 공통 fixture (TestApi)
│   ├── member_api_test.dart        # 7
│   ├── shop_api_test.dart          # 6
│   ├── catalog_api_test.dart       # 2
│   ├── content_api_test.dart       # 3
│   ├── game_api_test.dart          # 5
│   ├── analytics_api_test.dart     # 4
│   ├── analytics_helper_test.dart  # 4
│   ├── iap_api_test.dart           # 2
│   ├── push_api_test.dart          # 1
│   ├── ws_client_test.dart         # 4
│   ├── iap_service_test.dart       # 3
│   └── push_service_test.dart      # 2
│
├── state/                          # 18 tests
│   ├── auth_test.dart              # 6 (login/guest/logout/autoLogin)
│   ├── auth_deltas_test.dart       # 6 (applyXxx 액션)
│   └── lobby_test.dart             # 6 (WS 시나리오)
│
├── game/                           # 30 tests
│   ├── image_set_test.dart         # 9 (parseImageCutJson + ImageCut)
│   ├── game_controller_test.dart   # 5 (state 전이)
│   └── item_catalog_test.dart      # 16 (Items.java parity)
│
├── util/                           # 17 tests
│   ├── validation_test.dart        # 12 (이메일/비번/닉/캐릭터 경계)
│   └── constants_test.dart         # 5 (combo/score/AI 공식)
│
└── widget_test.dart                # 1 (FinditApp builds)
```

전체: **102 unit + 4 helper = 106 tests**, ~10초 실행.

---

## 실행

### 전체
```bash
cd client_flutter
flutter test
# 00:10 +106: All tests passed!
```

### 디렉터리별
```bash
flutter test test/api/        # API wrappers
flutter test test/state/      # 상태 관리
flutter test test/game/       # 게임 룰
flutter test test/util/       # 유틸
```

### 단일 파일
```bash
flutter test test/api/member_api_test.dart
```

### 특정 테스트
```bash
flutter test --plain-name "login persists token"
flutter test --plain-name "WsFrame.parse"
```

### 리포터
- 기본: dot/축약
- 상세: `--reporter expanded` (CI 권장)
- TAP: `--reporter json` (외부 도구 통합)

### Coverage
```bash
flutter test --coverage
# coverage/lcov.info 생성
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

---

## 테스트 인프라

### `_helper.dart` — 공통 Fixture

`test/api/_helper.dart`:
```dart
class TestApi {
  final ApiClient client;
  final DioAdapter adapter;
  
  factory TestApi.create() {
    final dio = Dio(BaseOptions(baseUrl: Property.serverDomain));
    final adapter = DioAdapter(
      dio: dio,
      matcher: const UrlRequestMatcher(matchMethod: true),  // ← URL+method 만 매칭
    );
    final client = ApiClient(dio: dio, storage: _InMemoryStorage());
    return TestApi._(client, adapter);
  }
  
  String url(String path) => path;  // 상대 경로 그대로
}

class _InMemoryStorage extends FlutterSecureStorage {
  // Keychain/Keystore 없이 메모리 Map 으로 토큰 저장
}
```

핵심 패턴:
- `http_mock_adapter` — Dio HTTP 가로챔
- `UrlRequestMatcher` — URL + method 만 매칭 (data/headers 검증 X)
- `_InMemoryStorage` — 실 secure storage 없이 토큰 테스트

---

## 패턴별 예시

### 1. REST API Wrapper

`test/api/member_api_test.dart`:
```dart
void main() {
  group('MemberApi', () {
    late TestApi t;
    late MemberApi api;
    
    setUp(() {
      t = TestApi.create();
      api = MemberApi(t.client);
    });
    
    test('login persists token + returns user/item/skill', () async {
      t.adapter.onPost(
        t.url('app/member/login.json'),
        (s) => s.reply(200, <String, dynamic>{
          'result': '000',
          'token': 'abc123',
          'user': {'userId': 'u@test.com', 'level': 5},
          'item': [],
          'skill': [],
        }),
      );
      
      final body = await api.login(userId: 'u@test.com', userPass: 'pw');
      final user = body['user'] as Map<String, dynamic>;
      expect(user['level'], 5);
      expect(await t.client.readSessionToken(), 'abc123');
    });
    
    test('login throws ApiResultException on failure', () async {
      t.adapter.onPost(
        t.url('app/member/login.json'),
        (s) => s.reply(200, <String, dynamic>{'result': '102'}),
      );
      
      await expectLater(
        api.login(userId: 'u', userPass: 'wrong'),
        throwsA(isA<ApiResultException>()
          .having((e) => e.code, 'code', '102')),
      );
    });
  });
}
```

### 2. Riverpod StateNotifier

`test/state/auth_test.dart`:
```dart
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  
  setUp(() {
    SharedPreferences.setMockInitialValues({});  // ← shared_preferences mock
  });
  
  ProviderContainer makeContainer(TestApi t) {
    return ProviderContainer(
      overrides: [
        apiClientProvider.overrideWithValue(t.client),
        memberApiProvider.overrideWith((ref) => MemberApi(t.client)),
      ],
    );
  }
  
  test('login sets user + persists autoLogin', () async {
    final t = TestApi.create();
    t.adapter.onPost('app/member/login.json', (s) => s.reply(200, {...}));
    
    final container = makeContainer(t);
    addTearDown(container.dispose);
    
    await container.read(authControllerProvider.notifier).login(
      userId: 'u@test.com', userPass: 'pw1234', autoLogin: true,
    );
    
    final state = container.read(authControllerProvider);
    expect(state.isLoggedIn, true);
    expect(state.user?.userNick, 'alice');
    
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getBool('auto_login'), true);
  });
}
```

`Riverpod overrides` + `addTearDown` 패턴.

### 3. WebSocket Roundtrip

`test/api/ws_client_test.dart`:
```dart
test('connects, echoes frames, dispatches to messages stream', () async {
  // 실 dart:io HttpServer + WebSocketTransformer 로 echo 서버 띄움
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
  server.transform(WebSocketTransformer()).listen((ws) {
    ws.listen((msg) {
      if (msg.startsWith('|100|')) {
        ws.add('|100|000|2|alice,0;bob,1|2|alice,0;bob,1');
      }
    });
  });
  addTearDown(() => server.close(force: true));
  
  final client = WsClient(url: Uri.parse('ws://127.0.0.1:${server.port}/'));
  addTearDown(client.dispose);
  
  final received = <WsFrame>[];
  client.messages.listen(received.add);
  
  await client.connect();
  client.send('100', ['alice@findit.com']);
  
  await Future.delayed(const Duration(milliseconds: 200));
  expect(received, isNotEmpty);
  expect(received.first.code, '100');
  expect(received.first.ok, true);
});
```

핵심: 가짜 서버 띄우고 실 WS 통신 검증.

### 4. Lobby state — fake echo server

`test/state/lobby_test.dart`:
```dart
class _FakeWsServer {
  late HttpServer _http;
  WebSocket? _peer;
  int _roomCounter = 0;
  
  Future<int> start() async {
    _http = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    _http.transform(WebSocketTransformer()).listen((ws) {
      _peer = ws;
      ws.listen((raw) {
        final code = raw.split('|')[1];
        switch (code) {
          case '100':
            ws.add('|100|000|2|alice,0;bob,1|2|alice,0;bob,1');
            break;
          case '101':
            _roomCounter++;
            ws.add('|101|000|@room_$_roomCounter');
            break;
          // ...
        }
      });
    });
    return _http.port;
  }
  
  void pushInvite(String fromUser, String room) {
    _peer?.add('|107|000|$fromUser|$room');
  }
}

test('초대 받으면 invitedBy/Room 업데이트', () async {
  final fake = _FakeWsServer();
  final port = await fake.start();
  
  final container = ProviderContainer(overrides: [
    wsClientProvider.overrideWith((ref) {
      final c = WsClient(url: Uri.parse('ws://127.0.0.1:$port/'));
      ref.onDispose(c.dispose);
      return c;
    }),
    authControllerProvider.overrideWith((_) => _StubAuth()..setUser('u@test.com')),
  ]);
  
  await container.read(lobbyControllerProvider.notifier).connect();
  fake.pushInvite('alice', '@room_42');
  
  await waitFor((s) => s.waiting.invitedBy == 'alice');
  expect(container.read(lobbyControllerProvider).waiting.invitedRoom, '@room_42');
});
```

비동기 + race condition 처리 — `waitFor(condition)` 헬퍼로 polling.

### 5. 게임 룰

`test/util/constants_test.dart`:
```dart
group('GameConstants — combo formulas', () {
  test('comboScore — 1/2/3/4+ = 100/200/400/700', () {
    expect(GameConstants.comboScore(0), 0);
    expect(GameConstants.comboScore(1), 100);
    expect(GameConstants.comboScore(2), 200);
    expect(GameConstants.comboScore(3), 400);
    expect(GameConstants.comboScore(4), 700);
    expect(GameConstants.comboScore(10), 700);  // 4+ cap
  });
});
```

`expect()` + 경계값 (0, 1, 4, 10) 다 테스트.

### 6. GameController state 전이

`test/game/game_controller_test.dart`:
```dart
test('clearing all 7 → result.won + reason=selfCleared', () {
  final container = _makeContainer(args: GameStartArgs(
    image: _testImage(),  // 7 cuts at known positions
    opponentIsAi: true,
    opponentLevel: 5,
    selfHp: 110,
    opponentHp: 110,
  ));
  
  final ctrl = container.read(gameControllerProvider.notifier);
  ctrl.start();
  
  // 7 cuts 모두 정답 클릭
  ctrl.onTap(const Offset(50, 50));
  ctrl.onTap(const Offset(150, 50));
  // ... 5 more
  
  final st = container.read(gameControllerProvider);
  expect(st.ended, true);
  expect(st.result?.won, true);
  expect(st.result?.reason, GameEndReason.selfCleared);
});
```

Timer.periodic 의 영향 없이 onTap 만으로 종료 검증 — `ctrl.start()` 호출만 해도 `running=true`, tap 처리는 ticker 와 무관하므로 즉시 동작.

### 7. Validation

`test/util/validation_test.dart`:
```dart
group('validateEmail', () {
  test('null/empty → email_required', () {
    expect(validateEmail(null), 'email_required');
    expect(validateEmail(''), 'email_required');
  });
  test('plain text → email_invalid', () {
    expect(validateEmail('not-an-email'), 'email_invalid');
    expect(validateEmail('a@b'), 'email_invalid');
  });
  test('over 128 chars → email_too_long', () {
    final long = '${'a' * 120}@example.com';  // 132
    expect(validateEmail(long), 'email_too_long');
  });
  test('valid email → null', () {
    expect(validateEmail('user@findit.com'), isNull);
  });
});
```

서버 `validation.js` 와 1:1 mirror — Dart 측 클라이언트 검증이 서버와 동일 결과 보장.

### 8. Widget Test

`test/widget_test.dart`:
```dart
testWidgets('FinditApp builds', (tester) async {
  await tester.pumpWidget(const ProviderScope(child: FinditApp()));
  await tester.pumpAndSettle();
  expect(find.text('Findit'), findsOneWidget);
});
```

최소 smoke. 향후 화면별 Widget Test 추가 시:
- `find.byKey(...)` 또는 `find.text(...)`
- `tester.tap(...)` + `pumpAndSettle()`
- `expectLater(navigatorObserver.didPush, called)` (router)

---

## 새 테스트 추가하기

### 1. 위치 결정
- API wrapper → `test/api/<module>_api_test.dart`
- Riverpod 상태 → `test/state/<state>_test.dart`
- 게임 룰 → `test/game/<x>_test.dart`
- 유틸 → `test/util/<x>_test.dart`
- 화면 (Widget) → `test/screens/<x>_screen_test.dart` (새 디렉터리)

### 2. 템플릿

#### API wrapper
```dart
import 'package:findit/api/your_api.dart';
import 'package:flutter_test/flutter_test.dart';
import '_helper.dart';

void main() {
  group('YourApi', () {
    late TestApi t;
    late YourApi api;
    setUp(() {
      t = TestApi.create();
      api = YourApi(t.client);
    });
    
    test('your method does X', () async {
      t.adapter.onPost(
        t.url('app/your/endpoint.json'),
        (s) => s.reply(200, {'result': '000', 'data': 'value'}),
      );
      final body = await api.yourMethod(...);
      expect(body['data'], 'value');
    });
  });
}
```

#### State
```dart
import 'package:findit/state/your_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  
  test('your state transition', () {
    final container = ProviderContainer(overrides: [...]);
    addTearDown(container.dispose);
    
    container.read(yourControllerProvider.notifier).doAction(...);
    expect(container.read(yourControllerProvider).value, expected);
  });
}
```

#### Widget
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/screens/your_screen.dart';

void main() {
  testWidgets('YourScreen interaction', (tester) async {
    await tester.pumpWidget(MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const YourScreen(),
    ));
    
    expect(find.text('Title'), findsOneWidget);
    await tester.tap(find.byKey(const Key('btn_submit')));
    await tester.pumpAndSettle();
    expect(find.text('Result'), findsOneWidget);
  });
}
```

### 3. 실행 + 검증

```bash
flutter test test/your/new_test.dart
flutter analyze              # 0 issues 유지
```

### 4. PR

전체 테스트 통과 + analyze 0 + 새 테스트 1개 이상 추가 → CI 자동 통과.

---

## 테스트 작성 원칙

### 1. **Arrange / Act / Assert** 구조
```dart
test('description', () async {
  // Arrange — 입력 / mock 셋업
  t.adapter.onPost(..., reply);
  
  // Act — 실제 호출
  final result = await api.method();
  
  // Assert — 검증
  expect(result, expected);
});
```

### 2. **단일 책임**
한 테스트는 한 가지만 검증. 여러 시나리오 → 여러 test().

### 3. **명확한 설명**
- ❌ `test('login', ...)` 
- ✅ `test('login persists token + returns user/item/skill', ...)`

### 4. **mock 최소화**
필요한 것만 mock. `UrlRequestMatcher` 가 URL+method 만 매칭하므로 data 검증은 별도 패턴.

### 5. **격리**
`setUp` 마다 새 fixture 생성. `addTearDown` 으로 dispose. 테스트 순서 의존 X.

### 6. **빠르게**
- 실 네트워크 / 디스크 / 시간 의존 X
- 비동기 시 `await Future.delayed(50ms)` 정도까지만
- 1초 이상 걸리는 테스트는 `@Skip` 또는 별도 integration test

---

## 알려진 한계

### 1. 화면 위젯 테스트 부족
현재 Widget Test 1개 (smoke) 만. 화면별 (LoginScreen / GameScreen 등) Widget Test 추가 권장 — 향후 작업.

### 2. integration test 없음
실 디바이스 + 실 서버 통합 테스트 X. `flutter_driver` 또는 `integration_test` 패키지로 추가 가능 — 출시 전 1회 매뉴얼 QA 로 대체 중.

### 3. 서버 단위 테스트 부족
`server/test/` 가 없음. `validation.js` / `balance.js` 는 mocha/jest 추가 시 빠르게 보강 가능. 현재는 require-load smoke (CI Job 2) 만.

### 4. IAP 실 결제 테스트 X
`in_app_purchase` 는 native 의존성 + OS 다이얼로그 — 실 디바이스 sandbox 만 검증 가능. unit test 는 `IapService` 로직 (PurchaseEvent 파싱 등) 만.

### 5. Push 실 송신 테스트 X
firebase_messaging 도 마찬가지. PushService 의 PushEvent broadcast 만 unit 으로.

---

## CI 통합

### GitHub Actions
```yaml
- run: flutter test --reporter expanded
```

실패 시 PR check 실패 → merge 차단.

### Codemagic
```yaml
- name: test
  script: flutter test --reporter expanded
```

`tag v*` 워크플로는 test 실패해도 빌드 진행 (긴급 배포 시 옵션) — 권장: `set -e` 로 실패 시 fail.

### Coverage 추적
```yaml
- run: flutter test --coverage
- uses: codecov/codecov-action@v4
  with:
    file: client_flutter/coverage/lcov.info
```

Codecov 등 외부 서비스 연동 — 향후 작업.

---

## 자주 막히는 부분

### "Could not find mocked route"
http_mock_adapter URL 매칭 실패. 해결:
1. `t.url('app/member/x.json')` 가 절대 URL 인지 상대 경로인지 확인
2. `UrlRequestMatcher` 사용 시 — URL+method 만 매칭, data 무시
3. `FullHttpRequestMatcher` (기본) 사용 시 — data 도 매칭, `data: anything` 매처 사용

### "Test timeout"
- 비동기 await 누락 — 실 동작 안 끝나고 함수 종료
- WebSocket 테스트 — 실제 connect 시간 (~100ms) 고려, `await Future.delayed(200ms)` 패턴

### "MissingPluginException"
- shared_preferences / flutter_secure_storage / 기타 native 플러그인 → mock 필요
- `SharedPreferences.setMockInitialValues({})` 로 mock 설정
- secure_storage 는 `_InMemoryStorage` 같은 stub 으로 override

### "PendingTimer in active test"
Timer 가 dispose 안 됨. controller dispose 가 timer cancel 보장 + addTearDown 으로 명시.

### "RenderFlex overflowed"
Widget Test 중 화면 크기 부족. `tester.binding.setSurfaceSize(Size(1000, 2000))` 로 키우기.

### "Future not awaited"
`async` 함수의 await 누락. analyzer 가 잡아주므로 `await` 빠뜨리지 않게.

---

## 미래 추가 권장

- [ ] **Server unit tests** — `validation.js`, `balance.js`, `iap.js` 단위 테스트
- [ ] **Server integration tests** — supertest 로 실 API 호출
- [ ] **Widget tests for all screens** — 13 screens
- [ ] **integration_test 패키지** — 실 디바이스 자동 E2E
- [ ] **Visual regression** — golden file tests (`tester.matchesGoldenFile`)
- [ ] **Performance** — frame rate 측정 (`flutter drive --profile`)
- [ ] **Mutation testing** — 코드 변경 시 테스트가 잡는지

현재 106 tests 가 핵심 흐름 (auth / IAP / WS / 게임 종료) 다 커버하므로 출시 가능 수준. 위는 안정성 강화 후속.
