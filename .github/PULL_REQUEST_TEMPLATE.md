<!--
  PR template — `docs/wiki/Contributing.md` Hard Rules + DoD 준수 필수.
  4개 섹션 모두 작성 후 제출. (오타 / 1줄 docs fix 는 What 만 채워도 OK)
-->

## What
<!-- 변경 요약 1~2줄 -->

## Why
<!-- 배경 / 동기 / 관련 이슈 — Closes #N (오타·1줄 fix 제외 필수) -->

## How
<!-- 주요 변경 포인트 bullet — 알고리즘 / 구조적 결정 -->

## Tests
<!-- 검증 내용 — 클라/서버 변경 시 해당 항목 필수 -->
- [ ] `flutter analyze` 0 issues
- [ ] `flutter test` 모두 통과
- [ ] 서버 모듈 load smoke 통과 (서버 변경 시)
- [ ] 단위 / 회귀 테스트 추가 (기능 / 버그 fix 시)
- [ ] 수동 검증 시나리오: <시나리오 기술>

## Screenshots
<!-- UI 변경 시 before / after — 그 외 생략 가능 -->

## Related
<!-- Closes #N / Refs #M / 관련 PR 링크 -->

---

<!--
  ✅ Definition of Done — merge 전 모두 충족:
  - [ ] 브랜치 prefix 규칙 (feat/ fix/ docs/ refactor/ test/ chore/ perf/)
  - [ ] Conventional Commits 형식
  - [ ] CI green
  - [ ] 다른 maintainer 1명 이상 approve
  - [ ] merge conflict 해결 (rebase onto main)
  - [ ] 관련 wiki 문서 업데이트 (필요 시)

  🚫 Hard Rules — 위반 시 즉시 revert:
  1. main 직접 push 금지 (이 PR 자체로 준수)
  2. force-push to main 금지
  3. --no-verify / hook 우회 금지
  4. 시크릿 commit 금지
  5. self-merge 금지
  6. CI red merge 금지

  자세한 규칙: https://github.com/GabrielJung0727/findit-rebuild/wiki/Contributing
-->
