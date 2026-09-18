package com.sec.android.iap.sample.vo;

import com.findit.battle.finals.LOG;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ItemVO extends BaseVO {
    private static final String TAG = ItemVO.class.getSimpleName();
    private String mSubscriptionDurationMultiplier;
    private String mSubscriptionDurationUnit;
    private String mType;

    public ItemVO() {
    }

    public ItemVO(String _jsonString) {
        super(_jsonString);
        LOG.info(_jsonString);
        try {
            JSONObject jObject = new JSONObject(_jsonString);
            setType(jObject.getString("mType"));
            setSubscriptionDurationUnit(jObject.getString("mSubscriptionDurationUnit"));
            setSubscriptionDurationMultiplier(jObject.getString("mSubscriptionDurationMultiplier"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public String getType() {
        return this.mType;
    }

    public void setType(String _type) {
        this.mType = _type;
    }

    public String getSubscriptionDurationUnit() {
        return this.mSubscriptionDurationUnit;
    }

    public void setSubscriptionDurationUnit(String _subscriptionDurationUnit) {
        this.mSubscriptionDurationUnit = _subscriptionDurationUnit;
    }

    public String getSubscriptionDurationMultiplier() {
        return this.mSubscriptionDurationMultiplier;
    }

    public void setSubscriptionDurationMultiplier(String _subscriptionDurationMultiplier) {
        this.mSubscriptionDurationMultiplier = _subscriptionDurationMultiplier;
    }

    @Override // com.sec.android.iap.sample.vo.BaseVO
    public String dump() {
        String dump = String.valueOf(super.dump()) + "\n";
        return String.valueOf(dump) + "Type : " + getType() + "\nSubscriptionDurationUnit : " + getSubscriptionDurationUnit() + "\nSubscriptionDurationMultiplier : " + getSubscriptionDurationMultiplier();
    }
}
