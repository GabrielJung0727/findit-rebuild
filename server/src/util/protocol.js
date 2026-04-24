// 소켓 프레임 프로토콜
// 전송: <4자리 zero-padded 길이><|code|payload...>
// 길이 = body 의 문자 길이 (4자리 prefix 제외)
// 참조: GameView.java:422-434 getLengthText, GameActivity.java:489-502 수신 파싱

function encodeLength(bodyLength) {
  if (bodyLength < 10) return '000' + bodyLength;
  if (bodyLength < 100) return '00' + bodyLength;
  if (bodyLength < 1000) return '0' + bodyLength;
  return String(bodyLength);
}

/**
 * body 는 `|code|...` 형태의 파이프 구분 문자열.
 * @param {string} body
 * @returns {Buffer} UTF-8 인코딩된 전송용 프레임
 */
function encodeFrame(body) {
  const buf = Buffer.from(body, 'utf8');
  const prefix = encodeLength(buf.length);
  return Buffer.concat([Buffer.from(prefix, 'ascii'), buf]);
}

/**
 * 스트림 파서 — 들어오는 Buffer 청크를 축적하다 완성된 프레임을 방출.
 * 사용 예: const parser = createFrameParser(onFrame); parser.feed(chunk)
 */
function createFrameParser(onFrame) {
  let acc = Buffer.alloc(0);
  return {
    feed(chunk) {
      acc = Buffer.concat([acc, chunk]);
      while (acc.length >= 4) {
        const headerStr = acc.slice(0, 4).toString('ascii');
        const size = parseInt(headerStr, 10);
        if (Number.isNaN(size) || size < 0) {
          // 파싱 실패 → 버퍼 폐기
          acc = Buffer.alloc(0);
          return;
        }
        const total = 4 + size;
        if (acc.length < total) return;
        const frame = acc.slice(4, total).toString('utf8');
        acc = acc.slice(total);
        try {
          onFrame(frame);
        } catch (e) {
          console.error('[socket] onFrame error:', e);
        }
      }
    },
  };
}

/**
 * `|code|a|b|c` → ['', 'code', 'a', 'b', 'c']
 * 클라의 GameView.getSubTexts 와 동일하게 맨 앞 공백 토큰 포함.
 */
function splitFields(body) {
  return body.split('|');
}

module.exports = { encodeLength, encodeFrame, createFrameParser, splitFields };
