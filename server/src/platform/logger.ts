export interface Logger {
  info(msg: string, fields?: Record<string, unknown>): void;
  warn(msg: string, fields?: Record<string, unknown>): void;
  error(msg: string, fields?: Record<string, unknown>): void;
}

/**
 * 운영에서는 한 줄 JSON, 개발에서는 사람이 읽는 형태를 출력한다.
 * 필드를 메시지와 분리해 받아 문자열 보간으로 비밀값이 섞일 경로를 줄인다.
 */
export function createLogger(nodeEnv: string): Logger {
  const emit = (level: string, msg: string, fields?: Record<string, unknown>): void => {
    if (nodeEnv === 'production') {
      console.log(JSON.stringify({ level, msg, ts: new Date().toISOString(), ...fields }));
      return;
    }

    const tail = fields && Object.keys(fields).length > 0 ? ` ${JSON.stringify(fields)}` : '';
    console.log(`[${level}] ${msg}${tail}`);
  };

  return {
    info: (msg, fields) => emit('info', msg, fields),
    warn: (msg, fields) => emit('warn', msg, fields),
    error: (msg, fields) => emit('error', msg, fields),
  };
}
