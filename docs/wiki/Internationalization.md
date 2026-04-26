# Internationalization (i18n)

원본 안드 `strings.xml` 145개 키를 한·영 양방향으로 보존 + Flutter ARB 파이프라인으로 자동 변환.

## 현황

| 영역 | 키 수 | 위치 |
|---|---:|---|
| 안드 영문 | 145 | `android_project/app/src/main/res/values/strings.xml` |
| 안드 한글 | 145 | `android_project/app/src/main/res/values-ko/strings.xml` |
| Flutter 영문 | 145 | `client_flutter/lib/l10n/app_en.arb` |
| Flutter 한글 | 145 | `client_flutter/lib/l10n/app_ko.arb` |

영/한 145키 셋 정확히 일치 (`diff` 무차이).

---

## 키 카테고리

| 카테고리 | 키 패턴 | 갯수 |
|---|---|---:|
| 알림 메시지 | `noticeMsg*` | 25 |
| 로그인/회원가입 | `email`/`password`/`nickname`/`autologin`/`join`/`guestAdmission` | 11 |
| 다이얼로그 | `ok`/`yes`/`no`/`cancel`/`consent`/`refuse` | 6 |
| 대기실/대전방 | `waitingroom`/`makebattleroom`/`startgame`/`wait`/`ready`/`invite`/`list` | 8 |
| 구매 알림 | `buyitem`/`lackcoin`/`alreadybuy`/`learnskill`/`lackpoint`/`alreadylearn` | 6 |
| 아이템 | `itemPen0[1-3]`/`itemRing0[1-2]`/`itemBerry*`/`itemPotion*`/`itemGold[0-3]`/`itemEtc[0-2]` | 23 |
| 스킬 | `skillName[0-7]` + `skillText[0-7]` | 16 |
| IAP | `dlgTitlePayment*`/`msgIap*`/`dlgMsgPayment*` | 14 |
| 기타 | `loading`/`back`/`point`/`item`/`num`/`date`/`rank`/`score`/`viewMore` 등 | 36 |
| **합계** | | **145** |

---

## ARB 파일 형식

ARB (Application Resource Bundle) — Google 의 Flutter 표준.

`app_en.arb`:
```json
{
  "@@locale": "en",
  "appName": "Findit",
  "@appName": {
    "description": "App display name"
  },
  "loginTitle": "[Login]",
  "@loginTitle": {
    "description": "Login screen title"
  },
  "noticeMsgNetworkfail": "Unable to connect to server. Please try again in a little while.",
  "itemPen01": "General pen\nThis is a general pen and increases your skill attack effects.",
  ...
}
```

- `@@locale` — 로케일 코드 (en / ko / ja / ...)
- 키 = camelCase
- `@<key>` — 메타데이터 (description, placeholders 등). 메인 변환기는 description 만 부착.

`app_ko.arb`:
```json
{
  "@@locale": "ko",
  "appName": "Findit",
  "loginTitle": "[로그인]",
  "noticeMsgNetworkfail": "서버와 접속할 수 없습니다. 조금 있다 다시 접속하여 주십시오.",
  "itemPen01": "일반펜\n가장 일반적인 펜으로 스킬의 공격력을 상승시켜 준다.",
  ...
}
```

---

## 안드 → ARB 변환기

### 위치
`client_flutter/tools/strings_xml_to_arb.js` (Node.js, idempotent)

### 실행
```bash
node client_flutter/tools/strings_xml_to_arb.js
```

출력:
```
en keys: 145
ko keys: 145
parity OK — 145 keys both sides
wrote client_flutter\lib\l10n\app_en.arb
wrote client_flutter\lib\l10n\app_ko.arb
done.
```

### 변환 규칙

