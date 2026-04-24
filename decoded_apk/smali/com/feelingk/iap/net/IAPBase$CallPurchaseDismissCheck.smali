.class Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;
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
    name = "CallPurchaseDismissCheck"
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
.field private pID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;)V
    .locals 1
    .param p2, "telecom"    # I
    .param p3, "productID"    # Ljava/lang/String;

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->pID:Ljava/lang/String;

    .line 2183
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->pTelecom:I

    .line 2186
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->pTelecom:I

    .line 2187
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->pID:Ljava/lang/String;

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

    .line 2191
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2192
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2236
    :goto_0
    return-object v0

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->pTelecom:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2196
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 2201
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2202
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_2

    .line 2203
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_2

    .line 2204
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_3

    .line 2207
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2208
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2213
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 2211
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 2216
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->pID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendAutoPurchaseDismissCheck(Ljava/lang/String;)Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$31(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;)V

    .line 2217
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 2218
    const-string v0, "IAPBase"

    const-string v1, "CallPurchaseDismissCheck Function "

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$32(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2221
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_5

    .line 2222
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_5

    .line 2223
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_6

    .line 2226
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v4, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 2227
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v1}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2231
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 2230
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e8

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 2234
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT_DISMISS_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 2235
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x473

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$32(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 2236
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallPurchaseDismissCheck;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
