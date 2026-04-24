package com.kt.olleh.inapp.net;

import com.findit.battle.GameView;
import com.kt.olleh.inapp.util.Util;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
public class ResponseOld implements ResTags {
    public String mResultCode = null;
    public String mResultMessage = null;

    public void clear() {
        this.mResultCode = null;
        this.mResultMessage = null;
    }

    private boolean searchTag(Node item) {
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

    private String getValue(Node item) {
        int len;
        String resultNode = null;
        NodeList list = item.getChildNodes();
        if (list != null && (len = list.getLength()) > 0) {
            resultNode = GameView.CHARACTER_AI;
            for (int i = 0; i < len; i++) {
                Node node = list.item(i);
                resultNode = String.valueOf(resultNode) + node.getNodeValue();
            }
        }
        return resultNode;
    }

    private void ParseResult(NodeList list) {
        if (list != null) {
            int len = list.getLength();
            for (int i = 0; i < len; i++) {
                searchTag(list.item(i));
            }
        }
    }

    public boolean parseXML(NodeList list) {
        if (list == null) {
            return false;
        }
        int len = list.getLength();
        if (len <= 0) {
            return false;
        }
        ParseResult(list);
        return true;
    }

    public String toString() {
        StringBuffer str = new StringBuffer();
        Util.addString(str, ResTags.RESULTCODE, this.mResultCode);
        Util.addString(str, ResTags.RESULTMESSAGE, this.mResultMessage);
        return str.toString();
    }
}
