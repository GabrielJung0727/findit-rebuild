import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../game/game_controller.dart';
import '../game/image_set.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/lobby.dart';
import '../state/providers.dart';

/// 배틀룸 — 캐릭터 매칭 + 스킬덱 5/8 선택 + 준비 토글.
///
/// 안드 원본: `GameView.BattleRoom` (~1224~1870 줄). UX 핵심:
/// - 좌(자신) / 우(상대) 캐릭터 표시
/// - 8개 스킬 풀에서 5개 선택 (selfReady=true 전까지 변경 가능)
/// - "기다리기" → 양쪽 ready 시 "게임하기" 로 전환
/// - 양측 모두 ready 면 게임 시작 (W3 §7 GameView 진입 — 현재는 placeholder)
class BattleRoomScreen extends ConsumerWidget {
  const BattleRoomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final lobby = ref.watch(lobbyControllerProvider);
    final auth = ref.watch(authControllerProvider);
    final br = lobby.battleRoom;

    // 방이 없어지면 (상대 나감 / 내가 leave) 대기실로 복귀
    ref.listen<LobbyState>(lobbyControllerProvider, (prev, next) {
      if (prev?.battleRoom != null && next.battleRoom == null) {
        context.go('/waiting');
      }
    });

    // 양측 모두 ready + 덱 5개 → 게임 시작
    ref.listen<LobbyState>(lobbyControllerProvider, (prev, next) {
      final bp = prev?.battleRoom;
      final bn = next.battleRoom;
      if (bn != null && bn.bothReady && (bp?.bothReady != true)) {
        unawaited(_startMultiGame(context, ref));
      }
    });

    if (br == null) {
      return Scaffold(
        body: Center(child: Text(l.noticeMsgNetworkerrorRelease)),
      );
    }

