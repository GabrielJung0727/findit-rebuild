.class public final Lcom/feelingk/iap/IAPLib;
.super Ljava/lang/Object;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/IAPLib$OnClientListener;
    }
.end annotation


# static fields
.field public static final HND_ERR_AUTH:I = 0x7d0

.field public static final HND_ERR_COMMONINFOREQ:I = 0x7e1

.field public static final HND_ERR_CULTURELANDCASHINFO:I = 0x7e4

.field public static final HND_ERR_DATA:I = 0x7d5

.field public static final HND_ERR_DISCOUNT_REQ:I = 0x7e7

.field public static final HND_ERR_DOTORISMSAUTH:I = 0x7e6

.field public static final HND_ERR_DOTORISMSAUTHNUMBER:I = 0x7e5

.field public static final HND_ERR_IMEI_AUTH:I = 0x7df

.field public static final HND_ERR_IMEI_AUTH_REQ:I = 0x7e0

.field public static final HND_ERR_INIT:I = 0x7cf

.field public static final HND_ERR_ITEMAUTH:I = 0x7d7

.field public static final HND_ERR_ITEMINFO:I = 0x7d1

.field public static final HND_ERR_ITEMPURCHASE:I = 0x7d3

.field public static final HND_ERR_ITEMQUERY:I = 0x7d2

.field public static final HND_ERR_LGU_SMSAUTH_REQ:I = 0x7de

.field public static final HND_ERR_LGU_SMSAUTH_UMBER_REQ:I = 0x7dd

.field public static final HND_ERR_MEMBERSHIP:I = 0x7db

.field public static final HND_ERR_NORMALTIMEOUT:I = 0x7d8

.field public static final HND_ERR_OCBCARDUPDATE:I = 0x7e2

.field public static final HND_ERR_OCBPOINTINFO:I = 0x7e3

.field public static final HND_ERR_PAYMENTTIMEOUT:I = 0x7d9

.field public static final HND_ERR_PURCHASEDISSMISS:I = 0x7dc

.field public static final HND_ERR_PURCHASEDISSMISS_CHECK:I = 0x7e8

.field public static final HND_ERR_SELLERINFO_QUERY_REQ:I = 0x7e8

.field public static final HND_ERR_SERVERTIMEOUT:I = 0x7da

.field public static final HND_ERR_USEQUERY:I = 0x7d6

.field public static final HND_ERR_WHOLEQUERY:I = 0x7d4

.field static final TAG:Ljava/lang/String; = "IAPLib"

.field protected static mBPInfo:Ljava/lang/String;

.field protected static mBase:Lcom/feelingk/iap/net/IAPBase;

.field protected static mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

.field private static mContext:Landroid/content/Context;

.field private static mCultureCashQueryFlag:Z

.field private static mCultureLandPoint:Ljava/lang/String;

.field private static mCultureLandUserId:Ljava/lang/String;

.field private static mCulture_Use:I

.field private static mDialogType:I

.field private static mDotoriAuthNumber:Ljava/lang/String;

.field private static mDotoriQueryFlag:Z

.field private static mDotori_Use:I

.field protected static mEncJuminNumber:Ljava/lang/String;

.field private static mHndUI:Landroid/os/Handler;

.field public static mIsOTPAuth:Z

.field public static mIsOTPSuccess:Z

.field protected static mKorTelecom:I

.field public static mLimitExcess:Z

.field protected static mMdn:Ljava/lang/String;

.field protected static final mNetworkMessageHandler:Landroid/os/Handler;

.field private static mOCBCardUpdateType:Ljava/lang/String;

.field private static mOCBPoint:Ljava/lang/String;

.field private static mOCBPointQueryCheck:Z

.field private static mOCB_Use:I

.field private static mOTPAgreeFlag:Z

.field public static mOTPNumber:Ljava/lang/String;

.field protected static mOcbPWNumber:Ljava/lang/String;

.field protected static mProductID:Ljava/lang/String;

.field protected static mProductName:Ljava/lang/String;

.field private static mSellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

.field private static mSmsAuthKey:Ljava/lang/String;

