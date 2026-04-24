// 클라이언트가 기대하는 result 코드 (GameActivity.java:97-101 참조)
module.exports = {
  RESULT_PASS: '000',           // 성공
  RESULT_ALREADYEXIT: '900',    // 이미 게임을 종료한 유저
  RESULT_NOPASSWORD: '901',     // 비밀번호 틀림
  RESULT_ALREADYJOINED: '910',  // 이미 가입된 아이디 (join)
  RESULT_ALREADYGAME: '911',    // 이미 게임 중
  RESULT_NOID: '999',           // 존재하지 않는 아이디 또는 파라미터 오류
};
