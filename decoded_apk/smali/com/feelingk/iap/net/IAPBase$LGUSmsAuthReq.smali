.class Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;
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
    name = "LGUSmsAuthReq"
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
.field private pOTPNumber:Ljava/lang/String;

.field private pSmsAuthKey:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "telecom"    # I
    .param p3, "smsAuthKey"    # Ljava/lang/String;
    .param p4, "OTPNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2461
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2453
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pTelecom:I

    .line 2454
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pSmsAuthKey:Ljava/lang/String;

    .line 2455
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pOTPNumber:Ljava/lang/String;

    .line 2458
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pTelecom:I

    .line 2459
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pSmsAuthKey:Ljava/lang/String;

    .line 2460
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pOTPNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7d8

    const/16 v7, -0xb

    const/16 v6, -0xc

    const/16 v5, -0xd

    const/4 v4, 0x0

    .line 2465
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pTelecom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2467
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2512
    :goto_0
    return-object v0

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 2473
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2474
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_1

    .line 2475
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_1

    .line 2476
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_2

    .line 2479
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2480
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2485
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2483
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 2489
    :cond_3
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pSmsAuthKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->pOTPNumber:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendLGUSmsAuthReq(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v0

    check-cast v0, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    invoke-static {v1, v0}, Lcom/feelingk/iap/net/IAPBase;->access$33(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V

    .line 2491
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 2493
    const-string v0, "IAPBase"

    const-string v1, "Call LGUSmsAuthReq Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$34(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2495
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_4

    .line 2496
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_4

    .line 2497
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_5

    .line 2500
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2501
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2506
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2505
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7de

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 2509
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LGU_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 2510
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x468

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$34(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2512
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$LGUSmsAuthReq;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