.field private static mSmsAuthNumberKey:Ljava/lang/String;

.field private static mTCash_Use:I

.field protected static mTID:Ljava/lang/String;

.field protected static mTStorePwdCheck:Z

.field private static mUpdateType:Ljava/lang/String;

.field protected static mUseBPProtol:Ljava/lang/Boolean;

.field protected static mUseTCash:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    .line 61
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    .line 63
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    .line 64
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 66
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    .line 67
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    .line 68
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    .line 69
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    .line 73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    .line 75
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 76
    sput v2, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 77
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    .line 78
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mOcbPWNumber:Ljava/lang/String;

    .line 79
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mTStorePwdCheck:Z

    .line 81
    const/16 v0, 0x64

    sput v0, Lcom/feelingk/iap/IAPLib;->mDialogType:I

    .line 82
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mOTPAgreeFlag:Z

    .line 83
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mIsOTPAuth:Z

    .line 84
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mIsOTPSuccess:Z

    .line 85
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    .line 86
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    .line 87
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    .line 88
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    .line 89
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mOCBPointQueryCheck:Z

    .line 90
    const-string v0, ""

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mOCBPoint:Ljava/lang/String;

    .line 91
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mCultureCashQueryFlag:Z

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mCultureLandPoint:Ljava/lang/String;

    .line 93
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mCultureLandUserId:Ljava/lang/String;

    .line 94
    sput v2, Lcom/feelingk/iap/IAPLib;->mOCB_Use:I

    sput v2, Lcom/feelingk/iap/IAPLib;->mDotori_Use:I

    sput v2, Lcom/feelingk/iap/IAPLib;->mCulture_Use:I

    sput v2, Lcom/feelingk/iap/IAPLib;->mTCash_Use:I

    .line 95
    sput-boolean v2, Lcom/feelingk/iap/IAPLib;->mDotoriQueryFlag:Z

    .line 96
    const-string v0, ""

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mDotoriAuthNumber:Ljava/lang/String;

    .line 97
    const-string v0, ""

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mOCBCardUpdateType:Ljava/lang/String;

    .line 99
    sput-object v1, Lcom/feelingk/iap/IAPLib;->mUpdateType:Ljava/lang/String;

    .line 652
    new-instance v0, Lcom/feelingk/iap/IAPLib$1;

    invoke-direct {v0}, Lcom/feelingk/iap/IAPLib$1;-><init>()V

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mNetworkMessageHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static SendImeiAuthReq()V
    .locals 3

    .prologue
    .line 329
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 330
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 331
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 332
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->CalliapSendImeiAuthReq(ILjava/lang/String;)V

    .line 333
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/feelingk/iap/IAPLib;->mOCB_Use:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/feelingk/iap/IAPLib;->mDotori_Use:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/feelingk/iap/IAPLib;->mCulture_Use:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/feelingk/iap/IAPLib;->mTCash_Use:I

    return v0
.end method

.method static synthetic access$4()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mUpdateType:Ljava/lang/String;

    return-object v0
.end method

.method protected static close()V
    .locals 1

    .prologue
    .line 636
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    if-eqz v0, :cond_0

    .line 637
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->StopService()V

    .line 639
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->close()V

    .line 640
    return-void
.end method

.method public static getCultureCashQueryInfo()Z
    .locals 1

    .prologue
    .line 537
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mCultureCashQueryFlag:Z

    return v0
.end method

.method public static getCultureLandCashPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mCultureLandPoint:Ljava/lang/String;

    return-object v0
.end method

.method protected static getDialogType()I
    .locals 1

    .prologue
    .line 594
    sget v0, Lcom/feelingk/iap/IAPLib;->mDialogType:I

    return v0
.end method

.method public static getDotoriSmsNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mDotoriAuthNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getEncJuminNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsOTPAuth()Z
    .locals 1

    .prologue
    .line 464
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mIsOTPAuth:Z

    return v0
.end method

.method public static getLimitExcess()Z
    .locals 1

    .prologue
    .line 501
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    return v0
.end method

