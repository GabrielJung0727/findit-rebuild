package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResDIesBuy extends Response {
    public String mResultCode = null;
    public String mResultMessage = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mResultCode = null;
        this.mResultMessage = null;
        super.clear();
    }

    @Override // com.kt.olleh.inapp.net.Response
    protected boolean searchValueTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.RESULTCODE)) {
            this.mResultCode = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.RESULTMESSAGE)) {
            return false;
        }
        this.mResultMessage = getValue(item);
        return true;
    }

    public String getResultCode() {
        return this.mResultCode;
    }

    public void setResultCode(String resultcode) {
        this.mResultCode = resultcode;
    }

    public String getResultMessage() {
        return this.mResultMessage;
    }

    public void setResultMessage(String resultmsg) {
        this.mResultMessage = resultmsg;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.RESULTCODE, this.mResultCode);
        Util.addString(str, ResTags.RESULTMESSAGE, this.mResultMessage);
        return str.toString();
    }
}
