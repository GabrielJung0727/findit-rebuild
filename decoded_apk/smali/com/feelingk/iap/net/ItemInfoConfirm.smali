.class public Lcom/feelingk/iap/net/ItemInfoConfirm;
.super Lcom/feelingk/iap/net/MsgConfirm;
.source "ItemInfoConfirm.java"


# instance fields
.field private mAfterAutoPurchaseInfoAgree:Z

.field private mAutoPurchaseCheck:Z

.field private mDotoriBalance:Ljava/lang/String;

.field private mDotoriLinkInfo:Ljava/lang/String;

.field private mFinalVersionCheck:Z

.field private mItemPrice:Ljava/lang/String;

.field private mItemTitle:Ljava/lang/String;

.field private mNCMembershipInfo:Ljava/lang/String;

.field private mNCMembershipNumber:Ljava/lang/String;

.field private mOCBCardNum:Ljava/lang/String;

.field private mOCBCardNumLength:I

.field private mOCBRegisterInfo:Ljava/lang/String;

.field private mPeriod:Ljava/lang/String;

.field private mTCash:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mFinalVersionCheck:Z

    .line 29
    iput-boolean v1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAutoPurchaseCheck:Z

    .line 30
    iput-boolean v1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAfterAutoPurchaseInfoAgree:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getItemPeriod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mPeriod:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTCash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mTCash:Ljava/lang/String;

    return-object v0
.end method

.method public getItemTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmAfterAutoPurchaseInfoAgree()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAfterAutoPurchaseInfoAgree:Z

    return v0
.end method

.method public getmAutoPurchaseCheck()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAutoPurchaseCheck:Z

    return v0
.end method

.method public getmDotoriBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mDotoriBalance:Ljava/lang/String;

    return-object v0
.end method

.method public getmDotoriLinkInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mDotoriLinkInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getmFinalVersionCheck()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mFinalVersionCheck:Z

    return v0
.end method

.method public getmNCMembershipInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mNCMembershipInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getmNCMembershipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mNCMembershipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getmOCBCardNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNum:Ljava/lang/String;

    return-object v0
.end method

.method public getmOCBCardNumLength()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNumLength:I

    return v0
.end method

.method public getmOCBRegisterInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBRegisterInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected parse([B)V
    .locals 6
    .param p1, "v"    # [B

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 35
    invoke-virtual {p0}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getMsgLength()I

    move-result v3

    add-int/lit8 v2, v3, 0xe

    .line 38
    .local v2, "offset":I
    const/16 v3, 0x1e

    :try_start_0
    new-array v0, v3, [B

    .line 39
    .local v0, "_byte":[B
    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemTitle:Ljava/lang/String;

    .line 41
    add-int/lit8 v2, v2, 0x1e

    .line 42
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mItemTitle: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 45
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemPrice:Ljava/lang/String;

    .line 47
    add-int/lit8 v2, v2, 0xa

    .line 48
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mItemPrice: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mItemPrice:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 51
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mPeriod:Ljava/lang/String;

    .line 53
    add-int/lit8 v2, v2, 0xa

    .line 54
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPeriod: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mPeriod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/16 v3, 0xa

    new-array v0, v3, [B

    .line 57
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mTCash:Ljava/lang/String;

    .line 59
    add-int/lit8 v2, v2, 0xa

    .line 60
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mTCash: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mTCash:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v3, 0x1

    new-array v0, v3, [B

    .line 63
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBRegisterInfo:Ljava/lang/String;

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 66
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mOCBRegisterInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBRegisterInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v3, 0x1

    new-array v0, v3, [B

    .line 69
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    aget-byte v3, p1, v2

    iput v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNumLength:I

    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mOCBCardNumLength: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNumLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNumLength:I

    new-array v0, v3, [B

    .line 75
    const/4 v3, 0x0

    iget v4, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNumLength:I

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNum:Ljava/lang/String;

    .line 77
    iget v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNumLength:I

    add-int/2addr v2, v3

    .line 78
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mOCBCardNum: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mOCBCardNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v3, 0x1

    new-array v0, v3, [B

    .line 81
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mDotoriLinkInfo:Ljava/lang/String;

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDotoriLinkInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mDotoriLinkInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v3, 0x1

    new-array v0, v3, [B

    .line 87
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mNCMembershipInfo:Ljava/lang/String;

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mNCMembershipInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mNCMembershipInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/16 v3, 0xb

    new-array v0, v3, [B

    .line 93
    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mNCMembershipNumber:Ljava/lang/String;

    .line 95
    add-int/lit8 v2, v2, 0xb

    .line 96
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mNCMembershipNumber: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mNCMembershipNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 99
    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    new-instance v3, Ljava/lang/String;

    const-string v4, "MS949"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mDotoriBalance:Ljava/lang/String;

    .line 101
    const-string v3, "ItemInfoConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDotoriBalance: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mDotoriBalance:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "_byte":[B
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public setmAfterAutoPurchaseInfoAgree(Z)V
    .locals 0
    .param p1, "mAfterAutoPurchaseInfoAgree"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAfterAutoPurchaseInfoAgree:Z

    .line 172
    return-void
.end method

.method public setmAutoPurchaseCheck(Z)V
    .locals 0
    .param p1, "mAutoPurchase"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mAutoPurchaseCheck:Z

    .line 163
    return-void
.end method

.method public setmFinalVersionCheck(Z)V
    .locals 0
    .param p1, "mFinalVersionCheck"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/feelingk/iap/net/ItemInfoConfirm;->mFinalVersionCheck:Z

    .line 155
    return-void
.end method
