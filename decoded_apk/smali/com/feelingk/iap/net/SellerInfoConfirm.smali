.class public Lcom/feelingk/iap/net/SellerInfoConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "SellerInfoConfirm.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SellerInfoConfirm"


# instance fields
.field private mCompanyName:Ljava/lang/String;

.field private mSeller:Ljava/lang/String;

.field private mSellerEmail:Ljava/lang/String;

.field private mSellerName:Ljava/lang/String;

.field private mSellerPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerPhoneNumber:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public getmCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getmSeller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSeller:Ljava/lang/String;

    return-object v0
.end method

.method public getmSellerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getmSellerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerName:Ljava/lang/String;

    return-object v0
.end method

.method public getmSellerPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method protected parse([B)V
    .locals 14
    .param p1, "v"    # [B

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 21
    invoke-virtual {p0}, Lcom/feelingk/iap/net/SellerInfoConfirm;->getMsgLength()I

    move-result v11

    add-int/lit8 v10, v11, 0xe

    .line 25
    .local v10, "offset":I
    :try_start_0
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SellerInfoConfirm result code : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/feelingk/iap/net/SellerInfoConfirm;->getResultCode()B

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/16 v11, 0x8

    new-array v8, v11, [B

    .line 29
    .local v8, "_tempSeller":[B
    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {p1, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    new-instance v11, Ljava/lang/String;

    const-string v12, "MS949"

    invoke-direct {v11, v8, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSeller:Ljava/lang/String;

    .line 31
    add-int/lit8 v10, v10, 0x8

    .line 32
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mSeller: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSeller:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    aget-byte v11, p1, v10

    and-int/lit16 v2, v11, 0xff

    .line 36
    .local v2, "_nameLen":I
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mSellerName[offset]: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v13, p1, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    add-int/lit8 v10, v10, 0x1

    .line 41
    new-array v6, v2, [B

    .line 42
    .local v6, "_tempName":[B
    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {p1, v10, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    new-instance v11, Ljava/lang/String;

    const-string v12, "MS949"

    invoke-direct {v11, v6, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerName:Ljava/lang/String;

    .line 44
    array-length v11, v6

    add-int/2addr v10, v11

    .line 45
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mSellerName: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    aget-byte v11, p1, v10

    and-int/lit16 v1, v11, 0xff

    .line 49
    .local v1, "_emailLen":I
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "_emailLen[offset]: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v13, p1, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    add-int/lit8 v10, v10, 0x1

    .line 53
    new-array v5, v1, [B

    .line 54
    .local v5, "_tempEmail":[B
    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {p1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    new-instance v11, Ljava/lang/String;

    const-string v12, "MS949"

    invoke-direct {v11, v5, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerEmail:Ljava/lang/String;

    .line 56
    array-length v11, v5

    add-int/2addr v10, v11

    .line 57
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mSellerEmail: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerEmail:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    aget-byte v11, p1, v10

    and-int/lit16 v0, v11, 0xff

    .line 61
    .local v0, "_companyName":I
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "_companyName[offset]: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v13, p1, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    add-int/lit8 v10, v10, 0x1

    .line 65
    new-array v4, v0, [B

    .line 66
    .local v4, "_tempCompanyName":[B
    const/4 v11, 0x0

    array-length v12, v4

    invoke-static {p1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    new-instance v11, Ljava/lang/String;

    const-string v12, "MS949"

    invoke-direct {v11, v4, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mCompanyName:Ljava/lang/String;

    .line 68
    array-length v11, v4

    add-int/2addr v10, v11

    .line 69
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mCompanyName: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mCompanyName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    aget-byte v11, p1, v10

    and-int/lit16 v3, v11, 0xff

    .line 73
    .local v3, "_sellerPhoneNumber":I
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "_sellerPhoneNumber[offset]: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v13, p1, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    add-int/lit8 v10, v10, 0x1

    .line 77
    new-array v7, v3, [B

    .line 78
    .local v7, "_tempPhoneNumber":[B
    const/4 v11, 0x0

    array-length v12, v7

    invoke-static {p1, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance v11, Ljava/lang/String;

    const-string v12, "MS949"

    invoke-direct {v11, v7, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerPhoneNumber:Ljava/lang/String;

    .line 80
    array-length v11, v7

    add-int/2addr v10, v11

    .line 81
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mSellerPhoneNumber: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/feelingk/iap/net/SellerInfoConfirm;->mSellerPhoneNumber:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "_companyName":I
    .end local v1    # "_emailLen":I
    .end local v2    # "_nameLen":I
    .end local v3    # "_sellerPhoneNumber":I
    .end local v4    # "_tempCompanyName":[B
    .end local v5    # "_tempEmail":[B
    .end local v6    # "_tempName":[B
    .end local v7    # "_tempPhoneNumber":[B
    .end local v8    # "_tempSeller":[B
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v9

    .line 84
    .local v9, "e":Ljava/lang/Exception;
    const-string v11, "SellerInfoConfirm"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[SellerInfoConfirm] :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/16 v11, -0xa

    invoke-virtual {p0, v11}, Lcom/feelingk/iap/net/SellerInfoConfirm;->setResultCode(B)V

    goto :goto_0
.end method
