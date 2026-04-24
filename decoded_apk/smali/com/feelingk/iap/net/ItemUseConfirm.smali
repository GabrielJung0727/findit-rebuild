.class public Lcom/feelingk/iap/net/ItemUseConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "ItemUseConfirm.java"


# instance fields
.field private itemCount:I

.field private itemID:Ljava/lang/String;

.field private itemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemID:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemName:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemCount:I

    .line 15
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemCount:I

    return v0
.end method

.method public getItemID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemID:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method protected parse([B)V
    .locals 12
    .param p1, "v"    # [B

    .prologue
    const/16 v11, 0x1e

    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 27
    const/4 v5, 0x0

    .line 30
    .local v5, "tmp":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/feelingk/iap/net/ItemUseConfirm;->getMsg()[B

    move-result-object v7

    const-string v8, "MS949"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "tmp":Ljava/lang/String;
    .local v6, "tmp":Ljava/lang/String;
    move-object v5, v6

    .line 36
    .end local v6    # "tmp":Ljava/lang/String;
    .restart local v5    # "tmp":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {p0}, Lcom/feelingk/iap/net/ItemUseConfirm;->getMsgLength()I

    move-result v7

    add-int/lit8 v4, v7, 0xe

    .line 40
    .local v4, "offset":I
    new-array v0, v10, [B

    .line 41
    .local v0, "_tempID":[B
    invoke-static {p1, v4, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v7, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemID:Ljava/lang/String;

    .line 43
    add-int/lit8 v4, v4, 0xa

    .line 45
    new-array v1, v11, [B

    .line 46
    .local v1, "_tempName":[B
    invoke-static {p1, v4, v1, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    add-int/lit8 v4, v4, 0x1e

    .line 50
    :try_start_1
    new-instance v7, Ljava/lang/String;

    const-string v8, "MS949"

    invoke-direct {v7, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemName:Ljava/lang/String;

    .line 51
    const-string v7, "ItemUseConfirm"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "itemName : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :goto_1
    aget-byte v7, p1, v4

    iput v7, p0, Lcom/feelingk/iap/net/ItemUseConfirm;->itemCount:I

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    return-void

    .line 32
    .end local v0    # "_tempID":[B
    .end local v1    # "_tempName":[B
    .end local v4    # "offset":I
    :catch_0
    move-exception v3

    .line 33
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v3    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "_tempID":[B
    .restart local v1    # "_tempName":[B
    .restart local v4    # "offset":I
    :catch_1
    move-exception v2

    .line 53
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method
