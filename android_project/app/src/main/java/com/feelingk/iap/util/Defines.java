package com.feelingk.iap.util;

/* JADX INFO: loaded from: classes.dex */
public class Defines {
    public static final boolean DEBUG = true;
    public static final boolean DUMP = false;
    public static final boolean FOREIGN_DEVELPER_MODE = false;
    public static final int IAP_BPDATA_PORT = 7610;
    public static final String IAP_GW_IP = "iapdev.tstore.co.kr";
    public static final int IAP_GW_PORT = 7410;
    public static final String IAP_LIBRARY_VERSION = "V 12.09.17";
    public static final int IAP_PACKET_HEADER_SIZE = 12;
    public static final byte IAP_PARITY_BIT = 23;
    public static final String IAP_PROTOCOL_VERSION = "12.09.17";
    public static final String IAP_SENDBPDATA_PROTOCOL = "SENDBPDATA";
    public static final String IAP_VERSION_CODE = "0002";
    public static final int IAP_WIFI_PORT = 7510;
    public static final int SOCKET_CON_TIMEOUT = 20000;
    public static final int SOCKET_TIMEOUT = 20000;

    public static final class ACTION_EVENT {
        public static final int HND_AUTH_JUMINNUMBER = 1110;
        public static final int HND_AUTOMATIC_PAYMENT = 1122;
        public static final int HND_CULTURELAND_CASH_REQ_OK = 1135;
        public static final int HND_DOTORI_SMSAUTH_NUMBER_REQ_OK = 1136;
        public static final int HND_DOTORI_SMSAUTH_REQ_OK = 1137;
        public static final int HND_ERR_LGU_SMSAUTH_ERROR = 1129;
        public static final int HND_ERR_LGU_SMSAUTH_NUMBER_REQ_ERROR = 1127;
        public static final int HND_FINAL_VERSION_CHECK = 1117;
        public static final int HND_IMEI_AUTH_NOT_REQUIRED = 1130;
        public static final int HND_IMEI_AUTH_POPUP = 1131;
        public static final int HND_IMEI_AUTH_REQ_OK = 1132;
        public static final int HND_ITEMAUTH_FINISH = 1109;
        public static final int HND_ITEMINFO_FINISH = 1104;
        public static final int HND_ITEMQUERY_FINISH = 1105;
        public static final int HND_ITEMUSE_FINISH = 1108;
        public static final int HND_JOIN_FINISH_OK = 1120;
        public static final int HND_JOIN_FORM_OPEN = 1118;
        public static final int HND_LGU_SMSAUTH_NUMBER_REQ_OK = 1126;
        public static final int HND_LGU_SMSAUTH_REQ_OK = 1128;
        public static final int HND_LIMIT_EXCESS = 1125;
        public static final int HND_OCB_CARD_UPDATE_REQ_OK = 1133;
        public static final int HND_OCB_OCBPOINTINFO_REQ_OK = 1134;
        public static final int HND_PERMISSON_ERROR = 1115;
        public static final int HND_PURCHASEAUTO_FORM_OPEN = 1124;
        public static final int HND_PURCHASE_CANCEL = 1102;
        public static final int HND_PURCHASE_CONFIRM = 1100;
        public static final int HND_PURCHASE_CONFIRM_DANAL = 1101;
        public static final int HND_PURCHASE_DISMISS = 1123;
        public static final int HND_PURCHASE_DISMISS_CHECK = 1139;
        public static final int HND_PURCHASE_FINISH = 1106;
        public static final int HND_PURCHASE_FINISH_OK = 1103;
        public static final int HND_SELLERINFO_REQ_OK = 1138;
        public static final int HND_SKT_CERTI_FAIL = 1121;
        public static final int HND_USER_CERTI_FAIL = 1119;
        public static final int HND_USIM_ACTIVATE_ERROR = 1116;
        public static final int HND_WHOLEQUERY_FINISH = 1107;
    }

