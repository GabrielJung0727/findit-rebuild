package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResCheckCoin extends Response {
    public String mSeq_key = null;
    public String mCoin = null;
    public String mAmount = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mSeq_key = null;
        this.mCoin = null;
        this.mAmount = null;
        super.clear();
    }

    @Override // com.kt.olleh.inapp.net.Response
    protected boolean searchValueTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.SEQ_KEY)) {
            this.mSeq_key = getValue(item);
            toString();
            return true;
        }
        if (name.equalsIgnoreCase("coin")) {
            this.mCoin = getValue(item);
            toString();
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.AMOUNT)) {
            return false;
        }
        this.mAmount = getValue(item);
        toString();
        return true;
    }

    public String getCoin() {
        return this.mCoin;
    }

    public String getAmount() {
        return this.mAmount;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        Util.addString(str, "coin", this.mCoin);
        Util.addString(str, ResTags.AMOUNT, this.mAmount);
        return str.toString();
    }
}