1. **`<string name="x">val</string>` → `"x": "val"`**
2. **snake_case → camelCase**: `item_pen01` → `itemPen01`, `notice_msg_networkerror_join` → `noticeMsgNetworkerrorJoin`
3. **CRLF → LF 정규화** (Windows 편집 호환)
4. **Android escape 처리**:
   - `\n` → 실 줄바꿈 (JSON 에서는 `\n` 으로 표현)
   - `\t` → 탭
   - `\\` → `\`
   - `\'` → `'`
   - `\"` → `"`
5. **양 끝 큰따옴표 제거** (안드 strings.xml 의 공백 보존 표기): `"  더 보기"` → `  더 보기`
6. **XML entity 디코드**: `&lt;` `&gt;` `&quot;` `&apos;` `&amp;`

### 안전장치

- 145키 양방향 parity 검증 — only-en 또는 only-ko 가 1개라도 있으면 exit 1
- camelCase 변환 후 충돌 검사 — 다른 snake_case 가 같은 camelCase 로 변환되면 exit 1
- 멱등 — 같은 입력 → 같은 출력 (재실행해도 결과 동일)

---

## Flutter 코드 생성

### 설정

`client_flutter/l10n.yaml`:
```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
output-class: AppLocalizations
synthetic-package: false
output-dir: lib/l10n
nullable-getter: false
```

`client_flutter/pubspec.yaml`:
```yaml
flutter:
  generate: true   # ★ 이게 있어야 자동 생성됨
```

### 실행

```bash
flutter gen-l10n
```

생성 파일 (`lib/l10n/`):
- `app_localizations.dart` — `AppLocalizations` 클래스 + locale dispatcher
- `app_localizations_en.dart` — 영문 145개 getter
- `app_localizations_ko.dart` — 한글 145개 getter

자동 생성 파일은 `analysis_options.yaml` 의 `analyzer.exclude` 로 lint 제외 (`lib/l10n/app_localizations*.dart`).

### 사용

```dart
import 'package:findit/l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Text(l.loginTitle);  // "[Login]" 또는 "[로그인]"
  }
}
```

---

## MaterialApp 와이어

`lib/main.dart`:
```dart
import 'l10n/app_localizations.dart';

return MaterialApp.router(
  onGenerateTitle: (ctx) => AppLocalizations.of(ctx).appName,
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,  // [en, ko]
  routerConfig: router,
);
```

자동 결정:
- 디바이스 시스템 언어가 **ko** → `app_ko.arb` 사용
- **en** 또는 그 외 → `app_en.arb` 사용 (fallback)

---

## iOS Info.plist

`ios/Runner/Info.plist` 에 supported locales 명시 필요:
```xml
<key>CFBundleLocalizations</key>
<array>
  <string>en</string>
  <string>ko</string>
</array>
```

이 키 없으면 iOS App Store 가 영어만 지원으로 보고. § 9 작업에서 추가됨.

---

## Android (자동)

별도 설정 불필요. Flutter 가 알아서 처리. 앱 실행 시 `Locale.getDefault()` 기반 매칭.

---

## 새 문자열 추가하기

### 1. ARB 양쪽에 추가
`app_en.arb`:
```json
{
  ...,
  "newFeatureTitle": "New Feature"
}
```

`app_ko.arb`:
```json
{
  ...,
  "newFeatureTitle": "신규 기능"
}
```

### 2. 코드 생성
```bash
flutter gen-l10n
```

### 3. 사용
```dart
final l = AppLocalizations.of(context);
Text(l.newFeatureTitle);  // 자동완성 OK
```

### 4. 검증
```bash
flutter analyze   # 미정의 키 사용 시 에러
flutter test
```

---

## 안드 strings.xml 측 수정 워크플로

만약 원본을 먼저 수정하고 ARB 로 가져가고 싶으면:

### 1. 안드 양 strings.xml 에 추가
```xml
<!-- values/strings.xml -->
<string name="new_feature_title">New Feature</string>

