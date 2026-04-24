.class public Lcom/feelingk/iap/net/IAPBase;
.super Lcom/feelingk/iap/net/IAPNet;
.source "IAPBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;,
        Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;,
        Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;,
        Lcom/feelingk/iap/net/IAPBase$CallItemAuth;,
        Lcom/feelingk/iap/net/IAPBase$CallItemInfo;,
        Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;,
        Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;,
        Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;,
        Lcom/feelingk/iap/net/IAPBase$CallItemQuery;,
        Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;,
        Lcom/feelingk/iap/net/IAPBase$CallMembership;,
        Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;,
        Lcom/feelingk/iap/net/IAPBase$CallOCBPointInfo;,
        Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;,
        Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;,
        Lcom/feelingk/iap/net/IAPBase$CallSendBPData;,
        Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;,
        Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;,
        Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;,
        Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;,
        Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;,
        Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;
    }
.end annotation


# static fields
.field private static MPTID:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "IAPBase"

.field private static cultureLandCashConfirm:Lcom/feelingk/iap/net/CultureLandCashConfirm;

.field private static dotoriSmsAuthConfirm:Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

.field private static itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private static mLimitExcessFlag:Z

.field private static mOCBPWNum:Ljava/lang/String;

.field private static mPBPInfo:Ljava/lang/String;

.field private static mPID:Ljava/lang/String;

.field private static mPName:Ljava/lang/String;

.field private static oKCashbagPointInfoConfirm:Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;

.field private static sellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;


# instance fields
.field public APPLICATION_ID:Ljava/lang/String;

.field public BP_SERVER_IP:Ljava/lang/String;

.field public BP_SERVER_PORT:I

.field public CultureLand_ID:Ljava/lang/String;

.field public MDN:Ljava/lang/String;

.field public OCBCARDNUM:Ljava/lang/String;

.field private autoPurchaseDismissCheckConfirm:Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

.field public errMsg:Ljava/lang/String;

.field private initCfm:Lcom/feelingk/iap/net/InitConfirm;

.field public isWifi:Z

.field private itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

.field private itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

.field private lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

.field public mContext:Landroid/content/Context;

.field private mEncJuminNumer:Ljava/lang/String;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public mNetworkHandler:Landroid/os/Handler;

.field public mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

.field private mOTPAgree:Ljava/lang/String;

.field private msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

.field public subErrorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    sput-object v1, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 101
    sput-object v1, Lcom/feelingk/iap/net/IAPBase;->oKCashbagPointInfoConfirm:Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;

    .line 102
    sput-object v1, Lcom/feelingk/iap/net/IAPBase;->cultureLandCashConfirm:Lcom/feelingk/iap/net/CultureLandCashConfirm;

    .line 103
    sput-object v1, Lcom/feelingk/iap/net/IAPBase;->dotoriSmsAuthConfirm:Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    .line 104
    sput-object v1, Lcom/feelingk/iap/net/IAPBase;->sellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/feelingk/iap/net/IAPBase;->mLimitExcessFlag:Z

    .line 112
    sput-object v1, Lcom/feelingk/iap/net/IAPBase;->mPBPInfo:Ljava/lang/String;

    .line 113
    sput-object v1, Lcom/feelingk/iap/net/IAPBase;->mOCBPWNum:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "setting"    # Lcom/feelingk/iap/IAPLibSetting;
    .param p4, "mdn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/feelingk/iap/net/IAPNet;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    .line 77
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 78
    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->OCBCARDNUM:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->CultureLand_ID:Ljava/lang/String;

    .line 85
    iput-boolean v2, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    .line 88
    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 90
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    .line 91
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 95
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    .line 96
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    .line 97
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    .line 98
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    .line 100
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    .line 105
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->autoPurchaseDismissCheckConfirm:Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    .line 107
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_MAIN:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 109
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mOTPAgree:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    .line 120
    iget-object v0, p3, Lcom/feelingk/iap/IAPLibSetting;->AppID:Ljava/lang/String;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 121
    iget-object v0, p3, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 122
    iget v0, p3, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 123
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 125
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 126
    return-void
.end method

