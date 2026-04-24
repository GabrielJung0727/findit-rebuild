package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class CultureLandCashConfirm extends MsgConfirm {
    static final String TAG = "CultureLandCashConfirm";
    public String cultureAutnName;
    public String cultureLandAuth;
    public String cultureLandCashBalance;
    public String cultureLandUserAuthNum;
    public String cultureLandUserKey;

    @Override // com.feelingk.iap.net.MsgConfirm, com.feelingk.iap.net.Confirm, com.feelingk.iap.net.Header
    protected void parse(byte[] v) {
        super.parse(v);
        int offset = getMsgLength() + 14;
        try {
            CommonF.LOGGER.i(TAG, "CultureLandCashConfirm result code : " + ((int) getResultCode()));
            byte[] b_cultureLandUserKey = new byte[12];
            System.arraycopy(v, offset, b_cultureLandUserKey, 0, 12);
            this.cultureLandUserKey = new String(b_cultureLandUserKey, "MS949").trim();
            int offset2 = offset + 12;
            CommonF.LOGGER.i(TAG, "cultureLandUserKey : " + this.cultureLandUserKey);
            byte[] b_cultureLandUserAuthNum = new byte[25];
            System.arraycopy(v, offset2, b_cultureLandUserAuthNum, 0, 25);
            int offset3 = offset2 + 25;
            this.cultureLandUserAuthNum = new String(b_cultureLandUserAuthNum, "MS949").trim();
            CommonF.LOGGER.i(TAG, "cultureLandUserAuthNum : " + this.cultureLandUserAuthNum);
            byte[] b_cultureLandCashBalance = new byte[6];
            System.arraycopy(v, offset3, b_cultureLandCashBalance, 0, 6);
            int offset4 = offset3 + 6;
            this.cultureLandCashBalance = new String(b_cultureLandCashBalance, "MS949").trim();
            CommonF.LOGGER.i(TAG, "cultureLandCashBalance : " + this.cultureLandCashBalance);
            byte[] b_cultureLandAuth = new byte[1];
            System.arraycopy(v, offset4, b_cultureLandAuth, 0, 1);
            int offset5 = offset4 + 1;
            this.cultureLandAuth = new String(b_cultureLandAuth, "MS949").trim();
            CommonF.LOGGER.i(TAG, "cultureLandAuth : " + this.cultureLandAuth);
            byte[] b_cultureAutnName = new byte[20];
            System.arraycopy(v, offset5, b_cultureAutnName, 0, 20);
            int i = offset5 + 20;
            this.cultureAutnName = new String(b_cultureAutnName, "MS949").trim();
            CommonF.LOGGER.i(TAG, "cultureAutnName : " + this.cultureAutnName);
        } catch (Exception e) {
            CommonF.LOGGER.e(TAG, "[CultureLandCashConfirm] :" + e.toString());
            setResultCode((byte) -10);
        }
    }

    public String getCultureLandUserKey() {
        return this.cultureLandUserKey;
    }

    public String getCultureLandUserAuthNum() {
        return this.cultureLandUserAuthNum;
    }

    public String getCultureLandCashBalance() {
        return this.cultureLandCashBalance;
    }

    public String getCultureLandAuth() {
        return this.cultureLandAuth;
    }

    public String getCultureAutnName() {
        return this.cultureAutnName;
    }
}
