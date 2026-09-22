package com.feelingk.iap.net;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseParam {
    private String pBPInfo;
    private String pId;
    private String pName;
    private String pTid;

    public PurchaseParam(String pId, String pName, String pTid, String pBPInfo) {
        this.pId = null;
        this.pName = null;
        this.pTid = null;
        this.pBPInfo = null;
        this.pId = pId;
        this.pName = pName;
        this.pTid = pTid;
        this.pBPInfo = pBPInfo;
    }

    public String getpId() {
        return this.pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getpName() {
        return this.pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getpTid() {
        return this.pTid;
    }

    public void setpTid(String pTid) {
        this.pTid = pTid;
    }

    public String getpBPInfo() {
        return this.pBPInfo;
    }

    public void setpBPInfo(String pBPInfo) {
        this.pBPInfo = pBPInfo;
    }
}
