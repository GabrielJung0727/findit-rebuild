package com.kt.olleh.inapp.net;

import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
public abstract class Response implements ResTags {
    private static final String TAG = "Response";
    public String mTr_id = null;
    public String mCode = null;
    public String mReason = null;

    protected abstract boolean searchValueTag(Node node);

    public void clear() {
        this.mTr_id = null;
        this.mCode = null;
        this.mReason = null;
    }

    protected boolean searchResultTag(Node item) {
        String name;
        if (item == null || (name = item.getNodeName()) == null) {
            return false;
        }
        if (name.equalsIgnoreCase(ResTags.TR_ID)) {
            this.mTr_id = getValue(item);
            return true;
        }
        if (name.equalsIgnoreCase(ResTags.CODE)) {
            this.mCode = getValue(item);
            return true;
        }
        if (!name.equalsIgnoreCase(ResTags.REASON)) {
            return false;
        }
        this.mReason = getValue(item);
        return true;
    }

    protected static String getValue(Node item) {
        int len;
        NodeList list = item.getChildNodes();
        if (list == null || (len = list.getLength()) <= 0) {
            return null;
        }
        for (int i = 0; i < len; i++) {
            Node node = list.item(i);
            if (node.getNodeName() != null && node.getNodeValue() != null) {
                return node.getNodeValue();
            }
        }
        return null;
    }

    private void ParseResult(NodeList list) {
        if (list != null) {
            int len = list.getLength();
            for (int i = 0; i < len; i++) {
                searchResultTag(list.item(i));
            }
        }
    }

    private void ParseValue(NodeList list) {
        if (list != null) {
            int len = list.getLength();
            for (int i = 0; i < len; i++) {
                searchValueTag(list.item(i));
            }
        }
    }

    private NodeList findTag(NodeList list, String tag) {
        if (list == null) {
            return null;
        }
        int listLen = list.getLength();
        for (int i = 0; i < listLen; i++) {
            Node item = list.item(i);
            if (item.getNodeName().equalsIgnoreCase(tag)) {
                return item.getChildNodes();
            }
        }
        return null;
    }

    public boolean parseXML(NodeList list) {
        if (list == null) {
            return false;
        }
        int len = list.getLength();
        if (len <= 0) {
            return false;
        }
        ParseResult(findTag(list, "result"));
        ParseValue(findTag(list, ResTags.VALUE));
        ParseValue(findTag(list, ResTags.POSTPARAM));
        return true;
    }

    public String toString() {
        StringBuffer str = new StringBuffer();
        Util.addString(str, ResTags.TR_ID, this.mTr_id);
        Util.addString(str, ResTags.CODE, this.mCode);
        Util.addString(str, ResTags.REASON, this.mReason);
        return str.toString();
    }
}
