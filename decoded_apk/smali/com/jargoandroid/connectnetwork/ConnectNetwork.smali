.class public Lcom/jargoandroid/connectnetwork/ConnectNetwork;
.super Ljava/lang/Object;
.source "ConnectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;,
        Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;,
        Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;,
        Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;,
        Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;,
        Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field public static final DOWNLOADFAIL_FAIL:I = 0x1

.field public static final DOWNLOADFAIL_PERMISSION_DENIED:I = 0x2

.field public static final DOWNLOADFAIL_SUCCESS:I = 0x0

.field public static final EUC_KR:Ljava/lang/String; = "euc-kr"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HANDLER_MSG_KEY:Ljava/lang/String; = "result"

.field public static final HANDLER_MSG_KEY_DATA:Ljava/lang/String; = "data"

.field public static final HANDLER_MSG_KEY_FILENAME:Ljava/lang/String; = "filename"

.field public static final HANDLER_MSG_KEY_FILEPATH:Ljava/lang/String; = "filepath"

.field public static final HANDLER_MSG_KEY_TAG_INT:Ljava/lang/String; = "tag_int"

.field public static final HANDLER_MSG_KEY_TAG_STRING:Ljava/lang/String; = "tag_string"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final RESULT_TYPE_JSONARRAY:I = 0x1

.field public static final RESULT_TYPE_JSONOBJECT:I = 0x2

.field public static final RESULT_TYPE_STRING:I = 0x3

.field public static final RESULT_TYPE_XML:I = 0x0

.field public static final UTF_8:Ljava/lang/String; = "utf-8"


# instance fields
.field private mConnecting:Z

.field private mContext:Landroid/content/Context;

.field private mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJSONArray:Lorg/json/JSONArray;

.field private mJSONObject:Lorg/json/JSONObject;

.field private mParameterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mReceiveSockerMsgHandler:Landroid/os/Handler;

.field private mReceiveSocketMsgThreadRun:Z

.field private mReceiveSocketMsgthread:Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;

.field private mResultHandler:Landroid/os/Handler;

.field private mSc:Ljava/nio/channels/SocketChannel;

.field private mServerFile:Ljava/lang/String;

.field private mServerFolder:Ljava/lang/String;

.field private mServerUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSocketMsgthread:Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;

    .line 83
    const-string v2, ">> ConnectNetwork()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 84
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 85
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 86
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerUri:Ljava/lang/String;

    .line 87
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFolder:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFile:Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    .line 90
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mDataMap:Ljava/util/HashMap;

    .line 91
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONArray:Lorg/json/JSONArray;

    .line 92
    iput-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONObject:Lorg/json/JSONObject;

    .line 94
    iput-boolean v4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 98
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 99
    .local v1, "parserCreator":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    iput-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "parserCreator":Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Parser instance error"

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->parsingData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->doParsing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    return-void
.end method

