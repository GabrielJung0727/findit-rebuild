.class public Lcom/kt/olleh/inapp/net/ResDIDownUrl;
.super Lcom/kt/olleh/inapp/net/Response;
.source "ResDIDownUrl.java"


# instance fields
.field public mApp_id:Ljava/lang/String;

.field public mCert_key:Ljava/lang/String;

.field public mDi_id:Ljava/lang/String;

.field public mDownload_info1:Ljava/lang/String;

.field public mDownload_info2:Ljava/lang/String;

.field public mItem_size:Ljava/lang/String;

.field public mSeq_key:Ljava/lang/String;

.field public mUrl_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/kt/olleh/inapp/net/Response;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mApp_id:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mSeq_key:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDi_id:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mItem_size:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info1:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info2:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mUrl_list:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mCert_key:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mApp_id:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mSeq_key:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDi_id:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mItem_size:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info1:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info2:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mUrl_list:Ljava/util/ArrayList;

    .line 71
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mCert_key:Ljava/lang/String;

    .line 73
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->clear()V

    .line 74
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mApp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCertKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "certKey"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mCert_key:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public getDiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadInfo1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadInfo2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info2:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mItem_size:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mSeq_key:Ljava/lang/String;

    return-object v0
.end method

.method protected searchValueTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 78
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 85
    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mApp_id:Ljava/lang/String;

    move v1, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_2
    const-string v3, "seq_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mSeq_key:Ljava/lang/String;

    move v1, v2

    .line 93
    goto :goto_0

    .line 95
    :cond_3
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDi_id:Ljava/lang/String;

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_4
    const-string v3, "item_size"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 102
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mItem_size:Ljava/lang/String;

    move v1, v2

    .line 103
    goto :goto_0

    .line 105
    :cond_5
    const-string v3, "download_info1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info1:Ljava/lang/String;

    move v1, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_6
    const-string v3, "download_info2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 112
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info2:Ljava/lang/String;

    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_7
    const-string v3, "cert_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mCert_key:Ljava/lang/String;

    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mApp_id:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setCertKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mCert_key:Ljava/lang/String;

    return-object v0
.end method

.method public setDiId(Ljava/lang/String;)V
    .locals 0
    .param p1, "diid"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDi_id:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setDownloadInfo1(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadInfo1"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info1:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setDownloadInfo2(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadInfo2"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info2:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setItemSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemSize"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mItem_size:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setSeqKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqkey"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mSeq_key:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mApp_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "seq_key"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mSeq_key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v1, "di_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDi_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "item_size"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mItem_size:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v1, "download_info1"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "download_info2"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mDownload_info2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v1, "cert_key"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->mCert_key:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
