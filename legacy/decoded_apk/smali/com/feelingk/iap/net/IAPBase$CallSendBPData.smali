.class Lcom/feelingk/iap/net/IAPBase$CallSendBPData;
.super Ljava/lang/Object;
.source "IAPBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/net/IAPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallSendBPData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[B>;"
    }
.end annotation


# instance fields
.field private mData:[B

.field private mTelecom:I

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;[BI)V
    .locals 1
    .param p2, "data"    # [B
    .param p3, "telecom"    # I

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    .line 1831
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    .line 1837
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    .line 1838
    iput p3, p0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1842
    const/4 v13, 0x0

    .line 1844
    .local v13, "init":Lcom/feelingk/iap/net/InitConfirm;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, v1, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 1845
    .local v12, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 1846
    .local v14, "mobile":Landroid/net/NetworkInfo;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v16

    .line 1849
    .local v16, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    .line 1862
    :goto_0
    const-string v1, "IAPBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CallSendBPData Start!!  WifiEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-boolean v3, v3, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-boolean v1, v1, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    if-eqz v1, :cond_2

    .line 1865
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 1866
    new-instance v1, Lcom/feelingk/iap/net/ServerInfo;

    const-string v2, "iapdev.tstore.co.kr"

    const/16 v3, 0x1d56

    invoke-direct {v1, v2, v3}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 1867
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v3, v3, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 1869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v4, v4, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v5, v5, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 1871
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v6, v6, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 1872
    const/4 v7, 0x0

    .line 1873
    const/4 v8, 0x0

    .line 1874
    const/4 v9, 0x0

    .line 1875
    const/4 v10, 0x1

    .line 1876
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v11, v11, Lcom/feelingk/iap/net/IAPBase;->mContext:Landroid/content/Context;

    .line 1866
    invoke-static/range {v1 .. v11}, Lcom/feelingk/iap/net/IAPNet;->iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v13

    .line 1889
    :goto_1
    if-nez v13, :cond_3

    .line 1890
    const/4 v15, 0x0

    .line 1917
    :goto_2
    return-object v15

    .line 1852
    :cond_0
    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    goto :goto_0

    .line 1856
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v2, -0x1

    iput v2, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v2, 0x7d0

    sget-object v3, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_INTERNET_ACCESS_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v3}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1858
    const/4 v15, 0x0

    goto :goto_2

    .line 1879
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->setWifi(Z)V

    .line 1880
    new-instance v1, Lcom/feelingk/iap/net/ServerInfo;

    const-string v2, "iapdev.tstore.co.kr"

    const/16 v3, 0x1dba

    invoke-direct {v1, v2, v3}, Lcom/feelingk/iap/net/ServerInfo;-><init>(Ljava/lang/String;I)V

    .line 1881
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mTelecom:I

    .line 1882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v3, v3, Lcom/feelingk/iap/net/IAPBase;->APPLICATION_ID:Ljava/lang/String;

    .line 1883
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v4, v4, Lcom/feelingk/iap/net/IAPBase;->MDN:Ljava/lang/String;

    .line 1884
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v5, v5, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_IP:Ljava/lang/String;

    .line 1885
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v6, v6, Lcom/feelingk/iap/net/IAPBase;->BP_SERVER_PORT:I

    .line 1880
    invoke-static/range {v1 .. v6}, Lcom/feelingk/iap/net/IAPNet;->iapConnectBP(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v13

    goto :goto_1

    .line 1892
    :cond_3
    const/4 v15, 0x0

    check-cast v15, [B

    .line 1893
    .local v15, "returnData":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-boolean v1, v1, Lcom/feelingk/iap/net/IAPBase;->isWifi:Z

    if-nez v1, :cond_7

    .line 1895
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1, v13}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1896
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v2, -0xb

    if-eq v1, v2, :cond_4

    .line 1897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v2, -0xc

    if-eq v1, v2, :cond_4

    .line 1898
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v2, -0xd

    if-ne v1, v2, :cond_5

    .line 1901
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/4 v2, 0x0

    iput v2, v1, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1902
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v2, 0x7d8

    sget-object v3, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v3}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1907
    :goto_3
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1905
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v2, 0x7d0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v3, v3, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_3

    .line 1910
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendDataBP([B)[B

    move-result-object v15

    .line 1911
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapCloseBP(Z)I

    goto/16 :goto_2

    .line 1914
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/feelingk/iap/net/IAPBase$CallSendBPData;->mData:[B

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPNet;->iapSendData([B)[B

    move-result-object v15

    goto/16 :goto_2
.end method
