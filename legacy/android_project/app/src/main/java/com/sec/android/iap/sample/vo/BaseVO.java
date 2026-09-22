package com.sec.android.iap.sample.vo;

import android.text.TextUtils;
import android.text.format.DateFormat;
import com.findit.battle.GameView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BaseVO {
    private String mCurrencyUnit;
    private String mItemDesc;
    private String mItemDownloadUrl;
    private String mItemId;
    private String mItemImageUrl;
    private String mItemName;
    private Double mItemPrice;
    private String mItemPriceString;

    public BaseVO() {
    }

    public BaseVO(String _jsonString) {
        try {
            JSONObject jObject = new JSONObject(_jsonString);
            setItemId(jObject.getString("mItemId"));
            setItemName(jObject.getString("mItemName"));
            setItemPrice(Double.valueOf(jObject.getDouble("mItemPrice")));
            setCurrencyUnit(jObject.getString("mCurrencyUnit"));
            setItemDesc(jObject.getString("mItemDesc"));
            setItemImageUrl(jObject.getString("mItemImageUrl"));
            setItemDownloadUrl(jObject.getString("mItemDownloadUrl"));
            setItemPriceString(jObject.getString("mItemPriceString"));
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

    public Double getItemPrice() {
        return this.mItemPrice;
    }

    public void setItemPrice(Double _itemPrice) {
        this.mItemPrice = _itemPrice;
    }

    public String getItemPriceString() {
        return this.mItemPriceString;
    }

    public void setItemPriceString(String _itemPriceString) {
        this.mItemPriceString = _itemPriceString;
    }

    public String getCurrencyUnit() {
        return this.mCurrencyUnit;
    }

    public void setCurrencyUnit(String _currencyUnit) {
        this.mCurrencyUnit = _currencyUnit;
    }

    public String getItemDesc() {
        return this.mItemDesc;
    }

    public void setItemDesc(String _itemDesc) {
        this.mItemDesc = _itemDesc;
    }

    public String getItemImageUrl() {
        return this.mItemImageUrl;
    }

    public void setItemImageUrl(String _itemImageUrl) {
        this.mItemImageUrl = _itemImageUrl;
    }

    public String getItemDownloadUrl() {
        return this.mItemDownloadUrl;
    }

    public void setItemDownloadUrl(String _itemDownloadUrl) {
        this.mItemDownloadUrl = _itemDownloadUrl;
    }

    public String dump() {
        String dump = "ItemId          : " + getItemId() + "\nItemName        : " + getItemName() + "\nItemPrice       : " + getItemPrice() + "\nItemPriceString : " + getItemPriceString() + "\nCurrencyUnit    : " + getCurrencyUnit() + "\nItemDesc        : " + getItemDesc() + "\nItemImageUrl    : " + getItemImageUrl() + "\nItemDownloadUrl : " + getItemDownloadUrl();
        return dump;
    }

    protected String getDateString(String _strTimeMills) {
        if (TextUtils.isEmpty(_strTimeMills)) {
            return GameView.CHARACTER_AI;
        }
        try {
            long timeMills = Long.parseLong(_strTimeMills);
            String result = DateFormat.format("yyyy.MM.dd hh:mm:ss", timeMills).toString();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return GameView.CHARACTER_AI;
        }
    }
}
