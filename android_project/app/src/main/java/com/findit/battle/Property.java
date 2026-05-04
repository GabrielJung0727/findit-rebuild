package com.findit.battle;

/**
 * 전역 상수 — 서버 주소 / 외부 서비스 ID 등.
 *
 * <h3>GCP 프로젝트</h3>
 * <ul>
 *   <li>프로젝트 이름: <b>Findit</b></li>
 *   <li>프로젝트 번호: <b>434469624646</b></li>
 *   <li>프로젝트 ID:   <b>findit-494900</b></li>
 *   <li>리전: <b>us-central1</b> (Always Free 적용)</li>
 * </ul>
 *
 * <h3>배포 환경별 빌드 (gradle 빌드 시 BuildConfig 로 분기 권장)</h3>
 * <ul>
 *   <li>로컬 개발 (Android 에뮬레이터): SERVER_DOMAIN=http://10.0.2.2:8080/</li>
 *   <li>로컬 개발 (실기기 + 같은 Wi-Fi): 호스트 PC LAN IP</li>
 *   <li>운영 (GCP Cloud Run): SERVER_DOMAIN_PROD 사용</li>
 * </ul>
 *
 * <p>현재는 GCP 운영 URL 을 기본값으로 사용. 로컬 디버그 시 SERVER_DOMAIN_LOCAL 로 교체.
 * 향후 product flavor 분리 권장 (debug/release).
 */
public class Property {
    // =====================================================
    // 서버 URL — GCP Cloud Run (us-central1)
    // =====================================================
    /** GCP 운영 서버. Cloud Run 배포 후 실제 URL 로 교체 필요. */
    public static final String SERVER_DOMAIN_PROD = "https://findit-api-434469624646.us-central1.run.app/";
    /** 로컬 개발 — Android 에뮬레이터 호스트 루프백. */
    public static final String SERVER_DOMAIN_LOCAL = "http://10.0.2.2:8080/";

    /** 실제 사용되는 도메인. release 빌드 시 PROD, debug 시 LOCAL 로 교체. */
    public static final String SERVER_DOMAIN = SERVER_DOMAIN_PROD;

    // =====================================================
    // 서버 — TCP 소켓 (멀티플레이 매칭/중계)
    // =====================================================
    /** GCP GCE e2-micro VM (us-central1-a, findit-socket, static IP) — 멀티플레이 TCP 소켓 22131. */
    public static final String SERVER_IP_PROD  = "34.59.185.105";
    public static final String SERVER_IP_LOCAL = "10.0.2.2";
    public static final String SERVER_IP = SERVER_IP_PROD;
    public static final int    SERVER_SOCKET_PORT = 22131;

    // =====================================================
    // REST 경로 (SERVER_DOMAIN 뒤에 붙음)
    // =====================================================
    public static final String SERVER_PORT = "8080"; // deprecated — 호환용
    public static final String SERVER_URL_BUYLIST = "app/member/itemPurchaseHistList?userId=";
    public static final String SERVER_URL_RANK    = "app/member/rankList?userId=";

    // =====================================================
    // 네트워크 보안 — HTTPS 강제 (Cloud Run 기본)
    // =====================================================
    public static final boolean USES_CLEARTEXT_TRAFFIC = false;

    // =====================================================
    // 외부 서비스 ID (원본 APK 그대로 유지)
    // =====================================================
    public static final String ADHUB_ID = "xv0d000000029e";
    public static final String SAMSUNG_IAP_ID = "100000100952";
    public static final String SAMSUNG_IAP_ITEM_ID_COIN1000 = "000001005358";
    public static final String SAMSUNG_IAP_ITEM_ID_COIN2500 = "000001005359";
    public static final String SAMSUNG_IAP_ITEM_ID_COIN5500 = "000001005360";
    public static final String SAMSUNG_IAP_ITEM_ID_COIN8500 = "000001005361";
    public static final int SAMSUNG_IAP_MODE = 0;

    // =====================================================
    // GCP 프로젝트 메타 (모니터링 / 로그용)
    // =====================================================
    public static final String GCP_PROJECT_ID     = "findit-494900";
    public static final String GCP_PROJECT_NUMBER = "434469624646";
    public static final String GCP_REGION         = "us-central1";
}
