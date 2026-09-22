.class public abstract Lcom/kt/olleh/inapp/KTInAppActivity;
.super Landroid/app/Activity;
.source "KTInAppActivity.java"

# interfaces
.implements Lcom/kt/olleh/inapp/ILibMode;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAuthen:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInApp:Lcom/kt/olleh/inapp/InApp;

.field private mLibMode:I

.field private mListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private mModel_name:Ljava/lang/String;

.field private mPin:Ljava/lang/String;

.field private mPurchase:Lcom/kt/olleh/inapp/Purchase;

.field mService:Lcom/kt/olleh/inapp/IRemoteInapService;

.field private mUser_id:Ljava/lang/String;

.field newConfig:I

.field serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 47
    const-string v0, "KTInAppActivity"

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->TAG:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mContext:Landroid/content/Context;

    .line 1262
    new-instance v0, Lcom/kt/olleh/inapp/KTInAppActivity$1;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/KTInAppActivity$1;-><init>(Lcom/kt/olleh/inapp/KTInAppActivity;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/KTInAppActivity;)V
    .locals 0

    .prologue
    .line 1257
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onServiceStop()V

    return-void
.end method

.method private getUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "recipients"    # Ljava/lang/String;

    .prologue
    .line 327
    return-object p1
.end method

.method private getUserInfo2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 290
    const-string v0, ""

    .line 291
    .local v0, "phoneNo":Ljava/lang/String;
    iget v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v2, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/kt/olleh/inapp/KTInAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 295
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 296
    sput-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    .line 297
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    goto :goto_0

    .line 302
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KTInAppActivity"

    const-string v3, "ILibMode.mode_SoIP number not exist"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :pswitch_2
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KTInAppActivity"

    const-string v3, "ILibMode.mode_KPAD not exist"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notExistUserInfo()V
    .locals 3

    .prologue
    .line 374
    iget v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_0
    return-void

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    const-string v1, "CRAB2001"

    const-string v2, "ID or PhoneNumber \uc624\ub958"

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onServiceStart()V
    .locals 3

    .prologue
    .line 1250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.olleh.inapp.IRemoteInapService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/kt/olleh/inapp/KTInAppActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1252
    return-void
.end method

.method private onServiceStop()V
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/KTInAppActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1260
    return-void
.end method


