.class public Lcom/kt/olleh/inapp/net/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XMLParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kt/olleh/inapp/net/Response;
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "API"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 30
    sget-boolean v8, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 31
    const-string v8, "XMLParser"

    const-string v9, "parseXML() start"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 34
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    if-nez v3, :cond_1

    move-object v5, v7

    .line 212
    :goto_0
    return-object v5

    .line 41
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 42
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    if-nez v0, :cond_2

    .line 44
    const-string v8, "XMLParser"

    const-string v9, "builder is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 49
    .local v1, "dom":Lorg/w3c/dom/Document;
    if-nez v1, :cond_3

    .line 51
    const-string v8, "XMLParser"

    const-string v9, "dom is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 52
    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 56
    .local v6, "root":Lorg/w3c/dom/Element;
    if-nez v6, :cond_4

    .line 58
    const-string v8, "XMLParser"

    const-string v9, "root is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 59
    goto :goto_0

    .line 62
    :cond_4
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 63
    .local v4, "list":Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_5

    .line 65
    const-string v8, "XMLParser"

    const-string v9, "list is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 66
    goto :goto_0

    .line 71
    :cond_5
    const-string v8, "getSymKeyGen"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 73
    new-instance v5, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;-><init>()V

    .line 74
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->parseXML(Lorg/w3c/dom/NodeList;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 199
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dom":Lorg/w3c/dom/Document;
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 201
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v8, "XMLParser"

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 202
    goto :goto_0

    .line 77
    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dom":Lorg/w3c/dom/Document;
    .restart local v4    # "list":Lorg/w3c/dom/NodeList;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :cond_6
    :try_start_1
    const-string v8, "getUseDiList"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 78
    const-string v8, "getDownloadDiList"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 81
    :cond_7
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIListExpand;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIListExpand;-><init>()V

    .line 82
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIListExpand;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIListExpand;->parseXML(Lorg/w3c/dom/NodeList;)Z
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 204
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dom":Lorg/w3c/dom/Document;
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIListExpand;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v2

    .line 206
    .local v2, "e":Lorg/xml/sax/SAXException;
    const-string v8, "XMLParser"

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 207
    goto :goto_0

    .line 85
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dom":Lorg/w3c/dom/Document;
    .restart local v4    # "list":Lorg/w3c/dom/NodeList;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :cond_8
    :try_start_2
    const-string v8, "getItemStatus"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 87
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIStatus;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIStatus;-><init>()V

    .line 88
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIStatus;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIStatus;->parseXML(Lorg/w3c/dom/NodeList;)Z
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 209
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dom":Lorg/w3c/dom/Document;
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIStatus;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_2
    move-exception v2

    .line 211
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "XMLParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parsing() : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 212
    goto/16 :goto_0

    .line 91
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dom":Lorg/w3c/dom/Document;
    .restart local v4    # "list":Lorg/w3c/dom/NodeList;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :cond_9
    :try_start_3
    const-string v8, "getBuyDiList"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 92
    const-string v8, "getAllDiList"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 93
    const-string v8, "getGiftDiList"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 94
    const-string v8, "getReceiveDiList"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 97
    :cond_a
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIList;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIList;-><init>()V

    .line 98
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIList;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIList;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 101
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIList;
    :cond_b
    const-string v8, "getDiDetail"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 103
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIDetail;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIDetail;-><init>()V

    .line 104
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIDetail;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 107
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    :cond_c
    const-string v8, "getBuyDiUrl"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 108
    const-string v8, "getGiftDiUrl"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 110
    :cond_d
    new-instance v5, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;-><init>()V

    .line 111
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 114
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    :cond_e
    const-string v8, "buyDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 115
    const-string v8, "buyCancelDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 116
    const-string v8, "giftDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 117
    const-string v8, "reGiftDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 118
    const-string v8, "approvedUseDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 121
    :cond_f
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIBuy;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIBuy;-><init>()V

    .line 122
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIBuy;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 125
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    :cond_10
    const-string v8, "getDownUrl"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 127
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIDownUrl;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;-><init>()V

    .line 128
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIDownUrl;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIDownUrl;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 131
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIDownUrl;
    :cond_11
    const-string v8, "getDownAuth"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 133
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIDownAuth;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIDownAuth;-><init>()V

    .line 134
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIDownAuth;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIDownAuth;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 137
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIDownAuth;
    :cond_12
    const-string v8, "downSucProc"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 139
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDownSucProc;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDownSucProc;-><init>()V

    .line 140
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDownSucProc;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDownSucProc;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 143
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDownSucProc;
    :cond_13
    const-string v8, "esBuyDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 145
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIesBuy;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIesBuy;-><init>()V

    .line 146
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIesBuy;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIesBuy;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 149
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIesBuy;
    :cond_14
    const-string v8, "approvedDownDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 151
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIApproveDown;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIApproveDown;-><init>()V

    .line 152
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIApproveDown;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIApproveDown;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 155
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIApproveDown;
    :cond_15
    const-string v8, "getFile"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 157
    new-instance v5, Lcom/kt/olleh/inapp/net/ResDIGetFile;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResDIGetFile;-><init>()V

    .line 158
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResDIGetFile;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResDIGetFile;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 161
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResDIGetFile;
    :cond_16
    const-string v8, "checkShowId"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 163
    new-instance v5, Lcom/kt/olleh/inapp/net/ResCheckShowId;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResCheckShowId;-><init>()V

    .line 164
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResCheckShowId;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResCheckShowId;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 167
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResCheckShowId;
    :cond_17
    const-string v8, "checkCoin"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 169
    new-instance v5, Lcom/kt/olleh/inapp/net/ResCheckCoin;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResCheckCoin;-><init>()V

    .line 170
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResCheckCoin;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResCheckCoin;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 173
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResCheckCoin;
    :cond_18
    const-string v8, "check_balance"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 175
    new-instance v5, Lcom/kt/olleh/inapp/net/ResCheckBalance;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResCheckBalance;-><init>()V

    .line 176
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResCheckBalance;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResCheckBalance;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 179
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResCheckBalance;
    :cond_19
    const-string v8, "checkUserId"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 181
    new-instance v5, Lcom/kt/olleh/inapp/net/ResCheckUserId;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResCheckUserId;-><init>()V

    .line 182
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResCheckUserId;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResCheckUserId;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 185
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResCheckUserId;
    :cond_1a
    const-string v8, "CheckPin"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 187
    new-instance v5, Lcom/kt/olleh/inapp/net/ResCheckPin;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResCheckPin;-><init>()V

    .line 188
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResCheckPin;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResCheckPin;->parseXML(Lorg/w3c/dom/NodeList;)Z

    goto/16 :goto_0

    .line 191
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResCheckPin;
    :cond_1b
    const-string v8, "SetPin"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 193
    new-instance v5, Lcom/kt/olleh/inapp/net/ResSetPin;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResSetPin;-><init>()V

    .line 194
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResSetPin;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResSetPin;->parseXML(Lorg/w3c/dom/NodeList;)Z
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResSetPin;
    :cond_1c
    move-object v5, v7

    .line 197
    goto/16 :goto_0
.end method

.method public static parseXML_OLD(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kt/olleh/inapp/net/ResponseOld;
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "API"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 218
    sget-boolean v8, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 219
    const-string v8, "XMLParser"

    const-string v9, "parseXML() start"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 222
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    if-nez v3, :cond_1

    move-object v5, v7

    .line 280
    :goto_0
    return-object v5

    .line 229
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 230
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    if-nez v0, :cond_3

    .line 232
    sget-boolean v8, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "XMLParser"

    const-string v9, "builder is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v5, v7

    .line 233
    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 237
    .local v1, "dom":Lorg/w3c/dom/Document;
    if-nez v1, :cond_5

    .line 239
    sget-boolean v8, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "XMLParser"

    const-string v9, "dom is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v5, v7

    .line 240
    goto :goto_0

    .line 243
    :cond_5
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    .line 244
    .local v6, "root":Lorg/w3c/dom/Element;
    if-nez v6, :cond_7

    .line 246
    sget-boolean v8, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "XMLParser"

    const-string v9, "root is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v5, v7

    .line 247
    goto :goto_0

    .line 250
    :cond_7
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 251
    .local v4, "list":Lorg/w3c/dom/NodeList;
    if-nez v4, :cond_9

    .line 253
    sget-boolean v8, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "XMLParser"

    const-string v9, "list is null"

    invoke-static {v8, v9}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v5, v7

    .line 254
    goto :goto_0

    .line 259
    :cond_9
    const-string v8, "esBuyDi"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 261
    new-instance v5, Lcom/kt/olleh/inapp/net/ResponseOld;

    invoke-direct {v5}, Lcom/kt/olleh/inapp/net/ResponseOld;-><init>()V

    .line 262
    .local v5, "res":Lcom/kt/olleh/inapp/net/ResponseOld;
    invoke-virtual {v5, v4}, Lcom/kt/olleh/inapp/net/ResponseOld;->parseXML(Lorg/w3c/dom/NodeList;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 267
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dom":Lorg/w3c/dom/Document;
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v5    # "res":Lcom/kt/olleh/inapp/net/ResponseOld;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v8, "XMLParser"

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 270
    goto :goto_0

    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dom":Lorg/w3c/dom/Document;
    .restart local v4    # "list":Lorg/w3c/dom/NodeList;
    .restart local v6    # "root":Lorg/w3c/dom/Element;
    :cond_a
    move-object v5, v7

    .line 265
    goto :goto_0

    .line 272
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dom":Lorg/w3c/dom/Document;
    .end local v4    # "list":Lorg/w3c/dom/NodeList;
    .end local v6    # "root":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v2

    .line 274
    .local v2, "e":Lorg/xml/sax/SAXException;
    const-string v8, "XMLParser"

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 275
    goto :goto_0

    .line 277
    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "XMLParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parsing() : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 280
    goto/16 :goto_0
.end method

.method private static print(Lorg/w3c/dom/NodeList;I)V
    .locals 6
    .param p0, "list"    # Lorg/w3c/dom/NodeList;
    .param p1, "depth"    # I

    .prologue
    .line 287
    if-nez p0, :cond_1

    .line 301
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 291
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 296
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 297
    .local v1, "item":Lorg/w3c/dom/Node;
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "XMLParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/net/XMLParser;->print(Lorg/w3c/dom/NodeList;I)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
