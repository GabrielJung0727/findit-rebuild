package com.kt.olleh.inapp.net;

import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResDownSucProc extends Response {
    public String mApp_id = null;
    public String mSeq_key = null;
    public String mDi_id = null;
    public String mCert_key = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mApp_id = null;
        this.mSeq_key = null;
        this.mDi_id = null;
        this.mCert_key = null;
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
        if (name.equalsIgnoreCase(ResTags.SEQ_KEY)) {
            this.mSeq_key = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DI_ID)) {
            this.mDi_id = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.CERT_KEY)) {
            return false;
        }
        this.mCert_key = getValue(item);
        return true;
    }

    public String getAppId() {
        return this.mApp_id;
    }

    public void setAppId(String appid) {
        this.mApp_id = appid;
    }

    public String getSeqKey() {
        return this.mSeq_key;
    }

    public void setSeqKey(String seqkey) {
        this.mSeq_key = seqkey;
    }

    public String getDiId() {
        return this.mDi_id;
    }

    public void setDiId(String diid) {
        this.mDi_id = diid;
    }

    public String setCertKey() {
        return this.mCert_key;
    }

    public void getCertKey(String certKey) {
        this.mCert_key = certKey;
    }
}
