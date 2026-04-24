package com.kt.olleh.inapp.net;

import android.util.Log;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.util.Util;
import java.util.Vector;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
public class ResDIListExpand extends Response {
    public String mApp_id = null;
    public String mList_num = null;
    private Vector<ResDIListExpandRecord> mRecord = new Vector<>();

    @Override // com.kt.olleh.inapp.net.Response
    public void clear() {
        this.mApp_id = null;
        this.mList_num = null;
        if (this.mRecord != null) {
            int size = this.mRecord.size();
            for (int i = 0; i < size; i++) {
                ResDIListExpandRecord record = this.mRecord.get(i);
                if (record != null) {
                    record.clear();
                }
            }
            this.mRecord.clear();
            this.mRecord = null;
        }
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
            toString();
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.LIST_NUM)) {
            this.mList_num = getValue(item);
            toString();
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.DI_LIST)) {
            return false;
        }
        setDiList(item.getChildNodes());
        return false;
    }

    private boolean setDiList(NodeList list) {
        if (list == null) {
            return false;
        }
        int listLen = list.getLength();
        for (int i = 0; i < listLen; i++) {
            Node item = list.item(i);
            if (item.getNodeName().equalsIgnoreCase(ResTags.ROW)) {
                NodeList recordList = item.getChildNodes();
                if (recordList == null) {
                    if (!Config.DEBUG) {
                        return false;
                    }
                    Log.d("ResGetDIUsableList", "DiList == null");
                    return false;
                }
                int recordLen = recordList.getLength();
                if (recordLen <= 0) {
                    if (!Config.DEBUG) {
                        return false;
                    }
                    Log.d("ResGetDIUsableList", "DiList count : " + recordLen);
                    return false;
                }
                ResDIListExpandRecord record = new ResDIListExpandRecord();
                record.searchRecordTag(recordList);
                if (record != null) {
                    getRecord().add(record);
                }
            }
        }
        return true;
    }

    public Vector<ResDIListExpandRecord> getRecord() {
        return this.mRecord;
    }

    public String getAppId() {
        return this.mApp_id;
    }

    public void setAppId(String appid) {
        this.mApp_id = appid;
    }

    public String getListNum() {
        return this.mList_num;
    }

    public void setDiTitle(String dititle) {
        this.mList_num = dititle;
    }

    @Override // com.kt.olleh.inapp.net.Response
    public String toString() {
        StringBuffer str = new StringBuffer();
        str.append(super.toString());
        Util.addString(str, ResTags.APP_ID, this.mApp_id);
        Util.addString(str, ResTags.LIST_NUM, this.mList_num);
        return str.toString();
    }
}
