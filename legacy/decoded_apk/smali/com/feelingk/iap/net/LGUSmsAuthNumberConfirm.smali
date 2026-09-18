.class public Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "LGUSmsAuthNumberConfirm.java"


# instance fields
.field private authKey:Ljava/lang/String;

.field private key_Len:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->key_Len:I

    .line 12
    return-void
.end method


# virtual methods
.method public getAuthKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->authKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKey_Len()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->key_Len:I

    return v0
.end method

.method protected parse([B)V
    .locals 6
    .param p1, "v"    # [B

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 21
    invoke-virtual {p0}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getMsgLength()I

    move-result v3

    add-int/lit8 v2, v3, 0xe

    .line 26
    .local v2, "offset":I
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->key_Len:I

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 33
    iget v3, p0, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->key_Len:I

    new-array v0, v3, [B

    .line 34
    .local v0, "_authKey":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length v3, v0

    add-int/2addr v2, v3

    .line 38
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->authKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IAPNet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[LGUSmsAuthNumberConfirm] :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
