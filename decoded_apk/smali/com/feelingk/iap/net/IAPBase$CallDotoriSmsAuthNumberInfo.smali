.class Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;
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
    name = "CallDotoriSmsAuthNumberInfo"
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
.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;I)V
    .locals 1
    .param p2, "telecom"    # I

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1403
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->pTelecom:I

    .line 1406
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->pTelecom:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, -0xb

    const/16 v6, -0xc

    const/16 v5, -0xd

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1410
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->pTelecom:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1452
    :goto_0
    return-object v0

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1417
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1418
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_2

    .line 1423
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1424
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1429
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1427
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 1432
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v0, v0, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->pTelecom:I

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$9()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendDotoriSmsAuthNumberInfoQuery(Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$24(Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;)V

    .line 1433
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_NUMBER_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1435
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$25()Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1437
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_4

    .line 1438
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_4

    .line 1439
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_5

    .line 1442
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1443
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1447
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1446
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e5

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 1449
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_DOTORI_SMSAUTH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1450
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x470

    invoke-static {v0, v1, v4}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1452
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallDotoriSmsAuthNumberInfo;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
