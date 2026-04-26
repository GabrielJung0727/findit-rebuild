# Wiki 푸시 안내 (운영자용)

GitHub Wiki 는 별도 git repo (`findit-rebuild.wiki.git`). 이 디렉터리(`docs/wiki/`) 의 페이지를 위키로 푸시하는 절차.

## 1회성: Wiki 활성

GitHub repo 페이지 → 우상단 **Wiki** 탭 → "Create the first page" 클릭. 아무 내용이나 한 번 저장 → wiki repo 가 초기화됨.

## 푸시 (수동) — 자동화 비활성 시 또는 긴급 백필용

> 📌 자동 sync 활성 (`WIKI_PAT` 등록 완료) 후에는 일반적으로 불필요. 아래는 비상용 또는 자동화 비활성 환경에서만.

```bash
# 1. 위키 repo clone (저장소 root 의 부모 디렉터리에서)
cd ..
git clone https://github.com/GabrielJung0727/findit-rebuild.wiki.git

# 2. docs/wiki/ 의 모든 .md 파일 복사 (이 SYNC.md 제외)
cd findit-rebuild
cp docs/wiki/*.md ../findit-rebuild.wiki/
cd ../findit-rebuild.wiki
rm SYNC.md   # 이 파일은 메인 repo 만

# 3. commit + push
git add -A
git commit -m "sync wiki from main"
git push
```

## 푸시 (자동화) ✅ 활성

`.github/workflows/wiki-sync.yml` 가 이미 추가됨 — main 브랜치에 `docs/wiki/**` 변경 푸시 시 자동 동기화. 운영자는 아래 1회성 셋업만 하면 됨.

### 1회성 셋업

1. **Wiki 활성화**: repo Settings → Features → Wiki 체크 → 위키 탭에서 첫 페이지 한 번 저장 (wiki repo 초기화 트리거)
2. **PAT 발급**: [github.com/settings/tokens](https://github.com/settings/tokens) → "Generate new token (classic)" → scope `repo` 체크 → 90일 이상 만료 → 토큰 복사
   - `GITHUB_TOKEN` 은 wiki repo write 권한이 없어서 PAT 필요
3. **Secret 등록**: repo Settings → Secrets and variables → Actions → "New repository secret" → name `WIKI_PAT`, value 위 토큰
4. **첫 푸시 확인**: `docs/wiki/` 아무 파일 수정 + main 머지 → Actions 탭에서 `wiki-sync` 실행 확인

### 자동 동작

- `docs/wiki/*.md` 변경 시 자동 트리거
- `SYNC.md` 는 자동 제외 (운영자 안내 문서 — 위키에 노출 안 함)
- `_Sidebar.md` / `_Footer.md` 는 포함 (GitHub Wiki 특수 파일)
- 동시 실행 방지 (`concurrency: wiki-sync`)
- 커밋 메시지: `sync: <main repo commit SHA>`

### 수동 실행 (테스트)

Actions 탭 → `wiki-sync` workflow → "Run workflow" → `dry_run` 체크 시 푸시될 파일 목록만 확인.

## 위키 페이지 인덱스

- `Home.md` — 랜딩 페이지
- `_Sidebar.md` — 좌측 네비게이션
- `_Footer.md` — 모든 페이지 하단
- `Getting-Started.md`
- `Architecture.md`
- `Server-Setup.md`
- `Client-Setup.md`
- `Project-Structure.md`
- `Game-Design.md`
- `API-Reference.md`
- `WebSocket-Protocol.md`
- `Database-Schema.md`
- `Internationalization.md`
- `IAP-Integration.md`
- `Push-Notifications.md`
- `Asset-Pipeline.md`
- `Build-CI-CD.md`
- `Release-Process.md`
- `Testing.md`
- `Troubleshooting.md`
- `Decompiled-Reference.md`
- `Contributing.md`
- `Roadmap.md`
- `Glossary.md`

총 **22 페이지** (`_Sidebar` + `_Footer` 포함, `SYNC.md` 제외).

## 위키 링크 형식

GitHub Wiki 는 `[[Page-Name]]` 문법 사용 (페이지 파일명 = 링크 ID).

- `[[Home]]` → `Home.md`
- `[[Getting-Started]]` → `Getting-Started.md`
- `[[Game-Design#아이템-시스템--6-카테고리]]` → 페이지 내 앵커

이 디렉터리의 페이지들도 같은 형식 사용 — 푸시 후 자동 link 됨.

## Sidebar / Footer

- `_Sidebar.md` — 모든 페이지 좌측에 표시
- `_Footer.md` — 모든 페이지 하단에 표시

언더스코어 prefix 가 GitHub Wiki 의 특수 파일 컨벤션.

## 첫 푸시 후 확인

https://github.com/GabrielJung0727/findit-rebuild/wiki

- Home 페이지가 랜딩으로 표시됨
- 좌측 sidebar 가 자동 노출 (모바일 햄버거 메뉴)
- 페이지 간 `[[link]]` 자동 동작
- 검색 바 (우상단) 로 페이지 내용 검색 가능

## 페이지 추가 / 수정

### 직접 편집 (간단한 변경)
- 위키 페이지 우상단 ✏️ Edit → 수정 → Save
- ⚠ 메인 repo `docs/wiki/` 와 동기 안 됨 — 수동 sync back 필요

### PR 흐름 (큰 변경 권장)
1. 메인 repo branch → `docs/wiki/<Page>.md` 수정
2. PR + merge → main
3. **`wiki-sync` workflow 가 자동 푸시** — 별도 작업 불필요

## 기여자에게

- 위키 PR 은 `wiki-sync` workflow 가 자동 sync (`WIKI_PAT` secret 등록 후)
- 직접 위키 편집한 경우 → 변경 내용을 메인 repo `docs/wiki/` 에 commit 백업 권장 (위키만 수정하면 history 분리됨)
- 위키만 수정 + 메인 repo 미반영 시 → 다음 자동 sync 때 **메인 repo 가 위키를 덮어씀** — 양방향 sync 아님
