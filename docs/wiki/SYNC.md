# Wiki 푸시 안내 (운영자용)

GitHub Wiki 는 별도 git repo (`findit-rebuild.wiki.git`). 이 디렉터리(`docs/wiki/`) 의 페이지를 위키로 푸시하는 절차.

## 1회성: Wiki 활성

GitHub repo 페이지 → 우상단 **Wiki** 탭 → "Create the first page" 클릭. 아무 내용이나 한 번 저장 → wiki repo 가 초기화됨.

## 푸시 (수동)

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

## 푸시 (자동화 — 후속)

`.github/workflows/wiki-sync.yml` 추가 시 main 푸시 시 자동 sync 가능. 보안상 주의:
- 위키 repo 는 main 과 다른 권한 — `secrets.GITHUB_TOKEN` 가 위키 push 권한 가져야 함
- 또는 별도 PAT 발급

```yaml
# .github/workflows/wiki-sync.yml (예시 — 활성화 시)
name: Sync Wiki
on:
  push:
    branches: [main]
    paths: ['docs/wiki/**']
jobs:
  sync:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: Andrew-Chen-Wang/github-wiki-action@v4
        with:
          path: docs/wiki/
          token: ${{ secrets.WIKI_PAT }}
```

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
2. PR + merge
3. 위 "푸시 (수동)" 절차 실행

## 기여자에게

- 위키 PR 은 `wiki-sync` workflow 가 자동 sync (활성화 시)
- 직접 위키 편집한 경우 → 변경 내용을 메인 repo `docs/wiki/` 에 commit 백업 권장 (위키만 수정하면 history 분리됨)