.method protected static getNetHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mNetworkMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getOCBPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mOCBPoint:Ljava/lang/String;

    return-object v0
.end method

.method public static getOCBPointInfo()Z
    .locals 1

    .prologue
    .line 516
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mOCBPointQueryCheck:Z

    return v0
.end method

.method public static getOTPAgree()Z
    .locals 1

    .prologue
    .line 454
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mOTPAgreeFlag:Z

    return v0
.end method

.method public static getOTPNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getOTPPurchaseSuccess()Z
    .locals 1

    .prologue
    .line 474
    sget-boolean v0, Lcom/feelingk/iap/IAPLib;->mIsOTPSuccess:Z

    return v0
.end method

.method public static getOcbCardUpdateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mOCBCardUpdateType:Ljava/lang/String;

    return-object v0
.end method

.method public static getSellerInfo()Lcom/feelingk/iap/net/SellerInfoConfirm;
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mSellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

    return-object v0
.end method

.method public static getSmsAuthKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsAuthNumberKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    return-object v0
.end method

.method protected static getUIHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    return-object v0
.end method

.method protected static init(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;I)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hnd"    # Landroid/os/Handler;
    .param p2, "setting"    # Lcom/feelingk/iap/IAPLibSetting;
    .param p3, "mdn"    # Ljava/lang/String;
    .param p4, "telecomCarrier"    # I

    .prologue
    .line 103
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    .line 104
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    .line 105
    sput-object p3, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 106
    sput p4, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    .line 109
    iget-object v0, p2, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 110
    new-instance v0, Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mNetworkMessageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/feelingk/iap/net/IAPBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;)V

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    .line 112
    return-void
.end method

.method protected static resendItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-static {p0, p1, v0, v0}, Lcom/feelingk/iap/IAPLib;->resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected static resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pTid"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/feelingk/iap/IAPLib;->resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method protected static resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pTid"    # Ljava/lang/String;
    .param p3, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 156
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    .line 157
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    .line 158
    if-eqz p2, :cond_0

    .line 159
    sput-object p2, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    .line 160
    :cond_0
    sput-object p3, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 165
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 166
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->reItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    .line 171
    return-void
.end method

