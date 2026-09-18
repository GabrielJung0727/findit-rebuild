.class public Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "OKCashbagPointInfoConfirm.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OKCashbagPointInfoConfirm"


# instance fields
.field public OCBPointBalance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    return-void
.end method


# virtual methods
.method public getOCBPointBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->OCBPointBalance:Ljava/lang/String;

    return-object v0
.end method

.method protected parse([B)V
    .locals 6
    .param p1, "v"    # [B

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 16
    invoke-virtual {p0}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->getMsgLength()I

    move-result v3

    add-int/lit8 v2, v3, 0xe

    .line 19
    .local v2, "offset":I
    :try_start_0
    const-string v3, "OKCashbagPointInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OKCashbagPointInfoConfirm result code : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->getResultCode()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 23
    .local v0, "OKCashbagPointBalance":[B
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    add-int/lit8 v2, v2, 0x6

    .line 25
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->OCBPointBalance:Ljava/lang/String;

    .line 26
    const-string v3, "OKCashbagPointInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OCBPointBalance: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->OCBPointBalance:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "OKCashbagPointBalance":[B
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OKCashbagPointInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[OKCashbagPointInfoConfirm] :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/16 v3, -0xa

    invoke-virtual {p0, v3}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->setResultCode(B)V

    goto :goto_0
.end method