    // 덱 선택 풀 — 서버 스킬 카탈로그(이름) + 내가 학습한 스킬. 기본 8개는 항상 포함(덱 구성 보장).
    final catalog = ref.watch(skillCatalogProvider).asData?.value ??
        const <Map<String, dynamic>>[];
    final nameById = <int, String>{
      for (final s in catalog)
        if (s['skillId'] is num)
          (s['skillId'] as num).toInt(): (s['nameKo'] as String? ?? ''),
    };
    final basicIds = _kSkillPool.map((e) => e.id).toList();
    final orderedIds = <int>[
      ...basicIds,
      ...auth.skills.where((id) => !basicIds.contains(id)),
    ];
    final pool = <({int id, String label})>[
      for (final id in orderedIds)
        (
          id: id,
          label: (nameById[id] != null && nameById[id]!.isNotEmpty)
              ? nameById[id]!
              : _kSkillPool
                  .firstWhere((e) => e.id == id,
                      orElse: () => (id: id, code: '#$id'))
                  .code,
        ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(br.roomName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () =>
              ref.read(lobbyControllerProvider.notifier).leaveRoom(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // 매칭 표시
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: _PlayerCard(
                      label: auth.user?.userNick ?? '',
                      character: auth.user?.userCharacter ?? 0,
                      ready: br.selfReady,
                      side: _Side.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'VS',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Expanded(
                    child: _PlayerCard(
                      label: br.opponentCharacter == null ? l.wait : 'P2',
                      character: br.opponentCharacter ?? 0,
                      ready: br.opponentReady,
                      side: _Side.right,
                      placeholder: br.opponentCharacter == null,
                    ),
                  ),
                ],
              ),
            ),
            // 스킬덱 picker
            Expanded(
              child: _SkillDeckPicker(
                pool: pool,
                selected: br.skillDeck,
                locked: br.selfReady,
                onToggle: (skillId) => ref
                    .read(lobbyControllerProvider.notifier)
                    .toggleSkill(skillId),
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: FilledButton(
                // 양측 ready 시엔 자동 시작(ref.listen) 중이므로 버튼이 ready 를 토글해
                // 게임을 취소하지 않도록 비활성화.
                onPressed: br.bothReady
                    ? null
                    : br.deckValid
                        ? () => ref
                            .read(lobbyControllerProvider.notifier)
                            .setReady(!br.selfReady)
                        : null,
                child: Text(_buttonLabel(l, br)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _buttonLabel(AppLocalizations l, BattleRoomState br) {
    if (br.bothReady) return l.startgame;
    if (br.selfReady) return l.wait;
    return l.ready;
  }
}

Future<void> _startMultiGame(BuildContext context, WidgetRef ref) async {
  final auth = ref.read(authControllerProvider);
  final lobby = ref.read(lobbyControllerProvider);
  final br = lobby.battleRoom;
  if (auth.user == null || br == null) return;
  final list = await ref.read(contentApiProvider).newImageList();
  if (list.isEmpty) return;
  final imageSet = ImageSet.fromJson(list.first);
  ref.read(gameArgsProvider.notifier).state = GameStartArgs(
    image: imageSet,
    opponentIsAi: false,
    opponentLevel: auth.user!.level,
    selfHp: auth.user!.hp,
    opponentHp: auth.user!.hp,
  );
  ref.read(analyticsProvider).gameStart(
        userId: auth.user!.userId,
        isAi: false,
        imgId: imageSet.imgId,
        level: auth.user!.level,
      );
  if (context.mounted) context.go('/game');
}

enum _Side { left, right }

class _PlayerCard extends StatelessWidget {
  const _PlayerCard({
    required this.label,
    required this.character,
    required this.ready,
    required this.side,
    this.placeholder = false,
  });

  final String label;
  final int character;
  final bool ready;
  final _Side side;
  final bool placeholder;

  @override
  Widget build(BuildContext context) {
    final color = placeholder
        ? Theme.of(context).colorScheme.surfaceContainerHighest
        : Theme.of(context).colorScheme.primaryContainer;
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.surface,
              ),
              alignment: Alignment.center,
              child: Text(
                placeholder ? '?' : '${character + 1}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 8),
            Text(label, overflow: TextOverflow.ellipsis),
            const SizedBox(height: 4),
            Icon(
              ready ? Icons.check_circle : Icons.radio_button_unchecked,
              color: ready
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.outline,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

/// 기본 스킬 풀 — 안드 원본 8개 (`SKILLWINDOW_TOTALNUM`). 카탈로그/학습 스킬 미수신 시 fallback.
/// 표시 이름은 서버 `skillCatalog.json` 에서 resolve (battle_room build 에서 합성).
const List<({int id, String code})> _kSkillPool = <({int id, String code})>[
  (id: 14, code: 'cats_claw_1'), // 고양이발톱 (기본)
  (id: 13, code: 'puppy_print_1'), // 강아지발자국
  (id: 15, code: 'explosion_1'), // 폭발
  (id: 16, code: 'flame_1'), // 불꽃
  (id: 17, code: 'snowflake_1'), // 눈꽃
  (id: 18, code: 'powerful_explosion_1'),
  (id: 19, code: 'powerful_flame_1'),
  (id: 90, code: 'powerful_snowflake_1'),
];

class _SkillDeckPicker extends StatelessWidget {
  const _SkillDeckPicker({
    required this.pool,
    required this.selected,
    required this.locked,
    required this.onToggle,
  });

  final List<({int id, String label})> pool;
  final Set<int> selected;
  final bool locked;
  final ValueChanged<int> onToggle;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  // 5/8 선택 상태 표시
                  '${selected.length} / $kSkillDeckSize',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                if (locked) Text(l.ready),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 1,
              ),
              itemCount: pool.length,
              itemBuilder: (ctx, i) {
                final s = pool[i];
                final picked = selected.contains(s.id);
                final disabled =
                    locked || (!picked && selected.length >= kSkillDeckSize);
                return _SkillTile(
                  index: i,
                  label: s.label,
                  selected: picked,
                  disabled: disabled,
                  onTap: () => onToggle(s.id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SkillTile extends StatelessWidget {
  const _SkillTile({
    required this.index,
    required this.label,
    required this.selected,
    required this.disabled,
    required this.onTap,
  });

  final int index;
  final String label;
  final bool selected;
  final bool disabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: selected
          ? scheme.primaryContainer
          : disabled
              ? scheme.surfaceContainerHighest
              : scheme.surfaceContainer,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: disabled ? null : onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: selected ? scheme.primary : Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                _iconFor(index),
                size: 28,
                color: disabled ? scheme.outline : scheme.onSurface,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _iconFor(int i) {
    // §13 자산 입수 전 임시 — 5계열 분기
    const icons = <IconData>[
      Icons.pets, // 고양이
      Icons.pets, // 강아지
      Icons.local_fire_department, // 폭발
      Icons.whatshot, // 불꽃
      Icons.ac_unit, // 눈꽃
      Icons.bolt, // 강력폭발
      Icons.flash_on, // 강력불꽃
      Icons.severe_cold, // 강력눈꽃
    ];
    return icons[i % icons.length];
  }
}
