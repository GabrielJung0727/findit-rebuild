.class public Lcom/feelingk/iap/net/CultureLandCashConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "CultureLandCashConfirm.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CultureLandCashConfirm"


# instance fields
.field public cultureAutnName:Ljava/lang/String;

.field public cultureLandAuth:Ljava/lang/String;

.field public cultureLandCashBalance:Ljava/lang/String;

.field public cultureLandUserAuthNum:Ljava/lang/String;

.field public cultureLandUserKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    return-void
.end method


# virtual methods
.method public getCultureAutnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureAutnName:Ljava/lang/String;

    return-object v0
.end method

.method public getCultureLandAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getCultureLandCashBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandCashBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getCultureLandUserAuthNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandUserAuthNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCultureLandUserKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandUserKey:Ljava/lang/String;

    return-object v0
.end method

.method protected parse([B)V
    .locals 10
    .param p1, "v"    # [B

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 20
    invoke-virtual {p0}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->getMsgLength()I

    move-result v7

    add-int/lit8 v6, v7, 0xe

    .line 23
    .local v6, "offset":I
    :try_start_0
    const-string v7, "CultureLandCashConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "CultureLandCashConfirm result code : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->getResultCode()B

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/16 v7, 0xc

    new-array v4, v7, [B

    .line 27
    .local v4, "b_cultureLandUserKey":[B
    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-static {p1, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    new-instance v7, Ljava/lang/String;

    const-string v8, "MS949"

    invoke-direct {v7, v4, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandUserKey:Ljava/lang/String;

    .line 29
    add-int/lit8 v6, v6, 0xc

    .line 30
    const-string v7, "CultureLandCashConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cultureLandUserKey : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandUserKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/16 v7, 0x19

    new-array v3, v7, [B

    .line 34
    .local v3, "b_cultureLandUserAuthNum":[B
    const/4 v7, 0x0

    const/16 v8, 0x19

    invoke-static {p1, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    add-int/lit8 v6, v6, 0x19

    .line 36
    new-instance v7, Ljava/lang/String;

    const-string v8, "MS949"

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandUserAuthNum:Ljava/lang/String;

    .line 37
    const-string v7, "CultureLandCashConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cultureLandUserAuthNum : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandUserAuthNum:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v7, 0x6

    new-array v2, v7, [B

    .line 41
    .local v2, "b_cultureLandCashBalance":[B
    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-static {p1, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    add-int/lit8 v6, v6, 0x6

    .line 43
    new-instance v7, Ljava/lang/String;

    const-string v8, "MS949"

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandCashBalance:Ljava/lang/String;

    .line 44
    const-string v7, "CultureLandCashConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cultureLandCashBalance : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandCashBalance:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v7, 0x1

    new-array v1, v7, [B

    .line 48
    .local v1, "b_cultureLandAuth":[B
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {p1, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    new-instance v7, Ljava/lang/String;

    const-string v8, "MS949"

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandAuth:Ljava/lang/String;

    .line 51
    const-string v7, "CultureLandCashConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cultureLandAuth : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureLandAuth:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v7, 0x14

    new-array v0, v7, [B

    .line 55
    .local v0, "b_cultureAutnName":[B
    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-static {p1, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    add-int/lit8 v6, v6, 0x14

    .line 57
    new-instance v7, Ljava/lang/String;

    const-string v8, "MS949"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureAutnName:Ljava/lang/String;

    .line 58
    const-string v7, "CultureLandCashConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cultureAutnName : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/feelingk/iap/net/CultureLandCashConfirm;->cultureAutnName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "b_cultureAutnName":[B
    .end local v1    # "b_cultureLandAuth":[B
    .end local v2    # "b_cultureLandCashBalance":[B
    .end local v3    # "b_cultureLandUserAuthNum":[B
    .end local v4    # "b_cultureLandUserKey":[B
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v5

    .line 63
    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "CultureLandCashConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[CultureLandCashConfirm] :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/16 v7, -0xa

    invoke-virtual {p0, v7}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->setResultCode(B)V

    goto :goto_0
.end method
