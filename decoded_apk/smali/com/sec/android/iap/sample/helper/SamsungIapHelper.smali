.class public Lcom/sec/android/iap/sample/helper/SamsungIapHelper;
.super Ljava/lang/Object;
.source "SamsungIapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;,
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;,
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;,
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;,
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;,
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;,
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;,
        Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;
    }
.end annotation


# static fields
.field private static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field private static final HONEYCOMB_MR1:I = 0xc

.field public static final IAP_ERROR_ALREADY_PURCHASED:I = -0x3eb

.field public static final IAP_ERROR_COMMON:I = -0x3ea

.field public static final IAP_ERROR_CONFIRM_INBOX:I = -0x3ee

.field public static final IAP_ERROR_INITIALIZATION:I = -0x3e8

.field public static final IAP_ERROR_NEED_APP_UPGRADE:I = -0x3e9

.field public static final IAP_ERROR_NONE:I = 0x0

.field public static final IAP_ERROR_PRODUCT_DOES_NOT_EXIST:I = -0x3ed

.field public static final IAP_ERROR_WHILE_RUNNING:I = -0x3ec

.field public static final IAP_MODE_COMMERCIAL:I = 0x0

.field public static final IAP_MODE_TEST_FAIL:I = -0x1

.field public static final IAP_MODE_TEST_SUCCESS:I = 0x1

.field public static final IAP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.iap"

.field public static final IAP_PAYMENT_IS_CANCELED:I = 0x1

.field public static final IAP_RESPONSE_RESULT_OK:I = 0x0

.field public static final IAP_RESPONSE_RESULT_UNAVAILABLE:I = 0x2

.field public static final IAP_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.iap.service.iapService"

.field public static final IAP_SIGNATURE_HASHCODE:I = 0x7a7eaf4b

.field public static final ITEM_TYPE_ALL:Ljava/lang/String; = "10"

.field public static final ITEM_TYPE_CONSUMABLE:Ljava/lang/String; = "00"

.field public static final ITEM_TYPE_NON_CONSUMABLE:Ljava/lang/String; = "01"

.field public static final ITEM_TYPE_SUBSCRIPTION:Ljava/lang/String; = "02"

.field public static final KEY_NAME_ERROR_STRING:Ljava/lang/String; = "ERROR_STRING"

.field public static final KEY_NAME_IAP_UPGRADE_URL:Ljava/lang/String; = "IAP_UPGRADE_URL"

.field public static final KEY_NAME_ITEM_GROUP_ID:Ljava/lang/String; = "ITEM_GROUP_ID"

.field public static final KEY_NAME_ITEM_ID:Ljava/lang/String; = "ITEM_ID"

.field public static final KEY_NAME_RESULT_LIST:Ljava/lang/String; = "RESULT_LIST"

.field public static final KEY_NAME_RESULT_OBJECT:Ljava/lang/String; = "RESULT_OBJECT"

.field public static final KEY_NAME_STATUS_CODE:Ljava/lang/String; = "STATUS_CODE"

.field public static final KEY_NAME_THIRD_PARTY_NAME:Ljava/lang/String; = "THIRD_PARTY_NAME"

.field public static final REQUEST_CODE_IS_ACCOUNT_CERTIFICATION:I = 0x2

.field public static final REQUEST_CODE_IS_IAP_PAYMENT:I = 0x1

.field private static final STATE_BINDING:I = 0x1

.field private static final STATE_READY:I = 0x2

.field private static final STATE_TERM:I

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

.field private mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

.field private mIapConnector:Lcom/sec/android/iap/IAPConnector;

.field private mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

.field private mMode:I

.field private mOnGetInboxListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

.field private mOnGetItemListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

.field private mOnInitIapListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mState:I

.field private mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->TAG:Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInstance:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mMode:I

    .line 148
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    .line 149
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 151
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mIapConnector:Lcom/sec/android/iap/IAPConnector;

    .line 152
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 156
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    .line 157
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnInitIapListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

    .line 162
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    .line 163
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnGetItemListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

    .line 168
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    .line 169
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnGetInboxListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

    .line 175
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mState:I

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->setContextAndMode(Landroid/content/Context;I)V

    .line 225
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnInitIapListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mState:I

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;I)V
    .locals 0

    .prologue
    .line 184
    iput p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mState:I

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnGetItemListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnGetInboxListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Lcom/sec/android/iap/IAPConnector;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mIapConnector:Lcom/sec/android/iap/IAPConnector;

    return-void
.end method

