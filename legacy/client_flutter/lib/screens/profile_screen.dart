import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../l10n/app_localizations.dart';
import '../state/auth.dart';
import '../util/asset_paths.dart';
import '../util/legacy_theme.dart';
import '../util/legacy_widgets.dart';

/// 캐릭터 / 프로필 — 닉네임 + 캐릭터 0~2 + 사진(앨범/카메라).
///
/// 안드 원본의 "사진기로 얼굴 교체" 기능. iOS `NSCameraUsageDescription`
/// + `NSPhotoLibraryUsageDescription` Info.plist 권한 필수 (§14 에서 추가).
///
/// 현재는 로컬 미리보기만 — 서버에 사용자 아바타 업로드 엔드포인트 없음
/// (향후 Cloud Storage signed URL + `members.avatar_url` 추가 가능).
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  final ImagePicker _picker = ImagePicker();
  File? _avatar;

  Future<void> _pick(ImageSource source) async {
    final fail = AppLocalizations.of(context).noticeMsgNetworkfail;
    try {
      final XFile? file = await _picker.pickImage(
        source: source,
        imageQuality: 75,
        maxWidth: 512,
        maxHeight: 512,
      );
      if (file == null) return;
      if (!mounted) return;
      setState(() => _avatar = File(file.path));
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(fail)));
    }
  }

  Future<void> _showSourceSheet() async {
    final l = AppLocalizations.of(context);
    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: Text(l.identifyOverlap),
              onTap: () => Navigator.pop(ctx, ImageSource.camera),
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text(l.list),
              onTap: () => Navigator.pop(ctx, ImageSource.gallery),
            ),
            ListTile(
              leading: const Icon(Icons.cancel_outlined),
              title: Text(l.cancel),
              onTap: () => Navigator.pop(ctx),
            ),
          ],
        ),
      ),
    );
    if (source != null) await _pick(source);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final auth = ref.watch(authControllerProvider);
    final user = auth.user;
    return Scaffold(
      appBar: AppBar(title: Text(l.nickname)),
      body: LegacyBackground(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 8),
              GestureDetector(
                onTap: _showSourceSheet,
                child: Center(
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.fromBorderSide(BorderSide(
                              color: LegacyColors.border, width: 2),),
                        ),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          backgroundImage: _avatar != null
                              ? FileImage(_avatar!) as ImageProvider
                              : (user != null
                                  ? AssetImage(
                                      AssetPaths.characterHead(
                                          user.userCharacter),)
                                  : null),
                          child: (_avatar == null && user == null)
                              ? const Text('?',
                                  style: TextStyle(
                                      color: LegacyColors.textBrown))
                              : null,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: LegacyColors.orangeBottom,
                          shape: BoxShape.circle,
                          border: Border.fromBorderSide(BorderSide(
                              color: LegacyColors.border, width: 1.5),),
                        ),
                        padding: const EdgeInsets.all(6),
                        child: const Icon(
                          Icons.photo_camera,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (user != null)
                LegacyPopup(
                  child: Column(
                    children: <Widget>[
                      _Row(label: l.id, value: user.userId),
                      _Row(label: l.nickname, value: user.userNick),
                      _Row(label: 'Lv', value: '${user.level}'),
                      _Row(label: l.score, value: '${user.score}'),
                      _Row(label: 'Coin', value: '${user.coin}'),
                      _Row(label: 'Point', value: '${user.point}'),
                      _Row(label: 'Gem', value: '${user.gem}'),
                      _Row(label: 'HP', value: '${user.hp}'),
                      _Row(label: 'AuthType', value: user.authType),
                    ],
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                l.guestMsg,
                style: LegacyTextStyles.body.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(label,
              style: LegacyTextStyles.body
                  .copyWith(fontWeight: FontWeight.w700)),
          Text(value,
              style: const TextStyle(
                color: LegacyColors.textBrown,
                fontSize: 15,
                fontWeight: FontWeight.w900,
              )),
        ],
      ),
    );
  }
}