.method protected static sendBPData([B)[B
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 245
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 247
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 248
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->sendBPData([BILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static sendCultureLandCashInfoReq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cultureLandID"    # Ljava/lang/String;
    .param p1, "cultureLandPW"    # Ljava/lang/String;

    .prologue
    .line 376
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mCultureLandUserId:Ljava/lang/String;

    .line 377
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 378
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 379
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase;->CultureLandCashInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method protected static sendDataMemebership()V
    .locals 7

    .prologue
    .line 258
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 260
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 261
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->Membership(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method protected static sendDotoriSmsAuthNumberReq()V
    .locals 3

    .prologue
    .line 405
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 406
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 407
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->DotoriSMSAuthNumber(ILjava/lang/String;)V

    .line 409
    return-void
.end method

.method protected static sendDotoriSmsAuthReq(Ljava/lang/String;)V
    .locals 3
    .param p0, "userCode"    # Ljava/lang/String;

    .prologue
    .line 431
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 432
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 433
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 434
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->DotoriSmsAuth(ILjava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method protected static sendItemAuth(Ljava/lang/String;)V
    .locals 3
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 219
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 220
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 222
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->ItemAuth(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method protected static sendItemInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-static {p0, p1, v0, v0}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected static sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pTid"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected static sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pTid"    # Ljava/lang/String;
    .param p3, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 128
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    .line 129
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    .line 130
    sput-object p2, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    .line 131
    sput-object p3, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 136
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 137
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->ItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected static sendItemPurchse(Ljava/lang/Boolean;)V
    .locals 7
    .param p0, "bTCash"    # Ljava/lang/Boolean;

    .prologue
    .line 190
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 191
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase;->ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 192
    return-void
.end method

.method protected static sendItemPurchseByDanal(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 9
    .param p0, "mdn"    # Ljava/lang/String;
    .param p1, "carrier"    # I
    .param p2, "bTCash"    # Ljava/lang/Boolean;
    .param p3, "jumin"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 197
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/feelingk/iap/net/IAPBase;->ItemPurchaseDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method protected static sendItemQuery(IIII)V
    .locals 12
    .param p0, "ocbUse"    # I
    .param p1, "dotoriUse"    # I
    .param p2, "cultureUse"    # I
    .param p3, "TcashUse"    # I

    .prologue
    .line 177
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 179
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 180
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    sget-object v7, Lcom/feelingk/iap/IAPLib;->mCultureLandUserId:Ljava/lang/String;

    move v8, p0

    move v9, p1

    move v10, p2

    move v11, p3

    invoke-virtual/range {v0 .. v11}, Lcom/feelingk/iap/net/IAPBase;->ItemQuery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 183
    return-void
.end method

.method protected static sendItemUse(Ljava/lang/String;)V
    .locals 3
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    .line 230
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 232
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 233
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->ItemUse(ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected static sendItemWholeAuth()V
    .locals 3

    .prologue
    .line 204
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 206
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 207
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 209
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->ItemWholeAuth(ILjava/lang/String;)V

    .line 210
    return-void
.end method

.method protected static sendLguSmsAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pID"    # Ljava/lang/String;
    .param p1, "smsAuthNumberKey"    # Ljava/lang/String;

    .prologue
    .line 320
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 322
    sput-object p1, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    .line 323
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 324
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 325
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/net/IAPBase;->LGUSmsAuthReq(ILjava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method protected static sendLguSmsAuthNumber(Ljava/lang/String;)V
    .locals 4
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    .line 311
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 313
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 314
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 316
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/feelingk/iap/net/IAPBase;->LGUSmsAuthNumberReq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method protected static sendOCBPointReq(Ljava/lang/String;)V
    .locals 2
    .param p0, "OCBPWNum"    # Ljava/lang/String;

    .prologue
    .line 360
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 361
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 362
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-virtual {v0, v1, p0}, Lcom/feelingk/iap/net/IAPBase;->OCBPointInfo(ILjava/lang/String;)V

    .line 364
    return-void
.end method

.method protected static sendOCBUpdateReq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "updateType"    # Ljava/lang/String;
    .param p1, "OCBCardNum"    # Ljava/lang/String;

    .prologue
    .line 344
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 345
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 346
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase;->OCBCardUpdate(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mUpdateType:Ljava/lang/String;

    .line 349
    return-void
.end method

.method protected static sendOTPAgreeCheck(Ljava/lang/String;)V
    .locals 3
    .param p0, "agree"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 303
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 304
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 306
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->OTPAgreeCheck(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method protected static sendPaymentInfo()V
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 439
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 440
    return-void
.end method

.method protected static sendPurchaseDismiss(Ljava/lang/String;)V
    .locals 3
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    .line 271
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 273
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 274
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    .line 276
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v2, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/feelingk/iap/net/IAPBase;->PurchaseDismiss(ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected static sendPurchaseDismissCheck(Ljava/lang/String;)V
    .locals 2
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    .line 289
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0}, Lcom/feelingk/iap/net/IAPBase;->Reset()V

    .line 291
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    .line 292
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    .line 293
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget v1, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    invoke-virtual {v0, v1, p0}, Lcom/feelingk/iap/net/IAPBase;->PurchaseDismissCheck(ILjava/lang/String;)V

    .line 294
    return-void
.end method

.method public static setCultureCashQueryInfo(Z)V
    .locals 0
    .param p0, "cultureCashQuery"    # Z

    .prologue
    .line 534
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mCultureCashQueryFlag:Z

    .line 535
    return-void
.end method

.method public static setCultureLandCashPoint(Ljava/lang/String;)V
    .locals 0
    .param p0, "CLPoint"    # Ljava/lang/String;

    .prologue
    .line 540
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mCultureLandPoint:Ljava/lang/String;

    .line 541
    return-void
.end method

.method protected static setDialogType(I)V
    .locals 0
    .param p0, "mDialogType"    # I

    .prologue
    .line 602
    sput p0, Lcom/feelingk/iap/IAPLib;->mDialogType:I

    .line 603
    return-void
.end method

.method public static setDotoriSmsNumber(Ljava/lang/String;)V
    .locals 0
    .param p0, "dotoriSmsNum"    # Ljava/lang/String;

    .prologue
    .line 417
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mDotoriAuthNumber:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public static setIsOTPAuth(Z)V
    .locals 0
    .param p0, "OTPAuth"    # Z

    .prologue
    .line 469
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mIsOTPAuth:Z

    .line 470
    return-void
.end method

.method public static setLimitExcess(Z)V
    .locals 0
    .param p0, "limitExcess"    # Z

    .prologue
    .line 497
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mLimitExcess:Z

    .line 498
    return-void
.end method

.method public static setOCBPoint(Ljava/lang/String;)V
    .locals 0
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 519
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mOCBPoint:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public static setOCBPointInfo(Z)V
    .locals 0
    .param p0, "pointQuery"    # Z

    .prologue
    .line 513
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mOCBPointQueryCheck:Z

    .line 514
    return-void
.end method

.method public static setOTPAgree(Z)V
    .locals 0
    .param p0, "OTPAgree"    # Z

    .prologue
    .line 459
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mOTPAgreeFlag:Z

    .line 460
    return-void
.end method

.method public static setOTPNumber(Ljava/lang/String;)V
    .locals 0
    .param p0, "otpNum"    # Ljava/lang/String;

    .prologue
    .line 449
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mOTPNumber:Ljava/lang/String;

    .line 450
    invoke-static {p0}, Lcom/feelingk/iap/gui/parser/ParserXML;->setOTPNumber(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public static setOTPPurchaseSuccess(Z)V
    .locals 0
    .param p0, "purchaseSuccess"    # Z

    .prologue
    .line 479
    sput-boolean p0, Lcom/feelingk/iap/IAPLib;->mIsOTPSuccess:Z

    .line 480
    return-void
.end method

.method public static setOcbCardUpdateType(Ljava/lang/String;)V
    .locals 0
    .param p0, "inputType"    # Ljava/lang/String;

    .prologue
    .line 577
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mOCBCardUpdateType:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public static setPayments(IIII)V
    .locals 0
    .param p0, "ocbUse"    # I
    .param p1, "dotoriUse"    # I
    .param p2, "cultureUse"    # I
    .param p3, "tcashUse"    # I

    .prologue
    .line 561
    sput p0, Lcom/feelingk/iap/IAPLib;->mOCB_Use:I

    .line 562
    sput p1, Lcom/feelingk/iap/IAPLib;->mDotori_Use:I

    .line 563
    sput p2, Lcom/feelingk/iap/IAPLib;->mCulture_Use:I

    .line 564
    sput p3, Lcom/feelingk/iap/IAPLib;->mTCash_Use:I

    .line 566
    return-void
.end method

.method public static setSellerInfo(Lcom/feelingk/iap/net/SellerInfoConfirm;)V
    .locals 0
    .param p0, "sellerInfo"    # Lcom/feelingk/iap/net/SellerInfoConfirm;

    .prologue
    .line 584
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mSellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

    .line 585
    return-void
.end method

.method public static setSmsAuthKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "smsAuthKey"    # Ljava/lang/String;

    .prologue
    .line 493
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mSmsAuthKey:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public static setSmsAuthNumberKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "smsAuthNumberKey"    # Ljava/lang/String;

    .prologue
    .line 486
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mSmsAuthNumberKey:Ljava/lang/String;

    .line 487
    return-void
.end method

.method protected static setUIHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;

    .prologue
    .line 628
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mHndUI:Landroid/os/Handler;

    .line 629
    return-void
.end method

.method public static updateEncJuminNumber(Ljava/lang/String;)V
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 647
    sput-object p0, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    .line 648
    sget-object v0, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v0, p0}, Lcom/feelingk/iap/net/IAPBase;->setBaseEncodeJuminNumber(Ljava/lang/String;)V

    .line 649
    return-void
.end method