.method static synthetic access$12(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 408
    invoke-direct/range {p0 .. p6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->uploadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 498
    invoke-direct/range {p0 .. p6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->downloadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 876
    invoke-direct {p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->connectSocket(Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/nio/channels/SocketChannel;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mSc:Ljava/nio/channels/SocketChannel;

    return-void
.end method

.method static synthetic access$16(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSocketMsgThreadRun:Z

    return-void
.end method

.method static synthetic access$17(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSocketMsgthread:Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;

    return-void
.end method

.method static synthetic access$18(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mSc:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method static synthetic access$19(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSocketMsgThreadRun:Z

    return v0
.end method

.method static synthetic access$2(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mDataMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$20(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSockerMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->parsingJSONArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONArray:Lorg/json/JSONArray;

    return-void
.end method

.method static synthetic access$6(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic access$7(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->parsingJSONObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONObject:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$9(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method private checkEmpty(Ljava/lang/String;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 151
    const-string v5, ">> checkEmpty()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 153
    .local v1, "length":I
    if-ge v1, v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v3

    .line 156
    :cond_1
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_2

    const-string v5, "\t"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 159
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_3

    move v3, v4

    .line 165
    goto :goto_0

    .line 160
    :cond_3
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "subtext":Ljava/lang/String;
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private clearMemberData()V
    .locals 1

    .prologue
    .line 850
    const-string v0, ">> clearMemberData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 851
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mDataMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mDataMap:Ljava/util/HashMap;

    .line 855
    :cond_0
    return-void
.end method

.method private connectSocket(Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;
    .locals 8
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 877
    const-string v6, ">> connectSocket()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 879
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 882
    .local v4, "server_addr":Ljava/net/InetAddress;
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 883
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    .line 884
    .local v3, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 885
    invoke-virtual {v3, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 886
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x14

    if-lt v2, v6, :cond_1

    .line 898
    :cond_0
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 899
    const-string v6, "connectSocket pass"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 911
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    .end local v2    # "i":I
    .end local v3    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v4    # "server_addr":Ljava/net/InetAddress;
    :goto_1
    return-object v3

    .line 887
    .restart local v0    # "address":Ljava/net/InetSocketAddress;
    .restart local v2    # "i":I
    .restart local v3    # "sc":Ljava/nio/channels/SocketChannel;
    .restart local v4    # "server_addr":Ljava/net/InetAddress;
    :cond_1
    const-string v6, "connectSocket connecting"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 888
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->finishConnect()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-nez v6, :cond_0

    .line 892
    const-wide/16 v6, 0x64

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 886
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 909
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "i":I
    .end local v3    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v4    # "server_addr":Ljava/net/InetAddress;
    :catch_1
    move-exception v1

    .line 910
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "connectSocket null0"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    move-object v3, v5

    .line 911
    goto :goto_1

    .line 902
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "address":Ljava/net/InetSocketAddress;
    .restart local v2    # "i":I
    .restart local v3    # "sc":Ljava/nio/channels/SocketChannel;
    .restart local v4    # "server_addr":Ljava/net/InetAddress;
    :cond_2
    if-eqz v3, :cond_3

    .line 903
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V

    .line 905
    :cond_3
    const-string v6, "connectSocket null1"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v5

    .line 906
    goto :goto_1
.end method

.method private doParsing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "encodingtype"    # Ljava/lang/String;
    .param p2, "requesttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    const-string v11, ">> doParsing()"

    invoke-static {v11}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    .line 205
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 207
    .local v9, "size":I
    new-instance v6, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;

    invoke-direct {v6, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)V

    .line 208
    .local v6, "oProgressthread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;
    invoke-virtual {v6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->start()V

    .line 210
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerUri:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFolder:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFile:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, "spec":Ljava/lang/String;
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 212
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 215
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v11, 0x2710

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 216
    const/16 v11, 0x2710

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 217
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 218
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 219
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 220
    invoke-virtual {v3, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 221
    const-string v11, "Content-Type"

    .line 222
    const-string v12, "application/x-www-form-urlencoded"

    .line 221
    invoke-virtual {v3, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v8, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v9, :cond_0

    .line 230
    new-instance v7, Ljava/io/PrintWriter;

    new-instance v11, Ljava/io/OutputStreamWriter;

    .line 231
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 230
    invoke-direct {v7, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 232
    .local v7, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 243
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v0, "b":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 245
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 244
    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 246
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .local v2, "ch":I
    const/4 v11, -0x1

    if-ne v2, v11, :cond_1

    .line 249
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 251
    invoke-static {v6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;)I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_2

    .line 252
    const/4 v11, 0x0

    .line 256
    :goto_2
    return-object v11

    .line 227
    .end local v0    # "b":Ljava/lang/StringBuffer;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ch":I
    .end local v7    # "pw":Ljava/io/PrintWriter;
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    iget-object v11, v11, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    iget-object v11, v11, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mValue:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 228
    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    .restart local v0    # "b":Ljava/lang/StringBuffer;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "ch":I
    .restart local v7    # "pw":Ljava/io/PrintWriter;
    :cond_1
    int-to-char v11, v2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 254
    :cond_2
    const/4 v11, 0x0

    invoke-static {v6, v11}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->access$1(Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;I)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2
.end method

.method private doParsing(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 337
    const-string v10, ">> doParsing()"

    invoke-static {v10}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 338
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v2, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;

    invoke-direct {v9, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)V

    .line 341
    .local v9, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;
    invoke-virtual {v9}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->start()V

    .line 343
    const-string v7, ""

    .line 344
    .local v7, "tag":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 345
    .local v6, "parserEvent":I
    :goto_0
    if-eq v6, v12, :cond_0

    invoke-static {v9}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;)I

    move-result v10

    if-gtz v10, :cond_1

    .line 400
    :cond_0
    invoke-static {v9}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;)I

    move-result v10

    if-ge v10, v12, :cond_6

    .line 401
    const/4 v2, 0x0

    .line 405
    .end local v2    # "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 346
    .restart local v2    # "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    packed-switch v6, :pswitch_data_0

    .line 397
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_0

    .line 348
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 349
    if-nez v7, :cond_3

    .line 350
    const-string v7, ""

    .line 352
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 353
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v0, :cond_2

    .line 354
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 355
    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 354
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "counttag":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    .line 357
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 359
    :cond_4
    const/4 v4, 0x1

    .line 361
    .local v4, "index":I
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 362
    const-string v11, ">/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 361
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_8

    .line 365
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 364
    invoke-virtual {v2, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 375
    .end local v0    # "count":I
    .end local v1    # "counttag":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "index":I
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, "text":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-direct {p0, v8}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->checkEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 377
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    .line 378
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 380
    :cond_5
    const/4 v4, 0x1

    .line 382
    .restart local v4    # "index":I
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .restart local v1    # "counttag":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7

    .line 384
    invoke-virtual {v2, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 394
    .end local v1    # "counttag":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v8    # "text":Ljava/lang/String;
    :pswitch_2
    const-string v7, ""

    goto/16 :goto_2

    .line 403
    :cond_6
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->access$1(Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;I)V

    goto/16 :goto_1

    .restart local v1    # "counttag":Ljava/lang/String;
    .restart local v5    # "index":I
    .restart local v8    # "text":Ljava/lang/String;
    :cond_7
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_6

    .end local v4    # "index":I
    .end local v8    # "text":Ljava/lang/String;
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v5    # "index":I
    :cond_8
    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto/16 :goto_5

    .line 346
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 19
    .param p1, "srcpath"    # Ljava/lang/String;
    .param p2, "srcname"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "despath"    # Ljava/lang/String;
    .param p6, "desname"    # Ljava/lang/String;

    .prologue
    .line 500
    const-string v17, ">> downloadFile()"

    invoke-static/range {v17 .. v17}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 501
    new-instance v6, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v6, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 503
    .local v10, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 506
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerUri:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFolder:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 507
    .local v16, "urlstr":Ljava/lang/String;
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 507
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 509
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 510
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 511
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 513
    if-eqz v10, :cond_0

    if-nez v2, :cond_3

    .line 565
    :cond_0
    if-eqz v10, :cond_1

    .line 567
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 572
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 574
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 514
    :cond_2
    :goto_1
    const/16 v17, 0x1

    .line 581
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v16    # "urlstr":Ljava/lang/String;
    :goto_2
    return v17

    .line 568
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v16    # "urlstr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 569
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 575
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 576
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 517
    .end local v5    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .local v7, "filepath":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 520
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 522
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 525
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v4

    .line 526
    .local v4, "datasize":I
    if-gtz v4, :cond_4

    .line 527
    const/16 v4, 0x400

    .line 529
    :cond_4
    new-array v3, v4, [B

    .line 531
    .local v3, "data":[B
    const-wide/16 v14, 0x0

    .local v14, "total":J
    const-wide/16 v11, 0x0

    .line 533
    .local v11, "percent":J
    :goto_3
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .local v13, "read":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_7

    .line 552
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 565
    if-eqz v10, :cond_5

    .line 567
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 572
    :cond_5
    :goto_4
    if-eqz v9, :cond_6

    .line 574
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 581
    :cond_6
    :goto_5
    const/16 v17, 0x0

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 535
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    const/16 v17, 0x0

    :try_start_7
    move/from16 v0, v17

    invoke-virtual {v9, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 536
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 539
    int-to-long v0, v13

    move-wide/from16 v17, v0

    add-long v14, v14, v17

    .line 540
    long-to-float v0, v14

    move/from16 v17, v0

    move-wide/from16 v0, p3

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v11, v0

    .line 542
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "download: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 554
    .end local v3    # "data":[B
    .end local v4    # "datasize":I
    .end local v11    # "percent":J
    .end local v13    # "read":I
    .end local v14    # "total":J
    :catch_2
    move-exception v5

    move-object v8, v9

    .line 556
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "filepath":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "urlstr":Ljava/lang/String;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_8
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 557
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "download Exception: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 559
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 560
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Permission denied"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v17

    if-eqz v17, :cond_a

    .line 565
    if-eqz v10, :cond_8

    .line 567
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 572
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_7
    if-eqz v8, :cond_9

    .line 574
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 561
    :cond_9
    :goto_8
    const/16 v17, 0x2

    goto/16 :goto_2

    .line 568
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 569
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 575
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 576
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 565
    .local v5, "e":Ljava/lang/Exception;
    :cond_a
    if-eqz v10, :cond_b

    .line 567
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 572
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_9
    if-eqz v8, :cond_c

    .line 574
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 563
    :cond_c
    :goto_a
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 568
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 569
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 575
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 576
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 564
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 565
    :goto_b
    if-eqz v10, :cond_d

    .line 567
    :try_start_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 572
    :cond_d
    :goto_c
    if-eqz v8, :cond_e

    .line 574
    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 579
    :cond_e
    :goto_d
    throw v17

    .line 568
    :catch_7
    move-exception v5

    .line 569
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 575
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 576
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 568
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "data":[B
    .restart local v4    # "datasize":I
    .restart local v7    # "filepath":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "percent":J
    .restart local v13    # "read":I
    .restart local v14    # "total":J
    .restart local v16    # "urlstr":Ljava/lang/String;
    :catch_9
    move-exception v5

    .line 569
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 575
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 576
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 564
    .end local v3    # "data":[B
    .end local v4    # "datasize":I
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "percent":J
    .end local v13    # "read":I
    .end local v14    # "total":J
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 554
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "filepath":Ljava/io/File;
    .end local v16    # "urlstr":Ljava/lang/String;
    :catch_b
    move-exception v5

    goto/16 :goto_6
.end method

.method private parsingData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 20
    .param p1, "encodingtype"    # Ljava/lang/String;
    .param p2, "requesttype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    const-string v18, ">> parsingData()"

    invoke-static/range {v18 .. v18}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 262
    const/4 v6, 0x0

    .line 265
    .local v6, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 266
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    .line 267
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 269
    .local v15, "size":I
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFolder:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFile:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 271
    .local v16, "spec":Ljava/lang/String;
    const-string v18, "GET"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 274
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v15, :cond_0

    .line 282
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 282
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 284
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 285
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 288
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 326
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->doParsing(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v18, v6

    .line 332
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "i":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;>;"
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "size":I
    .end local v16    # "spec":Ljava/lang/String;
    :goto_2
    return-object v18

    .line 275
    .restart local v8    # "i":I
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;>;"
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "size":I
    .restart local v16    # "spec":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "euc-kr"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mValue:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "euc-kr"

    invoke-static/range {v18 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 279
    .local v17, "value":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_1

    const-string v18, "?"

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 274
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 279
    :cond_1
    const-string v18, "&"

    goto :goto_3

    .line 292
    .end local v8    # "i":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_2
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 292
    check-cast v5, Ljava/net/HttpURLConnection;

    .line 294
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 295
    const/16 v18, 0x2710

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 296
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 297
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 298
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 299
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 300
    const-string v18, "Content-Type"

    .line 301
    const-string v19, "application/x-www-form-urlencoded"

    .line 300
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v14, "sb":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-lt v8, v15, :cond_3

    .line 309
    new-instance v13, Ljava/io/PrintWriter;

    new-instance v18, Ljava/io/OutputStreamWriter;

    .line 310
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 311
    .local v13, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v13}, Ljava/io/PrintWriter;->flush()V

    .line 316
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 317
    .local v9, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 318
    .local v3, "b":Ljava/lang/StringBuffer;
    :goto_5
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v4

    .local v4, "ch":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    .line 321
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 323
    new-instance v18, Ljava/io/StringReader;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    goto/16 :goto_1

    .line 328
    .end local v3    # "b":Ljava/lang/StringBuffer;
    .end local v4    # "ch":I
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "i":I
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;>;"
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "pw":Ljava/io/PrintWriter;
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "size":I
    .end local v16    # "spec":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 329
    .local v7, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 306
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "conn":Ljava/net/HttpURLConnection;
    .restart local v8    # "i":I
    .restart local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;>;"
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "sb":Ljava/lang/StringBuffer;
    .restart local v15    # "size":I
    .restart local v16    # "spec":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 307
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 319
    .restart local v3    # "b":Ljava/lang/StringBuffer;
    .restart local v4    # "ch":I
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v13    # "pw":Ljava/io/PrintWriter;
    :cond_4
    int-to-char v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method

.method private parsingJSONArray(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "encodingtype"    # Ljava/lang/String;
    .param p2, "requesttype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string v3, ">> parsingJSONArray()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->doParsing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "jsondata":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 180
    .end local v1    # "jsondata":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 175
    .restart local v1    # "jsondata":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsondata: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 176
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 178
    .end local v1    # "jsondata":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parsingJSONObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "encodingtype"    # Ljava/lang/String;
    .param p2, "requesttype"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 185
    const-string v3, ">> parsingJSONObject()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 187
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->doParsing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "jsondata":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    .end local v1    # "jsondata":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 192
    .restart local v1    # "jsondata":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsondata: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 193
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 195
    .end local v1    # "jsondata":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private searchParameter(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">> searchParameter() name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    .line 136
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 137
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 142
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 138
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    iget-object v3, v3, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private uploadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 28
    .param p1, "srcpath"    # Ljava/lang/String;
    .param p2, "srcname"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "despath"    # Ljava/lang/String;
    .param p6, "desname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    const-string v25, ">> uploadFile()"

    invoke-static/range {v25 .. v25}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 411
    const/4 v8, 0x0

    .line 414
    .local v8, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerUri:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFolder:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFile:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 415
    .local v24, "urlstr":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 418
    .local v12, "filepath":Ljava/lang/String;
    new-instance v23, Ljava/net/URL;

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 419
    .local v23, "url":Ljava/net/URL;
    const-string v15, "\r\n"

    .line 420
    .local v15, "lineend":Ljava/lang/String;
    const-string v22, "--"

    .line 421
    .local v22, "twohyphens":Ljava/lang/String;
    const-string v4, "*****"

    .line 423
    .local v4, "boundary":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 424
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v25, 0x2710

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 425
    const/16 v25, 0x2710

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 426
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 427
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 428
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 429
    const-string v25, "POST"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 430
    const-string v25, "Connection"

    const-string v26, "Keep-Alive"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v25, "Content-Type"

    .line 432
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "multipart/form-data;boundary="

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 431
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 435
    .local v10, "dos":Ljava/io/DataOutputStream;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 436
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Content-Disposition: form-data; name=\"uploadedfile\";filename=\""

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 436
    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 441
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 443
    .local v13, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v9

    .line 445
    .local v9, "datasize":I
    const/16 v25, 0x400

    move/from16 v0, v25

    if-lt v9, v0, :cond_0

    .line 446
    const/16 v9, 0x400

    .line 448
    :cond_0
    new-array v7, v9, [B

    .line 450
    .local v7, "data":[B
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v7, v0, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    .line 451
    .local v19, "read":I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 452
    .local v20, "total":J
    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v0, p3

    long-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-long v0, v0

    move-wide/from16 v17, v0

    .line 453
    .local v17, "percent":J
    :goto_0
    if-gtz v19, :cond_1

    .line 469
    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 470
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 472
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 473
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 476
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 477
    .local v14, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    .local v3, "b":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v5

    .local v5, "ch":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_3

    .line 481
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    move-object/from16 v16, v0

    .line 485
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v25, Ljava/io/StringReader;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->doParsing(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/HashMap;

    move-result-object v8

    .line 488
    cmp-long v25, v20, p3

    if-gez v25, :cond_4

    .line 489
    const/16 v25, 0x0

    .line 495
    .end local v3    # "b":Ljava/lang/StringBuffer;
    .end local v4    # "boundary":Ljava/lang/String;
    .end local v5    # "ch":I
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "data":[B
    .end local v9    # "datasize":I
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v12    # "filepath":Ljava/lang/String;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "lineend":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "percent":J
    .end local v19    # "read":I
    .end local v20    # "total":J
    .end local v22    # "twohyphens":Ljava/lang/String;
    .end local v23    # "url":Ljava/net/URL;
    .end local v24    # "urlstr":Ljava/lang/String;
    :goto_2
    return-object v25

    .line 454
    .restart local v4    # "boundary":Ljava/lang/String;
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "data":[B
    .restart local v9    # "datasize":I
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "filepath":Ljava/lang/String;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "lineend":Ljava/lang/String;
    .restart local v17    # "percent":J
    .restart local v19    # "read":I
    .restart local v20    # "total":J
    .restart local v22    # "twohyphens":Ljava/lang/String;
    .restart local v23    # "url":Ljava/net/URL;
    .restart local v24    # "urlstr":Ljava/lang/String;
    :cond_1
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v7, v0, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 455
    invoke-virtual {v13}, Ljava/io/FileInputStream;->available()I

    move-result v9

    .line 457
    const/16 v25, 0x400

    move/from16 v0, v25

    if-lt v9, v0, :cond_2

    .line 458
    const/16 v9, 0x400

    .line 460
    :cond_2
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v13, v7, v0, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v19

    .line 463
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v25, v0

    add-long v20, v20, v25

    .line 464
    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v25, v0

    move-wide/from16 v0, p3

    long-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    const/high16 v26, 0x42c80000    # 100.0f

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-long v0, v0

    move-wide/from16 v17, v0

    .line 466
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "upload: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    .end local v4    # "boundary":Ljava/lang/String;
    .end local v6    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "data":[B
    .end local v9    # "datasize":I
    .end local v10    # "dos":Ljava/io/DataOutputStream;
    .end local v12    # "filepath":Ljava/lang/String;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "lineend":Ljava/lang/String;
    .end local v17    # "percent":J
    .end local v19    # "read":I
    .end local v20    # "total":J
    .end local v22    # "twohyphens":Ljava/lang/String;
    .end local v23    # "url":Ljava/net/URL;
    .end local v24    # "urlstr":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 492
    .local v11, "e":Ljava/lang/Exception;
    const/16 v25, 0x0

    goto :goto_2

    .line 479
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "b":Ljava/lang/StringBuffer;
    .restart local v4    # "boundary":Ljava/lang/String;
    .restart local v5    # "ch":I
    .restart local v6    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "data":[B
    .restart local v9    # "datasize":I
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    .restart local v12    # "filepath":Ljava/lang/String;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v15    # "lineend":Ljava/lang/String;
    .restart local v17    # "percent":J
    .restart local v19    # "read":I
    .restart local v20    # "total":J
    .restart local v22    # "twohyphens":Ljava/lang/String;
    .restart local v23    # "url":Ljava/net/URL;
    .restart local v24    # "urlstr":Ljava/lang/String;
    :cond_3
    int-to-char v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    move-object/from16 v25, v8

    .line 495
    goto :goto_2
.end method


# virtual methods
.method public clearParameter()V
    .locals 1

    .prologue
    .line 146
    const-string v0, ">> clearParameter()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    return-void
.end method

.method public closeSocket(Z)V
    .locals 2
    .param p1, "bClearMem"    # Z

    .prologue
    .line 826
    const-string v1, ">> closeSocket()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 828
    if-eqz p1, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearMemberData()V

    .line 835
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSocketMsgThreadRun:Z

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mSc:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mSc:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 840
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mSc:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDataMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 678
    const-string v0, ">> getDataMap()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getJSONArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 683
    const-string v0, ">> getJSONArray()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 688
    const-string v0, ">> getJSONObject()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mJSONObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public isConnectSocket()Z
    .locals 2

    .prologue
    .line 863
    const-string v1, ">> isConnectSocket():"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mSc:Ljava/nio/channels/SocketChannel;

    .line 865
    .local v0, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_0

    .line 866
    const/4 v1, 0x0

    .line 868
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 673
    const-string v0, ">> isConnecting()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 674
    iget-boolean v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    return v0
.end method

.method public sendSocketMsg(Ljava/lang/String;)Z
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 922
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">> sendSocketMsg():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 923
    iget-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mSc:Ljava/nio/channels/SocketChannel;

    .line 924
    .local v3, "sc":Ljava/nio/channels/SocketChannel;
    const/4 v2, 0x1

    .line 926
    .local v2, "result":Z
    if-nez v3, :cond_0

    .line 927
    const/4 v2, 0x0

    .line 960
    :goto_0
    return v2

    .line 931
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 932
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 933
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 934
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 937
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 942
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendSocketMsg e: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> setParameter() name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->searchParameter(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    iput-object p2, v1, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mValue:Ljava/lang/String;

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mParameterList:Ljava/util/ArrayList;

    new-instance v2, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;

    invoke-direct {v2, p0, p1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setReceiveSocketMsgHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 872
    const-string v0, ">> setReceiveSocketMsgHandler()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 873
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSockerMsgHandler:Landroid/os/Handler;

    .line 874
    return-void
.end method

.method public setServerUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> setServerUri() domain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerUri:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFolder:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFile:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setServerUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> setServerUri() domain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " folder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerUri:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFolder:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mServerFile:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public startConnectSocket(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 973
    const-string v1, ">> startConnectSocket():\"\""

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 974
    iput-object p3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 975
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 976
    const-string v1, "ConnectSocketThread start"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 977
    new-instance v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;

    const-string v1, ""

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;ILjava/lang/String;)V

    .line 978
    .local v0, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->start()V

    .line 979
    return-void
.end method

.method public startConnectSocket(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> startConnectSocket():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 984
    iput-object p4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 985
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 986
    const-string v1, "ConnectSocketThread start"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 987
    new-instance v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;ILjava/lang/String;)V

    .line 988
    .local v0, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->start()V

    .line 989
    return-void
.end method

.method public startDownloadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 11
    .param p1, "srcpath"    # Ljava/lang/String;
    .param p2, "srcname"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "despath"    # Ljava/lang/String;
    .param p6, "desname"    # Ljava/lang/String;
    .param p7, "tag"    # I
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 663
    const-string v2, ">> startDownloadFile()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 665
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 666
    const-string v2, "LoadThread start"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 667
    new-instance v1, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;

    .line 668
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 667
    invoke-direct/range {v1 .. v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)V

    .line 669
    .local v1, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;
    invoke-virtual {v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->start()V

    .line 670
    return-void
.end method

.method public startDownloadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 11
    .param p1, "srcpath"    # Ljava/lang/String;
    .param p2, "srcname"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "despath"    # Ljava/lang/String;
    .param p6, "desname"    # Ljava/lang/String;
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 652
    const-string v2, ">> startDownloadFile()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 653
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 654
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 655
    const-string v2, "LoadThread start"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 656
    new-instance v1, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;

    .line 657
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 656
    invoke-direct/range {v1 .. v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)V

    .line 658
    .local v1, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;
    invoke-virtual {v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->start()V

    .line 659
    return-void
.end method

.method public startParsingData(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "encodingtype"    # Ljava/lang/String;
    .param p2, "requesttype"    # Ljava/lang/String;
    .param p3, "resulttype"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 608
    const-string v1, ">> startParsingData()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 609
    iput-object p4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 610
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 611
    const-string v1, "ParsingThread start"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 612
    new-instance v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;I)V

    .line 614
    .local v0, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->start()V

    .line 615
    return-void
.end method

.method public startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .param p1, "encodingtype"    # Ljava/lang/String;
    .param p2, "requesttype"    # Ljava/lang/String;
    .param p3, "resulttype"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 619
    const-string v1, ">> startParsingData()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 620
    iput-object p5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 621
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 622
    const-string v1, "ParsingThread start"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 623
    new-instance v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    .local v0, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->start()V

    .line 626
    return-void
.end method

.method public startReceiveSocketMsg(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 964
    const-string v0, ">> startReceiveSocketMsg()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 965
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSockerMsgHandler:Landroid/os/Handler;

    .line 967
    const-string v0, "ReceiveSocketMsgThread start"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 968
    new-instance v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;

    invoke-direct {v0, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)V

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSocketMsgthread:Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;

    .line 969
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mReceiveSocketMsgthread:Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;

    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->start()V

    .line 970
    return-void
.end method

.method public startUploadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 11
    .param p1, "srcpath"    # Ljava/lang/String;
    .param p2, "srcname"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "despath"    # Ljava/lang/String;
    .param p6, "desname"    # Ljava/lang/String;
    .param p7, "tag"    # I
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    .line 641
    const-string v2, ">> startUploadFile()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 643
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 644
    const-string v2, "LoadThread start"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 645
    new-instance v1, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;

    .line 646
    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 645
    invoke-direct/range {v1 .. v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)V

    .line 647
    .local v1, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;
    invoke-virtual {v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->start()V

    .line 648
    return-void
.end method

.method public startUploadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 11
    .param p1, "srcpath"    # Ljava/lang/String;
    .param p2, "srcname"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "despath"    # Ljava/lang/String;
    .param p6, "desname"    # Ljava/lang/String;
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 630
    const-string v2, ">> startUploadFile()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 631
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mResultHandler:Landroid/os/Handler;

    .line 632
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->mConnecting:Z

    .line 633
    const-string v2, "LoadThread start"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 634
    new-instance v1, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;

    .line 635
    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 634
    invoke-direct/range {v1 .. v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;-><init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)V

    .line 636
    .local v1, "thread":Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;
    invoke-virtual {v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->start()V

    .line 637
    return-void
.end method
