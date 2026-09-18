package com.sec.android.iap.sample.vo;

import com.findit.battle.finals.LOG;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class InBoxVO extends BaseVO {
    private static final String TAG = InBoxVO.class.getSimpleName();
    private String mPaymentId;
    private String mPurchaseDate;
    private String mSubscriptionEndDate;
    private String mType;

    public InBoxVO(String _jsonString) {
        super(_jsonString);
        LOG.info(_jsonString);
        try {
            JSONObject jObject = new JSONObject(_jsonString);
            setType(jObject.getString("mType"));
            setPaymentId(jObject.getString("mPaymentId"));
            setPurchaseDate(getDateString(jObject.getString("mPurchaseDate")));
            setSubscriptionEndDate(getDateString(jObject.getString("mSubscriptionEndDate")));
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

    public String getPurchaseDate() {
        return this.mPurchaseDate;
    }

    public void setPurchaseDate(String _purchaseDate) {
        this.mPurchaseDate = _purchaseDate;
    }

    public String getSubscriptionEndDate() {
        return this.mSubscriptionEndDate;
    }

    public void setSubscriptionEndDate(String _subscriptionEndDate) {
        this.mSubscriptionEndDate = _subscriptionEndDate;
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String _type) {
        this.mType = _type;
    }

    @Override // com.sec.android.iap.sample.vo.BaseVO
    public String dump() {
        String dump = String.valueOf(super.dump()) + "\n";
        return String.valueOf(dump) + "Type                : " + getType() + "\nPurchaseDate        : " + getPurchaseDate() + "\nSubscriptionEndDate : " + getSubscriptionEndDate() + "\nPaymentID           : " + getPaymentId();
    }
}
