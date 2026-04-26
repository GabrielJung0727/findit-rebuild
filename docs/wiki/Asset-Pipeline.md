# Asset Pipeline

스테이지 콘텐츠 (1+7 PNG + 좌표) 제작 → 검증 → 등록 워크플로 + 클라 로컬 자산 관리.

상세 외주 가이드: [`docs/CONTENT_PRODUCTION_GUIDE.md`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/docs/CONTENT_PRODUCTION_GUIDE.md)

## 두 종류의 자산

### 1. 동적 콘텐츠 (스테이지 / 광고 이미지)
- CDN 에서 다운로드
- 어드민이 추가/수정 가능
- 1 원본 + 7 패치 + JSON 좌표 + 광고 메타

### 2. 정적 자산 (UI / 스킬 / 캐릭터)
- 앱 번들에 포함 (`assets/images/`)
- 디자이너 정식 에셋 입수 후 교체
- 현재는 디컴파일 안드 drawable-hdpi 에서 추출한 임시 자산 29개

---

## 동적 콘텐츠 — 1+7 PNG 포맷

### 한 세트 = 8 PNG

원본 기획서 (`docs/findit_thebattle_contents_guide_20120704/`) 의 포맷 그대로:

| 파일 | 역할 | 크기 |
|---|---|---|
| `<basename>.png` | 원본 (배경) | 자유 (예: market001 = 640×720) |
| `<basename>_1.png` | 1번 틀린부위 패치 | imageCut[0].w × h |
| `<basename>_2.png` | 2번 패치 | imageCut[1].w × h |
| `<basename>_3.png` | 3번 패치 | imageCut[2].w × h |
| `<basename>_4.png` | 4번 패치 | imageCut[3].w × h |
| `<basename>_5.png` | 5번 패치 | imageCut[4].w × h |
| `<basename>_6.png` | 6번 패치 | imageCut[5].w × h |
| `<basename>_7.png` | 7번 패치 | imageCut[6].w × h |

### 패치 PNG 의 의미

원본 이미지의 `(x, y)` 위치에 그대로 덮어 씌울 사각형 영역. "이쪽이 틀린 그림" 으로 검출 대상이 되는 부분의 **수정 후 픽셀**.

- 알파 채널 ❌ (불투명 PNG)
- 가장자리 안티앨리어싱 시 원본 색과 자연스럽게 섞이도록
- 패치 PNG 의 가로/세로 = `imageCut[n-1].w × h` 정확히 일치

### 좌표계

- 원점 (0, 0) = **좌상단** (Photoshop / Android / HTML 표준)
- x: 오른쪽 양, y: 아래쪽 양
- 단위: 원본 이미지 픽셀 (스케일 적용 전)

---

## 좌표 명세 — `imageCut` JSON

원본 xls 의 한 행이 다음 데이터 포함:

| xls 컬럼 | 서버 필드 | 예시 |
|---|---|---|
| 원본파일명 | `images.img` | `market001.png` |
| No. (1~7) | `imageCut[i]` 인덱스 | 0~6 |
| 좌표(x, y) | `imageCut[i].x`, `.y` | (195, 66) |
| 가로세로사이즈 | `imageCut[i].w`, `.h` | 100, 100 |
| 광고문구 | `images.ad_caption` | "위급상황시 동영상촬영" |
| 관련URL | `images.url_detail` | "https://..." |

### JSON 스키마 (admin POST 페이로드)

```json
{
  "img":       "market001.png",
  "xSize":     640,
  "ySize":     720,
  "imageCut": [
    {"x": 195, "y":  66, "w": 100, "h": 100},
    {"x": 445, "y":   6, "w": 130, "h": 130},
    {"x": 287, "y": 630, "w": 100, "h":  80},
    {"x": 451, "y": 208, "w":  80, "h":  80},
    {"x":   0, "y": 117, "w": 100, "h": 100},
    {"x": 213, "y": 416, "w":  80, "h":  80},
    {"x": 560, "y": 354, "w":  80, "h":  90}
  ],
  "adCaption":   "위급상황시 동영상촬영 및 ucloud 자동백업",
  "urlDetail":   "https://example.com/promo/ucloud",
  "urlDownload": "https://cdn.findit.example/images/market001.png"
}
```

### 강제 규칙 (서버 + 검증기)

