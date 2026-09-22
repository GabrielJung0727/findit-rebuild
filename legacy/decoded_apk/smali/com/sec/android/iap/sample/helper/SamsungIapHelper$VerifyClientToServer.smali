.class Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;
.super Landroid/os/AsyncTask;
.source "SamsungIapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iap/sample/helper/SamsungIapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyClientToServer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

.field mVerificationVO:Lcom/sec/android/iap/sample/vo/VerificationVO;

.field final synthetic this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;Lcom/sec/android/iap/sample/vo/PurchaseVO;)V
    .locals 1
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_purchaseVO"    # Lcom/sec/android/iap/sample/vo/PurchaseVO;

    .prologue
    const/4 v0, 0x0

    .line 1585
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1580
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1576
    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    .line 1577
    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mVerificationVO:Lcom/sec/android/iap/sample/vo/VerificationVO;

    .line 1578
    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    .line 1586
    iput-object p2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    .line 1587
    iput-object p3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    .line 1588
    return-void
.end method

.method private getHttpGetData(Ljava/lang/String;II)Ljava/lang/String;
    .locals 15
    .param p1, "_strUrl"    # Ljava/lang/String;
    .param p2, "_connTimeout"    # I
    .param p3, "_readTimeout"    # I

    .prologue
    .line 1697
    const/4 v11, 0x0

    .line 1698
    .local v11, "strResult":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1699
    .local v6, "con":Ljava/net/URLConnection;
    const/4 v8, 0x0

    .line 1700
    .local v8, "httpConnection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 1701
    .local v2, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 1705
    .local v4, "buffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1706
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 1707
    const/16 v13, 0x2710

    invoke-virtual {v6, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1708
    const/16 v13, 0x2710

    invoke-virtual {v6, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1710
    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 1711
    const-string v13, "GET"

    invoke-virtual {v8, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 1714
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 1716
    .local v10, "responseCode":I
    const/16 v13, 0xc8

    if-ne v10, v13, :cond_0

    .line 1718
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 1719
    const/16 v14, 0x1000

    .line 1718
    invoke-direct {v3, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v3, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x1000

    invoke-direct {v5, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1723
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .local v5, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x1000

    :try_start_2
    new-array v1, v13, [B

    .line 1726
    .local v1, "bData":[B
    :goto_0
    const/4 v13, 0x0

    const/16 v14, 0x1000

    invoke-virtual {v3, v1, v13, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    .local v9, "nRead":I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_3

    .line 1731
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1733
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v11

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 1742
    .end local v1    # "bData":[B
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "nRead":I
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 1744
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1747
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 1749
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1751
    :cond_2
    :goto_2
    const/4 v6, 0x0

    .line 1752
    const/4 v8, 0x0

    .line 1755
    .end local v10    # "responseCode":I
    .end local v12    # "url":Ljava/net/URL;
    :goto_3
    return-object v11

    .line 1728
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bData":[B
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "nRead":I
    .restart local v10    # "responseCode":I
    .restart local v12    # "url":Ljava/net/URL;
    :cond_3
    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v5, v1, v13, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 1736
    .end local v1    # "bData":[B
    .end local v9    # "nRead":I
    :catch_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .line 1738
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "responseCode":I
    .end local v12    # "url":Ljava/net/URL;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1742
    if-eqz v2, :cond_4

    .line 1744
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1747
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    .line 1749
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1751
    :cond_5
    :goto_6
    const/4 v6, 0x0

    .line 1752
    const/4 v8, 0x0

    goto :goto_3

    .line 1741
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 1742
    :goto_7
    if-eqz v2, :cond_6

    .line 1744
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1747
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 1749
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1751
    :cond_7
    :goto_9
    const/4 v6, 0x0

    .line 1752
    const/4 v8, 0x0

    .line 1753
    throw v13

    .line 1744
    .restart local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    goto :goto_5

    .line 1749
    :catch_2
    move-exception v13

    goto :goto_6

    .line 1744
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    goto :goto_8

    .line 1749
    :catch_4
    move-exception v14

    goto :goto_9

    .line 1744
    .restart local v10    # "responseCode":I
    .restart local v12    # "url":Ljava/net/URL;
    :catch_5
    move-exception v13

    goto :goto_1

    .line 1749
    :catch_6
    move-exception v13

    goto :goto_2

    .line 1741
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v13

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "buffer":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_7

    .line 1736
    .end local v10    # "responseCode":I
    .end local v12    # "url":Ljava/net/URL;
    :catch_7
    move-exception v7

    goto :goto_4

    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "responseCode":I
    .restart local v12    # "url":Ljava/net/URL;
    :catch_8
    move-exception v7

    move-object v2, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 1619
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1620
    .local v3, "strUrl":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    invoke-virtual {v4}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getVerifyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1621
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&purchaseID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    invoke-virtual {v5}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getPurchaseId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1623
    const/4 v1, 0x0

    .line 1624
    .local v1, "retryCount":I
    const/4 v2, 0x0

    .line 1628
    .local v2, "strResponse":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1629
    const/16 v5, 0x2710

    .line 1630
    const/16 v6, 0x2710

    .line 1628
    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->getHttpGetData(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1632
    add-int/lit8 v1, v1, 0x1

    .line 1634
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 1635
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1638
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1640
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1661
    .end local v1    # "retryCount":I
    .end local v2    # "strResponse":Ljava/lang/String;
    .end local v3    # "strUrl":Ljava/lang/StringBuffer;
    :goto_0
    return-object v4

    .line 1644
    .restart local v1    # "retryCount":I
    .restart local v2    # "strResponse":Ljava/lang/String;
    .restart local v3    # "strUrl":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v4, Lcom/sec/android/iap/sample/vo/VerificationVO;

    invoke-direct {v4, v2}, Lcom/sec/android/iap/sample/vo/VerificationVO;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mVerificationVO:Lcom/sec/android/iap/sample/vo/VerificationVO;

    .line 1646
    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mVerificationVO:Lcom/sec/android/iap/sample/vo/VerificationVO;

    if-eqz v4, :cond_4

    .line 1647
    const-string v4, "true"

    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mVerificationVO:Lcom/sec/android/iap/sample/vo/VerificationVO;

    invoke-virtual {v5}, Lcom/sec/android/iap/sample/vo/VerificationVO;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1648
    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    invoke-virtual {v4}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getPaymentId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mVerificationVO:Lcom/sec/android/iap/sample/vo/VerificationVO;

    invoke-virtual {v5}, Lcom/sec/android/iap/sample/vo/VerificationVO;->getPaymentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1650
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 1654
    :cond_4
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1658
    .end local v1    # "retryCount":I
    .end local v2    # "strResponse":Ljava/lang/String;
    .end local v3    # "strUrl":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1661
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1611
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1612
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1668
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1670
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1673
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    .line 1674
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090081

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1675
    iget-object v3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090082

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1672
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1688
    :goto_0
    return-void

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1682
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    .line 1683
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090085

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1684
    iget-object v3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    const v6, 0x7f090083

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1681
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1593
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1595
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getVerifyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getPurchaseId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mPurchaseVO:Lcom/sec/android/iap/sample/vo/PurchaseVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getPaymentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1601
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->cancel(Z)Z

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$VerifyClientToServer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showProgressDialog(Landroid/content/Context;)V

    .line 1605
    return-void
.end method