<!-- values-ko/strings.xml -->
<string name="new_feature_title">신규 기능</string>
```

### 2. 변환기 재실행
```bash
node client_flutter/tools/strings_xml_to_arb.js
```

→ `app_en.arb` / `app_ko.arb` 에 `newFeatureTitle` 자동 추가됨 (snake → camel 변환).

### 3. flutter gen-l10n + 사용

---

## 일관성 관리

### 영/한 키 셋 일치 검증
변환기가 자동 검증 — only-en / only-ko 1건이라도 있으면 exit 1.

### 누락 키 잡기
ARB 측에서 누락 시 `flutter gen-l10n` 이 경고:
```
Locale 'ko' is missing the following keys: ['newFeatureTitle']
```

### 의도하지 않은 변경 잡기
`git diff lib/l10n/app_*.arb` 로 commit 전 확인.

---

## 결제 메시지 매핑

서버 result 코드 → 클라 메시지 매퍼: `lib/screens/login_messages.dart`

```dart
String loginErrorMessage(AppLocalizations l, String code) {
  switch (code) {
    case '101': return l.noticeMsgNoid;       // 아이디 없음
    case '102': return l.noticeMsgNopasswd;   // 비밀번호 틀림
    case '103': return l.noticeMsgAlreadyid;  // 이미 가입됨
  }
  return l.noticeMsgNetworkfail;              // 그 외 / 네트워크
}
```

서버 `validation.js` 의 에러 코드도 동일 매핑:
- `email_invalid` → `l.noticeMsgNoemailtype`
- `password_length` → `l.noticeMsgRewirtepasswd`
- `nickname_length` → `l.noticeMsgNicknamelength`
- `character_invalid` → `l.noticeMsgNocharacters`

---

## 더 많은 언어 추가하기

### 1. 일본어 추가 예
`lib/l10n/app_ja.arb`:
```json
{
  "@@locale": "ja",
  "appName": "Findit",
  "loginTitle": "[ログイン]",
  ...
}
```

### 2. iOS Info.plist 갱신
```xml
<key>CFBundleLocalizations</key>
<array>
  <string>en</string>
  <string>ko</string>
  <string>ja</string>
</array>
```

### 3. flutter gen-l10n
자동으로 `app_localizations_ja.dart` 생성.

### 4. (선택) 일본어 안드 추가
`android_project/app/src/main/res/values-ja/strings.xml` 만들고 변환기 확장 — 현재 변환기는 en/ko 하드코딩이라 일부 수정 필요:
```js
const SRC_JA = path.join(ROOT, 'android_project/app/src/main/res/values-ja/strings.xml');
const DST_JA = path.join(__dirname, '..', 'lib/l10n/app_ja.arb');
// ... 같은 로직 반복
```

---

## 자주 막히는 부분

### "AppLocalizations is null"
- `MaterialApp` 의 `localizationsDelegates` 또는 `supportedLocales` 누락
- 위젯 트리 상위에 `MaterialApp` 없음 (테스트 등)

테스트에서 사용 시:
```dart
testWidgets('...', (tester) async {
  await tester.pumpWidget(MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: MyWidget(),
  ));
});
```

### "key 가 자동완성 안 됨"
1. `flutter gen-l10n` 실행 후 IDE restart
2. `pubspec.yaml` 의 `flutter: generate: true` 확인
3. `lib/l10n/app_localizations.dart` 가 실제 생성됐는지 확인

### "한글이 깨짐"
ARB 파일은 UTF-8. `git config core.autocrlf` Windows 설정 시 BOM 추가될 수 있음 — `git config --global core.autocrlf input` 권장.

### "변환기가 145 가 아닌 144 만 가져옴"
`<string name="...">` 의 자식 태그가 있는 경우 (`<![CDATA[`, 중첩 등) — 변환기는 단순 정규식이라 못 잡음. 안드 strings.xml 의 일관된 형식 유지 필요.

### parity 실패
```
KEY MISMATCH (en/ko parity required):
  only-en: ['notice_msg_x']
```

→ 안드 한글 측에 `notice_msg_x` 만 누락. `values-ko/strings.xml` 에 같은 키 추가.

---

## 결론

이 i18n 파이프라인의 핵심:
1. **두 진실 자료** — 안드 strings.xml + Flutter ARB 가 항상 동기 (변환기 자동)
2. **양방향 parity** — 영/한 키 셋 정확히 일치 자동 검증
3. **idempotent** — 변환기 재실행해도 결과 동일
4. **CRLF/escape 정규화** — Windows/macOS/Linux 편집 호환

이 4가지로 145키 i18n 이 깨지지 않고 유지됨.
