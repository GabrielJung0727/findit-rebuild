.class public Lcom/kt/olleh/inapp/net/ResDIBuy;
.super Lcom/kt/olleh/inapp/net/Response;
.source "ResDIBuy.java"


# instance fields
.field public mApp_id:Ljava/lang/String;

.field public mDi_id:Ljava/lang/String;

.field public mPin_fail_cnt:Ljava/lang/String;

.field public mSeq_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/kt/olleh/inapp/net/Response;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mApp_id:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mSeq_key:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mDi_id:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mPin_fail_cnt:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mApp_id:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mSeq_key:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mDi_id:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mPin_fail_cnt:Ljava/lang/String;

    .line 54
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->clear()V

    .line 55
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mApp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPinFailCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mPin_fail_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mSeq_key:Ljava/lang/String;

    return-object v0
.end method

.method protected searchValueTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 59
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 66
    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIBuy;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mApp_id:Ljava/lang/String;

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    const-string v3, "seq_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIBuy;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mSeq_key:Ljava/lang/String;

    move v1, v2

    .line 74
    goto :goto_0

    .line 76
    :cond_3
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIBuy;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mDi_id:Ljava/lang/String;

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_4
    const-string v3, "pin_fail_cnt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIBuy;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mPin_fail_cnt:Ljava/lang/String;

    move v1, v2

    .line 84
    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mApp_id:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setDiId(Ljava/lang/String;)V
    .locals 0
    .param p1, "diid"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mDi_id:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSeqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqkey"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mSeq_key:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mApp_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "seq_key"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mSeq_key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "di_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mDi_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "pin_fail_cnt"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIBuy;->mPin_fail_cnt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