# virtual methods
.method public CheckPin()V
    .locals 6

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1189
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1204
    :goto_0
    return-void

    .line 1196
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "userInfo":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1199
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1203
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->CheckPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public SetPin(Ljava/lang/String;)V
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1216
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1231
    :goto_0
    return-void

    .line 1223
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, "userInfo":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1226
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1230
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->SetPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public checkUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "user_id"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "id_type"    # Ljava/lang/String;

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1163
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1176
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/kt/olleh/inapp/InApp;->checkUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public check_balance()V
    .locals 6

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1131
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1146
    :goto_0
    return-void

    .line 1138
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, "userInfo":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1141
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->check_balance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public downSucProc(Ljava/lang/String;)V
    .locals 2
    .param p1, "cert_key"    # Ljava/lang/String;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 991
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 993
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v1}, Lcom/kt/olleh/inapp/InApp;->downSucProc(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIAllList(Ljava/lang/String;)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 503
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 498
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIAllList(Ljava/lang/String;II)V
    .locals 9
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "page_size"    # I
    .param p3, "page"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 467
    :cond_2
    if-lez p2, :cond_3

    if-gtz p3, :cond_4

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIDownloadableList(Ljava/lang/String;)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 650
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIDownloadableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIGiftList(Ljava/lang/String;)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 565
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIGiftList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "recipients"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    :goto_0
    return-void

    .line 526
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 529
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 534
    :cond_2
    if-nez p2, :cond_3

    .line 536
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0

    .line 540
    :cond_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 614
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 622
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->getDIInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIPurchaseList(Ljava/lang/String;)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 433
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIPurchaseList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIReceiveList(Ljava/lang/String;)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 593
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIReceiveList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDIUsableList(Ljava/lang/String;)V
    .locals 7
    .param p1, "app_id"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "userInfo":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 405
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->getDIUsableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDownAuth(Ljava/lang/String;)V
    .locals 2
    .param p1, "cert_key"    # Ljava/lang/String;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 969
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 971
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, p1, v1}, Lcom/kt/olleh/inapp/InApp;->getDownAuth(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getDownUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 940
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 955
    :goto_0
    return-void

    .line 947
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 948
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 950
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 954
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->getDownUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getItemStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    :goto_0
    return-void

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 678
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->getItemStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public getNewConfig()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->newConfig:I

    return v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 239
    const/4 v5, 0x0

    .line 240
    .local v5, "userInfo":Ljava/lang/String;
    sget-object v6, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 242
    iget v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    packed-switch v6, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    sget-object v6, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 260
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "KTInAppActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UserInfo.information = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_1
    :goto_1
    sget-object v5, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 271
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 272
    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 273
    sput-object v2, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_2
    return-object v5

    .line 245
    .end local v2    # "ret":Ljava/lang/String;
    :pswitch_0
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/KTInAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 246
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "phoneNo":Ljava/lang/String;
    sput-object v1, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    goto :goto_0

    .line 250
    .end local v1    # "phoneNo":Ljava/lang/String;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "KTInAppActivity"

    const-string v7, "ILibMode.mode_SoIP number not exist"

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :pswitch_2
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "KTInAppActivity"

    const-string v7, "ILibMode.mode_KPAD not exist"

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "KTInAppActivity"

    const-string v7, "UserInfo.information = null"

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 274
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 276
    const-string v6, "AAAAA"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMSI load Failed, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "V1.7.2"

    return-object v0
.end method

.method public init(Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/kt/olleh/inapp/KTInAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 152
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 153
    const/4 v3, 0x3

    const/4 v4, 0x5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 154
    sput-object v1, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    .line 155
    sget-object v3, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    const-string v3, "01"

    sput-object v3, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 170
    sget-object v3, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;

    iput-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    .line 171
    const-string v3, "@none"

    iput-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    .line 172
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 175
    const-string v3, "+821034160112"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    const/4 v3, 0x1

    sput-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    .line 178
    :cond_1
    return-void

    .line 157
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/kt/olleh/inapp/Config/Config;->tCCodeSKT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    const-string v3, "11"

    sput-object v3, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 166
    const-string v3, "AAAAA"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMSI load Failed, "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :try_start_2
    sget-object v3, Lcom/kt/olleh/inapp/Config/Config;->tCCodeLGT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    const-string v3, "21"

    sput-object v3, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_4
    const-string v3, "31"

    sput-object v3, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public initListener()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    if-nez v0, :cond_0

    .line 339
    const-string v0, "KTInApp"

    const-string v1, "OnInAppListener \ubbf8\ub4f1\ub85d \uc624\ub958 \ubc1c\uc0dd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->setConfig(I)V

    .line 83
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/KTInAppActivity;->setNewConfig(I)V

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/kt/olleh/inapp/Config/Config;->Density:F

    .line 97
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Lcom/kt/olleh/inapp/Purchase;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/Purchase;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 100
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->setData(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v1, p0}, Lcom/kt/olleh/inapp/Purchase;->setContext(Landroid/content/Context;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 105
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->setConfig(I)V

    .line 107
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/KTInAppActivity;->setNewConfig(I)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->setConfig(I)V

    .line 112
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/KTInAppActivity;->setNewConfig(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KTInAppActivity"

    const-string v1, "KTInAppActivity onDestroy"

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->onDestroy()V

    .line 134
    iput-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-eqz v0, :cond_2

    .line 139
    iput-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 142
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    .line 143
    iput-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 68
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KTInAppActivity"

    const-string v1, "KTInAppActivity onPause"

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 75
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KTInAppActivity"

    const-string v1, "KTInAppActivity onResume"

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public purchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "applicationID"    # Ljava/lang/String;
    .param p2, "digitalID"    # Ljava/lang/String;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->onDestroy()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_1
    new-instance v0, Lcom/kt/olleh/inapp/Purchase;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/Purchase;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    .line 366
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mPurchase:Lcom/kt/olleh/inapp/Purchase;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mLibMode:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/Purchase;->onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;I)V

    goto :goto_0
.end method

.method public requestCancel()V
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/InApp;->requestCancel()V

    .line 1239
    return-void
.end method

.method public requestCheckCoin()V
    .locals 6

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    :goto_0
    return-void

    .line 1108
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 1109
    .local v1, "userInfo":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1111
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->requestCheckCoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1015
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    :goto_0
    return-void

    .line 1020
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 1021
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1023
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1027
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 911
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    :goto_0
    return-void

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 921
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "pin"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 700
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    :goto_0
    return-void

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 708
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v9, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/kt/olleh/inapp/InApp;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "tr_id"    # Ljava/lang/String;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, "userInfo":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 771
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v3, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v8, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Lcom/kt/olleh/inapp/InApp;->requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "buy_pwd"    # Ljava/lang/String;
    .param p5, "pin"    # Ljava/lang/String;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 741
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v9, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/kt/olleh/inapp/InApp;->requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIesBuy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "iid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;

    .prologue
    .line 787
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v1, :cond_0

    .line 789
    new-instance v1, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v1}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 791
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v1

    if-nez v1, :cond_1

    .line 802
    :goto_0
    return-void

    .line 795
    :cond_1
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo2()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "userInfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 798
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 801
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/kt/olleh/inapp/InApp;->requestDIesBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public requestDIgetFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "mime_type"    # Ljava/lang/String;

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1044
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->initListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    :goto_0
    return-void

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 1052
    .local v3, "userInfo":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1054
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->notExistUserInfo()V

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mModel_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->requestDIgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto :goto_0
.end method

.method public setNewConfig(I)V
    .locals 0
    .param p1, "newConfig"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/kt/olleh/inapp/KTInAppActivity;->newConfig:I

    .line 63
    return-void
.end method

.method public settingSoIPNumber()V
    .locals 0

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/kt/olleh/inapp/KTInAppActivity;->onServiceStart()V

    .line 1244
    return-void
.end method
