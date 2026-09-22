import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:findit/domain/match_state.dart';
import 'package:findit/domain/protocol.g.dart';
import 'package:findit/net/envelope.dart';

Envelope f(MessageType t, Map<String, dynamic> d) =>
    Envelope(type: t, seq: 1, data: d);

const _found = {
  'matchId': 'm1', 'opponentName': '상대', 'opponentLevel': 3, 'isAi': false,
};
const _start = {
  'puzzleId': 'a0001', 'imageUrl': '/c/m1/base', 'width': 640, 'height': 720,
  'targetCount': 5, 'durationMs': 40000,
};

MatchState _playing() {
  var s = MatchState.initial();
  s = applyFrame(s, f(MessageType.matchFound, _found));
  s = applyFrame(s, f(MessageType.countdown, {'seconds': 3}));
  return applyFrame(s, f(MessageType.start, _start));
}

void main() {
  group('진행', () {
    test('QUEUED 면 대기다', () {
      final s = applyFrame(MatchState.initial(), f(MessageType.queued, {'position': 0}));
      expect(s.phase, MatchPhase.queued);
    });

    test('MATCH_FOUND 가 상대 정보를 싣는다', () {
      final s = applyFrame(MatchState.initial(), f(MessageType.matchFound, _found));
      expect(s.phase, MatchPhase.matched);
      expect(s.matchId, 'm1');
      expect(s.opponentName, '상대');
      expect(s.isAi, isFalse);
    });

    test('START 가 이미지 크기와 목표 수를 싣는다', () {
      final s = _playing();
      expect(s.phase, MatchPhase.playing);
      expect(s.imageSize, const Size(640, 720));
      expect(s.targetCount, 5);
      expect(s.durationMs, 40000);
    });

    test('REVEAL 이 찾은 rect 를 쌓고 누가 찾았는지 남긴다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.reveal, {
        'by': 'me', 'index': 2, 'x': 10, 'y': 20, 'w': 130, 'h': 130,
        'patchUrl': '/c/m1/patch/2',
      }));
      expect(s.found.single.index, 2);
      expect(s.found.single.mine, isTrue);
      expect(s.myFound, 1);
    });

    test('OPPONENT_PROGRESS 가 상대 진행을 갱신한다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.opponentProgress, {'found': 3}));
      expect(s.opponentFound, 3);
    });

    test('END 가 결과를 싣고 끝낸다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.end, {
        'result': 'win', 'myFound': 3, 'opponentFound': 2,
        'score': 700, 'coinDelta': 5, 'expDelta': 30,
      }));
      expect(s.phase, MatchPhase.ended);
      expect(s.result!.result, 'win');
      expect(s.result!.score, 700);
    });
  });

  group('잠금과 블라인드', () {
    test('LOCK 이 잠금 시각을 민다', () {
      final s = applyFrame(_playing(), f(MessageType.lock, {'durationMs': 2000}));
      expect(s.lockedUntilMs, greaterThan(0));
    });

    test('BLIND 가 방해 시각과 효과 id 를 싣는다', () {
      final s = applyFrame(_playing(),
          f(MessageType.blind, {'durationMs': 1500, 'effectId': 'hand_01'}));
      expect(s.blindedUntilMs, greaterThan(0));
      expect(s.blindEffectId, 'hand_01');
    });
  });

  group('난입 — MATCH_FOUND 가 진행 중인 매치를 덮어쓴다', () {
    test('playing 중에 와도 새 매치로 간다', () {
      var s = _playing();
      s = applyFrame(s, f(MessageType.reveal, {
        'by': 'me', 'index': 0, 'x': 0, 'y': 0, 'w': 1, 'h': 1, 'patchUrl': 'u',
      }));
      expect(s.found, hasLength(1));

      s = applyFrame(s, f(MessageType.matchFound,
          {..._found, 'matchId': 'm2', 'isAi': true}));

      // 오류로 처리하거나 무시하면 난입당한 쪽이 멈춘다.
      expect(s.phase, MatchPhase.matched);
      expect(s.matchId, 'm2');
      // 이전 판의 흔적이 남으면 새 판에 남의 rect 가 그려진다.
      expect(s.found, isEmpty);
      expect(s.myFound, 0);
      expect(s.result, isNull);
    });

    test('ended 중에 와도 새 매치로 간다', () {
      var s = applyFrame(_playing(), f(MessageType.end, {
        'result': 'lose', 'myFound': 0, 'opponentFound': 5,
        'score': 0, 'coinDelta': 0, 'expDelta': 0,
      }));
      s = applyFrame(s, f(MessageType.matchFound, _found));
      expect(s.phase, MatchPhase.matched);
      expect(s.result, isNull);
    });
  });

  test('ERROR 는 상태를 바꾸지 않는다 — 표시는 화면이 한다', () {
    final before = _playing();
    final after = applyFrame(before,
        f(MessageType.error, {'code': 'bad_frame', 'message': 'x'}));
    expect(after.phase, before.phase);
  });
}
