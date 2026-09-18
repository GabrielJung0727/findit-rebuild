import { resolve } from 'node:path';

export const ROOT = resolve(import.meta.dirname, '../..');

export const LEGACY_JAVA = resolve(ROOT, 'legacy/android_project/app/src/main/java');

// 레포에는 드로어블 트리 사본이 세 벌 있다: legacy/decoded_apk, legacy/android_project/
// app/src/main/res, legacy/jadx_output/resources/res. decoded_apk 가 정본이다 —
// apktool 이 nine-patch 청크(.9.png 의 스트레치/패딩 정보)를 보존하는 반면
// jadx 사본은 그렇지 않기 때문.
export const LEGACY_DRAWABLE = resolve(ROOT, 'legacy/decoded_apk/res/drawable-hdpi-v4');
export const LEGACY_RAW = resolve(ROOT, 'legacy/decoded_apk/res/raw');

export const CONTENT = resolve(ROOT, 'content');
export const APP_ASSETS = resolve(ROOT, 'app/assets');
