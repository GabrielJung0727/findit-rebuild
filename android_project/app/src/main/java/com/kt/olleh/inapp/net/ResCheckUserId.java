package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResCheckUserId extends Response {
    public String mSeq_key = null;
    public String mUser_id = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mSeq_key = null;
        this.mUser_id = null;
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
        if (!name.equalsIgnoreCase(ResTags.USER_ID)) {
            return false;
        }
        this.mUser_id = getValue(item);
        toString();
        return true;
    }

    public String getUserId() {
        return this.mUser_id;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mSeq_key);
        Util.addString(str, ResTags.USER_ID, this.mUser_id);
        return str.toString();
    }
}
