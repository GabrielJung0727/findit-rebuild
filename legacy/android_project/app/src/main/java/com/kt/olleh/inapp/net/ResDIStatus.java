package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResDIStatus extends Response {
    public String mApp_id = null;
    public String mSeq_key = null;
    public String mDi_id = null;
    public String mUse_limt_cnt = null;
    public String mDown_limt_cnt = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mApp_id = null;
        this.mSeq_key = null;
        this.mDi_id = null;
        this.mUse_limt_cnt = null;
        this.mDown_limt_cnt = null;
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
        if (name.equalsIgnoreCase(ResTags.USE_LIMT_CNT)) {
            this.mUse_limt_cnt = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.DOWN_LIMT_CNT)) {
            return false;
        }
        this.mDown_limt_cnt = getValue(item);
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

    public String getUseLimtCnt() {
        return this.mUse_limt_cnt;
    }

    public void setUseLimtCnt(String useLimtCnt) {
        this.mUse_limt_cnt = useLimtCnt;
    }

    public String getDownLimtCnt() {
        return this.mDown_limt_cnt;
    }

    public void setDownLimtCnt(String downLimtCnt) {
        this.mDown_limt_cnt = downLimtCnt;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mApp_id);
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        Util.addString(str, ResTags.DI_ID, this.mDi_id);
        Util.addString(str, ResTags.USE_LIMT_CNT, this.mUse_limt_cnt);
        Util.addString(str, ResTags.DOWN_LIMT_CNT, this.mDown_limt_cnt);
        return str.toString();
    }
}
