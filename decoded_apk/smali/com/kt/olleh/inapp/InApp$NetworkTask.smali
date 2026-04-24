.class Lcom/kt/olleh/inapp/InApp$NetworkTask;
.super Landroid/os/AsyncTask;
.source "InApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/olleh/inapp/InApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentAPI:Ljava/lang/String;

.field private mLastError:I

.field private mLastHttpCode:I

.field private mListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field final synthetic this$0:Lcom/kt/olleh/inapp/InApp;


# direct methods
.method public constructor <init>(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1178
    iput-object p2, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 1179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    .line 1180
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InApp"

    const-string v1, "NetworkTask AsyncTask in"

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_0
    return-void
.end method

.method private sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "response"    # Lcom/kt/olleh/inapp/net/Response;

    .prologue
    .line 1529
    if-nez p1, :cond_0

    .line 1530
    const-string p1, "code null"

    .line 1532
    :cond_0
    if-nez p2, :cond_1

    .line 1533
    const-string p2, "reason null"

    .line 1536
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    if-eqz v1, :cond_3

    .line 1538
    const-string v1, "B007"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1540
    const-string p2, "\uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    .line 1567
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-interface {v1, p1, p2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_3
    return-void

    .line 1542
    :cond_4
    const-string v1, "B009"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1544
    const-string p2, "\uc77c\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 1546
    :cond_5
    const-string v1, "B010"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1548
    const-string p2, "\uc6d4\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    goto :goto_0

    .line 1549
    :cond_6
    const-string v1, "B011"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1551
    if-eqz p3, :cond_2

    .line 1552
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "buyDi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, p3

    .line 1553
    check-cast v0, Lcom/kt/olleh/inapp/net/ResDIBuy;

    .line 1554
    .local v0, "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/ResDIBuy;->getPinFailCnt()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1555
    .end local v0    # "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    :cond_7
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getBuyDiUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1556
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getGiftDiUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move-object v0, p3

    .line 1557
    check-cast v0, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;

    .line 1558
    .local v0, "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->getmPin_fail_cnt()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .end local v0    # "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    :cond_9
    move-object v0, p3

    .line 1560
    check-cast v0, Lcom/kt/olleh/inapp/net/ResDIBuy;

    .line 1561
    .local v0, "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/ResDIBuy;->getPinFailCnt()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1189
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    const-string v2, "doInBackground in"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_0
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1193
    .local v0, "url":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    .line 1194
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InApp"

    const-string v2, "Config.bIsStandAlone = false"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    new-instance v2, Lcom/kt/olleh/inapp/net/NetworkManager;

    invoke-direct {v2}, Lcom/kt/olleh/inapp/net/NetworkManager;-><init>()V

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/InApp;->access$0(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/net/NetworkManager;)V

    .line 1198
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v1}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->getData(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->doInBackground([Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1522
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1523
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/InApp;->access$26(Lcom/kt/olleh/inapp/InApp;Z)V

    .line 1524
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v0}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/net/NetworkManager;->cancel()V

    .line 1525
    return-void
.end method

.method protected onPostExecute(Ljava/io/InputStream;)V
    .locals 19
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1213
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "InApp"

    const-string v3, "onPostExecute in"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1216
    const/16 p1, 0x0

    .line 1514
    :cond_1
    :goto_0
    return-void

    .line 1220
    :cond_2
    if-eqz p1, :cond_2b

    .line 1222
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "InApp"

    const-string v3, "in is not null"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    const-string v3, "esBuyDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kt/olleh/inapp/net/XMLParser;->parseXML_OLD(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kt/olleh/inapp/net/ResponseOld;

    move-result-object v15

    .line 1229
    .local v15, "old":Lcom/kt/olleh/inapp/net/ResponseOld;
    if-eqz v15, :cond_4

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    iget-object v3, v15, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultCode:Ljava/lang/String;

    iget-object v4, v15, Lcom/kt/olleh/inapp/net/ResponseOld;->mResultMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastError()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastError:I

    .line 1237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastHttpCode()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastHttpCode:I

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1240
    const-string v2, "A015"

    const-string v3, "\uc11c\ubc84 \uc694\uccad \uc751\ub2f5 \uc2dc\uac04 \ucd08\uacfc"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto :goto_0

    .line 1246
    .end local v15    # "old":Lcom/kt/olleh/inapp/net/ResponseOld;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mCurrentAPI:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/kt/olleh/inapp/net/XMLParser;->parseXML(Ljava/io/InputStream;Ljava/lang/String;)Lcom/kt/olleh/inapp/net/Response;

    move-result-object v17

    .line 1247
    .local v17, "response":Lcom/kt/olleh/inapp/net/Response;
    if-eqz v17, :cond_1

    .line 1249
    const-string v2, "0"

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/Response;->mCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1252
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/kt/olleh/inapp/net/Response;->mCode:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/Response;->mReason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v3, v1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1256
    :cond_6
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "InApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPostExecute("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") called"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSymKeyGen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v16, v17

    .line 1260
    check-cast v16, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;

    .line 1263
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buyDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "giftDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1267
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSymmetric_key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$5(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSeq_key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$6(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const-string v3, "tr_id"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$7(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1277
    :goto_1
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "InApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onPostExecute("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSymmetric_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSeq_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_9
    const/4 v13, 0x0

    .line 1280
    .local v13, "aesURL":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1282
    .local v12, "aesReplaceURL":Ljava/lang/String;
    const-string v2, "0"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1285
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1286
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSymmetric_key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1288
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "InApp"

    const-string v3, "#################################################################"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :cond_a
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "InApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mAES_URL = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :cond_b
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "InApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aesURL = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_c
    const/16 v2, 0x2f

    const/16 v3, 0x24

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 1292
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string v2, "InApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aesReplaceURL = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_d
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_e

    const-string v2, "InApp"

    const-string v3, "#################################################################"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1299
    :cond_e
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "crypto_param/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/seq_key/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSeq_key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1300
    .local v18, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$9(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$10(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    const-string v3, "0"

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultFileURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_f
    :goto_3
    const/16 v18, 0x0

    .line 1325
    :cond_10
    :goto_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1273
    .end local v12    # "aesReplaceURL":Ljava/lang/String;
    .end local v13    # "aesURL":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mSymmetric_key:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$5(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$6(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1295
    .restart local v12    # "aesReplaceURL":Ljava/lang/String;
    .restart local v13    # "aesURL":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1296
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "InApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AESCrypter ::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1312
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v18    # "url":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v4}, Lcom/kt/olleh/inapp/InApp;->access$11(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1321
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto :goto_4

    .line 1329
    .end local v18    # "url":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1330
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mCode:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;->mReason:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v3, v1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1333
    .end local v12    # "aesReplaceURL":Ljava/lang/String;
    .end local v13    # "aesURL":Ljava/lang/String;
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResGetSymKeyGen;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getUseDiList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDownloadDiList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move-object/from16 v16, v17

    .line 1337
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIListExpand;

    .line 1338
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIListExpand;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1341
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIListExpand;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getItemStatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v16, v17

    .line 1343
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIStatus;

    .line 1344
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIStatus;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1347
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIStatus;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBuyDiList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAllDiList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGiftDiList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getReceiveDiList"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    move-object/from16 v16, v17

    .line 1353
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIList;

    .line 1354
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIList;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1357
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIList;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDiDetail"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v16, v17

    .line 1359
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIDetail;

    .line 1360
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1363
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBuyDiUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGiftDiUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    move-object/from16 v16, v17

    .line 1366
    check-cast v16, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;

    .line 1367
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$12(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mSymmetric_key:Ljava/lang/String;

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1371
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buyDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buyCancelDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "giftDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reGiftDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "approvedUseDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    move-object/from16 v16, v17

    .line 1378
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIBuy;

    .line 1379
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1382
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDownUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v16, v17

    .line 1384
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIDownUrl;

    .line 1385
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIDownUrl;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1388
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIDownUrl;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDownAuth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v16, v17

    .line 1390
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIDownAuth;

    .line 1391
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIDownAuth;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1394
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIDownAuth;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "downSucProc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v16, v17

    .line 1396
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDownSucProc;

    .line 1397
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDownSucProc;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1400
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDownSucProc;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "esBuyDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v16, v17

    .line 1402
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIesBuy;

    .line 1403
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIesBuy;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1406
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIesBuy;
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "approvedDownDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v16, v17

    .line 1408
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIApproveDown;

    .line 1409
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIApproveDown;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1412
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIApproveDown;
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v16, v17

    .line 1414
    check-cast v16, Lcom/kt/olleh/inapp/net/ResDIGetFile;

    .line 1415
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResDIGetFile;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1418
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResDIGetFile;
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkShowId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v16, v17

    .line 1420
    check-cast v16, Lcom/kt/olleh/inapp/net/ResCheckShowId;

    .line 1425
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResCheckShowId;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1428
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResCheckShowId;
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkCoin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v16, v17

    .line 1430
    check-cast v16, Lcom/kt/olleh/inapp/net/ResCheckCoin;

    .line 1431
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResCheckCoin;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1434
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResCheckCoin;
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "check_balance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v16, v17

    .line 1436
    check-cast v16, Lcom/kt/olleh/inapp/net/ResCheckBalance;

    .line 1437
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResCheckBalance;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1440
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResCheckBalance;
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkUserId"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v16, v17

    .line 1442
    check-cast v16, Lcom/kt/olleh/inapp/net/ResCheckUserId;

    .line 1447
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResCheckUserId;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1451
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResCheckUserId;
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckPin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v16, v17

    .line 1453
    check-cast v16, Lcom/kt/olleh/inapp/net/ResCheckPin;

    .line 1454
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResCheckPin;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1457
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResCheckPin;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SetPin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v16, v17

    .line 1459
    check-cast v16, Lcom/kt/olleh/inapp/net/ResSetPin;

    .line 1460
    .local v16, "res":Lcom/kt/olleh/inapp/net/ResSetPin;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0

    .line 1468
    .end local v16    # "res":Lcom/kt/olleh/inapp/net/ResSetPin;
    .end local v17    # "response":Lcom/kt/olleh/inapp/net/Response;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastError()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastError:I

    .line 1469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/net/NetworkManager;->getLastHttpCode()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mLastHttpCode:I

    .line 1471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getFile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buyDi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1479
    sget-object v2, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    sget-object v3, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$13(Lcom/kt/olleh/inapp/InApp;)I

    move-result v2

    if-nez v2, :cond_2c

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$13(Lcom/kt/olleh/inapp/InApp;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$14(Lcom/kt/olleh/inapp/InApp;I)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$15(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$16(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v5}, Lcom/kt/olleh/inapp/InApp;->access$17(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v6}, Lcom/kt/olleh/inapp/InApp;->access$18(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v7}, Lcom/kt/olleh/inapp/InApp;->access$19(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v8}, Lcom/kt/olleh/inapp/InApp;->access$20(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v9}, Lcom/kt/olleh/inapp/InApp;->access$21(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v10}, Lcom/kt/olleh/inapp/InApp;->access$22(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v2 .. v11}, Lcom/kt/olleh/inapp/InApp;->requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto/16 :goto_0

    .line 1484
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$14(Lcom/kt/olleh/inapp/InApp;I)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$15(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$16(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v5}, Lcom/kt/olleh/inapp/InApp;->access$17(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v6}, Lcom/kt/olleh/inapp/InApp;->access$18(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v7}, Lcom/kt/olleh/inapp/InApp;->access$19(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v8}, Lcom/kt/olleh/inapp/InApp;->access$20(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v9}, Lcom/kt/olleh/inapp/InApp;->access$23(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v2 .. v10}, Lcom/kt/olleh/inapp/InApp;->requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto/16 :goto_0

    .line 1488
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$13(Lcom/kt/olleh/inapp/InApp;)I

    move-result v2

    if-nez v2, :cond_2e

    .line 1489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$13(Lcom/kt/olleh/inapp/InApp;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$14(Lcom/kt/olleh/inapp/InApp;I)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$24(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$25(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v2, v3, v4, v5}, Lcom/kt/olleh/inapp/InApp;->requestBuyDI(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto/16 :goto_0

    .line 1492
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$14(Lcom/kt/olleh/inapp/InApp;I)V

    .line 1493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$15(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$16(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v5}, Lcom/kt/olleh/inapp/InApp;->access$17(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v6}, Lcom/kt/olleh/inapp/InApp;->access$18(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v7}, Lcom/kt/olleh/inapp/InApp;->access$19(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v8}, Lcom/kt/olleh/inapp/InApp;->access$20(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v9}, Lcom/kt/olleh/inapp/InApp;->access$23(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v2 .. v10}, Lcom/kt/olleh/inapp/InApp;->requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto/16 :goto_0

    .line 1497
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBuyDiUrl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$13(Lcom/kt/olleh/inapp/InApp;)I

    move-result v2

    if-nez v2, :cond_30

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$13(Lcom/kt/olleh/inapp/InApp;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$14(Lcom/kt/olleh/inapp/InApp;I)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$15(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$16(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v5}, Lcom/kt/olleh/inapp/InApp;->access$17(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v6}, Lcom/kt/olleh/inapp/InApp;->access$18(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v7}, Lcom/kt/olleh/inapp/InApp;->access$19(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v8}, Lcom/kt/olleh/inapp/InApp;->access$20(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v9}, Lcom/kt/olleh/inapp/InApp;->access$21(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v10}, Lcom/kt/olleh/inapp/InApp;->access$22(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v2 .. v11}, Lcom/kt/olleh/inapp/InApp;->getBuyDiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto/16 :goto_0

    .line 1503
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/InApp;->access$14(Lcom/kt/olleh/inapp/InApp;I)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v3}, Lcom/kt/olleh/inapp/InApp;->access$15(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v4}, Lcom/kt/olleh/inapp/InApp;->access$16(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v5}, Lcom/kt/olleh/inapp/InApp;->access$17(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v6}, Lcom/kt/olleh/inapp/InApp;->access$18(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v7}, Lcom/kt/olleh/inapp/InApp;->access$19(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v8}, Lcom/kt/olleh/inapp/InApp;->access$20(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v9}, Lcom/kt/olleh/inapp/InApp;->access$23(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v2 .. v10}, Lcom/kt/olleh/inapp/InApp;->requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    goto/16 :goto_0

    .line 1509
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;->this$0:Lcom/kt/olleh/inapp/InApp;

    invoke-static {v2}, Lcom/kt/olleh/inapp/InApp;->access$2(Lcom/kt/olleh/inapp/InApp;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1510
    const-string v2, "A015"

    const-string v3, "\uc11c\ubc84\uc5d0 \uc811\uc18d\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc\ub97c \ud655\uc778\ud574\uc8fc\uc138\uc694."

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->sendErrorReason(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->onPostExecute(Ljava/io/InputStream;)V

    return-void
.end method
