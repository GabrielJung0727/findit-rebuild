# Getting Started

처음 받은 개발자가 **5분 안에** 첫 빌드까지 도달하는 가이드.

## 사전 요구사항

| 도구 | 버전 | 용도 |
|---|---|---|
| Git | 2.x | clone |
| Node.js | 20+ | 서버 |
| Docker Desktop | 최신 | 로컬 MySQL 컨테이너 |
| Flutter | 3.27.4 | 클라 빌드 |
| Android Studio | 2024.2+ | 안드 SDK + 에뮬레이터 |
| Xcode | 15+ (macOS만) | iOS 빌드 |

설치 명령:

```bash
# Flutter (Windows)
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri 'https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.27.4-stable.zip' -OutFile 'flutter.zip'
Expand-Archive flutter.zip -DestinationPath C:\src\
$env:Path = "C:\src\flutter\bin;$env:Path"

# Node.js: https://nodejs.org/ 또는 winget install OpenJS.NodeJS
# Docker: https://www.docker.com/products/docker-desktop/
```

`flutter doctor` 통과 확인:
```
[√] Flutter (Channel stable, 3.27.4)
[√] Android toolchain (라이선스 미수락 시 → flutter doctor --android-licenses)
[√] Android Studio
```

---

## 1. 저장소 클론

```bash
git clone https://github.com/GabrielJung0727/findit-rebuild.git
cd findit-rebuild
```

폴더 내용:
- `client_flutter/` — Flutter 클라 (정식 개발 대상)
- `server/` — Node.js 서버
- `android_project/` — 디컴파일 원본 (reference 만, [[Decompiled-Reference]] 참조)
- `docs/` — 기획서 + 04-24.md / 04-26.md / RELEASE.md / wiki/

---

## 2. 서버 띄우기 (1분)

```bash
cd server
npm install
docker compose up -d         # MySQL 8 컨테이너 (port 3306)
npm run db:init              # 스키마 + 시드
npm run dev                  # http://localhost:8080 + TCP :22131 + WS /ws
```

성공 출력:
```
[db] connected
[http] listening on :8080
       admin UI: http://localhost:8080/admin/ui
[ws] gateway attached at /ws
[tcp] listening on 0.0.0.0:22131
```

확인:
```bash
curl http://localhost:8080/healthz
# {"ok":true}
```

문제 시: [[Troubleshooting#서버가-안-뜸]]

### 시드 데이터

테스트 계정 3개:
- `test@findit.com` / `1234` — 신규 가입자, 코인 10
- `alice@findit.com` / `1234` — Lv 15, 코인 500
- `bob@findit.com` / `1234` — Lv 30, 코인 1200

어드민:
- URL: http://localhost:8080/admin/ui
- Token: `dev-admin-token-change-me`

---

## 3. 클라이언트 띄우기 (2분)

### 에뮬레이터 준비

Android Studio → Device Manager → `+` → Pixel 6 / API 34 / RAM 2GB
또는 실기기 USB 디버깅.

### Flutter 빌드 + Run

```bash
cd client_flutter
flutter pub get
flutter gen-l10n              # 145키 ARB → app_localizations*.dart 자동 생성
flutter run                   # 디바이스 자동 감지 + hot reload 활성
```

성공 화면: 로그인 화면 (Findit 타이틀 + 이메일/비번 폼).

기존 시드 계정 로그인 → 로비 진입 → "Play vs AI" 또는 "게임하기" → 대기실.

### IDE 에서 Run

Android Studio:
- File → Open → `client_flutter`
- pubspec.yaml 자동 인식 → "Get dependencies" 클릭
- 우상단 디바이스 셀렉터 → 에뮬 선택 → ▶ (Shift+F10)

VS Code (가장 가벼움):
- 확장 프로그램 "Flutter" 설치
- F5 (Run and Debug)

---

## 4. 검증

```bash
cd client_flutter
flutter analyze              # 0 issues
flutter test                 # 106 passing (~10s)
flutter build apk --debug    # ~13s (캐시 후)
```

서버:
```bash
cd server
npm test                     # validation/balance unit tests
node -e "require('./src/socket/handlers')"  # smoke load
```

---

## 5. 자주 막히는 첫 단추

### "MySQL connection failed"
```bash
docker compose ps            # mysql 상태 확인
docker compose logs mysql    # 에러 로그
```

### "Port 8080 in use"
다른 프로세스가 쓰고 있음. `server/.env` 에 `HTTP_PORT=8081` 추가.

### "Property.SERVER_DOMAIN 안 뜸"
`client_flutter/lib/util/property.dart` 의 기본값 `http://10.0.2.2:8080/`. 에뮬레이터 → 호스트 PC 루프백. 실기기는 LAN IP 로 오버라이드:
```bash
flutter run --dart-define=FINDIT_SERVER_DOMAIN=http://192.168.1.10:8080/
```

### "build_runner 충돌"
없음 — 이 프로젝트는 build_runner 사용 안 함. ARB 코드 생성은 `flutter gen-l10n` (Flutter SDK 자체 도구).

기타 문제: [[Troubleshooting]]

---

## 6. 다음 단계

- 코드 구조 익히기 → [[Project-Structure]]
- API 호출하기 → [[API-Reference]]
- 게임 룰 이해 → [[Game-Design]]
- 콘텐츠 추가 → [[Asset-Pipeline]]
- 테스트 추가 → [[Testing]]

---

## 단축키 모음 (Flutter)

| 키 | 동작 |
|---|---|
| `r` | hot reload (런타임 상태 유지) |
| `R` | hot restart (앱 재시작) |
| `q` | run 종료 |
| `o` | iOS/Android 디바이스 토글 |
| `s` | 스크린샷 저장 |
| `p` | 디버그 paint (위젯 경계 시각화) |

VS Code / Android Studio 에서 IDE 단축키도 동일.
