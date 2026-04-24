.class Lcom/feelingk/iap/net/IAPBase$CallItemInfo;
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
    name = "CallItemInfo"
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

.field private pID:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field private pTID:Ljava/lang/String;

.field private pTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "telecom"    # I
    .param p3, "productID"    # Ljava/lang/String;
    .param p4, "productName"    # Ljava/lang/String;
    .param p5, "pTID"    # Ljava/lang/String;
    .param p6, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-direct {p0, p1, p3, p4}, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;-><init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTelecom:I

    .line 268
    iput-object p5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    .line 269
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pBPInfo:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "productID"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 283
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTelecom:I

    .line 257
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    .line 258
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pName:Ljava/lang/String;

    .line 259
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    .line 260
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pBPInfo:Ljava/lang/String;

    .line 281
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    .line 282
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pName:Ljava/lang/String;

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

    .line 288
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 289
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 487
    :goto_0
    return-object v0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTelecom:I

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 292
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$0(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pName:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$1(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$2(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pBPInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$3(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendISImeiAuthReq(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 307
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 308
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v13, :cond_2

    .line 309
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v12, :cond_2

    .line 310
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v1, v11, :cond_3

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 314
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 479
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 317
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 319
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 321
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 322
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_4

    .line 323
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_4

    .line 324
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_5

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 328
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 333
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 336
    :cond_6
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 338
    iget-object v10, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

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

    .line 341
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 342
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_7

    .line 343
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_7

    .line 344
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_8

    .line 347
    :cond_7
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 349
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d9

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 354
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 352
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e7

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_3

    .line 357
    :cond_9
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 360
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_VALID_USER:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 361
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pName:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pTID:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pBPInfo:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 362
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 363
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 365
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v13, :cond_a

    .line 366
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v1, v12, :cond_a

    .line 367
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v1, v11, :cond_b

    .line 370
    :cond_a
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 371
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 396
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 373
    :cond_b
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 377
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_USER_CERTI_FAIL:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 378
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v2, 0x45f

    invoke-static {v1, v2, v0}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 380
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 383
    :cond_c
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    .line 384
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    .line 385
    :cond_d
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$8(Z)V

    .line 388
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_LIMIT_EXCESS:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 389
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x465

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 391
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 394
    :cond_e
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d2

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_4

    .line 399
    :cond_f
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$9()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapSendSellerInfoReq(Ljava/lang/String;)Lcom/feelingk/iap/net/SellerInfoConfirm;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$10(Lcom/feelingk/iap/net/SellerInfoConfirm;)V

    .line 402
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$11()Lcom/feelingk/iap/net/SellerInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    .line 403
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_10

    .line 404
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_10

    .line 405
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_11

    .line 408
    :cond_10
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 409
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 417
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 413
    :cond_11
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e8

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 414
    const-string v0, "IAPBase"

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, v1, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 421
    :cond_12
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$11()Lcom/feelingk/iap/net/SellerInfoConfirm;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setSellerInfo(Lcom/feelingk/iap/net/SellerInfoConfirm;)V

    .line 423
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->pID:Ljava/lang/String;

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/net/IAPBase;->access$12(Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 424
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 425
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 426
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v13, :cond_13

    .line 427
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v12, :cond_13

    .line 428
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v11, :cond_14

    .line 431
    :cond_13
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v6, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 432
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 466
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 438
    :cond_14
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_15

    .line 439
    const-string v0, "IAPBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc815\uc2dd\ud310 \uc804\ud658\uc6a9 - subErrorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v2, v2, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmFinalVersionCheck(Z)V

    .line 444
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_FINAL_VERSION_CHECK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 445
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x45d

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 446
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 452
    :cond_15
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    .line 455
    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAutoPurchaseCheck(Z)V

    .line 457
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_AUTOMATIC_PAYMENT:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 458
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 460
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 464
    :cond_16
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_6

    .line 469
    :cond_17
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_QUERY_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 470
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x450

    invoke-static {}, Lcom/feelingk/iap/net/IAPBase;->access$13()Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 471
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 476
    :cond_18
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7df

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 484
    :cond_19
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v2, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_IMEI_AUTH_POPUP:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v2, v1, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 486
    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v2, 0x46b

    invoke-static {v1, v2, v0}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 487
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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemInfo;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
