.class Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;
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
    name = "CalliapSendImeiAuthReq"
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
    .line 643
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->pTelecom:I

    .line 642
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->pTelecom:I

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v13, -0xb

    const/16 v12, -0xc

    const/16 v11, -0xd

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 647
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->pTelecom:I

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$14()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 823
    :goto_0
    return-object v0

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendImeiAuthReq(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 655
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 657
    const-string v1, "IAPBase"

    const-string v2, "Call iapSendImeiAuthReq Function "

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 659
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_1

    .line 660
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_1

    .line 661
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_2

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 665
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 669
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e0

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 673
    :cond_3
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 675
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 676
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_4

    .line 677
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_4

    .line 678
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_5

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 682
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 687
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 685
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 689
    :cond_6
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 692
    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendDiscountInfoQuery(Lcom/feelingk/iap/net/ItemInfoConfirm;Lcom/feelingk/iap/net/CultureLandCashConfirm;Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 695
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 696
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_7

    .line 697
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_7

    .line 698
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_8

    .line 701
    :cond_7
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 703
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d9

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 708
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 706
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e7

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_3

    .line 711
    :cond_9
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 715
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_VALID_USER:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 716
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$9()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$15()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$14()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$16()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 717
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 718
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 719
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v13, :cond_a

    .line 720
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v12, :cond_a

    .line 721
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v1, v11, :cond_b

    .line 724
    :cond_a
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 725
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 748
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 727
    :cond_b
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 731
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_USER_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 732
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v2, 0x45f

    invoke-static {v1, v2, v0}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 734
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 737
    :cond_c
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    .line 738
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    .line 739
    :cond_d
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LIMIT_EXCESS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 741
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x465

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 743
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 746
    :cond_e
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d2

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_4

    .line 752
    :cond_f
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$9()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendSellerInfoReq(Ljava/lang/String;)Lcom/feelingk/iap/net/SellerInfoConfirm;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/SellerInfoConfirm;)V

    .line 756
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$11()Lcom/feelingk/iap/net/SellerInfoConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    .line 757
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_10

    .line 758
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_10

    .line 759
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_11

    .line 762
    :cond_10
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 763
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 770
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 766
    :cond_11
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e8

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 767
    const-string v0, "IAPBase"

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, v1, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 773
    :cond_12
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$11()Lcom/feelingk/iap/net/SellerInfoConfirm;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setSellerInfo(Lcom/feelingk/iap/net/SellerInfoConfirm;)V

    .line 775
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$9()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$12(Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 776
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 778
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 779
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v13, :cond_13

    .line 780
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v12, :cond_13

    .line 781
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v1, v11, :cond_14

    .line 784
    :cond_13
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 785
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 818
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 791
    :cond_14
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_15

    .line 792
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc815\uc2dd\ud310 \uc804\ud658\uc6a9 - subErrorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmFinalVersionCheck(Z)V

    .line 797
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 798
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x45d

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 799
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 804
    :cond_15
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_16

    .line 807
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAutoPurchaseCheck(Z)V

    .line 809
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 810
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 812
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 816
    :cond_16
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v2, 0x7d1

    invoke-static {v1, v2, v0}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_6

    .line 821
    :cond_17
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 822
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 823
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CalliapSendImeiAuthReq;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