.method private SendMessageToNetwork(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageID"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "messageH":Landroid/os/Message;
    iget v1, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 163
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->mPID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->mPName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10(Lcom/feelingk/iap/net/SellerInfoConfirm;)V
    .locals 0

    .prologue
    .line 104
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->sellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

    return-void
.end method

.method static synthetic access$11()Lcom/feelingk/iap/net/SellerInfoConfirm;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->sellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

    return-object v0
.end method

.method static synthetic access$12(Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0

    .prologue
    .line 99
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method static synthetic access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$14()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->MPTID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->mPName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->mPBPInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17()Lcom/feelingk/iap/net/CultureLandCashConfirm;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->cultureLandCashConfirm:Lcom/feelingk/iap/net/CultureLandCashConfirm;

    return-object v0
.end method

.method static synthetic access$18()Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->oKCashbagPointInfoConfirm:Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;

    return-object v0
.end method

.method static synthetic access$19()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->mOCBPWNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->MPTID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$20()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/feelingk/iap/net/IAPBase;->mLimitExcessFlag:Z

    return v0
.end method

.method static synthetic access$21(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->mOCBPWNum:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;)V
    .locals 0

    .prologue
    .line 101
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->oKCashbagPointInfoConfirm:Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;

    return-void
.end method

.method static synthetic access$23(Lcom/feelingk/iap/net/CultureLandCashConfirm;)V
    .locals 0

    .prologue
    .line 102
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->cultureLandCashConfirm:Lcom/feelingk/iap/net/CultureLandCashConfirm;

    return-void
.end method

.method static synthetic access$24(Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;)V
    .locals 0

    .prologue
    .line 103
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->dotoriSmsAuthConfirm:Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    return-void
.end method

.method static synthetic access$25()Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->dotoriSmsAuthConfirm:Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    return-object v0
.end method

.method static synthetic access$26(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemWholeAuthConfirm;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-void
.end method

.method static synthetic access$27(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-object v0
.end method

.method static synthetic access$28(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/ItemUseConfirm;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-void
.end method

.method static synthetic access$29(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/feelingk/iap/net/IAPBase;->mPBPInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$30(Lcom/feelingk/iap/net/IAPBase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mOTPAgree:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->autoPurchaseDismissCheckConfirm:Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    return-void
.end method

.method static synthetic access$32(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->autoPurchaseDismissCheckConfirm:Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    return-object v0
.end method

.method static synthetic access$33(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-void
.end method

.method static synthetic access$34(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-object v0
.end method

.method static synthetic access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    return-void
.end method

.method static synthetic access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;

    return-object v0
.end method

.method static synthetic access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$8(Z)V
    .locals 0

    .prologue
    .line 111
    sput-boolean p0, Lcom/feelingk/iap/net/IAPBase;->mLimitExcessFlag:Z

    return-void
.end method

.method static synthetic access$9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->mPID:Ljava/lang/String;

    return-object v0
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapClose(Z)I

    .line 185
    return-void
.end method

.method private resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z
    .locals 5
    .param p1, "result"    # Lcom/feelingk/iap/net/MsgConfirm;

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    const-string v2, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ DEBUG ]  Network ErrorCode :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_0
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v2

    iput v2, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 210
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 211
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v3

    const-string v4, "MS949"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    .line 212
    const-string v2, "flybbird"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network Message :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_ERROR:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 234
    :goto_1
    return v1

    .line 215
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetUserMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetUserMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetDumpMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/feelingk/iap/net/MsgConfirm;->GetDumpMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 233
    :cond_3
    iput v1, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 234
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CalliapSendImeiAuthReq(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;

    .prologue
    .line 635
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 636
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 637
    return-void
.end method

.method public CultureLandCashInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "cultureLandID"    # Ljava/lang/String;
    .param p3, "cultureLandPW"    # Ljava/lang/String;

    .prologue
    .line 1327
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->CultureLand_ID:Ljava/lang/String;

    .line 1328
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1330
    return-void
.end method

.method public DotoriSMSAuthNumber(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;

    .prologue
    .line 1399
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1400
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1401
    return-void
.end method

.method public DotoriSmsAuth(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "userCode"    # Ljava/lang/String;

    .prologue
    .line 1469
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1470
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;

    invoke-direct {v1, p0, p1, p3}, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1471
    return-void
.end method

.method public ItemAuth(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "pID"    # Ljava/lang/String;

    .prologue
    .line 1752
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1753
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;

    invoke-direct {v1, p0, p1, p3}, Lcom/feelingk/iap/net/IAPBase$CallItemAuth;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1754
    return-void
.end method

.method public ItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pTelecom"    # I
    .param p2, "pMdn"    # Ljava/lang/String;
    .param p3, "PID"    # Ljava/lang/String;
    .param p4, "PNAME"    # Ljava/lang/String;
    .param p5, "pTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 251
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 252
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PNAME"    # Ljava/lang/String;
    .param p3, "TCASH"    # Ljava/lang/Boolean;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 974
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PNAME"    # Ljava/lang/String;
    .param p3, "TID"    # Ljava/lang/String;
    .param p4, "BPINFO"    # Ljava/lang/String;
    .param p5, "TCASH"    # Ljava/lang/Boolean;

    .prologue
    .line 977
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 978
    return-void
.end method

.method public ItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PNAME"    # Ljava/lang/String;
    .param p3, "TID"    # Ljava/lang/String;
    .param p4, "BPINFO"    # Ljava/lang/String;
    .param p5, "TCASH"    # Ljava/lang/Boolean;
    .param p6, "useBPProtocol"    # Ljava/lang/Boolean;

    .prologue
    .line 982
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchase;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 983
    return-void
.end method

.method public ItemPurchaseDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 11
    .param p1, "mdn"    # Ljava/lang/String;
    .param p2, "pID"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "pCarrier"    # I
    .param p5, "TID"    # Ljava/lang/String;
    .param p6, "BPInfo"    # Ljava/lang/String;
    .param p7, "bTCash"    # Ljava/lang/Boolean;
    .param p8, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 1078
    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1079
    return-void
.end method

.method public ItemQuery(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 13
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "PID"    # Ljava/lang/String;
    .param p4, "PName"    # Ljava/lang/String;
    .param p5, "PTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;
    .param p7, "pCultureLandId"    # Ljava/lang/String;
    .param p8, "ocbUse"    # I
    .param p9, "dotoriUse"    # I
    .param p10, "cultureUse"    # I
    .param p11, "tcashUse"    # I

    .prologue
    .line 835
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 837
    iget-object v12, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    invoke-interface {v12, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 838
    return-void
.end method

.method public ItemQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "PID"    # Ljava/lang/String;
    .param p2, "PName"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 831
    return-void
.end method

.method public ItemUse(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "PID"    # Ljava/lang/String;

    .prologue
    .line 1677
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1678
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;

    invoke-direct {v1, p0, p1, p3}, Lcom/feelingk/iap/net/IAPBase$CallItemItemUse;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1679
    return-void
.end method

.method public ItemWholeAuth(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;

    .prologue
    .line 1543
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1544
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$CallItemWholeAuth;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1545
    return-void
.end method

.method public LGUSmsAuthNumberReq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "pID"    # Ljava/lang/String;
    .param p4, "encJumin"    # Ljava/lang/String;

    .prologue
    .line 2366
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 2367
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2368
    return-void
.end method

.method public LGUSmsAuthReq(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "smsAuthKey"    # Ljava/lang/String;
    .param p3, "OTPNumber"    # Ljava/lang/String;

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2451
    return-void
.end method

.method public Membership(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "telecom"    # I
    .param p2, "pMdn"    # Ljava/lang/String;
    .param p3, "PID"    # Ljava/lang/String;
    .param p4, "PNAME"    # Ljava/lang/String;
    .param p5, "pTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 1927
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1928
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$CallMembership;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPBase$CallMembership;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1929
    return-void
.end method

.method public OCBCardUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "updateType"    # Ljava/lang/String;
    .param p3, "OCBCardNum"    # Ljava/lang/String;

    .prologue
    .line 1185
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase;->OCBCARDNUM:Ljava/lang/String;

    .line 1187
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1188
    return-void
.end method

.method public OCBPointInfo(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "OCBPWNumber"    # Ljava/lang/String;

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallOCBPointInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallOCBPointInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1257
    return-void
.end method

.method public OTPAgreeCheck(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "agree"    # Ljava/lang/String;

    .prologue
    .line 2033
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 2034
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase;->mOTPAgree:Ljava/lang/String;

    .line 2036
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/net/IAPBase$OTPAgreeCheck;-><init>(Lcom/feelingk/iap/net/IAPBase;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2037
    return-void
.end method

.method public PurchaseDismiss(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "PID"    # Ljava/lang/String;

    .prologue
    .line 2102
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 2103
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;

    invoke-direct {v1, p0, p1, p3}, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismiss;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2104
    return-void
.end method

.method public PurchaseDismissCheck(ILjava/lang/String;)V
    .locals 2
    .param p1, "telecom"    # I
    .param p2, "PID"    # Ljava/lang/String;

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;

    invoke-direct {v1, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2180
    return-void
.end method

.method public Reset()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 174
    :cond_0
    return-void
.end method

.method public StopService()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 180
    :cond_0
    return-void
.end method

.method connect(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "pTelecom"    # I
    .param p2, "pID"    # Ljava/lang/String;
    .param p3, "pTID"    # Ljava/lang/String;

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 2250
    .local v11, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v12

    .line 2251
    .local v12, "mobile":Landroid/net/NetworkInfo;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 2254
    .local v13, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 2272
    :goto_0
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(IAPBase) IAPNet Wifi = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  /  Connect= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->isConnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->isConnect()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2275
    const-string v0, "IAPBase"

    const-string v1, "G/W Connect and Success !!! "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    iget-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    if-eqz v0, :cond_3

    .line 2278
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 2279
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iapdev.tstore.co.kr"

    const/16 v2, 0x1d56

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 2281
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 2282
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 2285
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 2286
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    move v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 2279
    invoke-static/range {v0 .. v10}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    .line 2306
    :goto_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    if-nez v0, :cond_5

    .line 2307
    const/4 v0, 0x0

    .line 2358
    :goto_2
    return v0

    .line 2257
    :cond_0
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    goto :goto_0

    .line 2261
    :cond_1
    if-nez p2, :cond_2

    .line 2262
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2263
    const/16 v0, 0x7d0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_INTERNET_ACCESS_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 2268
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 2266
    :cond_2
    const/16 v0, 0x7d7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_3

    .line 2289
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 2290
    new-instance v0, Lcom/feelingk/iap/net/ServerInfo;

    const-string v1, "iapdev.tstore.co.kr"

    const/16 v2, 0x1cf2

    invoke-direct {v0, v1, v2}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 2292
    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 2293
    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 2296
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 2297
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    move v1, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 2290
    invoke-static/range {v0 .. v10}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    goto :goto_1

    .line 2302
    :cond_4
    const-string v0, "IAPBase"

    const-string v1, "G/W Re Connect + Auth"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    move v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPNet;->iapReAuth(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    goto :goto_1

    .line 2309
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {p0, v0}, Lcom/feelingk/iap/net/IAPBase;->resultProc(Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2311
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_6

    .line 2312
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_6

    .line 2313
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_7

    .line 2316
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2317
    const/16 v0, 0x7d8

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 2336
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2319
    :cond_7
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2323
    sget-object v0, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_SKT_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 2324
    const/16 v0, 0x461

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 2326
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2329
    :cond_8
    if-nez p2, :cond_9

    .line 2330
    const/16 v0, 0x7d0

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_4

    .line 2333
    :cond_9
    const/16 v0, 0x7d7

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    goto :goto_4

    .line 2358
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_2
.end method

.method public getInitConfirmMessage()Lcom/feelingk/iap/net/InitConfirm;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->initCfm:Lcom/feelingk/iap/net/InitConfirm;

    return-object v0
.end method

.method public getItemInfoConfirmMessage()Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/feelingk/iap/net/IAPBase;->itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method public getItemUseConfirmMessage()Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemUseConfirm:Lcom/feelingk/iap/net/ItemUseConfirm;

    return-object v0
.end method

.method public getItemWholeAuthConfirmMessage()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->itemWholeAuthConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    return-object v0
.end method

.method public getLGUSmsAuthNumberConfirmMessage()Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase;->lguSmsAuthNumberConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-object v0
.end method

.method public reItemInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pTelecom"    # I
    .param p2, "pMdn"    # Ljava/lang/String;
    .param p3, "PID"    # Ljava/lang/String;
    .param p4, "PNAME"    # Ljava/lang/String;
    .param p5, "pTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 496
    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/feelingk/iap/net/IAPBase$reCallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 497
    return-void
.end method

.method public sendBPData([BILjava/lang/String;)[B
    .locals 8
    .param p1, "data"    # [B
    .param p2, "telecom"    # I
    .param p3, "mdn"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7d5

    const/4 v4, 0x0

    .line 1809
    move-object v2, v4

    check-cast v2, [B

    .line 1810
    .local v2, "returnData":[B
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1812
    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;

    invoke-direct {v6, p0, p1, p2}, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;-><init>(Lcom/feelingk/iap/net/IAPBase;[BI)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1815
    .local v3, "service":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<[B>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1824
    :goto_0
    return-object v2

    .line 1816
    :catch_0
    move-exception v1

    .line 1817
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0, v7, v4}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1818
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1819
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1820
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-direct {p0, v7, v4}, Lcom/feelingk/iap/net/IAPBase;->SendMessageToNetwork(ILjava/lang/Object;)V

    .line 1821
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBaseEncodeJuminNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "jumin"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase;->mEncJuminNumer:Ljava/lang/String;

    .line 152
    return-void
.end method
