import bcrypt from 'bcryptjs';

/** 원작 UI 제약 (스펙 §6). 짧아서 해싱 강도가 더 중요하다. */
export const MIN_PASSWORD_LENGTH = 4;
export const MAX_PASSWORD_LENGTH = 12;
const BCRYPT_COST = 12;

export async function hashPassword(plain: string): Promise<string> {
  if (plain.length < MIN_PASSWORD_LENGTH || plain.length > MAX_PASSWORD_LENGTH) {
    throw new Error(`비밀번호는 ${MIN_PASSWORD_LENGTH}~${MAX_PASSWORD_LENGTH}자여야 함`);
  }
  return bcrypt.hash(plain, BCRYPT_COST);
}

/** 손상된 해시에 대해 던지지 않는다 — DB 오염이 500 이 되면 원인 파악이 늦어진다. */
export async function verifyPassword(plain: string, hash: string): Promise<boolean> {
  try {
    return await bcrypt.compare(plain, hash);
  } catch {
    return false;
  }
}
