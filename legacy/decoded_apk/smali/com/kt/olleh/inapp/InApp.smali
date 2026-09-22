.class public Lcom/kt/olleh/inapp/InApp;
.super Ljava/lang/Object;
.source "InApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/olleh/inapp/InApp$NetworkTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InApp"


# instance fields
.field private final RS_URL:Ljava/lang/String;

.field private final TB_URL:Ljava/lang/String;

.field private app_id:Ljava/lang/String;

.field private authen:Ljava/lang/String;

.field private buy_type:Ljava/lang/String;

.field private co_id:Ljava/lang/String;

.field private final crypto_param:Ljava/lang/String;

.field private di_id:Ljava/lang/String;

.field private mAES_URL:Ljava/lang/String;

.field private mAPI:Ljava/lang/String;

.field private mAPINext:Ljava/lang/String;

.field private final mApp_id:Ljava/lang/String;

.field private final mAppid:Ljava/lang/String;

.field private final mAuthen:Ljava/lang/String;

.field private final mBuy_pwd:Ljava/lang/String;

.field private final mBuy_type:Ljava/lang/String;

.field private final mCert_key:Ljava/lang/String;

.field private final mDi_id:Ljava/lang/String;

.field private mFailCnt:I

.field private final mFile_name:Ljava/lang/String;

.field private final mId_type:Ljava/lang/String;

.field private final mIid:Ljava/lang/String;

.field private final mMime_type:Ljava/lang/String;

.field private final mModel_name:Ljava/lang/String;

.field private mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

.field private final mOpcode:Ljava/lang/String;

.field private final mPage:Ljava/lang/String;

.field private final mPage_size:Ljava/lang/String;

.field private final mPay_no:Ljava/lang/String;

.field private final mPhone:Ljava/lang/String;

.field private final mPin:Ljava/lang/String;

.field private final mPwd:Ljava/lang/String;

.field private final mRecipients:Ljava/lang/String;

.field private volatile mRun:Z

.field private mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

.field private mSeq_key:Ljava/lang/String;

.field private final mShow_id:Ljava/lang/String;

.field private mSymmetric_key:Ljava/lang/String;

.field private final mTr_id:Ljava/lang/String;

.field private final mUser_id:Ljava/lang/String;

.field private final mUser_info:Ljava/lang/String;

.field private final mco_id:Ljava/lang/String;

.field private model_name:Ljava/lang/String;

.field private pay_no:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private final seq_key:Ljava/lang/String;

.field private tr_id:Ljava/lang/String;

.field private user_id:Ljava/lang/String;

.field private user_info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    .line 49
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

    .line 58
    const-string v0, "http://221.148.247.203:8888/INAP_GW/inap_gw/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->TB_URL:Ljava/lang/String;

    .line 59
    const-string v0, "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->RS_URL:Ljava/lang/String;

    .line 61
    const-string v0, "crypto_param/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->crypto_param:Ljava/lang/String;

    .line 62
    const-string v0, "/seq_key/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->seq_key:Ljava/lang/String;

    .line 63
    const-string v0, "/app_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mApp_id:Ljava/lang/String;

    .line 64
    const-string v0, "/user_info/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mUser_info:Ljava/lang/String;

    .line 65
    const-string v0, "/user_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mUser_id:Ljava/lang/String;

    .line 66
    const-string v0, "/authen/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAuthen:Ljava/lang/String;

    .line 67
    const-string v0, "/model_name/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mModel_name:Ljava/lang/String;

    .line 68
    const-string v0, "/page_size/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPage_size:Ljava/lang/String;

    .line 69
    const-string v0, "/page/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPage:Ljava/lang/String;

    .line 70
    const-string v0, "/recipients/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRecipients:Ljava/lang/String;

    .line 71
    const-string v0, "/di_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mDi_id:Ljava/lang/String;

    .line 72
    const-string v0, "/buy_type/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mBuy_type:Ljava/lang/String;

    .line 73
    const-string v0, "/tr_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mTr_id:Ljava/lang/String;

    .line 74
    const-string v0, "/file_name/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mFile_name:Ljava/lang/String;

    .line 75
    const-string v0, "/mime_type/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mMime_type:Ljava/lang/String;

    .line 76
    const-string v0, "/show_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mShow_id:Ljava/lang/String;

    .line 77
    const-string v0, "/pwd/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPwd:Ljava/lang/String;

    .line 78
    const-string v0, "/buy_pwd/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mBuy_pwd:Ljava/lang/String;

    .line 80
    const-string v0, "opcode="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mOpcode:Ljava/lang/String;

    .line 81
    const-string v0, "&iid="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mIid:Ljava/lang/String;

    .line 82
    const-string v0, "&appid="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAppid:Ljava/lang/String;

    .line 83
    const-string v0, "&phone="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPhone:Ljava/lang/String;

    .line 84
    const-string v0, "/pin/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPin:Ljava/lang/String;

    .line 85
    const-string v0, "/pay_no/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPay_no:Ljava/lang/String;

    .line 86
    const-string v0, "/co_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mco_id:Ljava/lang/String;

    .line 88
    const-string v0, "/cert_key/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mCert_key:Ljava/lang/String;

    .line 90
    const-string v0, "/id_type/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mId_type:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/kt/olleh/inapp/InApp;->mFailCnt:I

    .line 98
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 101
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/net/NetworkManager;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

    return-void
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kt/olleh/inapp/InApp;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/kt/olleh/inapp/InApp;->mFailCnt:I

    return v0
