import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../game/game_controller.dart';
import '../game/image_set.dart';
import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../state/providers.dart';
import '../util/legacy_theme.dart';
import '../util/legacy_widgets.dart';

/// 메인 메뉴 — 원본 안드 GameView 의 메인 메뉴를 Flutter 위젯으로 모사.
///
/// 원본은 Canvas 에 6개 버튼(`main_btn_1`~`main_btn_6`) 을 직접 그렸지만
/// Flutter 에서는 [LegacyImageButton] 으로 대체. 라벨이 PNG 에 박혀있어서
/// 코드에서 텍스트를 그릴 필요 없음 (GAME START / CHARACTER / RANKING /
/// OPTION / NOTICE / FACEBOOK).
class LobbyScreen extends ConsumerWidget {
  const LobbyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    final user = auth.user;

    return Scaffold(
      body: LegacyBackground(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: <Widget>[
              // 우상단 — 코인/포인트/HP/로그아웃 (원본 게임에서 상단 HUD)
              Row(
                children: <Widget>[
                  _StatChip(
                    icon: Icons.monetization_on,
                    color: const Color(0xFFFFC93C),
                    label: '${user?.coin ?? 0}',
                  ),
                  const SizedBox(width: 6),
                  _StatChip(
                    icon: Icons.diamond,
                    color: const Color(0xFF7AC6FF),
                    label: '${user?.gem ?? 0}',
                  ),
                  const SizedBox(width: 6),
                  _StatChip(
                    icon: Icons.favorite,
                    color: const Color(0xFFE85A5A),
                    label: '${user?.hp ?? 0}',
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(
                      Icons.logout,
                      color: LegacyColors.textBrown,
                    ),
                    onPressed: () =>
                        ref.read(authControllerProvider.notifier).logout(),
                  ),
                ],
              ),
              // 닉네임 / Lv 표시 — 원본 메인 화면 상단 캐릭터 옆 텍스트와 유사
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                margin: const EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.85),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: LegacyColors.border,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Lv ${user?.level ?? 1}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        color: LegacyColors.orangeBottom,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      user?.userNick ?? '',
                      style: LegacyTextStyles.body.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              // 메인 6개 버튼 — main_bg.png 의 캐릭터 라인 위에 배치되도록 spacer.
              const Spacer(flex: 5),
              // GAME START — 메인 액션
              LegacyImageButton(
                asset: 'assets/legacy/main_btn_1.png',
                onPressed: () => context.go('/waiting'),
                height: 64,
              ),
              const SizedBox(height: 8),
              // 2x3 그리드 — CHARACTER / RANKING / OPTION / NOTICE / SHOP / FACEBOOK
              Row(
                children: <Widget>[
                  Expanded(
                    child: LegacyImageButton(
                      asset: 'assets/legacy/main_btn_2.png',
                      onPressed: () => context.push('/profile'),
                      height: 56,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: LegacyImageButton(
                      asset: 'assets/legacy/main_btn_3.png',
                      onPressed: () => context.push('/rank'),
                      height: 56,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Expanded(
                    child: LegacyImageButton(
                      asset: 'assets/legacy/main_btn_4.png',
                      onPressed: () => context.push('/skills'),
                      height: 56,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: LegacyImageButton(
                      asset: 'assets/legacy/main_btn_5.png',
                      onPressed: () => context.push('/notice'),
                      height: 56,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Expanded(
                    child: LegacyImageButton(
                      asset: 'assets/legacy/main_btn_6.png',
                      // FACEBOOK 자리 — 미구현이라 우선 vs AI 1인 모드로 매핑.
                      onPressed: () => _startSinglePlay(context, ref),
                      height: 56,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: LegacyImageButton(
                      asset: 'assets/legacy/shop_btn_1.png',
                      onPressed: () => context.push('/shop'),
                      height: 56,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // 원본에는 없던 인벤토리 버튼 — 텍스트로
              Row(
                children: <Widget>[
                  Expanded(
                    child: LegacyGradientButton(
                      label: l.item,
                      color: LegacyButtonColor.yellow,
                      height: 44,
                      onPressed: () => context.push('/inventory'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.icon,
    required this.color,
    required this.label,
  });

  final IconData icon;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: LegacyColors.border, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, color: color, size: 16),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              color: LegacyColors.textBrown,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _startSinglePlay(BuildContext context, WidgetRef ref) async {
  final auth = ref.read(authControllerProvider);
  if (auth.user == null) return;
  final list = await ref.read(contentApiProvider).newImageList();
  if (list.isEmpty) return;
  final imageSet = ImageSet.fromJson(list.first);
  ref.read(gameArgsProvider.notifier).state = GameStartArgs(
    image: imageSet,
    opponentIsAi: true,
    opponentLevel: auth.user!.level,
    selfHp: auth.user!.hp,
    opponentHp: auth.user!.hp,
  );
  ref.read(analyticsProvider).gameStart(
        userId: auth.user!.userId,
        isAi: true,
        imgId: imageSet.imgId,
        level: auth.user!.level,
      );
  if (context.mounted) context.go('/game');
}
