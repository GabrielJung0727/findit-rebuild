package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResBuyDIUrl extends Response {
    public String mCd_lmt_price;
    public String mHp_lmt_price;
    public String mApp_id = null;
    public String mSeq_key = null;
    public String mDi_id = null;
    public String mCo_id = null;
    public String mPin_fail_cnt = null;
    public String mUrl = null;
    public String mOpCode = null;
    public String mPayStoreId = null;
    public String mOrderNo = null;
    public String mSessionId = null;
    public String mPayMethod = null;
    public String mPayAmount = null;
    public String mPayName = null;
    public String mCustName = null;
    public String mCustPhone = null;
    public String mCustEmail = null;
    public String mReturnUrl = null;
    public String mSymmetric_key = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mApp_id = null;
        this.mSeq_key = null;
        this.mDi_id = null;
        this.mCo_id = null;
        this.mPin_fail_cnt = null;
        this.mUrl = null;
        this.mOpCode = null;
        this.mPayStoreId = null;
        this.mOrderNo = null;
        this.mSessionId = null;
        this.mPayMethod = null;
        this.mPayAmount = null;
        this.mPayName = null;
        this.mCustName = null;
        this.mCustPhone = null;
        this.mCustEmail = null;
        this.mReturnUrl = null;
        this.mSymmetric_key = null;
        super.clear();
    }

    @Override // com.kt.olleh.inapp.net.Response
    protected boolean searchValueTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.APP_ID)) {
            this.mApp_id = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.SEQ_KEY)) {
            this.mSeq_key = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DI_ID)) {
            this.mDi_id = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.CO_ID)) {
            this.mCo_id = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PIN_FAIL_CNT)) {
            this.mPin_fail_cnt = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase("url")) {
            this.mUrl = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.OPCODE)) {
            this.mOpCode = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PAYSTOREID)) {
            this.mPayStoreId = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.ORDERNO)) {
            this.mOrderNo = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PAYMETHOD)) {
            this.mPayMethod = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PAYAMOUNT)) {
            this.mPayAmount = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PAYNAME)) {
            this.mPayName = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.CUSTNAME)) {
            this.mCustName = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.CUSTPHONE)) {
            this.mCustPhone = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.RETURNURL)) {
            this.mReturnUrl = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.SESSIONID)) {
            this.mSessionId = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.CUSTEMAIL)) {
            return false;
        }
        this.mCustEmail = getValue(item);
        return true;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mApp_id);
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        Util.addString(str, ResTags.DI_ID, this.mDi_id);
        Util.addString(str, ResTags.CO_ID, this.mCo_id);
        Util.addString(str, ResTags.PIN_FAIL_CNT, this.mPin_fail_cnt);
        Util.addString(str, "url", this.mUrl);
        Util.addString(str, ResTags.OPCODE, this.mOpCode);
        Util.addString(str, ResTags.PAYSTOREID, this.mPayStoreId);
        Util.addString(str, ResTags.ORDERNO, this.mOrderNo);
        Util.addString(str, ResTags.SESSIONID, this.mSessionId);
        Util.addString(str, ResTags.PAYMETHOD, this.mPayMethod);
        Util.addString(str, ResTags.PAYAMOUNT, this.mPayAmount);
        Util.addString(str, ResTags.PAYNAME, this.mPayName);
        Util.addString(str, ResTags.CUSTNAME, this.mCustName);
        Util.addString(str, ResTags.CUSTPHONE, this.mCustPhone);
        Util.addString(str, ResTags.CUSTEMAIL, this.mCustEmail);
        Util.addString(str, ResTags.RETURNURL, this.mReturnUrl);
        return str.toString();
    }

    public String getmUrl() {
        return this.mUrl;
    }

    public void setmUrl(String mUrl) {
        this.mUrl = mUrl;
    }

    public String getmPin_fail_cnt() {
        return this.mPin_fail_cnt;
    }

    public void setmPin_fail_cnt(String mPin_fail_cnt) {
        this.mPin_fail_cnt = mPin_fail_cnt;
    }

    public String getmPayAmount() {
        return this.mPayAmount;
    }

    public void setmPayAmount(String mPayAmount) {
        this.mPayAmount = mPayAmount;
    }
}
