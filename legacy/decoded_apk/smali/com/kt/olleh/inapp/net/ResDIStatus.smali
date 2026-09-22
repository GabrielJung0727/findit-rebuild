.class public Lcom/kt/olleh/inapp/net/ResDIStatus;
.super Lcom/kt/olleh/inapp/net/Response;
.source "ResDIStatus.java"


# instance fields
.field public mApp_id:Ljava/lang/String;

.field public mDi_id:Ljava/lang/String;

.field public mDown_limt_cnt:Ljava/lang/String;

.field public mSeq_key:Ljava/lang/String;

.field public mUse_limt_cnt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/kt/olleh/inapp/net/Response;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mApp_id:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mSeq_key:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDi_id:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mUse_limt_cnt:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDown_limt_cnt:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mApp_id:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mSeq_key:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDi_id:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mUse_limt_cnt:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDown_limt_cnt:Ljava/lang/String;

    .line 51
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->clear()V

    .line 52
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mApp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDownLimtCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDown_limt_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mSeq_key:Ljava/lang/String;

    return-object v0
.end method

.method public getUseLimtCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mUse_limt_cnt:Ljava/lang/String;

    return-object v0
.end method

.method protected searchValueTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIStatus;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mApp_id:Ljava/lang/String;

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    const-string v3, "seq_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIStatus;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mSeq_key:Ljava/lang/String;

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIStatus;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDi_id:Ljava/lang/String;

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    const-string v3, "use_limt_cnt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 80
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIStatus;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mUse_limt_cnt:Ljava/lang/String;

    move v1, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_5
    const-string v3, "down_limt_cnt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIStatus;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDown_limt_cnt:Ljava/lang/String;

    move v1, v2

    .line 86
    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mApp_id:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setDiId(Ljava/lang/String;)V
    .locals 0
    .param p1, "diid"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDi_id:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setDownLimtCnt(Ljava/lang/String;)V
    .locals 0
    .param p1, "downLimtCnt"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDown_limt_cnt:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setSeqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqkey"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mSeq_key:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setUseLimtCnt(Ljava/lang/String;)V
    .locals 0
    .param p1, "useLimtCnt"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mUse_limt_cnt:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mApp_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "seq_key"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mSeq_key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "di_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDi_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "use_limt_cnt"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mUse_limt_cnt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "down_limt_cnt"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIStatus;->mDown_limt_cnt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
