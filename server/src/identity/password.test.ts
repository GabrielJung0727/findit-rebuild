import { describe, expect, it } from 'vitest';
import { MAX_PASSWORD_LENGTH, MIN_PASSWORD_LENGTH, hashPassword, verifyPassword } from './password.js';

describe('비밀번호', () => {
  it('원작 제약을 따른다 — 4~12자', () => {
    expect(MIN_PASSWORD_LENGTH).toBe(4);
    expect(MAX_PASSWORD_LENGTH).toBe(12);
  });

  it('해시는 원문을 담지 않는다', async () => {
    const hash = await hashPassword('secret12');
    expect(hash).not.toContain('secret12');
  });

  it('같은 비밀번호도 매번 다른 해시가 된다 — salt 가 붙는다', async () => {
    expect(await hashPassword('secret12')).not.toBe(await hashPassword('secret12'));
  });

  it('올바른 비밀번호를 검증한다', async () => {
    expect(await verifyPassword('secret12', await hashPassword('secret12'))).toBe(true);
  });

  it('틀린 비밀번호를 거부한다', async () => {
    expect(await verifyPassword('wrong123', await hashPassword('secret12'))).toBe(false);
  });

  it.each(['abc', 'a'.repeat(13)])('길이 제약을 벗어난 %s 를 거부한다', async (password) => {
    await expect(hashPassword(password)).rejects.toThrow(/4|12/);
  });

  it('손상된 해시에 대해 던지지 않고 false 를 준다 — DB 오염이 500 이 되면 안 된다', async () => {
    expect(await verifyPassword('secret12', 'not-a-hash')).toBe(false);
  });
});
