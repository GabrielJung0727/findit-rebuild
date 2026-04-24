package com.feelingk.iap.net;

import com.feelingk.iap.util.CommonF;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public class ItemInfoConfirm extends MsgConfirm {
    private String mDotoriBalance;
    private String mDotoriLinkInfo;
    private String mItemPrice;
    private String mItemTitle;
    private String mNCMembershipInfo;
    private String mNCMembershipNumber;
    private String mOCBCardNum;
    private int mOCBCardNumLength;
    private String mOCBRegisterInfo;
    private String mPeriod;
    private String mTCash;
    private boolean mFinalVersionCheck = true;
    private boolean mAutoPurchaseCheck = false;
    private boolean mAfterAutoPurchaseInfoAgree = false;

    @Override // com.feelingk.iap.net.MsgConfirm, com.feelingk.iap.net.Confirm, com.feelingk.iap.net.Header
    protected void parse(byte[] v) {
        super.parse(v);
        int offset = getMsgLength() + 14;
        try {
            byte[] _byte = new byte[30];
            System.arraycopy(v, offset, _byte, 0, 30);
            this.mItemTitle = new String(_byte, "MS949").trim();
            int offset2 = offset + 30;
            CommonF.LOGGER.i("ItemInfoConfirm", "mItemTitle: " + this.mItemTitle);
            byte[] _byte2 = new byte[10];
            System.arraycopy(v, offset2, _byte2, 0, 10);
            this.mItemPrice = new String(_byte2, "MS949").trim();
            int offset3 = offset2 + 10;
            CommonF.LOGGER.i("ItemInfoConfirm", "mItemPrice: " + this.mItemPrice);
            byte[] _byte3 = new byte[10];
            System.arraycopy(v, offset3, _byte3, 0, 10);
            this.mPeriod = new String(_byte3, "MS949").trim();
            int offset4 = offset3 + 10;
            CommonF.LOGGER.i("ItemInfoConfirm", "mPeriod: " + this.mPeriod);
            byte[] _byte4 = new byte[10];
            System.arraycopy(v, offset4, _byte4, 0, 10);
            this.mTCash = new String(_byte4, "MS949").trim();
            int offset5 = offset4 + 10;
            CommonF.LOGGER.i("ItemInfoConfirm", "mTCash: " + this.mTCash);
            byte[] _byte5 = new byte[1];
            System.arraycopy(v, offset5, _byte5, 0, 1);
            this.mOCBRegisterInfo = new String(_byte5, "MS949").trim();
            int offset6 = offset5 + 1;
            CommonF.LOGGER.i("ItemInfoConfirm", "mOCBRegisterInfo: " + this.mOCBRegisterInfo);
            System.arraycopy(v, offset6, new byte[1], 0, 1);
            this.mOCBCardNumLength = v[offset6];
            int offset7 = offset6 + 1;
            CommonF.LOGGER.i("ItemInfoConfirm", "mOCBCardNumLength: " + this.mOCBCardNumLength);
            byte[] _byte6 = new byte[this.mOCBCardNumLength];
            System.arraycopy(v, offset7, _byte6, 0, this.mOCBCardNumLength);
            this.mOCBCardNum = new String(_byte6, "MS949").trim();
            int offset8 = offset7 + this.mOCBCardNumLength;
            CommonF.LOGGER.i("ItemInfoConfirm", "mOCBCardNum: " + this.mOCBCardNum);
            byte[] _byte7 = new byte[1];
            System.arraycopy(v, offset8, _byte7, 0, 1);
            this.mDotoriLinkInfo = new String(_byte7, "MS949").trim();
            int offset9 = offset8 + 1;
            CommonF.LOGGER.i("ItemInfoConfirm", "mDotoriLinkInfo: " + this.mDotoriLinkInfo);
            byte[] _byte8 = new byte[1];
            System.arraycopy(v, offset9, _byte8, 0, 1);
            this.mNCMembershipInfo = new String(_byte8, "MS949").trim();
            int offset10 = offset9 + 1;
            CommonF.LOGGER.i("ItemInfoConfirm", "mNCMembershipInfo: " + this.mNCMembershipInfo);
            byte[] _byte9 = new byte[11];
            System.arraycopy(v, offset10, _byte9, 0, 11);
            this.mNCMembershipNumber = new String(_byte9, "MS949").trim();
            CommonF.LOGGER.i("ItemInfoConfirm", "mNCMembershipNumber: " + this.mNCMembershipNumber);
            byte[] _byte10 = new byte[6];
            System.arraycopy(v, offset10 + 11, _byte10, 0, 6);
            this.mDotoriBalance = new String(_byte10, "MS949").trim();
            CommonF.LOGGER.i("ItemInfoConfirm", "mDotoriBalance: " + this.mDotoriBalance);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

    public String getItemTitle() {
        return this.mItemTitle;
    }

    public String getItemPrice() {
        return this.mItemPrice;
    }

    public String getItemPeriod() {
        return this.mPeriod;
    }

    public String getItemTCash() {
        return this.mTCash;
    }

    public String getmOCBRegisterInfo() {
        return this.mOCBRegisterInfo;
    }

    public int getmOCBCardNumLength() {
        return this.mOCBCardNumLength;
    }

    public String getmOCBCardNum() {
        return this.mOCBCardNum;
    }

    public String getmDotoriLinkInfo() {
        return this.mDotoriLinkInfo;
    }

    public String getmNCMembershipInfo() {
        return this.mNCMembershipInfo;
    }

    public String getmNCMembershipNumber() {
        return this.mNCMembershipNumber;
    }

    public String getmDotoriBalance() {
        return this.mDotoriBalance;
    }

    public void setmFinalVersionCheck(boolean mFinalVersionCheck) {
        this.mFinalVersionCheck = mFinalVersionCheck;
    }

    public boolean getmFinalVersionCheck() {
        return this.mFinalVersionCheck;
    }

    public void setmAutoPurchaseCheck(boolean mAutoPurchase) {
        this.mAutoPurchaseCheck = mAutoPurchase;
    }

    public boolean getmAutoPurchaseCheck() {
        return this.mAutoPurchaseCheck;
    }

    public void setmAfterAutoPurchaseInfoAgree(boolean mAfterAutoPurchaseInfoAgree) {
        this.mAfterAutoPurchaseInfoAgree = mAfterAutoPurchaseInfoAgree;
    }

    public boolean getmAfterAutoPurchaseInfoAgree() {
        return this.mAfterAutoPurchaseInfoAgree;
    }
}
