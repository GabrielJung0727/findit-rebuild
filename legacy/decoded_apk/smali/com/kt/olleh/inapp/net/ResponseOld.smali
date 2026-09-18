.class public Lcom/kt/olleh/inapp/net/ResponseOld;
.super Ljava/lang/Object;
.source "ResponseOld.java"

# interfaces
.implements Lcom/kt/olleh/inapp/net/ResTags;


# instance fields
.field public mResultCode:Ljava/lang/String;

.field public mResultMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultCode:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultMessage:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private ParseResult(Lorg/w3c/dom/NodeList;)V
    .locals 3
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    .line 77
    if-nez p1, :cond_1

    .line 86
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 82
    .local v1, "len":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 84
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kt/olleh/inapp/net/ResponseOld;->searchTag(Lorg/w3c/dom/Node;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 7
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 50
    .local v2, "list":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 67
    :cond_0
    return-object v4

    .line 53
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 54
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 56
    const-string v4, ""

    .line 57
    .local v4, "resultNode":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 59
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 60
    .local v3, "node":Lorg/w3c/dom/Node;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private searchTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 34
    const-string v3, "resultCode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/net/ResponseOld;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultCode:Ljava/lang/String;

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    const-string v3, "resultMessage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/net/ResponseOld;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultMessage:Ljava/lang/String;

    move v1, v2

    .line 42
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultCode:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultMessage:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public parseXML(Lorg/w3c/dom/NodeList;)Z
    .locals 2
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v1, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 99
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/net/ResponseOld;->ParseResult(Lorg/w3c/dom/NodeList;)V

    .line 104
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .local v0, "str":Ljava/lang/StringBuffer;
    const-string v1, "resultCode"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "resultMessage"

    iget-object v2, p0, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultMessage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kt/olleh/inapp/util/Util;->addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
