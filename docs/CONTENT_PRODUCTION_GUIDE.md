# 틀린그림 콘텐츠 제작 가이드 (Stage Image Production Guide)

**대상**: 외주 디자이너 / 콘텐츠 제작자
**기준 자료**:
- 원본 PDF: [findit_thebattle_contents_guide_20120621.pdf](findit_thebattle_contents_guide_20120704/findit_thebattle_contents_guide_20120621.pdf)
- 좌표 시트 (Excel): [findit_틀린그림가이드_20120704.xls](findit_thebattle_contents_guide_20120704/contents/findit_틀린그림가이드_20120704.xls)
- 샘플 PSD: [market001.psd](findit_thebattle_contents_guide_20120704/contents/market001.psd)
- 샘플 PNG: [contents/png/](findit_thebattle_contents_guide_20120704/contents/png/) (8장 + manifest 1)

> 본 가이드는 위 자료 + 신규 서버 스키마 + 자동 검증기를 한 페이지로 통합한 문서입니다. 외주 발주 시 이 마크다운 한 장 + 샘플 세트 폴더만 전달하면 자급자족됩니다.

---

## 1. 한 세트 = 8장의 PNG

기획서 포맷을 그대로 준수합니다.

| 파일명 | 역할 | 권장 사양 |
|---|---|---|
| `<basename>.png` | 원본 (배경) | 가로 × 세로 자유 — `market001` 샘플은 **640×720**. 권장: 가로 ≤ 1024, 세로 ≤ 1280 |
| `<basename>_1.png` | 1번 틀린부위 패치 | `imageCut[0].w × h` |
| `<basename>_2.png` | 2번 틀린부위 패치 | `imageCut[1].w × h` |
| `<basename>_3.png` | 3번 틀린부위 패치 | `imageCut[2].w × h` |
| `<basename>_4.png` | 4번 틀린부위 패치 | `imageCut[3].w × h` |
| `<basename>_5.png` | 5번 틀린부위 패치 | `imageCut[4].w × h` |
| `<basename>_6.png` | 6번 틀린부위 패치 | `imageCut[5].w × h` |
| `<basename>_7.png` | 7번 틀린부위 패치 | `imageCut[6].w × h` |

### 패치 PNG 의 정확한 의미
- 원본 이미지의 `(x, y)` 위치에 **그대로 덮어 씌울** 사각형 영역.
- 즉, "이쪽이 틀린 그림" 으로 검출 대상이 되는 부분의 **수정 후 픽셀**.
- 알파 채널 ⛔ 사용 안 함 (불투명 PNG). 가장자리 안티앨리어싱이 필요하면 원본 색과 자연스럽게 섞이도록.
- 패치 PNG 의 가로/세로는 정확히 `imageCut[n-1].w × h` 와 같아야 합니다 (자동 검증).

### 좌표계
- 원점 (0, 0) = **좌상단**. (Photoshop / Android View / HTML 캔버스 표준과 동일)
- x: 오른쪽 양의 방향, y: 아래쪽 양의 방향.
- 단위: 원본 이미지 픽셀 (스케일 적용 전).

---

## 2. 좌표 명세 — `imageCut` JSON

원본 xls 의 한 행은 다음 7쌍의 (좌표, 크기) 데이터를 포함합니다:

| xls 컬럼 | 서버 필드 | 예시 |
|---|---|---|
| 원본파일명 | `img` | `market001.png` |
| No. (1~7) | `imageCut[i]` 배열 인덱스 | `imageCut[0]` ~ `imageCut[6]` |
| 좌표(x, y) | `imageCut[i].x`, `.y` | `(195, 66)` |
| 가로세로사이즈 | `imageCut[i].w`, `.h` | `(100, 100)` |
| 광고문구 | `images.ad_caption` | `"위급상황시 동영상촬영 및 ucloud 자동백업"` |
| 관련URL | `images.url_detail` | `"https://example.com/promo/ucloud"` |