.end method

.method static synthetic access$14(Lcom/kt/olleh/inapp/InApp;I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/kt/olleh/inapp/InApp;->mFailCnt:I

    return-void
.end method

.method static synthetic access$15(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->di_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->user_info:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->authen:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kt/olleh/inapp/InApp;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    return v0
.end method

.method static synthetic access$20(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->model_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->buy_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->pin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->co_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$25(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->pay_no:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$26(Lcom/kt/olleh/inapp/InApp;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    return-void
.end method

.method static synthetic access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    return-void
.end method

.method private networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "api"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 127
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    const-string v2, "networkTaskStart in"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    new-instance v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;

    invoke-direct {v0, p0, p1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;-><init>(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 129
    .local v0, "task":Lcom/kt/olleh/inapp/InApp$NetworkTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    .line 130
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1
    new-array v1, v6, [Ljava/lang/String;

    aput-object p2, v1, v5

    aput-object p3, v1, v4

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    :goto_0
    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    .line 138
    iput-boolean v4, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    .line 139
    const/4 v0, 0x0

    .line 140
    return-void

    .line 133
    :cond_2
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_3
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/String;

    aput-object p2, v2, v5

    aput-object p3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public CheckPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "user_info"    # Ljava/lang/String;
    .param p2, "user_id"    # Ljava/lang/String;
    .param p3, "authen"    # Ljava/lang/String;
    .param p4, "model_name"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 1115
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 1116
    const-string v1, "CheckPin"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1124
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1125
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1126
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1122
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 1128
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method public SetPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "user_info"    # Ljava/lang/String;
    .param p2, "user_id"    # Ljava/lang/String;
    .param p3, "authen"    # Ljava/lang/String;
    .param p4, "model_name"    # Ljava/lang/String;
    .param p5, "pin"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 1142
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 1143
    const-string v1, "SetPin"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1150
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1151
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1152
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1153
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1154
    const-string v2, "/pin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1149
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 1156
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    return-void
.end method

.method public checkUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "id_type"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 1089
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 1090
    const-string v1, "checkUserId"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1097
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1098
    const-string v2, "/pwd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1099
    const-string v2, "/id_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 1101
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public check_balance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "user_info"    # Ljava/lang/String;
    .param p2, "user_id"    # Ljava/lang/String;
    .param p3, "authen"    # Ljava/lang/String;
    .param p4, "model_name"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 1063
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 1064
    const-string v1, "check_balance"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1072
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1073
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1074
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1070
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 1076
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method public downSucProc(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "cert_key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 921
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 922
    const-string v1, "downSucProc"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: cert_key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 929
    const-string v2, "/cert_key/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 931
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public getBuyDiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "buy_type"    # Ljava/lang/String;
    .param p7, "model_name"    # Ljava/lang/String;
    .param p8, "pin"    # Ljava/lang/String;
    .param p9, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 447
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 448
    const-string v1, "getBuyDiUrl"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 453
    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 455
    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 456
    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 457
    const-string v3, ", buy_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 458
    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 459
    const-string v3, ", pin\t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 463
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 464
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 467
    const-string v2, "/buy_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 468
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 469
    const-string v2, "/pin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->app_id:Ljava/lang/String;

    .line 472
    iput-object p2, p0, Lcom/kt/olleh/inapp/InApp;->di_id:Ljava/lang/String;

    .line 473
    iput-object p3, p0, Lcom/kt/olleh/inapp/InApp;->user_info:Ljava/lang/String;

    .line 474
    iput-object p4, p0, Lcom/kt/olleh/inapp/InApp;->user_id:Ljava/lang/String;

    .line 475
    iput-object p5, p0, Lcom/kt/olleh/inapp/InApp;->authen:Ljava/lang/String;

    .line 476
    iput-object p6, p0, Lcom/kt/olleh/inapp/InApp;->buy_type:Ljava/lang/String;

    .line 477
    iput-object p7, p0, Lcom/kt/olleh/inapp/InApp;->model_name:Ljava/lang/String;

    .line 478
    iput-object p8, p0, Lcom/kt/olleh/inapp/InApp;->pin:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p9, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "page_size"    # I
    .param p7, "page"    # I
    .param p8, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 210
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 211
    const-string v1, "getAllDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page_size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 223
    const-string v2, "/page_size/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    const-string v2, "/page/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p8, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 240
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 241
    const-string v1, "getAllDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public getDIDownloadableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 386
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 387
    const-string v1, "getDownloadDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 395
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 396
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 300
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 301
    const-string v1, "getGiftDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "recipients"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 271
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 272
    const-string v1, "getGiftDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recipients = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const-string v2, "/recipients/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p7, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public getDIInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 357
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 358
    const-string v1, "getDiDetail"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 366
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 371
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InApp"

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p7, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public getDIPurchaseList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 181
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 182
    const-string v1, "getBuyDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 194
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public getDIReceiveList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 328
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 329
    const-string v1, "getReceiveDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public getDIUsableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "user_info"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "authen"    # Ljava/lang/String;
    .param p5, "model_name"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 153
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 154
    const-string v1, "getUseDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public getDownAuth(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "cert_key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 899
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 900
    const-string v1, "getDownAuth"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: cert_key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 907
    const-string v2, "/cert_key/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 906
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 909
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public getDownUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 872
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 873
    const-string v1, "getDownUrl"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 880
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 881
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 882
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 883
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 884
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 885
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 887
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p7, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public getItemStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 414
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 415
    const-string v1, "getItemStatus"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 424
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 421
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p7, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public getMainURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->bTBserver:Z

    if-eqz v1, :cond_0

    .line 114
    const-string v0, "http://221.148.247.203:8888/INAP_GW/inap_gw/"

    .line 122
    .local v0, "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 119
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v0, "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/"

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public requestBuyDI(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "co_id"    # Ljava/lang/String;
    .param p2, "pay_no"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 490
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 491
    const-string v1, "buyDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: co_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 496
    const-string v3, ", pay_no\t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    const-string v2, "/co_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 500
    const-string v2, "/pay_no/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 502
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->co_id:Ljava/lang/String;

    .line 503
    iput-object p2, p0, Lcom/kt/olleh/inapp/InApp;->pay_no:Ljava/lang/String;

    .line 505
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public requestCancel()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->cancel(Z)Z

    .line 1167
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    .line 1168
    return-void
.end method

.method public requestCheckCoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "user_info"    # Ljava/lang/String;
    .param p2, "user_id"    # Ljava/lang/String;
    .param p3, "authen"    # Ljava/lang/String;
    .param p4, "model_name"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 1037
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 1038
    const-string v1, "checkCoin"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1046
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1047
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1048
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 1050
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 946
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 947
    const-string v1, "approvedDownDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 954
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 955
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 956
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 957
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 958
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 959
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 953
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 961
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p7, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method public requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 842
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 843
    const-string v1, "approvedUseDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 850
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 851
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 852
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 853
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 854
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 855
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 849
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 857
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p7, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "buy_type"    # Ljava/lang/String;
    .param p8, "pin"    # Ljava/lang/String;
    .param p9, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 522
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 523
    const-string v1, "buyDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 528
    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 529
    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 531
    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 532
    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 533
    const-string v3, ", buy_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 534
    const-string v3, ", pin\t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    const-string v2, "/buy_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    const-string v2, "/pin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 546
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->app_id:Ljava/lang/String;

    .line 547
    iput-object p2, p0, Lcom/kt/olleh/inapp/InApp;->di_id:Ljava/lang/String;

    .line 548
    iput-object p3, p0, Lcom/kt/olleh/inapp/InApp;->user_info:Ljava/lang/String;

    .line 549
    iput-object p4, p0, Lcom/kt/olleh/inapp/InApp;->user_id:Ljava/lang/String;

    .line 550
    iput-object p5, p0, Lcom/kt/olleh/inapp/InApp;->authen:Ljava/lang/String;

    .line 551
    iput-object p6, p0, Lcom/kt/olleh/inapp/InApp;->model_name:Ljava/lang/String;

    .line 552
    iput-object p7, p0, Lcom/kt/olleh/inapp/InApp;->buy_type:Ljava/lang/String;

    .line 553
    iput-object p8, p0, Lcom/kt/olleh/inapp/InApp;->pin:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p9, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "tr_id"    # Ljava/lang/String;
    .param p8, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 632
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 633
    const-string v1, "buyCancelDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 639
    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 640
    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 641
    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 642
    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 643
    const-string v3, ", tr_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 647
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 648
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 649
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 650
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 651
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 652
    const-string v2, "/tr_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 654
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p8, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 6
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "buy_type"    # Ljava/lang/String;
    .param p8, "pin"    # Ljava/lang/String;
    .param p9, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 575
    const-string v3, "getSymKeyGen"

    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 576
    const-string v3, "buyDi"

    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 578
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "InApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parameter :: app_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 579
    const-string v5, ", di_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 580
    const-string v5, ", user_info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 581
    const-string v5, ", user_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 582
    const-string v5, ", authen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 583
    const-string v5, ", model_name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 584
    const-string v5, ", buy_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    const-string v5, ", pin\t = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    const-string v4, "/app_id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 589
    const-string v4, "/di_id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 590
    const-string v4, "/user_info/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 591
    const-string v4, "/user_id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 592
    const-string v4, "/authen/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 593
    const-string v4, "/model_name/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 594
    const-string v4, "/buy_type/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 595
    const-string v4, "/pin/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 587
    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 597
    const/4 v0, 0x0

    .line 599
    .local v0, "aesURL":Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 601
    :cond_1
    const-string v3, "0000"

    const-string v4, "\uc774\uc804 \uad6c\ub9e4 \ub0b4\uc5ed \uc5c6\uc74c"

    invoke-interface {p9, v3, v4}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 605
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 611
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "crypto_param/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/seq_key/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p9, v2, v3}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void

    .line 607
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "InApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AESCrypter ::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestDIesBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 667
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 668
    const-string v1, "esBuyDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 671
    const-string v2, "opcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    const-string v2, "&iid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    const-string v2, "&appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 674
    const-string v2, "&phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 676
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: iid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 677
    const-string v3, ", appid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 678
    const-string v3, ", phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method public requestDIgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "mime_type"    # Ljava/lang/String;
    .param p3, "user_info"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "authen"    # Ljava/lang/String;
    .param p6, "model_name"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 978
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 979
    const-string v1, "getFile"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "url":Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: file_name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mime_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", model_name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    const-string v2, "/file_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 987
    const-string v2, "/mime_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 988
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 989
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 990
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 991
    const-string v2, "/model_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 993
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p7, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-void
.end method
