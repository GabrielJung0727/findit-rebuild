package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.Defines;

/* JADX INFO: loaded from: classes.dex */
public class DotoriSmsAuthConfirm extends MsgConfirm {
    private String mobileSign;
    private String signData;
    private int mobileSign_Len = 0;
    private int signData_Len = 0;

    @Override // com.feelingk.iap.net.MsgConfirm, com.feelingk.iap.net.Confirm, com.feelingk.iap.net.Header
    protected void parse(byte[] v) {
        super.parse(v);
        int offset = getMsgLength() + 14;
        this.mobileSign_Len = v[offset] & Defines.IAP_GATEWAY_RESPONSE.IAP_ERR_ALREADYCONNECTED;
        int offset2 = offset + 1;
        byte[] _mobileSign = new byte[this.mobileSign_Len];
        System.arraycopy(v, offset2, _mobileSign, 0, _mobileSign.length);
        int offset3 = offset2 + _mobileSign.length;
        try {
            this.mobileSign = new String(_mobileSign, "MS949").trim();
            CommonF.LOGGER.e("DotoriSmsAuthConfirm", "mobileSign: " + this.mobileSign);
        } catch (Exception e) {
            CommonF.LOGGER.i("DotoriSmsAuthConfirm", e.toString());
        }
        this.signData_Len = v[offset3] & Defines.IAP_GATEWAY_RESPONSE.IAP_ERR_ALREADYCONNECTED;
        int offset4 = offset3 + 1;
        byte[] _signData = new byte[this.signData_Len];
        System.arraycopy(v, offset4, _signData, 0, _signData.length);
        int length = offset4 + _signData.length;
        try {
            this.signData = new String(_signData, "MS949").trim();
            CommonF.LOGGER.e("DotoriSmsAuthConfirm", "signData: " + this.signData);
        } catch (Exception e2) {
            CommonF.LOGGER.i("DotoriSmsAuthConfirm", e2.toString());
        }
    }

    public String getMobileSign() {
        return this.mobileSign;
    }

    public String getSignData() {
        return this.signData;
    }
}
