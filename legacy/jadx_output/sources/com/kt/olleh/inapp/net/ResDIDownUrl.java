package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import java.util.ArrayList;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes.dex */
public class ResDIDownUrl extends Response {
    public String mApp_id = null;
    public String mSeq_key = null;
    public String mDi_id = null;
    public String mItem_size = null;
    public String mDownload_info1 = null;
    public String mDownload_info2 = null;
    public ArrayList<String> mUrl_list = null;
    public String mCert_key = null;

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mApp_id = null;
        this.mSeq_key = null;
        this.mDi_id = null;
        this.mItem_size = null;
        this.mDownload_info1 = null;
        this.mDownload_info2 = null;
        this.mUrl_list = null;
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
        if (name.equalsIgnoreCase(ResTags.ITEM_SIZE)) {
            this.mItem_size = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DOWNLOAD_INFO1)) {
            this.mDownload_info1 = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.DOWNLOAD_INFO2)) {
            this.mDownload_info2 = getValue(item);
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

    public String getItemSize() {
        return this.mItem_size;
    }

    public void setItemSize(String itemSize) {
        this.mItem_size = itemSize;
    }

    public String getDownloadInfo1() {
        return this.mDownload_info1;
    }

    public void setDownloadInfo1(String downloadInfo1) {
        this.mDownload_info1 = downloadInfo1;
    }

    public String getDownloadInfo2() {
        return this.mDownload_info2;
    }

    public void setDownloadInfo2(String downloadInfo2) {
        this.mDownload_info2 = downloadInfo2;
    }

    public String setCertKey() {
        return this.mCert_key;
    }

    public void getCertKey(String certKey) {
        this.mCert_key = certKey;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mApp_id);
        Util.addString(str, ResTags.SEQ_KEY, this.mSeq_key);
        Util.addString(str, ResTags.DI_ID, this.mDi_id);
        Util.addString(str, ResTags.ITEM_SIZE, this.mItem_size);
        Util.addString(str, ResTags.DOWNLOAD_INFO1, this.mDownload_info1);
        Util.addString(str, ResTags.DOWNLOAD_INFO2, this.mDownload_info2);
        Util.addString(str, ResTags.CERT_KEY, this.mCert_key);
        return str.toString();
    }
}
