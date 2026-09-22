import { describe, expect, it } from 'vitest';
import { isPuzzleDrawable, collectUiAssets, collectAudioAssets } from './extract-assets.js';

describe('isPuzzleDrawable', () => {
  it('퍼즐 이미지와 패치를 가려낸다', () => {
    expect(isPuzzleDrawable('a0001')).toBe(true);
    expect(isPuzzleDrawable('a0065_08')).toBe(true);
  });

  it('UI 에셋은 남긴다', () => {
    expect(isPuzzleDrawable('main_btn_1')).toBe(false);
    expect(isPuzzleDrawable('slot_item_pen_01')).toBe(false);
    expect(isPuzzleDrawable('efct_skill_01')).toBe(false);
    expect(isPuzzleDrawable('attack')).toBe(false);
  });

  it('a 로 시작하지만 퍼즐이 아닌 이름을 오인하지 않는다', () => {
    expect(isPuzzleDrawable('ad_btn')).toBe(false);
    expect(isPuzzleDrawable('attack')).toBe(false);
  });
});

describe('collectUiAssets', () => {
  const assets = collectUiAssets();

  it('UI 에셋 189 장을 모은다', () => {
    expect(assets).toHaveLength(189);
  });

  it('스펙이 요구하는 스킬 이펙트 8종이 전부 있다', () => {
    for (const name of [
      'efct_skill_01', 'efct_skill_02',
      'efct_skill_101', 'efct_skill_102', 'efct_skill_103',
      'efct_skill_121', 'efct_skill_122', 'efct_skill_123',
    ]) {
      expect(assets).toContain(name);
    }
  });

  it('P0 아이템 3종이 전부 있다', () => {
    for (const name of ['slot_item_pen_01', 'slot_item_ring_01', 'slot_item_posion_01']) {
      expect(assets).toContain(name);
    }
  });

  it('퍼즐 이미지는 섞여 들어오지 않는다', () => {
    expect(assets.filter(isPuzzleDrawable)).toEqual([]);
  });
});

describe('collectAudioAssets', () => {
  it('효과음 11 개를 모은다', () => {
    const audio = collectAudioAssets();
    expect(audio).toHaveLength(11);
    expect(audio).toContain('win');
    expect(audio).toContain('lose');
    expect(audio).toContain('gaming');
  });
});
