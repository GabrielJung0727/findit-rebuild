.class Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;
.super Ljava/lang/Object;
.source "IAPBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/net/IAPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LGUSmsAuthNumberReq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private pEncJumin:Ljava/lang/String;

.field private pID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "telecom"    # I
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "encJumin"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2378
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 2374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2370
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pTelecom:I

    .line 2371
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pID:Ljava/lang/String;

    .line 2372
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pEncJumin:Ljava/lang/String;

    .line 2375
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pTelecom:I

    .line 2376
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pID:Ljava/lang/String;

    .line 2377
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pEncJumin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, -0xb

    const/16 v8, -0xc

    const/16 v7, -0xd

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2382
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pTelecom:I

    invoke-virtual {v0, v1, v6, v6}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2384
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2441
    :goto_0
    return-object v0

    .line 2388
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 2390
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2391
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_1

    .line 2392
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v8, :cond_1

    .line 2393
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v7, :cond_2

    .line 2396
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2397
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2402
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2400
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 2406
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pID:Ljava/lang/String;

    iget v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pTelecom:I

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v3, v3, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->pEncJumin:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/iap/net/IAPNet;->iapSendLGUSmsAuthNumberReq(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$33(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V

    .line 2408
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTHN_UMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 2410
    const-string v0, "IAPBase"

    const-string v1, "Call LGUSmsAuthNumberReq Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$34(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2412
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_4

    .line 2413
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v8, :cond_4

    .line 2414
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v7, :cond_5

    .line 2417
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v5, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2418
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2427
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2421
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 2422
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->updateEncJuminNumber(Ljava/lang/String;)V

    .line 2423
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7dd

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 2426
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7dd

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 2438
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTHN_UMBER_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 2439
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x466

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$34(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2441
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthNumberReq;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
