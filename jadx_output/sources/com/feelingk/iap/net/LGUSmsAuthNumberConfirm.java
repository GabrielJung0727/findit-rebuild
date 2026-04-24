package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.Defines;

/* JADX INFO: loaded from: classes.dex */
public class LGUSmsAuthNumberConfirm extends MsgConfirm {
    private String authKey;
    private int key_Len = 0;

    @Override // com.feelingk.iap.net.MsgConfirm, com.feelingk.iap.net.Confirm, com.feelingk.iap.net.Header
    protected void parse(byte[] v) {
        super.parse(v);
        int offset = getMsgLength() + 14;
        this.key_Len = v[offset] & Defines.IAP_GATEWAY_RESPONSE.IAP_ERR_ALREADYCONNECTED;
        int offset2 = offset + 1;
        byte[] _authKey = new byte[this.key_Len];
        System.arraycopy(v, offset2, _authKey, 0, _authKey.length);
        int length = offset2 + _authKey.length;
        try {
            this.authKey = new String(_authKey, "MS949").trim();
        } catch (Exception e) {
            CommonF.LOGGER.i("IAPNet", "[LGUSmsAuthNumberConfirm] :" + e.toString());
        }
    }

    public int getKey_Len() {
        return this.key_Len;
    }

    public String getAuthKey() {
        return this.authKey;
    }
}
