package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResDIGetFile extends Response {
    public String mSeq_key = null;
    public String mFile2byte = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mSeq_key = null;
        this.mFile2byte = null;
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
        if (!name.equalsIgnoreCase(ResTags.FILE2BYTE)) {
            return false;
        }
        this.mFile2byte = getValue(item);
        return true;
    }

    public String getSeqKey() {
        return this.mSeq_key;
    }

    public void setSeqKey(String seqkey) {
        this.mSeq_key = seqkey;
    }

    public String getFile2byte() {
        return this.mFile2byte;
    }

    public void setFile2byte(String file2byte) {
        this.mFile2byte = file2byte;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mSeq_key);
        Util.addString(str, ResTags.FILE2BYTE, this.mFile2byte);
        return str.toString();
    }
}
