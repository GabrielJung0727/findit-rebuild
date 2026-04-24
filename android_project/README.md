# FindIt (jadx 기반 재구성 프로젝트)

`game.apk` 를 jadx 로 디컴파일한 자바 소스를 Android Studio / Gradle 로
빌드할 수 있도록 재구성한 프로젝트입니다.

## 빌드 / 실행

### 커맨드라인

```bash
cd android_project
./gradlew assembleDebug
```

결과물: `app/build/outputs/apk/debug/app-debug.apk` (≈28MB)

### Android Studio

1. Android Studio 를 실행하고 **Open** 클릭
2. `/Users/gabriel/Desktop/apk_analysis/android_project` 폴더 선택
3. Gradle sync 완료 대기
4. Run 버튼으로 에뮬레이터/디바이스에 설치

> **Xcode 는 해당 없음.** Xcode 는 iOS/macOS 용 IDE 이며 Android APK 는
> 실행할 수 없습니다. 안드로이드 프로젝트이므로 Android Studio 또는
> 커맨드라인 Gradle 만 지원됩니다.

## 환경

| 항목 | 버전 |
|---|---|
| JDK | 23 (Zulu) |
| Gradle | 8.10.2 |
| Android Gradle Plugin | 8.7.3 |
| compileSdk / targetSdk | 34 |
| minSdk | 21 (원본 APK 는 9 였으나 AGP 요구사항으로 상향) |
| Android SDK 경로 | `~/Library/Android/sdk` (local.properties) |

## 디렉터리 구조

```
android_project/
├── app/
│   ├── build.gradle                # AGP 설정, useLibrary 'org.apache.http.legacy'
│   └── src/main/
│       ├── AndroidManifest.xml     # package 속성 제거(namespace 로 이동), exported 추가
│       ├── java/com/...            # jadx_output/sources 에서 복사
│       └── res/                    # decoded_apk/res 에서 복사
├── build.gradle
├── settings.gradle
├── gradle.properties
├── local.properties                # SDK 경로
├── gradlew / gradle/wrapper/       # Gradle 8.10.2
└── README.md
```

## 원본 디컴파일 대비 변경사항

jadx 출력은 그대로 컴파일되지 않는 경우가 많아 다음을 손봤습니다.

### 삭제
- `com/findit/battle/R.java`, `BuildConfig.java` — AGP 가 생성
- `res/values/public.xml` — AAPT 충돌 방지

### 프로젝트 메타
- `AndroidManifest.xml` 의 `package="com.findit.battle"` 제거
  (AGP 8 은 `build.gradle` 의 `namespace` 로 처리)
- `android:exported="true"` 를 런처 Activity 와 SmsReceiver 에 추가
  (targetSdk 31+ 요구사항)
- `useLibrary 'org.apache.http.legacy'` 로 Apache HTTP 복구

### 컴파일 에러 수정 (jadx 아티팩트)
- **가시성**: `Objects.Animation`, `Objects.Skills`, `GameView.GameRoom`,
  `GameView.Result`, `ResTags` 에 `public` 추가
- **리소스 경로 오타**: `R.style.Theme.Translucent.NoTitleBar.Fullscreen` →
  `android.R.style.Theme_Translucent_NoTitleBar_Fullscreen` (39 곳)
- **boolean/int 혼동**: `i == true ? 1 : 0` → `i != 0 ? 1 : 0` (다수)
- **ForeignDevelopeTextLengthWatcher 합성 생성자**:
  `0 != 0 ? 1 : 0` → `(ForeignDevelopeTextLengthWatcher) null` (13 곳)
- **미선언 레지스터 `r0/r5/r13`**: `this.mTimeCount` 로 치환
  (`GameView.java`, `Objects.java`)
- **오버라이드 메서드의 `throws Throwable`** 제거 (`run`, `onClick`,
  `handleMessage`, `doInBackground`)
- **Dialog 서브클래스의 `private create()`**: `Dialog.create()` 와 충돌 →
  `createDialog()` 로 rename (10 개 파일)
- **잘못 분해된 try/catch 체인**: `FileUtils.copyDb`, `CommonF.getUAProfileData`,
  `IAPActivity.write/reset/isExistOTPLog`, `ConnectNetwork.downloadFile`,
  `SamsungIapHelper.getHttpGetData`, `IabHelper.handleActivityResult`
  를 깔끔한 try/catch/finally 로 재작성
- **제거된 WebSettings API**: `setAppCacheEnabled/Path/MaxSize` 주석 처리
  (API 33 에서 삭제)
- **누락된 AIDL**: `com.kt.olleh.inapp.IRemoteInapService` 스텁 생성
  (getPhoneNumber 만 정의)

### 남은 경고
- `TimerService.java:59` varargs 경고 — 빌드에는 영향 없음

## 주의

- 서명: 디버그 키로만 빌드됩니다. 실제 배포는 `keystore` 설정 필요.
- IAP: KT Olleh / Samsung IAP / SK T-Store / Google Play Billing 구현이
  모두 디컴파일된 상태로 포함됩니다. 각 서비스의 프로덕션 키/엔드포인트는
  동작하지 않을 가능성이 큽니다 (원본 APK 가 2013–2014 년 경).
- `r0/r5/r13 → this.mTimeCount` 치환은 휴리스틱입니다. 게임 애니메이션
  속도가 약간 어긋날 수 있습니다.
- 코드 의미 보존이 우선이라면 `apktool b decoded_apk` 로 smali 에서
  재빌드하는 것이 더 안전합니다 (이 프로젝트는 "편집 가능한" 자바 버전입니다).
