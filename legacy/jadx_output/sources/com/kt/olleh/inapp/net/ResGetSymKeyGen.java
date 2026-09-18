package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResGetSymKeyGen extends Response {
    public String mSymmetric_key = null;
    public String mSeq_key = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mSymmetric_key = null;
        this.mSeq_key = null;
        super.clear();
    }

    @Override // com.kt.olleh.inapp.net.Response
    protected boolean searchValueTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.SYMMETRIC_KEY)) {
            this.mSymmetric_key = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.SEQ_KEY)) {
            return false;
        }
        this.mSeq_key = getValue(item);
        return true;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.SYMMETRIC_KEY, this.mSymmetric_key);
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        return str.toString();
    }
}
