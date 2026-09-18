package com.sec.android.iap.sample.vo;

import com.findit.battle.finals.LOG;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class VerificationVO {
    private static final String TAG = VerificationVO.class.getSimpleName();
    private String mItemDesc;
    private String mItemId;
    private String mItemName;
    private String mPaymentAmount;
    private String mPaymentId;
    private String mPurchaseDate;
    private String mStatus;

    public VerificationVO(String _jsonString) {
        LOG.info(_jsonString);
        try {
            JSONObject jObject = new JSONObject(_jsonString);
            setItemId(jObject.getString("itemId"));
            setItemName(jObject.getString("itemName"));
            setItemDesc(jObject.getString("itemDesc"));
            setPurchaseDate(jObject.getString("purchaseDate"));
            setPaymentId(jObject.getString("paymentId"));
            setPaymentAmount(jObject.getString("paymentAmount"));
            setStatus(jObject.getString("status"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public String getItemId() {
        return this.mItemId;
    }

    public void setItemId(String _itemId) {
        this.mItemId = _itemId;
    }

    public String getItemName() {
        return this.mItemName;
    }

    public void setItemName(String _itemName) {
        this.mItemName = _itemName;
    }

    public String getItemDesc() {
        return this.mItemDesc;
    }

    public void setItemDesc(String _itemDesc) {
        this.mItemDesc = _itemDesc;
    }

    public String getPurchaseDate() {
        return this.mPurchaseDate;
    }

    public void setPurchaseDate(String _purchaseDate) {
        this.mPurchaseDate = _purchaseDate;
    }

    public String getPaymentId() {
        return this.mPaymentId;
    }

    public void setPaymentId(String _paymentId) {
        this.mPaymentId = _paymentId;
    }

    public String getPaymentAmount() {
        return this.mPaymentAmount;
    }

    public void setPaymentAmount(String _paymentAmount) {
        this.mPaymentAmount = _paymentAmount;
    }

    public String getStatus() {
        return this.mStatus;
    }

    public void setStatus(String _status) {
        this.mStatus = _status;
    }

    public String dump() {
        String dump = "ItemId        : " + getItemId() + "\nItemName      : " + getItemName() + "\nItemDesc      : " + getItemDesc() + "\nPurchaseDate  : " + getPurchaseDate() + "\nPaymentId     : " + getPaymentId() + "\nPaymentAmount : " + getPaymentAmount() + "\nStatus        : " + getStatus();
        return dump;
    }
}
