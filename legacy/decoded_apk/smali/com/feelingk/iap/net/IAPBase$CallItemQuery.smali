.class Lcom/feelingk/iap/net/IAPBase$CallItemQuery;
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
    name = "CallItemQuery"
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
.field private pBPInfo:Ljava/lang/String;

.field private pCultureId:Ljava/lang/String;

.field private pCultureUse:I

.field private pDotoriUse:I

.field private pID:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field private pOcbUse:I

.field private pTID:Ljava/lang/String;

.field private pTcashUse:I

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p2, "telecom"    # I
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "pTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;
    .param p7, "pCultrueId"    # Ljava/lang/String;
    .param p8, "ocb"    # I
    .param p9, "dotori"    # I
    .param p10, "culture"    # I
    .param p11, "tcash"    # I

    .prologue
    .line 868
    invoke-direct {p0, p1, p3, p4}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTelecom:I

    .line 871
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    .line 872
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pBPInfo:Ljava/lang/String;

    .line 873
    iput-object p7, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pCultureId:Ljava/lang/String;

    .line 874
    iput p8, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pOcbUse:I

    .line 875
    iput p9, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pDotoriUse:I

    .line 876
    iput p10, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pCultureUse:I

    .line 877
    iput p11, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTcashUse:I

    .line 878
    return-void
.end method

.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 857
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTelecom:I

    .line 843
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    .line 844
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pName:Ljava/lang/String;

    .line 845
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    .line 846
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pBPInfo:Ljava/lang/String;

    .line 847
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pCultureId:Ljava/lang/String;

    .line 848
    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pOcbUse:I

    .line 849
    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pDotoriUse:I

    .line 850
    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pCultureUse:I

    .line 851
    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTcashUse:I

    .line 855
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    .line 856
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pName:Ljava/lang/String;

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
    .line 881
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 882
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 962
    :goto_0
    return-object v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTelecom:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 891
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 892
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_2

    .line 893
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_2

    .line 894
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_3

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x0

    iput v1, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 898
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 903
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 901
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 906
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 909
    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$17()Lcom/feelingk/iap/net/CultureLandCashConfirm;

    move-result-object v1

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$18()Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;

    move-result-object v2

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmOCBCardNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$19()Ljava/lang/String;

    move-result-object v4

    .line 910
    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pCultureId:Ljava/lang/String;

    iget v6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pOcbUse:I

    iget v7, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pDotoriUse:I

    iget v8, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pCultureUse:I

    iget v9, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTcashUse:I

    .line 909
    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendDiscountInfoQuery(Lcom/feelingk/iap/net/ItemInfoConfirm;Lcom/feelingk/iap/net/CultureLandCashConfirm;Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 913
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 914
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_5

    .line 915
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_5

    .line 916
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_6

    .line 919
    :cond_5
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x0

    iput v1, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 921
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d9

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 926
    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 924
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e7

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 929
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 932
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pName:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pTID:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->pBPInfo:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 935
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 937
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 938
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_8

    .line 939
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_8

    .line 940
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_9

    .line 943
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v1, 0x0

    iput v1, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 944
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 956
    :goto_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 946
    :cond_9
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$20()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 947
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    .line 948
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    .line 949
    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$8(Z)V

    .line 950
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 951
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x451

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_3

    .line 954
    :cond_b
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d2

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_3

    .line 959
    :cond_c
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 960
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x451

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 962
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemQuery;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