.method static synthetic access$7(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$8(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/IAPConnector;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mIapConnector:Lcom/sec/android/iap/IAPConnector;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/sec/android/iap/sample/helper/SamsungIapHelper;
    .locals 1
    .param p0, "_context"    # Landroid/content/Context;
    .param p1, "_mode"    # I

    .prologue
    .line 198
    sget-object v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInstance:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInstance:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 207
    :goto_0
    sget-object v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInstance:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    return-object v0

    .line 204
    :cond_0
    sget-object v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInstance:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->setContextAndMode(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public bindIapService(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;)V
    .locals 4
    .param p1, "_listener"    # Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;

    .prologue
    const/4 v3, 0x1

    .line 405
    iget v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mState:I

    if-lt v1, v3, :cond_1

    .line 407
    if-eqz p1, :cond_0

    .line 409
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;->onBindIapFinished(I)V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v1, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;)V

    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.iap.service.iapService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "serviceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    .line 461
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 460
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 758
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 727
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mState:I

    .line 728
    iput-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 729
    iput-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mIapConnector:Lcom/sec/android/iap/IAPConnector;

    .line 730
    return-void
.end method

.method public getItemList(Ljava/lang/String;IILjava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "_itemGroupId"    # Ljava/lang/String;
    .param p2, "_startNum"    # I
    .param p3, "_endNum"    # I
    .param p4, "_itemType"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v8, 0x0

    .line 521
    .local v8, "itemList":Landroid/os/Bundle;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mIapConnector:Lcom/sec/android/iap/IAPConnector;

    iget v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mMode:I

    .line 522
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 521
    invoke-interface/range {v0 .. v6}, Lcom/sec/android/iap/IAPConnector;->getItemList(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 533
    :goto_0
    return-object v8

    .line 528
    :catch_0
    move-exception v7

    .line 530
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemsInbox(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "_itemGroupId"    # Ljava/lang/String;
    .param p2, "_startNum"    # I
    .param p3, "_endNum"    # I
    .param p4, "_startDate"    # Ljava/lang/String;
    .param p5, "_endDate"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v8, 0x0

    .line 561
    .local v8, "purchaseItemList":Landroid/os/Bundle;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mIapConnector:Lcom/sec/android/iap/IAPConnector;

    .line 562
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 561
    invoke-interface/range {v0 .. v6}, Lcom/sec/android/iap/IAPConnector;->getItemsInbox(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 574
    :goto_0
    return-object v8

    .line 569
    :catch_0
    move-exception v7

    .line 571
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()Lcom/sec/android/iap/sample/vo/ErrorVO;
    .locals 5

    .prologue
    .line 474
    new-instance v2, Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-direct {v2}, Lcom/sec/android/iap/sample/vo/ErrorVO;-><init>()V

    .line 478
    .local v2, "errorVO":Lcom/sec/android/iap/sample/vo/ErrorVO;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mIapConnector:Lcom/sec/android/iap/IAPConnector;

    iget v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mMode:I

    invoke-interface {v3, v4}, Lcom/sec/android/iap/IAPConnector;->init(I)Landroid/os/Bundle;

    move-result-object v0

    .line 480
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 482
    const-string v3, "STATUS_CODE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setErrorCode(I)V

    .line 485
    const-string v3, "ERROR_STRING"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-virtual {v2, v3}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setErrorString(Ljava/lang/String;)V

    .line 488
    const-string v3, "IAP_UPGRADE_URL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-virtual {v2, v3}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setExtraString(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 491
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public installIapPackage(Landroid/app/Activity;)V
    .locals 6
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 295
    new-instance v5, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$1;

    invoke-direct {v5, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$1;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)V

    .line 332
    .local v5, "OkBtnRunnable":Ljava/lang/Runnable;
    const v0, 0x7f09007b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    const v0, 0x7f09007c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 336
    return-void
.end method

.method public isInstalledIapPackage(Landroid/content/Context;)Z
    .locals 4
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 350
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.sec.android.iap"

    .line 351
    const/16 v3, 0x80

    .line 350
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    const/4 v2, 0x1

    .line 357
    :goto_0
    return v2

    .line 354
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 357
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isValidIapPackage(Landroid/content/Context;)Z
    .locals 6
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 369
    const/4 v1, 0x1

    .line 373
    .local v1, "result":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 374
    const-string v4, "com.sec.android.iap"

    .line 375
    const/16 v5, 0x40

    .line 373
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 375
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 377
    .local v2, "sigs":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const v4, 0x7a7eaf4b

    if-eq v3, v4, :cond_0

    .line 379
    const/4 v1, 0x0

    .line 388
    .end local v2    # "sigs":[Landroid/content/pm/Signature;
    :cond_0
    :goto_0
    return v1

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public safeGetItemInboxTask(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_itemGroupId"    # Ljava/lang/String;
    .param p3, "_startNum"    # I
    .param p4, "_endNum"    # I
    .param p5, "_startDate"    # Ljava/lang/String;
    .param p6, "_endDate"    # Ljava/lang/String;

    .prologue
    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->cancel(Z)Z

    .line 1314
    :cond_0
    new-instance v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1319
    invoke-direct/range {v0 .. v7}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1314
    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    .line 1320
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1330
    :goto_0
    return-void

    .line 1322
    :catch_0
    move-exception v8

    .line 1324
    .local v8, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v8}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0

    .line 1326
    .end local v8    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v8

    .line 1328
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public safeGetItemList(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_itemGroupId"    # Ljava/lang/String;
    .param p3, "_startNum"    # I
    .param p4, "_endNum"    # I
    .param p5, "_itemType"    # Ljava/lang/String;

    .prologue
    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->cancel(Z)Z

    .line 1032
    :cond_0
    new-instance v0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 1036
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    .line 1032
    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    .line 1037
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1047
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v7

    .line 1041
    .local v7, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v7}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0

    .line 1043
    .end local v7    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v7

    .line 1045
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public safeInitIap(Landroid/app/Activity;)V
    .locals 3
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    invoke-virtual {v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 815
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->cancel(Z)Z

    .line 818
    :cond_0
    new-instance v1, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    .line 819
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 830
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 823
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "safeInitTask()\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 825
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "safeInitTask()\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContextAndMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_mode"    # I

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    .line 214
    iput p2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mMode:I

    .line 215
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "_mode"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mMode:I

    .line 235
    return-void
.end method

.method public setOnGetInboxListListener(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;)V
    .locals 0
    .param p1, "_onGetInboxListListener"    # Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnGetInboxListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

    .line 270
    return-void
.end method

.method public setOnGetItemListListener(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;)V
    .locals 0
    .param p1, "_onGetItemListListener"    # Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnGetItemListListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

    .line 258
    return-void
.end method

.method public setOnInitIapListener(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;)V
    .locals 0
    .param p1, "_onInitIaplistener"    # Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mOnInitIapListener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

    .line 246
    return-void
.end method

.method public showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_title"    # Ljava/lang/String;
    .param p3, "_message"    # Ljava/lang/String;
    .param p4, "_finishActivity"    # Z
    .param p5, "_onClickRunable"    # Ljava/lang/Runnable;

    .prologue
    .line 637
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 639
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 640
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 642
    const v1, 0x104000a

    .line 643
    new-instance v2, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$3;

    invoke-direct {v2, p0, p5, p4, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$3;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Ljava/lang/Runnable;ZLandroid/app/Activity;)V

    .line 642
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 662
    if-eqz p4, :cond_0

    .line 664
    new-instance v1, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$4;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 674
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 675
    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "_context"    # Landroid/content/Context;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    :cond_0
    const-string v0, ""

    .line 744
    const v1, 0x7f09007d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 745
    const/4 v2, 0x1

    .line 741
    invoke-static {p1, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 747
    :cond_1
    return-void
.end method

.method public startAccountActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.iap"

    .line 280
    const-string v3, "com.sec.android.iap.activity.AccountActivity"

    .line 279
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .local v0, "com":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 286
    const/4 v2, 0x2

    .line 285
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    return-void
.end method

.method public startPurchase(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_requestCode"    # I
    .param p3, "_itemGroupId"    # Ljava/lang/String;
    .param p4, "_itemId"    # Ljava/lang/String;

    .prologue
    .line 596
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "THIRD_PARTY_NAME"

    .line 598
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 597
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v4, "ITEM_GROUP_ID"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v4, "ITEM_ID"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.iap"

    .line 605
    const-string v5, "com.sec.android.iap.activity.PaymentMethodListActivity"

    .line 604
    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .local v1, "com":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 611
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p1, v3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "com":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRunningTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 683
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mInitIapTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;

    invoke-virtual {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->cancel(Z)Z

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 695
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetItemListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    invoke-virtual {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->cancel(Z)Z

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 703
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mGetInboxListTask:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;

    invoke-virtual {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->cancel(Z)Z

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    if-eqz v0, :cond_3

    .line 709
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    .line 711
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    invoke-virtual {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->cancel(Z)Z

    .line 714
    :cond_3
    return-void
.end method

.method public verifyPurchaseResult(Landroid/app/Activity;Lcom/sec/android/iap/sample/vo/PurchaseVO;)V
    .locals 3
    .param p1, "_activity"    # Landroid/app/Activity;
    .param p2, "_purchaseVO"    # Lcom/sec/android/iap/sample/vo/PurchaseVO;

    .prologue
    .line 1544
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    if-eqz v1, :cond_0

    .line 1545
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    invoke-virtual {v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    .line 1547
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->cancel(Z)Z

    .line 1550
    :cond_0
    new-instance v1, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    .line 1551
    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;Lcom/sec/android/iap/sample/vo/PurchaseVO;)V

    .line 1550
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    .line 1552
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->mVerifyClientToServer:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1562
    :goto_0
    return-void

    .line 1554
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0

    .line 1558
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v0

    .line 1560
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
