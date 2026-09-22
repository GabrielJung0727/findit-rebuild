/** 서명 URL 키 최소 길이. 32바이트 미만은 HMAC 강도가 의미 없다. */
const MIN_SECRET_LENGTH = 32;
const DEFAULT_PORT = 8080;
const DEFAULT_CONTENT_URL_TTL_MS = 300_000;

export type NodeEnv = 'development' | 'test' | 'production';

export interface AppConfig {
  nodeEnv: NodeEnv;
  port: number;
  databaseUrl: string;
  redisUrl: string;
  /** 콘텐츠 서명 URL의 HMAC 키. 로그에 절대 찍지 않는다. */
  contentUrlSecret: string;
  contentUrlTtlMs: number;
  contentDir: string;
}

function required(env: NodeJS.ProcessEnv, key: string): string {
  const value = env[key];
  if (value === undefined || value === '') throw new Error(`설정 누락: ${key}`);
  return value;
}

/**
 * 환경변수를 파싱한다. process.env를 직접 읽지 않아 테스트가 전역 상태를
 * 건드리지 않는다. 누락된 값에 기본값을 채우지 않아 잘못된 운영 설정을
 * 조용히 받아들이지 않는다.
 */
export function loadConfig(env: NodeJS.ProcessEnv): AppConfig {
  const nodeEnv = env['NODE_ENV'] ?? 'development';
  if (nodeEnv !== 'development' && nodeEnv !== 'test' && nodeEnv !== 'production') {
    throw new Error(`설정 오류: NODE_ENV 는 development|test|production (${nodeEnv})`);
  }

  const portRaw = env['PORT'];
  const port = portRaw === undefined || portRaw === '' ? DEFAULT_PORT : Number(portRaw);
  if (!Number.isInteger(port) || port < 1 || port > 65_535) {
    throw new Error(`설정 오류: PORT 가 정수 포트가 아님 (${portRaw})`);
  }

  const contentUrlSecret = required(env, 'CONTENT_URL_SECRET');
  if (contentUrlSecret.length < MIN_SECRET_LENGTH) {
    throw new Error(`설정 오류: CONTENT_URL_SECRET 은 ${MIN_SECRET_LENGTH}자 이상이어야 함`);
  }

  return {
    nodeEnv,
    port,
    databaseUrl: required(env, 'DATABASE_URL'),
    redisUrl: required(env, 'REDIS_URL'),
    contentUrlSecret,
    contentUrlTtlMs: DEFAULT_CONTENT_URL_TTL_MS,
    contentDir: required(env, 'CONTENT_DIR'),
  };
}
