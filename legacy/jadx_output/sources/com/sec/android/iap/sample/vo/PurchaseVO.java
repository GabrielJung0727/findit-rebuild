package com.sec.android.iap.sample.vo;

import com.findit.battle.finals.LOG;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseVO extends BaseVO {
    private static final String TAG = PurchaseVO.class.getSimpleName();
    private String mPaymentId;
    private String mPurchaseDate;
    private String mPurchaseId;
    private String mVerifyUrl;

    public PurchaseVO(String _jsonString) {
        super(_jsonString);
        try {
            LOG.info(_jsonString);
            JSONObject jObject = new JSONObject(_jsonString);
            setPaymentId(jObject.getString("mPaymentId"));
            setPurchaseId(jObject.getString("mPurchaseId"));
            setPurchaseDate(getDateString(jObject.getString("mPurchaseDate")));
            setVerifyUrl(jObject.getString("mVerifyUrl"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public String getPaymentId() {
        return this.mPaymentId;
    }

    public void setPaymentId(String _paymentId) {
        this.mPaymentId = _paymentId;
    }

    public String getPurchaseId() {
        return this.mPurchaseId;
    }

    public void setPurchaseId(String _purchaseId) {
        this.mPurchaseId = _purchaseId;
    }

    public String getPurchaseDate() {
        return this.mPurchaseDate;
    }

    public void setPurchaseDate(String _purchaseDate) {
        this.mPurchaseDate = _purchaseDate;
    }

    public String getVerifyUrl() {
        return this.mVerifyUrl;
    }

    public void setVerifyUrl(String _verifyUrl) {
        this.mVerifyUrl = _verifyUrl;
    }

    @Override // com.sec.android.iap.sample.vo.BaseVO
    public String dump() {
        String dump = String.valueOf(super.dump()) + "\n";
        return String.valueOf(dump) + "PaymentID    : " + getPaymentId() + "\nPurchaseId   : " + getPurchaseId() + "\nPurchaseDate : " + getPurchaseDate() + "\nVerifyUrl    : " + getVerifyUrl();
    }
}
