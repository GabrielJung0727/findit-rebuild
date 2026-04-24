.class public Lcom/feelingk/iap/gui/data/PurchaseItem;
.super Ljava/lang/Object;
.source "PurchaseItem.java"


# instance fields
.field public AfterAutoPurchaseInfoAgree:Z

.field public AutoPurchaseCheck:Z

.field public FinalVersionCheck:Z

.field public IsExistDotoriSmsAuthLogFile:Z

.field public SellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

.field public bUseTCash:Z

.field public dotoriBalance:I

.field public dotoriLinkInfo:Ljava/lang/String;

.field public itemName:Ljava/lang/String;

.field public itemPrice:I

.field public itemPurchasePrice:I

.field public itemTCash:I

.field public itemUseDate:Ljava/lang/String;

.field public ocbCardNumber:Ljava/lang/String;

.field public ocbRegisterInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZZLcom/feelingk/iap/net/SellerInfoConfirm;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "price"    # I
    .param p4, "cash"    # I
    .param p5, "OCBRegInfo"    # Ljava/lang/String;
    .param p6, "OCBCardNum"    # Ljava/lang/String;
    .param p7, "purchasePrice"    # I
    .param p8, "useTCash"    # Z
    .param p9, "dotori"    # I
    .param p10, "dotoriLink"    # Ljava/lang/String;
    .param p11, "finalVersionCheck"    # Z
    .param p12, "autoPurchaseCheck"    # Z
    .param p13, "afterAutoPurchaseInfoAgree"    # Z
    .param p14, "isExistDotoriSmsAuthLogFile"    # Z
    .param p15, "sellerInfoConfirm"    # Lcom/feelingk/iap/net/SellerInfoConfirm;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemUseDate:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPrice:I

    .line 30
    iput p4, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemTCash:I

    .line 31
    iput-object p5, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->ocbRegisterInfo:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->ocbCardNumber:Ljava/lang/String;

    .line 33
    iput p7, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->itemPurchasePrice:I

    .line 34
    iput-boolean p8, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->bUseTCash:Z

    .line 35
    iput p9, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->dotoriBalance:I

    .line 36
    iput-object p10, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->dotoriLinkInfo:Ljava/lang/String;

    .line 37
    iput-boolean p11, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->FinalVersionCheck:Z

    .line 38
    iput-boolean p12, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    .line 39
    iput-boolean p13, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    .line 40
    iput-boolean p14, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->IsExistDotoriSmsAuthLogFile:Z

    .line 41
    iput-object p15, p0, Lcom/feelingk/iap/gui/data/PurchaseItem;->SellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

    .line 42
    return-void
.end method