1. **`imageCut.length === 7`** — 정확히 7개. 부족/초과 reject.
2. **`x, y, w, h` 모두 비음수 정수**.
3. **`w > 0`, `h > 0`** (점/선 패치 금지).
4. **`x + w ≤ xSize`, `y + h ≤ ySize`** — 이미지 경계 침범 금지.
5. **패치 PNG 의 실제 W×H = `imageCut[i].w × h`**.
6. **`adCaption` 이 있으면 `urlDetail` 도 반드시 있어야 함** (광고가 클릭할 곳).

### 클라 측 파싱

```dart
// lib/game/image_set.dart
List<ImageCut> parseImageCutJson(Object? raw) {
  // 1. raw 가 String 이면 jsonDecode
  // 2. List<Map> 으로 캐스팅
  // 3. 각 Map 에서 {x, y, w, h} 추출 (모두 num)
  // 4. 잘못된 항목은 무시 (서버 검증 우선)
}

class ImageCut {
  bool contains(double px, double py) =>
    px >= x && px <= x + w && py >= y && py <= y + h;
}
```

---

## 검증기 — `validate-image-set.js`

`server/scripts/validate-image-set.js` — Node 표준 라이브러리만 (PNG IHDR 직접 파싱).

### 사용

```bash
# manifest 모드 (좌표 + 패치 dim 정밀 검증)
node server/scripts/validate-image-set.js \
  --manifest path/to/<basename>.manifest.json

# 디렉터리 모드 (8 PNG 존재만 빠르게)
node server/scripts/validate-image-set.js path/to/png_dir/
```

### 검사 항목

8 PNG 존재 + 원본 W×H 일치 + imageCut 7개 + 비음수 + 양의 w/h + 경계 안 + 패치 dim 일치 + adCaption↔urlDetail 짝.

### 종료 코드

- `0` — 모두 통과
- `1` — 검증 실패 (사용자 콘텐츠 수정 필요)
- `2` — 사용법 / IO 에러

### 샘플 manifest

```json
{
  "_comment": "Sample manifest for market001 set",
  "img": "market001.png",
  "xSize": 640,
  "ySize": 720,
  "imageCut": [
    { "x": 195, "y":  66, "w": 100, "h": 100 },
    { "x": 445, "y":   6, "w": 130, "h": 130 },
    { "x": 287, "y": 630, "w": 100, "h":  80 },
    { "x": 451, "y": 208, "w":  80, "h":  80 },
    { "x":   0, "y": 117, "w": 100, "h": 100 },
    { "x": 213, "y": 416, "w":  80, "h":  80 },
    { "x": 560, "y": 354, "w":  80, "h":  90 }
  ],
  "adCaption": "위급상황시 동영상촬영 및 ucloud 자동백업",
  "urlDetail": "https://example.com/promo/ucloud",
  "urlDownload": "https://cdn.findit.example/images/market001.png"
}
```

위치: [`docs/findit_thebattle_contents_guide_20120704/contents/png/market001.manifest.json`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/docs/findit_thebattle_contents_guide_20120704/contents/png/market001.manifest.json)

---

## 어드민 등록 워크플로

```bash
# 1. 검증
node server/scripts/validate-image-set.js \
  --manifest path/to/<basename>.manifest.json

# 2. PNG 8장 CDN 업로드
gsutil cp <basename>*.png gs://findit-cdn/images/
# https://storage.googleapis.com/findit-cdn/images/<basename>.png

# 3. manifest.json 의 urlDownload 를 CDN URL 로 갱신

# 4. admin API 로 INSERT
curl -X POST https://api.findit.example/admin/images \
  -H "X-Admin-Token: <token>" \
  -H "Content-Type: application/json" \
  -d @path/to/<basename>.manifest.json

# 5. 어드민 UI 에서 view 토글로 노출/비노출
```

서버는 같은 검증 (`validateImageCut`) 한 번 더 실행 — 디스크 검증 + DB 검증 이중 안전망.

---

## 외주 디자이너 → 개발자 흐름

```
[디자이너]                          [QA / 개발자]
1. PSD 작업 (원본 + 7 패치)       
   → 8 PNG export               
2. 좌표 측정 (PSD bounding box)  
   → manifest.json 작성          
3. zip 패키징:                   
   <basename>/<basename>.png     
   <basename>/<basename>_1~7.png 
   <basename>/<basename>.manifest.json
                                 → 4. 검증기 실행
                                    node server/scripts/validate-image-set.js \
                                      --manifest <basename>.manifest.json
                                    → 통과 시 다음, 실패 시 디자이너에 피드백
                                 → 5. CDN 업로드 + admin 등록
                                 → 6. 어드민 UI 에서 view=1 활성
```

