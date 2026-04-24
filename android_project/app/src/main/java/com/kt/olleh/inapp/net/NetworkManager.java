package com.kt.olleh.inapp.net;

import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.kt.olleh.inapp.Config.Config;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class NetworkManager {
    static final HostnameVerifier DO_NOT_VERIFY = new HostnameVerifier() { // from class: com.kt.olleh.inapp.net.NetworkManager.1
        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String arg0, SSLSession arg1) {
            return true;
        }
    };
    private static final int READ_TIMEOUT = 25000;
    private static final int RETRY_COUNT = 3;
    private static final int SOCKET_TIMEOUT = 25000;
    private static final String TAG = "NetworkManager";
    private volatile boolean mRun;
    private int mLastStatus = 410;
    private int mLastError = -1;
    private HttpURLConnection mURLConnection = null;
    private HttpsURLConnection mhttpsURLConnection = null;
    private final String TB_GEN_HTTPS = "https://221.148.247.203:7777/INAP_GW/inap_gw/getSymKeyGen";
    private final String RS_GEN_HTTPS = "https://inapppurchase.ollehmarket.com:443/INAP_GW/inap_gw/getSymKeyGen";
    private int mRetryCount = 3;
    private HttpClient mClient = null;

    public NetworkManager() {
        this.mRun = true;
        this.mRun = true;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Networkmanager in");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.InputStream getData(java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kt.olleh.inapp.net.NetworkManager.getData(java.lang.String):java.io.InputStream");
    }

    public int getLastHttpCode() {
        return this.mLastStatus;
    }

    public int getLastError() {
        return this.mLastError;
    }

    public void close() {
        if (Config.DEBUG) {
            Config.LogD(TAG, "NetworkManager close");
        }
        if (this.mClient != null) {
            this.mClient = null;
        }
    }

    public void cancel() {
        if (Config.DEBUG) {
            Config.LogD(TAG, "NetworkManager cancel");
        }
        this.mRun = false;
        this.mLastError = -18;
        if (this.mURLConnection != null) {
            this.mURLConnection.disconnect();
            this.mURLConnection = null;
            this.mRetryCount = 0;
        }
        if (this.mhttpsURLConnection != null) {
            this.mhttpsURLConnection.disconnect();
            this.mhttpsURLConnection = null;
            this.mRetryCount = 0;
        }
    }

    class GetGenHttpsConnection extends HttpsURLConnection {
        protected GetGenHttpsConnection(URL url) {
            super(url);
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public String getCipherSuite() {
            return null;
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Certificate[] getLocalCertificates() {
            return null;
        }

        @Override // javax.net.ssl.HttpsURLConnection
        public Certificate[] getServerCertificates() throws SSLPeerUnverifiedException {
            return null;
        }

        @Override // java.net.HttpURLConnection
        public void disconnect() {
        }

        @Override // java.net.HttpURLConnection
        public boolean usingProxy() {
            return false;
        }

        @Override // java.net.URLConnection
        public void connect() throws IOException {
        }
    }

    private static void trustAllHosts() {
        TrustManager[] trustAllCerts = {new X509TrustManager() { // from class: com.kt.olleh.inapp.net.NetworkManager.2
            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
            }
        }};
        try {
            SSLContext sc = SSLContext.getInstance("TLS");
            sc.init(null, trustAllCerts, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public InputStream getDataStandAlond(String api) {
        String xml = null;
        if (api.equalsIgnoreCase("getSymKeyGen")) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason> 과금처리 실패 [OI1200:CP/SP 권한 체크시 에러가 발생하였습니다.] </reason></result><value><symmetric_key>8E0IU2955MUOEE2J</symmetric_key><seq_key>KEY0131103130171</seq_key></value></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.getUseDiList) || api.equalsIgnoreCase(InAppAPI.getBuyDiList) || api.equalsIgnoreCase(InAppAPI.getAllDiList) || api.equalsIgnoreCase(InAppAPI.getGiftDiList) || api.equalsIgnoreCase(InAppAPI.getReceiveDiList)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.getDiDetail)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><di_id>di20110117000000001</di_id><di_title>디지털아이템명</di_title><desc>디지털아이템설명</desc><price>200</price><use_term>20110203</use_term><use_lmt_cnt>100</use_lmt_cnt></value></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.getDownloadDiList)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><list_num>2</list_num><di_list><row><gift_flag>N</gift_flag><di_title>디지털아이템명1</di_title><di_id>di20110117000000001</di_id><price>1,000</price></row><row><gift_flag>Y</gift_flag><di_title>디지털아이템명2</di_title><di_id>di20110117000000002</di_id><price>2,000</price></row></di_list></value></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.buyDi) || api.equalsIgnoreCase(InAppAPI.buyCancelDi)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.esBuyDi)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ollehstoreSoIP><resultCode>000</resultCode><resultMessage>정상</resultMessage></ollehstoreSoIP>";
        } else if (api.equalsIgnoreCase(InAppAPI.giftDi) || api.equalsIgnoreCase(InAppAPI.reGiftDi) || api.equalsIgnoreCase(InAppAPI.approvedUseDi)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id></value></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.approvedDownDi)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>1</reason></result><value><app_id>app20110117000000001</app_id><seq_key>KEY010110126347</seq_key><di_id>di201101170000000001</di_id><file_name>testfile</file_name><mime_type>txt</mime_type></value></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.getFile)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason> 사용자 인증 처리 실패 </reason><value><seq_key>KEY010110126347</seq_key><file2byte>UEsDBAoAAAAAAGt1hz6ZFwecEAAAABAAAAAQAAAAaW5hcEZpbGVUZXN0LnR4dGluYXBGaWxlRG93blRlc3RQSwECFAAKAAAAAABrdYc+mRcHnBAAAAAQAAAAEAAAAAAAAAAAACAAAAAAAAAAaW5hcEZpbGVUZXN0LnR4dFBLBQYAAAAAAQABAD4AAAA+AAAAAAA=</file2byte></value></result></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.getFile)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code> A005</code><reason> 사용자 인증 처리 실패 </reason><value><seq_key>KEY010110126347</seq_key><file2byte>UEsDBAoAAAAAAGt1hz6ZFwecEAAAABAAAAAQAAAAaW5hcEZpbGVUZXN0LnR4dGluYXBGaWxlRG93blRlc3RQSwECFAAKAAAAAABrdYc+mRcHnBAAAAAQAAAAEAAAAAAAAAAAACAAAAAAAAAAaW5hcEZpbGVUZXN0LnR4dFBLBQYAAAAAAQABAD4AAAA+AAAAAAA=</file2byte></value></result></response>";
        } else if (api.equalsIgnoreCase(InAppAPI.checkShowId)) {
            xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<response><result><tr_id>20100720093100101126</tr_id><code>0</code><reason>사용자 인증 처리 실패 </reason></result><value><seq_key>KEY010110126347</seq_key><show_id>ollehmarket</show_id></value></response>";
        }
        try {
            InputStream input = new ByteArrayInputStream(xml.getBytes(ConnectNetwork.UTF_8));
            return input;
        } catch (UnsupportedEncodingException e) {
            Config.LogE(TAG, "getDataStandAlond() encoding error : " + e);
            return null;
        }
    }
}
