import { resolve } from 'node:path';

export const ROOT = resolve(import.meta.dirname, '../..');

export const LEGACY_JAVA = resolve(ROOT, 'legacy/android_project/app/src/main/java');
export const LEGACY_DRAWABLE = resolve(ROOT, 'legacy/decoded_apk/res/drawable-hdpi-v4');
export const LEGACY_RAW = resolve(ROOT, 'legacy/decoded_apk/res/raw');

export const CONTENT = resolve(ROOT, 'content');
export const APP_ASSETS = resolve(ROOT, 'app/assets');
