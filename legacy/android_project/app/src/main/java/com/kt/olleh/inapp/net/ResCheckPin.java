package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResCheckPin extends Response {
    public String mSeq_key = null;
    public String mPin_set = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mSeq_key = null;
        this.mPin_set = null;
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
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.PIN_SET)) {
            return false;
        }
        this.mPin_set = getValue(item);
        return true;
    }

    public String getmSeq_key() {
        return this.mSeq_key;
    }

    public void setmSeq_key(String mSeq_key) {
        this.mSeq_key = mSeq_key;
    }

    public String getmPin_set() {
        return this.mPin_set;
    }

    public void setmPin_set(String mPin_set) {
        this.mPin_set = mPin_set;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        Util.addString(str, ResTags.PIN_SET, this.mPin_set);
        return str.toString();
    }
}
