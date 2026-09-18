.class public Lcom/kt/olleh/inapp/net/ResDIDownAuth;
.super Lcom/kt/olleh/inapp/net/Response;
.source "ResDIDownAuth.java"


# instance fields
.field public mApp_id:Ljava/lang/String;

.field public mCert_key:Ljava/lang/String;

.field public mDi_id:Ljava/lang/String;

.field public mSeq_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/kt/olleh/inapp/net/Response;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mApp_id:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mSeq_key:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mDi_id:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mCert_key:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mApp_id:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mSeq_key:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mDi_id:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mCert_key:Ljava/lang/String;

    .line 42
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->clear()V

    .line 43
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mApp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCertKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "certKey"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mCert_key:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public getDiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mSeq_key:Ljava/lang/String;

    return-object v0
.end method

.method protected searchValueTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mApp_id:Ljava/lang/String;

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    const-string v3, "seq_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mSeq_key:Ljava/lang/String;

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mDi_id:Ljava/lang/String;

    move v1, v2

    .line 67
    goto :goto_0

    .line 69
    :cond_4
    const-string v3, "cert_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mCert_key:Ljava/lang/String;

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mApp_id:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setCertKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mCert_key:Ljava/lang/String;

    return-object v0
.end method

.method public setDiId(Ljava/lang/String;)V
    .locals 0
    .param p1, "diid"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mDi_id:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSeqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqkey"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->mSeq_key:Ljava/lang/String;

    .line 97
    return-void
.end method
