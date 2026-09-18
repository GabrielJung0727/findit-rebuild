package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class OKCashbagPointInfoConfirm extends MsgConfirm {
    static final String TAG = "OKCashbagPointInfoConfirm";
    public String OCBPointBalance;

    @Override // com.feelingk.iap.net.MsgConfirm, com.feelingk.iap.net.Confirm, com.feelingk.iap.net.Header
    protected void parse(byte[] v) {
        super.parse(v);
        int offset = getMsgLength() + 14;
        try {
            CommonF.LOGGER.i(TAG, "OKCashbagPointInfoConfirm result code : " + ((int) getResultCode()));
            byte[] OKCashbagPointBalance = new byte[6];
            System.arraycopy(v, offset, OKCashbagPointBalance, 0, 6);
            int i = offset + 6;
            this.OCBPointBalance = new String(OKCashbagPointBalance, "MS949").trim();
            CommonF.LOGGER.i(TAG, "OCBPointBalance: " + this.OCBPointBalance);
        } catch (Exception e) {
            CommonF.LOGGER.e(TAG, "[OKCashbagPointInfoConfirm] :" + e.toString());
            setResultCode((byte) -10);
        }
    }

    public String getOCBPointBalance() {
        return this.OCBPointBalance;
    }
}
