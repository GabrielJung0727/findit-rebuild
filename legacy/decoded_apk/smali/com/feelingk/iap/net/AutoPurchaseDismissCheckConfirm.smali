.class public Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "AutoPurchaseDismissCheckConfirm.java"


# instance fields
.field private mDismissCount:Ljava/lang/String;

.field private mDismissCountLength:I

.field private mDismissInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    return-void
.end method


# virtual methods
.method public getmDismissCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCount:Ljava/lang/String;

    return-object v0
.end method

.method public getmDismissCountLength()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCountLength:I

    return v0
.end method

.method public getmDismissInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected parse([B)V
    .locals 6
    .param p1, "v"    # [B

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 17
    invoke-virtual {p0}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->getMsgLength()I

    move-result v3

    add-int/lit8 v2, v3, 0xe

    .line 21
    .local v2, "offset":I
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [B

    .line 22
    .local v0, "_byte":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissInfo:Ljava/lang/String;

    .line 24
    const-string v3, "24\uc2dc\uac04 \uc774\ub0b4 \ud574\uc9c0 \uc5ec\ubd80"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDismissInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 28
    const/4 v3, 0x1

    new-array v0, v3, [B

    .line 29
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    aget-byte v3, p1, v2

    iput v3, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCountLength:I

    .line 31
    const-string v3, "\ub3d9\uc6d4 \ub0b4 \ud574\uc9c0 \ud69f\uc218 Length"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDismissCountLength: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCountLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 35
    iget v3, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCountLength:I

    new-array v0, v3, [B

    .line 36
    const/4 v3, 0x0

    iget v4, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCountLength:I

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCount:Ljava/lang/String;

    .line 38
    const-string v3, "\ub3d9\uc6d4 \ub0b4 \ud574\uc9c0 \ud69f\uc218"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDismissCount: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->mDismissCount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "_byte":[B
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
