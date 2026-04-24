package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResDIDetail extends Response {
    public String mApp_id = null;
    public String mDi_id = null;
    public String mDi_title = null;
    public String mDesc = null;
    public String mPrice = null;
    public String mPrice_vat = null;
    public String mUse_term = null;
    public String mUse_lmt_cnt = null;
    public String mHp_lmt_price = null;
    public String mCd_lmt_price = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mApp_id = null;
        this.mDi_id = null;
        this.mDi_title = null;
        this.mDesc = null;
        this.mPrice = null;
        this.mPrice_vat = null;
        this.mUse_term = null;
        this.mUse_lmt_cnt = null;
        this.mHp_lmt_price = null;
        this.mCd_lmt_price = null;
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
        if (name.equalsIgnoreCase(ResTags.DI_ID)) {
            this.mDi_id = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DI_TITLE)) {
            this.mDi_title = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DESC)) {
            this.mDesc = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PRICE)) {
            this.mPrice = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PRICE_VAT)) {
            this.mPrice_vat = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.USE_TERM)) {
            this.mUse_term = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.USE_LMT_CNT)) {
            this.mUse_lmt_cnt = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.HP_LMT_PRICE)) {
            this.mHp_lmt_price = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.CD_LMT_PRICE)) {
            return false;
        }
        this.mCd_lmt_price = getValue(item);
        return true;
    }

    public String getAppId() {
        return this.mApp_id;
    }

    public void setAppId(String appid) {
        this.mApp_id = appid;
    }

    public String getDiId() {
        return this.mDi_id;
    }

    public void setDiId(String diid) {
        this.mDi_id = diid;
    }

    public String getDiTitle() {
        return this.mDi_title;
    }

    public void setDiTitle(String dititle) {
        this.mDi_title = dititle;
    }

    public String getDesc() {
        return this.mDesc;
    }

    public void setDesc(String desc) {
        this.mDesc = desc;
    }

    public String getPrice() {
        return this.mPrice_vat;
    }

    public void setPrice(String price) {
        this.mPrice_vat = price;
    }

    public String getPriceVat() {
        return this.mPrice_vat;
    }

    public void setPriceVat(String price_vat) {
        this.mPrice_vat = price_vat;
    }

    public String getUseTerm() {
        return this.mUse_term;
    }

    public void setUseTerm(String useterm) {
        this.mUse_term = useterm;
    }

    public String getUseLmtCnt() {
        return this.mUse_lmt_cnt;
    }

    public void setUseLmtCnt(String uselmtcnt) {
        this.mUse_lmt_cnt = uselmtcnt;
    }

    public String getHpLmtPrice() {
        return this.mHp_lmt_price;
    }

    public void setHpLmtPrice(String hplmtprice) {
        this.mHp_lmt_price = hplmtprice;
    }

    public String getCdLmtPrice() {
        return this.mCd_lmt_price;
    }

    public void setCdLmtPrice(String cdlmtprice) {
        this.mCd_lmt_price = cdlmtprice;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mApp_id);
        Util.addString(str, ResTags.DI_ID, this.mDi_id);
        Util.addString(str, ResTags.DI_TITLE, this.mDi_title);
        Util.addString(str, ResTags.DESC, this.mDesc);
        Util.addString(str, ResTags.PRICE, this.mPrice);
        Util.addString(str, ResTags.PRICE_VAT, this.mPrice_vat);
        Util.addString(str, ResTags.USE_TERM, this.mUse_term);
        Util.addString(str, ResTags.USE_LMT_CNT, this.mUse_lmt_cnt);
        Util.addString(str, ResTags.HP_LMT_PRICE, this.mHp_lmt_price);
        Util.addString(str, ResTags.CD_LMT_PRICE, this.mCd_lmt_price);
        return str.toString();
    }
}
