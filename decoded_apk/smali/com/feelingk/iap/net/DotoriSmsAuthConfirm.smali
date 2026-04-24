.class public Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "DotoriSmsAuthConfirm.java"


# instance fields
.field private mobileSign:Ljava/lang/String;

.field private mobileSign_Len:I

.field private signData:Ljava/lang/String;

.field private signData_Len:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 7
    iput v0, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->mobileSign_Len:I

    .line 9
    iput v0, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->signData_Len:I

    .line 5
    return-void
.end method


# virtual methods
.method public getMobileSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->mobileSign:Ljava/lang/String;

    return-object v0
.end method

.method public getSignData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->signData:Ljava/lang/String;

    return-object v0
.end method

.method protected parse([B)V
    .locals 8
    .param p1, "v"    # [B

    .prologue
    const/4 v7, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 17
    invoke-virtual {p0}, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->getMsgLength()I

    move-result v4

    add-int/lit8 v3, v4, 0xe

    .line 19
    .local v3, "offset":I
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->mobileSign_Len:I

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 22
    iget v4, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->mobileSign_Len:I

    new-array v0, v4, [B

    .line 23
    .local v0, "_mobileSign":[B
    array-length v4, v0

    invoke-static {p1, v3, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    array-length v4, v0

    add-int/2addr v3, v4

    .line 27
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "MS949"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->mobileSign:Ljava/lang/String;

    .line 28
    const-string v4, "DotoriSmsAuthConfirm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mobileSign: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->mobileSign:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->signData_Len:I

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    iget v4, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->signData_Len:I

    new-array v1, v4, [B

    .line 38
    .local v1, "_signData":[B
    array-length v4, v1

    invoke-static {p1, v3, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    array-length v4, v1

    add-int/2addr v3, v4

    .line 42
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "MS949"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->signData:Ljava/lang/String;

    .line 43
    const-string v4, "DotoriSmsAuthConfirm"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "signData: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/feelingk/iap/net/DotoriSmsAuthConfirm;->signData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_1
    return-void

    .line 30
    .end local v1    # "_signData":[B
    :catch_0
    move-exception v2

    .line 31
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "DotoriSmsAuthConfirm"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "_signData":[B
    :catch_1
    move-exception v2

    .line 46
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "DotoriSmsAuthConfirm"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
