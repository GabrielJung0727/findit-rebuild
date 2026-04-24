package com.findit.battle;

/**
 * 전역 상수 — 서버 주소 / 외부 서비스 ID 등.
 *
 * 원본 서버 {@code 14.63.220.39} 는 2014 년 이후 서비스 종료됨.
 * 신규 서버는 {@code server/} 디렉터리의 Node.js 구현을 사용.
 *
 * <h3>배포 환경별 값</h3>
 * <ul>
 *   <li>로컬 개발 (Android 에뮬레이터): SERVER_DOMAIN=http://10.0.2.2:8080/, SERVER_IP=10.0.2.2</li>
 *   <li>로컬 개발 (실기기 + 같은 Wi-Fi): 호스트 PC 의 LAN IP 사용</li>
 *   <li>운영: GCP Cloud Run HTTPS URL (소켓은 별도 GCE/GKE)</li>
 * </ul>
 *
 * <p>HTTPS 전환 시 {@link #USES_CLEARTEXT_TRAFFIC} 을 false 로 설정하고
 * {@code AndroidManifest.xml} 의 {@code android:usesCleartextTraffic} 도 맞춰야 함.
 */
public class Property {
    // =====================================================
    // 서버 — HTTP/REST
    // =====================================================
    /** 기본 도메인. 말미 슬래시 필수. 엔드포인트 경로와 결합됨. */
    public static final String SERVER_DOMAIN = "http://10.0.2.2:8080/";

    // =====================================================
    // 서버 — TCP 소켓 (멀티플레이 매칭/중계)
    // =====================================================
    public static final String SERVER_IP = "10.0.2.2";
    public static final int    SERVER_SOCKET_PORT = 22131;

    // =====================================================
    // REST 경로 (SERVER_DOMAIN 뒤에 붙음)
    // =====================================================
    public static final String SERVER_PORT = "8080"; // deprecated — 호환용
    public static final String SERVER_URL_BUYLIST = "app/member/itemPurchaseHistList?userId=";
    public static final String SERVER_URL_RANK    = "app/member/rankList?userId=";

    // =====================================================
    // 네트워크 보안
    // =====================================================
    /** HTTPS 전환 완료 시 false 로 설정. 현재는 로컬 개발용 HTTP 허용. */
    public static final boolean USES_CLEARTEXT_TRAFFIC = true;

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
}