### 정확한 JSON 스키마 (admin API 가 받는 그대로)
```json
{
  "img":       "market001.png",
  "xSize":     640,
  "ySize":     720,
  "imageCut": [
    { "x": 195, "y":  66, "w": 100, "h": 100 },
    { "x": 445, "y":   6, "w": 130, "h": 130 },
    { "x": 287, "y": 630, "w": 100, "h":  80 },
    { "x": 451, "y": 208, "w":  80, "h":  80 },
    { "x":   0, "y": 117, "w": 100, "h": 100 },
    { "x": 213, "y": 416, "w":  80, "h":  80 },
    { "x": 560, "y": 354, "w":  80, "h":  90 }
  ],
  "adCaption":   "위급상황시 동영상촬영 및 ucloud 자동백업",
  "urlDetail":   "https://example.com/promo/ucloud",
  "urlDownload": "https://cdn.findit.example/images/market001.png"
}
```

### 강제 규칙 (서버 + 검증기 양쪽에서 검사)
1. `imageCut.length === 7` — 정확히 7개. 부족/초과 모두 reject.
2. `x, y, w, h` 모두 **0 이상의 정수**.
3. `w > 0`, `h > 0` (점/선 패치 금지).
4. `x + w ≤ xSize`, `y + h ≤ ySize` — 이미지 경계 침범 금지.
5. 패치 PNG 의 실제 W×H 가 `imageCut[i].w × h` 와 일치.
6. `adCaption` 이 있으면 `urlDetail` 도 반드시 있어야 함 (광고가 클릭할 곳이 있어야 함).

---

## 3. 광고용 이미지 (광고 콘텐츠) 메타데이터

광고를 게임 이미지에 끼워 넣을 때:
- **`adCaption`** (광고문구): 1줄, 최대 255자. 이미지 클리어 시 또는 7개 정답 모두 찾았을 때 노출.
- **`urlDetail`** (관련URL): 클릭하면 외부 브라우저로 이동할 URL. 광고주 LP / 스토어 / 마이크로사이트.
- **`urlDownload`** (CDN URL): 8장 중 원본 PNG 의 CDN 절대 URL. 클라이언트가 다운로드해서 캐시.

