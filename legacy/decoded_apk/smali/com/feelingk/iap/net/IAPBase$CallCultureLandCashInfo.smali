.class Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;
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
    name = "CallCultureLandCashInfo"
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
.field private pCultureLandID:Ljava/lang/String;

.field private pCultureLandPW:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "telecom_Type"    # I
    .param p3, "cultureLand_ID"    # Ljava/lang/String;
    .param p4, "cultureLand_PW"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1340
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1332
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pTelecom:I

    .line 1333
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pCultureLandID:Ljava/lang/String;

    .line 1334
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pCultureLandPW:Ljava/lang/String;

    .line 1337
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pTelecom:I

    .line 1338
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pCultureLandID:Ljava/lang/String;

    .line 1339
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pCultureLandPW:Ljava/lang/String;

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

    .line 1342
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pTelecom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1343
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1383
    :goto_0
    return-object v0

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1348
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1349
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_1

    .line 1351
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_2

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1355
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1360
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 1363
    :cond_3
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$9()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pCultureLandID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->pCultureLandPW:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendCultureLandCashInfoQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/CultureLandCashConfirm;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$23(Lcom/feelingk/iap/net/CultureLandCashConfirm;)V

    .line 1364
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CULTURELAND_CASH_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1366
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$17()Lcom/feelingk/iap/net/CultureLandCashConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1368
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_4

    .line 1369
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_4

    .line 1370
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_5

    .line 1373
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1374
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1378
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1377
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e4

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 1381
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CULTURELAND_CASH_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1382
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x46f

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$17()Lcom/feelingk/iap/net/CultureLandCashConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1383
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallCultureLandCashInfo;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
