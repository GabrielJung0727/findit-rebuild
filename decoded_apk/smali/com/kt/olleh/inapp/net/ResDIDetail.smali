.class public Lcom/kt/olleh/inapp/net/ResDIDetail;
.super Lcom/kt/olleh/inapp/net/Response;
.source "ResDIDetail.java"


# instance fields
.field public mApp_id:Ljava/lang/String;

.field public mCd_lmt_price:Ljava/lang/String;

.field public mDesc:Ljava/lang/String;

.field public mDi_id:Ljava/lang/String;

.field public mDi_title:Ljava/lang/String;

.field public mHp_lmt_price:Ljava/lang/String;

.field public mPrice:Ljava/lang/String;

.field public mPrice_vat:Ljava/lang/String;

.field public mUse_lmt_cnt:Ljava/lang/String;

.field public mUse_term:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/kt/olleh/inapp/net/Response;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mHp_lmt_price:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mCd_lmt_price:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mHp_lmt_price:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mCd_lmt_price:Ljava/lang/String;

    .line 84
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->clear()V

    .line 85
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCdLmtPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mCd_lmt_price:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getDiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    return-object v0
.end method

.method public getHpLmtPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mHp_lmt_price:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceVat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public getUseLmtCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    return-object v0
.end method

.method public getUseTerm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    return-object v0
.end method

.method protected searchValueTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 89
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 96
    const-string v3, "app_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    move v1, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    move v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_3
    const-string v3, "di_title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    move v1, v2

    .line 109
    goto :goto_0

    .line 111
    :cond_4
    const-string v3, "desc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    move v1, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_5
    const-string v3, "price"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 118
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_6
    const-string v3, "PRICE_VAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 123
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    move v1, v2

    .line 124
    goto :goto_0

    .line 126
    :cond_7
    const-string v3, "use_term"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 128
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    move v1, v2

    .line 129
    goto :goto_0

    .line 131
    :cond_8
    const-string v3, "use_lmt_cnt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 133
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    move v1, v2

    .line 134
    goto/16 :goto_0

    .line 136
    :cond_9
    const-string v3, "hp_lmt_price"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 138
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mHp_lmt_price:Ljava/lang/String;

    move v1, v2

    .line 139
    goto/16 :goto_0

    .line 141
    :cond_a
    const-string v3, "cd_lmt_price"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mCd_lmt_price:Ljava/lang/String;

    move v1, v2

    .line 144
    goto/16 :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setCdLmtPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "cdlmtprice"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mCd_lmt_price:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setDiId(Ljava/lang/String;)V
    .locals 0
    .param p1, "diid"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setDiTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "dititle"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setHpLmtPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "hplmtprice"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mHp_lmt_price:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setPriceVat(Ljava/lang/String;)V
    .locals 0
    .param p1, "price_vat"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setUseLmtCnt(Ljava/lang/String;)V
    .locals 0
    .param p1, "uselmtcnt"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setUseTerm(Ljava/lang/String;)V
    .locals 0
    .param p1, "useterm"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mApp_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "di_id"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v1, "di_title"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDi_title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "desc"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mDesc:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "price"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "PRICE_VAT"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mPrice_vat:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "use_term"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_term:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "use_lmt_cnt"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mUse_lmt_cnt:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "hp_lmt_price"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mHp_lmt_price:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "cd_lmt_price"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResDIDetail;->mCd_lmt_price:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
