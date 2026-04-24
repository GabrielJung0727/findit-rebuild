package com.feelingk.iap.util;

/* JADX INFO: loaded from: classes.dex */
public final class CommonString {

    public enum Index {
        WARNING_PERMISSION,
        CONFIRM,
        WORK_PROCESSING_STRING,
        WORK_AUTO_PURCHASE_INFONAME,
        WORK_AUTO_PURCHASE_INFO_AGREE,
        WORK_AUTO_FORM_STRING,
        WORK_IMEIAUTH_STRING,
        ERROR_NETWORK_CONNECT_CHECK_STRING,
        ERROR_NETWORK_SEND_RECV_CHECK_STRING,
        ERROR_PURCHASE_STRING,
        ERROR_ONITEMQUERY_STRING,
        ERROR_INTERNET_ACCESS_STRING,
        ERROR_USIM_ACTIVATE_STRING,
        ERROR_JUMIN_NUMBER_LENGTH,
        ERROR_USER_CERTI_FAIL_STRING,
        FINAL_VERSION_CHECK_STRING,
        ERROR_NONE_PARAMETER_STRING,
        ERROR_DLG_AUTO_PURCHASE,
        DLG_AUTO_PURCHASE_INFO,
        DLG_AUTO_PURCHASE_INFO2,
        DLG_AUTO_PURCHASE_DISMISS_INFO,
        DLG_TSTORE_NOT_INSTALLED_STRING,
        ERROR_SMS_NUMBER_AUTH_STRING,
        DOTORI_AUTH_SMS_SEND_MESSAGE_STRING,
        DOTORI_AUTH_SMS_SEND_MESSAGE_ERROR_STRING,
        DOTORI_MEMBERINFO_STRING,
        DOTORI_COUNT,
        DOTORI_INQUIRY,
        DOTORI_LIMIT_EXCESS_STRING,
        CUTURE_INQUIRY,
        OCB_CARD_DELETE_STRING,
        OCB_INQUIRY,
        OCB_REGIST,
        OCB_REGIST_SMALL,
        OCB_CHANGE_CARD,
        OCB_DELETE_CARD,
        WON,
        USE,
        USING,
        USE_CANCEL,
        MONTH_AUTO_PAYMENT_INFO,
        MENT_SECURE_PAYMENTS,
        MENT_SUM_PAYMENTS,
        MENT_DANAL_PAYMENTS,
        MENT_MONT_AUTO_PAYMENTS,
        MENT_PRIVACY_POLICY,
        MENT_REQUEST_AUTHORIZATION,
        MENT_NUMBER_RECLAIMED,
        MENT_NUMBER_REQUEST,
        HINT_INPUT_SECURITY,
        DO_NOT_USE_AUTHENITACTION,
        RECEIVE_CODE,
        LAST_REQUEST,
        DEVELOPMENT,
        T_STORE_INPUT_PASSWORD,
        RETRY_ENTER_PASSWORD,
        CANCEL;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static Index[] valuesCustom() {
            Index[] indexArrValuesCustom = values();
            int length = indexArrValuesCustom.length;
            Index[] indexArr = new Index[length];
            System.arraycopy(indexArrValuesCustom, 0, indexArr, 0, length);
            return indexArr;
        }
    }

    public static final String getString(Index index) {
        return CommonStringKorean.getCommonString(index);
    }
}
