package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResDIApproveDown extends Response {
    public String mApp_id = null;
    public String mSeq_key = null;
    public String mDi_id = null;
    public String mFile_name = null;
    public String mMime_type = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mApp_id = null;
        this.mSeq_key = null;
        this.mDi_id = null;
        this.mFile_name = null;
        this.mMime_type = null;
        super.clear();
    }

    @Override // com.kt.olleh.inapp.net.Response
    protected boolean searchValueTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.APP_ID)) {
            this.mApp_id = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DI_ID)) {
            this.mDi_id = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.SEQ_KEY)) {
            this.mSeq_key = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.FILE_NAME)) {
            this.mFile_name = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.MIME_TYPE)) {
            return false;
        }
        this.mMime_type = getValue(item);
        return true;
    }

    public String getAppId() {
        return this.mApp_id;
    }

    public void setAppId(String appid) {
        this.mApp_id = appid;
    }

    public String getDiId() {
        return this.mDi_id;
    }

    public void setDiId(String diid) {
        this.mDi_id = diid;
    }

    public String getSeqKey() {
        return this.mSeq_key;
    }

    public void setSeqKey(String seqkey) {
        this.mSeq_key = seqkey;
    }

    public String getFileName() {
        return this.mFile_name;
    }

    public void setFileName(String filename) {
        this.mFile_name = filename;
    }

    public String getMimeType() {
        return this.mMime_type;
    }

    public void setMimeType(String mimetype) {
        this.mMime_type = mimetype;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mApp_id);
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        Util.addString(str, ResTags.DI_ID, this.mDi_id);
        Util.addString(str, ResTags.FILE_NAME, this.mFile_name);
        Util.addString(str, ResTags.MIME_TYPE, this.mMime_type);
        return str.toString();
    }
}
