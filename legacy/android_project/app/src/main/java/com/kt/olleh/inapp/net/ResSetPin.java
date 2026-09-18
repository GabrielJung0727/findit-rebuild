package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResSetPin extends Response {
    public String mSeq_key = null;
    public String mPin_set_ret = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mSeq_key = null;
        this.mPin_set_ret = null;
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
        if (!name.equalsIgnoreCase(ResTags.PIN_SET_RET)) {
            return false;
        }
        this.mPin_set_ret = getValue(item);
        return true;
    }

    public String getmSeq_key() {
        return this.mSeq_key;
    }

    public void setmSeq_key(String mSeq_key) {
        this.mSeq_key = mSeq_key;
    }

    public String getmPin_set_ret() {
        return this.mPin_set_ret;
    }

    public void setmPin_set_ret(String mPin_set_ret) {
        this.mPin_set_ret = mPin_set_ret;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        Util.addString(str, ResTags.PIN_SET_RET, this.mPin_set_ret);
        return str.toString();
    }
}