    public static final class DIALOG_STATE {
        public static final int DLG_ALERT_DIALOG = 119;
        public static final int DLG_AUTH_DIALOG = 106;
        public static final int DLG_AUTO_PURCHASE = 110;
        public static final int DLG_AUTO_PURCHASE_DISMISS = 112;
        public static final int DLG_AUTO_PURCHASE_ERROR = 111;
        public static final int DLG_AUTO_PURCHASE_FORM_DIALOG = 113;
        public static final int DLG_CULTURELAND_LOGIN_DIALOG = 122;
        public static final int DLG_CUTURE_QUERY_ERROR = 128;
        public static final int DLG_DOTORI_AUTH_DIALOG = 130;
        public static final int DLG_DOTORI_LINK_AFTER = 125;
        public static final int DLG_DOTORI_SMS_AUTH_DIALOG = 123;
        public static final int DLG_ERROR = 101;
        public static final int DLG_FOREIGN_INPUT_MDN_DIALOG = 124;
        public static final int DLG_GET_JUMIN_NUMBER = 109;
        public static final int DLG_IMEI_AUTH_DIALOG = 118;
        public static final int DLG_JOIN_DIALOG = 107;
        public static final int DLG_JOIN_FORM_DIALOG = 108;
        public static final int DLG_LGU_SMS_AUTH_DIALOG = 117;
        public static final int DLG_LIMIT_EXCESS = 116;
        public static final int DLG_LOADING_PROGRESS = 102;
        public static final int DLG_NONE = 100;
        public static final int DLG_OCB_CARD_DELETE = 126;
        public static final int DLG_OCB_DELETE_YESNO_DIALOG = 129;
        public static final int DLG_OCB_PWD_DIALOG = 121;
        public static final int DLG_OCB_REG_DIALOG = 120;
        public static final int DLG_OCB_REG_ERROR = 127;
        public static final int DLG_OTP_DIALOG = 114;
        public static final int DLG_PURCHASE = 103;
        public static final int DLG_PURCHASE_CONFIRM = 105;
        public static final int DLG_PURCHASE_PROGRESS = 104;
        public static final int DLG_YESNO_DIALOG = 115;
    }

    public static final class IAP_GATEWAY_RESPONSE {
        public static final byte IAP_AE_SUCCESS = 0;
        public static final byte IAP_APP_LIMIT_EXCESS = 7;
        public static final byte IAP_AUTOMATIC_PAYMENT = 8;
        public static final byte IAP_AUTOMATIC_REPAYMENT = 10;
        public static final byte IAP_ERR_ALREADYCONNECTED = -1;
        public static final byte IAP_ERR_ALREADYINIT = -7;
        public static final byte IAP_ERR_CONNECT_FAIL = -3;
        public static final byte IAP_ERR_DISCONNECTED = -2;
        public static final byte IAP_ERR_DOWNLOADING = -9;
        public static final byte IAP_ERR_INVALIDPARITY = -8;
        public static final byte IAP_ERR_NORMAL_TIMEOUT_FAIL = -11;
        public static final byte IAP_ERR_NOTINIT = -6;
        public static final byte IAP_ERR_PARSE_FAIL = -10;
        public static final byte IAP_ERR_RECV_FAIL = -5;
        public static final byte IAP_ERR_RECV_TIMEOUT_FAIL = -13;
        public static final byte IAP_ERR_SEND_FAIL = -4;
        public static final byte IAP_ERR_SEND_TIMEOUT_FAIL = -12;
        public static final byte IAP_FINAL_VERSION_CHECK = 7;
        public static final byte IAP_MONTH_LIMIT_EXCESS = 6;
        public static final byte IAP_NON_PURCHASE_ITEM = 4;
        public static final byte IAP_SKT_CERTI_FAIL = 2;
        public static final byte IAP_TSOTRE_MEMBERSHIP_FAIL = 11;
        public static final byte IAP_USER_CERTI_FAIL = 1;
    }

    public static final class KOR_TELECOM {
        public static final int KT_TELECOM = 2;
        public static final int LG_TELECOM = 3;
        public static final int NO_TELECOM = 0;
        public static final int SK_TELECOM = 1;
    }

    public static final class KOR_TELECOM_PACKET {
        public static final String KT_TELECOM = "12";
        public static final String LG_TELECOM = "13";
        public static final String SK_TELECOM = "11";
    }

    public static final class SDCARD_LOG_FILE_NAME {
        public static final String DOTORI_SMS_AUTH_FILE_NAME = "DotoriSMSAuthLog.txt";
        public static final String OTP_LOG_FILE_NAME = "TstoreOTPLog.txt";
    }

    public static final class WORK_PURCHASE_LIB_FLOW {
        public static final int ITEM_AUTH_FLOW = 4;
        public static final int ITEM_USE_FLOW = 5;
        public static final int ITEM_WHOLE_FLOW = 3;
        public static final int NONE_FLOW = 0;
        public static final int PURCHASE_DISMISS_FLOW = 6;
        public static final int PURCHASE_FLOW_1 = 1;
        public static final int PURCHASE_FLOW_2 = 2;
    }

    public static final class WORK_USIM_CHECK_LIB_FLOW {
        public static final int USIM_BPDATA_FLOW = 7;
        public static final int USIM_ITEM_AUTH_FLOW = 4;
        public static final int USIM_ITEM_USE_FLOW = 5;
        public static final int USIM_ITEM_WHOLE_FLOW = 3;
        public static final int USIM_NONE_FLOW = 0;
        public static final int USIM_PURCHASE_DISMISS_FLOW = 6;
        public static final int USIM_PURCHASE_FLOW_1 = 1;
        public static final int USIM_PURCHASE_FLOW_2 = 2;
    }
}
