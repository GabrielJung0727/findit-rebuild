package com.feelingk.iap.gui.data;

import com.feelingk.iap.net.SellerInfoConfirm;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseItem {
    public boolean AfterAutoPurchaseInfoAgree;
    public boolean AutoPurchaseCheck;
    public boolean FinalVersionCheck;
    public boolean IsExistDotoriSmsAuthLogFile;
    public SellerInfoConfirm SellerInfoConfirm;
    public boolean bUseTCash;
    public int dotoriBalance;
    public String dotoriLinkInfo;
    public String itemName;
    public int itemPrice;
    public int itemPurchasePrice;
    public int itemTCash;
    public String itemUseDate;
    public String ocbCardNumber;
    public String ocbRegisterInfo;

    public PurchaseItem(String name, String date, int price, int cash, String OCBRegInfo, String OCBCardNum, int purchasePrice, boolean useTCash, int dotori, String dotoriLink, boolean finalVersionCheck, boolean autoPurchaseCheck, boolean afterAutoPurchaseInfoAgree, boolean isExistDotoriSmsAuthLogFile, SellerInfoConfirm sellerInfoConfirm) {
        this.itemName = name;
        this.itemUseDate = date;
        this.itemPrice = price;
        this.itemTCash = cash;
        this.ocbRegisterInfo = OCBRegInfo;
        this.ocbCardNumber = OCBCardNum;
        this.itemPurchasePrice = purchasePrice;
        this.bUseTCash = useTCash;
        this.dotoriBalance = dotori;
        this.dotoriLinkInfo = dotoriLink;
        this.FinalVersionCheck = finalVersionCheck;
        this.AutoPurchaseCheck = autoPurchaseCheck;
        this.AfterAutoPurchaseInfoAgree = afterAutoPurchaseInfoAgree;
        this.IsExistDotoriSmsAuthLogFile = isExistDotoriSmsAuthLogFile;
        this.SellerInfoConfirm = sellerInfoConfirm;
    }
}
