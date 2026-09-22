.class Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;
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
    name = "CallDotoriSmsAuthInfo"
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
.field private pMobileSign:Ljava/lang/String;

.field private pSignData:Ljava/lang/String;

.field private pTelecom:I

.field private pUserCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V
    .locals 2
    .param p2, "telecom"    # I
    .param p3, "userCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1484
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1474
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pTelecom:I

    .line 1475
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pUserCode:Ljava/lang/String;

    .line 1476
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pMobileSign:Ljava/lang/String;

    .line 1477
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pSignData:Ljava/lang/String;

    .line 1480
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pTelecom:I

    .line 1481
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pUserCode:Ljava/lang/String;

    .line 1482
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$25()Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->getMobileSign()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pMobileSign:Ljava/lang/String;

    .line 1483
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$25()Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->getSignData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pSignData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, -0xb

    const/16 v9, -0xc

    const/16 v8, -0xd

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1487
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pTelecom:I

    invoke-virtual {v0, v1, v7, v7}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1488
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1530
    :goto_0
    return-object v0

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1494
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1495
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v10, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v8, :cond_2

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1501
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1506
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1504
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 1509
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, v1, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pUserCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pMobileSign:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->pSignData:Ljava/lang/String;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$9()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/feelingk/iap/net/IAPNet;->iapSendDotoriSmsAuthInfoQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1510
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_NUMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1512
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1514
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v10, :cond_4

    .line 1515
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v9, :cond_4

    .line 1516
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v8, :cond_5

    .line 1519
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1520
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1524
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1523
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e6

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 1527
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1528
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x471

    invoke-static {v0, v1, v7}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1530
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthInfo;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