전체 가이드: [`docs/CONTENT_PRODUCTION_GUIDE.md`](https://github.com/GabrielJung0727/findit-rebuild/blob/main/docs/CONTENT_PRODUCTION_GUIDE.md)

---

## 광고 이미지 (`ad_images`)

게임 외 화면 (대기실/로딩) 에 노출되는 일반 배너. 별도 테이블.

| 필드 | 의미 |
|---|---|
| `ad_image` | 광고 이미지 URL (단일 PNG) |
| `ad_name` | 광고 캠페인 이름 (어드민 식별용) |
| `ad_url` | 클릭 시 이동 URL |
| `expire_date` | 자동 만료 |

vs. 게임 이미지 광고 (`images.ad_caption` + `url_detail`):
- 게임 이미지 광고: 7 패치 중 하나가 광고 PPL
- 광고 배너: 독립 이미지

두 트랙 동시 운영 가능.

---

## 정적 자산 — 로컬 PNG

### 위치

```
client_flutter/assets/images/
├── items/        # 23 PNG — 안드 drawable-hdpi 추출
│   ├── slot_item_pen_01.png ~ 03.png
│   ├── slot_item_ring_01.png, 02.png
│   ├── slot_item_berry_01~03.png, 21~23.png
│   ├── slot_item_posion_01~03.png, 21~22.png   (← 안드 원본 typo: "posion")
│   ├── slot_item_coin_1000.png ~ 8500.png
│   └── slot_item_skilldeck_01~03.png
├── characters/   # 3 PNG
│   ├── charac2_0_head_0.png
│   ├── charac2_1_head_0.png
│   └── charac2_2_head_0.png
└── ui/           # 3 PNG
    ├── coin.png
    ├── btn_ready.png
    └── btn_start.png
```

### `pubspec.yaml` 등록

```yaml
flutter:
  assets:
    - assets/images/items/
    - assets/images/characters/
    - assets/images/ui/
```

빈 디렉터리는 build 단계에서 reject 되므로 PNG 가 실제 있어야 함.

### `lib/util/asset_paths.dart` 매핑 헬퍼

```dart
class AssetPaths {
  // 아이템 typeNo (38..58) → 자산 경로
  static String? itemIcon(int typeNo) {
    switch (typeNo) {
      case 38: return 'assets/images/items/slot_item_pen_01.png';
      // ... 22 more
    }
    return null;
  }
  
  // 캐릭터 0..2 헤드
  static String characterHead(int characterIndex) {
    final i = characterIndex.clamp(0, 2);
    return 'assets/images/characters/charac2_${i}_head_0.png';
  }
  
  static const String coin = 'assets/images/ui/coin.png';
  static const String btnReady = 'assets/images/ui/btn_ready.png';
  static const String btnStart = 'assets/images/ui/btn_start.png';
}
```

### 사용 예

```dart
// InventoryScreen / ShopScreen
final iconPath = AssetPaths.itemIcon(item.itemNo);
Image.asset(iconPath ?? 'assets/images/ui/btn_ready.png',
            width: 32, height: 32, fit: BoxFit.contain);

// JoinScreen / ProfileScreen
Image.asset(AssetPaths.characterHead(user.userCharacter),
            fit: BoxFit.cover);
```

### 추출 스크립트

안드 drawable 에서 추출 (1회성):
```bash
mkdir -p client_flutter/assets/images/{items,characters,ui}
cp android_project/app/src/main/res/drawable-hdpi-v4/slot_item_*.png \
   client_flutter/assets/images/items/
cp android_project/app/src/main/res/drawable-hdpi-v4/charac2_[0-2]_head_0.png \
   client_flutter/assets/images/characters/
cp android_project/app/src/main/res/drawable-hdpi-v4/{coin,btn_ready,btn_start}.png \
   client_flutter/assets/images/ui/
```

---

## 디자이너 정식 에셋 교체 (후속)

현재는 임시 — 디자이너 입수 후 교체 워크플로:

### 권장 형식
- **PNG-24** + 알파 채널 (UI 아이콘은 transparent)
- **2x / 3x** 디바이스 대응 → Flutter 자동 처리:
  ```
  assets/images/items/slot_item_pen_01.png       # 1x
  assets/images/items/2.0x/slot_item_pen_01.png  # 2x
  assets/images/items/3.0x/slot_item_pen_01.png  # 3x
  ```
- 또는 SVG (`flutter_svg` 패키지) — 모든 해상도 단일 파일
- 또는 Lottie / Rive (애니메이션 — 8 스킬 효과)

### 파일명 컨벤션
- snake_case (안드 drawable 호환)
- 의미 있는 이름 (e.g. `pen_glow_animation.png` 보다 `slot_item_pen_03.png` 이 카탈로그 매핑 자동)

### Lottie/Rive 통합 (스킬 애니메이션)
```yaml
# pubspec.yaml
dependencies:
  lottie: ^3.1.2
  # 또는
  rive: ^0.13.13
```

```dart
Lottie.asset('assets/animations/cat_claw.json', repeat: false);
```

---

## CDN 전략 (운영)

### Google Cloud Storage (권장)

```bash
# 버킷 생성
gsutil mb -l asia-northeast3 gs://findit-cdn

# 업로드
gsutil -m cp -r assets/ gs://findit-cdn/

# 공개 권한
gsutil iam ch allUsers:objectViewer gs://findit-cdn

# Cache-Control 설정 (1년)
gsutil setmeta -h "Cache-Control:public,max-age=31536000" \
  "gs://findit-cdn/images/**/*.png"
```

URL: `https://storage.googleapis.com/findit-cdn/images/market001.png`

### CloudFront / 자체 CDN

같은 패턴 — 정적 호스팅 + Cache-Control + HTTPS.

### 클라 캐싱 — `cached_network_image`

이미 통합됨 (`game_view.dart`):
```dart
final provider = CachedNetworkImageProvider(url);
final stream = provider.resolve(const ImageConfiguration());
// ... ui.Image 디코드
```

기본 캐시 정책: 30일. 변경 시 `CacheManager` 커스텀.

---

## 자주 막히는 부분

### "이미지가 표시 안 됨 (회색 박스)"
- `pubspec.yaml` 의 `assets:` 항목 누락 → 추가 후 `flutter pub get` + 재빌드
- 파일 경로 오타 (디렉터리 자동 매핑 시 trailing `/` 필수)
- iOS — `ios/Runner.xcworkspace` 가 캐시한 자산 — Xcode "Clean Build Folder"

### "검증기가 fail: imageCut[6] exceeds image"
PSD 의 패치 위치가 원본 경계 침범. PSD 의 layer mask 또는 transform 확인.

### "검증기가 fail: imageCut[3] declares 80x80 but ..._4.png is 80x90"
패치 PNG 가 manifest 와 dim 안 맞음. PSD 에서 export 시 trim 옵션 또는 canvas size 확인.

### "원본 PNG 가 너무 무거움 (5MB+)"
- PNG-24 → PNG-8 변환 (TinyPNG, ImageOptim 등) — 80% 압축 가능
- 또는 WebP (Flutter 지원, 더 작음): `flutter pub run flutter_image_compress`

### "디바이스마다 이미지 흐림"
- 1x 이미지를 고해상도 디바이스에서 사용 → 2x/3x 추가 또는 SVG
- `BoxFit.cover` 가 늘림 → `BoxFit.contain` + 충분한 해상도

### "어드민 POST 시 'invalid_image_cut'"
서버 `validateImageCut` 6 강제 규칙 중 하나 위반. response 의 `detail` 필드에 사유:
- `image_cut length must be 7`
- `image_cut[3] (x=600,y=354,w=80,h=999) exceeds image 640x720`
- `imageCut[3] x/y/w/h must be non-negative integers`

검증기로 미리 확인 후 등록.

### "광고 이미지 만료됐는데 안 사라짐"
서버 `newAdImageList` 가 `expire_date > NOW()` 필터링 자동 처리. 클라가 캐시된 광고를 표시 중이면 cached_network_image 캐시 만료 (기본 30일) 또는 강제 새로고침.

---

## 후속 작업

- [ ] **Cloud Storage 직접 업로드 엔드포인트** — 어드민이 PNG 직접 업로드 (signed URL 발급)
- [ ] **자동 thumbnail 생성** — 서버에서 sharp/ImageMagick 으로 1x/2x/3x 자동
- [ ] **A/B 테스트** — 같은 시나리오에 다른 이미지 노출 비율 조정
- [ ] **i18n 광고문구** — `ad_caption_ko` / `ad_caption_en` 컬럼 분리
- [ ] **이미지 분석** — 어드민 통계에 imgId 별 클리어율 / 평균 시간

운영 컨텐츠 생성: 디자이너 의뢰 → 한 세트 8 PNG → 검증 → 등록 흐름.
