.class public Lcom/kt/olleh/inapp/net/ResDIListRecord;
.super Ljava/lang/Object;
.source "ResDIListRecord.java"

# interfaces
.implements Lcom/kt/olleh/inapp/net/ResTags;


# instance fields
.field private mDi_id:Ljava/lang/String;

.field private mDi_title:Ljava/lang/String;

.field private mPrice:Ljava/lang/String;

.field public mPrice_vat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_title:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_id:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice_vat:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_title:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_id:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice_vat:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public getDiID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDiTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_title:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceVat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice_vat:Ljava/lang/String;

    return-object v0
.end method

.method public searchListTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    if-nez p1, :cond_1

    .line 86
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
    const-string v3, "di_title"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->setDiTitle(Ljava/lang/String;)V

    move v1, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    const-string v3, "di_id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->setDiID(Ljava/lang/String;)V

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_3
    const-string v3, "price"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->setPrice(Ljava/lang/String;)V

    move v1, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    const-string v3, "PRICE_VAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/Response;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->setPriceVat(Ljava/lang/String;)V

    move v1, v2

    .line 82
    goto :goto_0
.end method

.method public searchRecordTag(Lorg/w3c/dom/NodeList;)V
    .locals 3
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 130
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 131
    .local v1, "recordLen":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 135
    return-void

    .line 133
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->searchListTag(Lorg/w3c/dom/Node;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDiID(Ljava/lang/String;)V
    .locals 0
    .param p1, "diid"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_id:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setDiTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "dititle"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mDi_title:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice_vat:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setPriceVat(Ljava/lang/String;)V
    .locals 0
    .param p1, "price_vat"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResDIListRecord;->mPrice_vat:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 141
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, "di_title"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->getDiTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "di_id"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->getDiID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "price"

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/net/ResDIListRecord;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
