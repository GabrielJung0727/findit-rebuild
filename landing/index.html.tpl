<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FindIt: the Battle — 테스트 앱 다운로드</title>
<meta property="og:title" content="FindIt: the Battle — 테스트 앱">
<meta property="og:description" content="틀린그림찾기 실시간 배틀 게임 — 테스트 빌드 다운로드">
<style>
  * { margin:0; padding:0; box-sizing:border-box; }
  body {
    font-family: -apple-system, BlinkMacSystemFont, "Apple SD Gothic Neo", "Noto Sans KR", sans-serif;
    background: linear-gradient(180deg, #A8DCE7 0%, #BDE7EE 55%, #8FCB6B 55.2%, #7FBF5C 100%);
    min-height: 100vh; color:#5B4432;
    display:flex; flex-direction:column; align-items:center;
    padding: 28px 16px 40px;
  }
  .logo { text-align:center; margin: 8px 0 4px; user-select:none; }
  .logo .find {
    font-size: 56px; font-weight: 900; color:#E8442E; letter-spacing:-1px;
    text-shadow: -3px -3px 0 #fff, 3px -3px 0 #fff, -3px 3px 0 #fff, 3px 3px 0 #fff,
                 0 -3px 0 #fff, 0 3px 0 #fff, -3px 0 0 #fff, 3px 0 0 #fff, 0 6px 10px rgba(0,0,0,.15);
  }
  .logo .battle { font-size: 26px; font-weight: 800; color:#2E7E8C; margin-left:6px;
    text-shadow: -2px -2px 0 #fff, 2px -2px 0 #fff, -2px 2px 0 #fff, 2px 2px 0 #fff; }
  .sub { text-align:center; font-size:14px; color:#4c6b52; font-weight:600; margin-bottom:22px;
    background:rgba(255,255,255,.55); padding:6px 14px; border-radius:999px; }
  .card {
    width:100%; max-width:680px; background:#FFF6E3;
    border:2px solid #E8D5B5; border-radius:22px;
    box-shadow: 0 10px 24px rgba(60,40,10,.18);
    padding: 24px 26px; margin-bottom:18px;
  }
  .card h2 { font-size:20px; font-weight:900; display:flex; align-items:center; gap:8px; margin-bottom:14px; }
  .badge { font-size:11px; font-weight:800; color:#fff; padding:3px 10px; border-radius:999px; vertical-align:middle; }
  .badge.live { background:#57A83C; }
  .badge.soon { background:#B9A48B; }
  .row { display:flex; gap:22px; align-items:center; flex-wrap:wrap; }
  .qrbox { background:#fff; border:2px solid #E8D5B5; border-radius:16px; padding:10px; line-height:0; }
  .qrbox img { width:180px; height:180px; image-rendering:pixelated; }
  .dl-info { flex:1; min-width:230px; }
  .btn {
    display:block; text-align:center; text-decoration:none;
    background: linear-gradient(180deg,#F7B23B,#EE8A1F);
    color:#fff; font-weight:900; font-size:18px;
    border:2px solid #D97711; border-radius:14px;
    padding:14px 18px; box-shadow: 0 4px 0 #C4680C;
    transition: transform .06s ease;
  }
  .btn:active { transform: translateY(3px); box-shadow:0 1px 0 #C4680C; }
  .meta { font-size:13px; color:#8a705a; margin-top:10px; line-height:1.7; }
  .meta code { background:#f3e8d2; padding:1px 6px; border-radius:6px; font-size:12px; word-break:break-all; }
  details { margin-top:14px; font-size:14px; }
  details summary { cursor:pointer; font-weight:800; color:#B06A1F; }
  details ol { margin:10px 0 4px 20px; line-height:1.9; }
  .ios-note { font-size:14px; line-height:1.8; color:#7d6a58; }
  .server { font-size:13px; color:#59504a; line-height:1.9; }
  .server a { color:#2E7E8C; font-weight:700; }
  .footer { display:flex; align-items:center; gap:14px; margin-top:6px; }
  .footer .qrbox img { width:92px; height:92px; }
  .footer .txt { font-size:12px; color:#57694f; line-height:1.7; }
  @media (max-width:520px){ .logo .find{font-size:44px} .qrbox img{width:150px;height:150px} }
</style>
</head>
<body>
  <div class="logo"><span class="find">find it!</span><span class="battle">the Battle</span></div>
  <div class="sub">틀린그림찾기 실시간 배틀 — 테스트 빌드 배포 페이지</div>

  <!-- Android -->
  <div class="card">
    <h2>🤖 Android 테스트 앱 <span class="badge live">LIVE</span></h2>
    <div class="row">
      <div class="qrbox"><img src="__QR_APK__" alt="Android APK QR"></div>
      <div class="dl-info">
        <a class="btn" href="__APK_URL__">⬇︎ APK 다운로드 (v1.0.0 · 60MB)</a>
        <div class="meta">
          휴대폰 카메라로 QR을 찍으면 바로 다운로드됩니다.<br>
          패키지: <code>com.findit.battle</code> · 서명: FindIt 릴리스 키
        </div>
        <details>
          <summary>설치 방법 (30초)</summary>
          <ol>
            <li>QR 스캔 또는 버튼을 눌러 APK 다운로드</li>
            <li>파일 열기 → "출처를 알 수 없는 앱 설치 허용" 켜기 (Chrome/파일 앱에 1회 허용)</li>
            <li>설치 후 실행 → <b>GUEST</b> 버튼으로 즉시 입장 (가입 불필요)</li>
          </ol>
        </details>
      </div>
    </div>
  </div>

  <!-- iOS -->
  <div class="card">
    <h2> iOS (TestFlight) <span class="badge soon">준비중</span></h2>
    <div class="ios-note">
      Apple Developer 계정은 준비돼 있고, App Store Connect 앱 등록 후 TestFlight 초대 링크가 이 자리에 올라옵니다.<br>
      급하면 맥에서 시뮬레이터 실행: <b>레포 클론 → client_flutter → flutter run</b> (서버 주소는 dart-define 3개 — README/메모 참조)
    </div>
  </div>

  <!-- 서버 -->
  <div class="card">
    <h2>🌐 테스트 서버</h2>
    <div class="server">
      운영 API: <a href="__SERVER_URL__/status" target="_blank" rel="noopener">__SERVER_HOST__</a>
      &nbsp;·&nbsp; <a href="__SERVER_URL__/status" target="_blank" rel="noopener">서버 상태 확인</a> (<code>{"ok":true}</code>가 보이면 정상)<br>
      실시간 배틀: WebSocket <code>/ws</code> · DB: Cloud SQL (us-central1)
    </div>
  </div>

  <!-- footer -->
  <div class="footer">
    <div class="qrbox"><img src="__QR_PAGE__" alt="이 페이지 QR"></div>
    <div class="txt">📤 <b>이 페이지 공유용 QR</b><br>빌드: __BUILD_DATE__ · Flutter 3.44 · findit-jwj-2026<br>테스트 중 문제가 있으면 스크린샷과 함께 알려주세요!</div>
  </div>
</body>
</html>
