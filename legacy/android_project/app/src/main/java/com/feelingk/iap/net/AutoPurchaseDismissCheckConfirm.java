package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class AutoPurchaseDismissCheckConfirm extends MsgConfirm {
    private String mDismissCount;
    private int mDismissCountLength;
    private String mDismissInfo;

    @Override // com.feelingk.iap.net.MsgConfirm, com.feelingk.iap.net.Confirm, com.feelingk.iap.net.Header
    protected void parse(byte[] v) {
        super.parse(v);
        int offset = getMsgLength() + 14;
        try {
            byte[] _byte = new byte[1];
            System.arraycopy(v, offset, _byte, 0, 1);
            this.mDismissInfo = new String(_byte, "MS949").trim();
            CommonF.LOGGER.i("24시간 이내 해지 여부", "mDismissInfo: " + this.mDismissInfo);
            int offset2 = offset + 1;
            System.arraycopy(v, offset2, new byte[1], 0, 1);
            this.mDismissCountLength = v[offset2];
            CommonF.LOGGER.i("동월 내 해지 횟수 Length", "mDismissCountLength: " + this.mDismissCountLength);
            byte[] _byte2 = new byte[this.mDismissCountLength];
            System.arraycopy(v, offset2 + 1, _byte2, 0, this.mDismissCountLength);
            this.mDismissCount = new String(_byte2, "MS949").trim();
            CommonF.LOGGER.i("동월 내 해지 횟수", "mDismissCount: " + this.mDismissCount);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public String getmDismissInfo() {
        return this.mDismissInfo;
    }

    public int getmDismissCountLength() {
        return this.mDismissCountLength;
    }

    public String getmDismissCount() {
        return this.mDismissCount;
    }
}
