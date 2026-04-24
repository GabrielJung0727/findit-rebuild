package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
public class ResDIListRecord implements ResTags {
    private String mDi_title = null;
    private String mDi_id = null;
    private String mPrice = null;
    public String mPrice_vat = null;

    public void clear() {
        this.mDi_title = null;
        this.mDi_id = null;
        this.mPrice = null;
        this.mPrice_vat = null;
    }

    public boolean searchListTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.DI_TITLE)) {
            setDiTitle(Response.getValue(item));
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DI_ID)) {
            setDiID(Response.getValue(item));
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.PRICE)) {
            setPrice(Response.getValue(item));
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.PRICE_VAT)) {
            return false;
        }
        setPriceVat(Response.getValue(item));
        return true;
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

    public String getDiTitle() {
        return this.mDi_title;
    }

    public void setDiTitle(String dititle) {
        this.mDi_title = dititle;
    }

    public String getDiID() {
        return this.mDi_id;
    }

    public void setDiID(String diid) {
        this.mDi_id = diid;
    }

    public void searchRecordTag(NodeList list) {
        int recordLen = list.getLength();
        for (int j = 0; j < recordLen; j++) {
            searchListTag(list.item(j));
        }
    }

    public String toString() {
        StringBuffer str = new StringBuffer();
        Util.addString(str, ResTags.DI_TITLE, getDiTitle());
        Util.addString(str, ResTags.DI_ID, getDiID());
        Util.addString(str, ResTags.PRICE, getPrice());
        return str.toString();
    }
}