> 별도의 "광고 배너" 형태 (`ad_images` 테이블) 는 §5 끝부분의 [광고 배너 vs 게임 이미지 광고](#광고-배너-vs-게임-이미지-광고) 참조.

---

## 4. 제작 → 검증 → 등록 워크플로

### 4.1 제작자가 할 일
1. PSD 에서 8장 PNG export (원본 + 패치 7장).
2. 좌표 측정: PSD 의 각 패치 레이어 bounding box → `(x, y, w, h)`.
3. 한 세트당 manifest 작성 — [샘플 manifest.json](findit_thebattle_contents_guide_20120704/contents/png/market001.manifest.json) 복제 후 값만 교체.
4. 폴더에 `<basename>.png ~ <basename>_7.png` + `<basename>.manifest.json` 9개 파일을 모아 zip.

### 4.2 검증 (개발자/QA가 자동)
```bash
# Manifest 모드 — 좌표/패치 dim 까지 정밀 검증 (권장)
node server/scripts/validate-image-set.js --manifest path/to/<basename>.manifest.json

# 디렉터리 모드 — 8장 PNG 존재만 빠르게 확인
node server/scripts/validate-image-set.js path/to/png_dir/
```

검증기는 다음을 확인합니다 (위 §2 강제 규칙 6개와 동일):
- 8장 PNG 모두 존재
- 원본 PNG 실제 W×H ↔ manifest.xSize/ySize 일치
- imageCut 7개, 비음수, 양의 w/h, 경계 안
- 각 패치 PNG 의 dim ↔ imageCut 일치
- adCaption 이 있으면 urlDetail 도 있음

### 4.3 등록 (admin)
검증 통과한 manifest.json 을 그대로 admin API 에 POST:
```bash
curl -X POST https://<server>/admin/images \
  -H "X-Admin-Token: <token>" \
  -H "Content-Type: application/json" \
  -d @path/to/market001.manifest.json
```
서버 측에서 동일한 검증 (`validateImageCut`) 이 한 번 더 실행됩니다 — 디스크 검증 후 DB 검증 이중 안전망.

PNG 파일 자체의 업로드 (CDN) 은 별도 — 현재는 외부 CDN URL 만 받음. (Cloud Storage 직접 업로드는 후속 작업, [docs/04-24.md §1.13](04-24.md) 참고.)

---

## 5. DB 스키마 (참고)

```sql
CREATE TABLE images (
  img_id        BIGINT UNSIGNED PRIMARY KEY,
  img           VARCHAR(255)  NOT NULL,                       -- "market001.png"
  x_size        INT UNSIGNED  NOT NULL,                       -- 원본 가로
  y_size        INT UNSIGNED  NOT NULL,                       -- 원본 세로
  image_cut     TEXT          NOT NULL,                       -- imageCut JSON (7개)
  url_download  VARCHAR(512),                                 -- 원본 PNG CDN URL
  url_detail    VARCHAR(512),                                 -- 광고 클릭 이동 URL (xls "관련URL")
  ad_caption    VARCHAR(255),                                 -- 광고 문구 (xls "광고문구")
  view          TINYINT       NOT NULL DEFAULT 1,             -- 노출 on/off
  view_count    INT UNSIGNED  NOT NULL DEFAULT 0,
  reg_date      TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP
);
```

마이그레이션: [server/sql/migrations/003_image_ad_caption.sql](../server/sql/migrations/003_image_ad_caption.sql)

### 광고 배너 vs 게임 이미지 광고

| 종류 | 테이블 | 설명 |
|---|---|---|
| 게임 이미지 광고 | `images` (`ad_caption` + `url_detail`) | 7개 틀린 부위 중 하나가 광고 PPL. 게임 자연스러운 흐름에 광고 삽입. |
| 별도 광고 배너 | `ad_images` (`ad_image`, `ad_name`, `ad_url`) | 게임 외 화면 (대기실/로딩 등) 에 노출되는 일반 배너. |

두 트랙은 독립적으로 운영 가능합니다.

---

## 6. 빠른 체크리스트 (제작자 셀프체크)

- [ ] 8장 PNG: 원본 1 + `_1` ~ `_7` 패치 7
- [ ] 패치 PNG 가로×세로가 manifest 의 `imageCut[i].w × h` 와 정확히 일치
- [ ] 모든 패치 박스가 원본 경계 안에 있음 (`x+w ≤ xSize`, `y+h ≤ ySize`)
- [ ] 패치는 **수정 후** 픽셀 (원본의 다른 부위 그대로 X, 변경된 모습 O)
- [ ] manifest.json 작성, 검증기 통과
- [ ] (광고 콘텐츠일 경우) `adCaption` + `urlDetail` 모두 작성
- [ ] zip 으로 `(이미지폴더)/<basename>/` 한 세트 단위 패키징

---

## 7. 자주 묻는 질문

**Q. 패치를 8개 이상 만들 수 있나요?**
A. ❌ 불가. 클라이언트 `FINDRECT_TOTALNUM = 7` 로 고정. 7개 미만도 reject.

**Q. 패치가 서로 겹쳐도 되나요?**
A. 권장하지 않습니다 (서버는 막지 않음). 겹치면 클라 터치 판정에서 어느 패치가 우선인지 모호합니다.

**Q. 같은 좌표에 여러 패치 (같은 위치 다른 모양) 가능한가요?**
A. 게임 디자인적으로 의미 없음 — 사용자에게 한 위치만 보입니다. 분산 권장.

**Q. 광고 없이 일반 게임 이미지로 만들고 싶어요.**
A. `adCaption` / `urlDetail` 비워두면 됩니다. `urlDownload` (원본 CDN URL) 만 필수.

**Q. xls 의 좌표가 일부 잘려 보입니다 (`287630` 같이).**
A. Excel 이 `287, 630` 콤마 좌표를 숫자로 자동변환한 표기 오류입니다. 실제 의미는 `(287, 630)`. 본 가이드의 manifest.json 스키마를 사용하면 명확합니다.

---

## 8. 변경 이력

- **2026-04-25** — 본 가이드 신설. xls/PDF/PSD 통합, 서버 스키마 매핑, 검증기 + 샘플 manifest 추가.
- **2012-06-21** — 원본 PDF 가이드 (배포 시점).
- **2012-07-04** — 원본 xls 가이드 + market001 샘플 세트.
