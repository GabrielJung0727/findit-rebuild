.class Lcom/feelingk/iap/IAPActivity$13;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterTstore()V
    .locals 13

    .prologue
    .line 1567
    const/4 v4, 0x0

    .line 1569
    .local v4, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v10}, Lcom/feelingk/iap/IAPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.skt.skaf.A000Z00040"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1573
    :goto_0
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1574
    .local v9, "versionName":Ljava/lang/String;
    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1575
    .local v8, "versionCode":I
    const-string v10, "IAPActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "application versionName : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    const-string v10, "IAPActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "application versionCode : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const/4 v3, 0x0

    .line 1581
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1583
    .local v0, "data":[B
    :try_start_1
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v11, "com.skt.skaf.A000Z00040"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/feelingk/iap/IAPActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 1584
    .local v6, "other":Landroid/content/Context;
    const-string v10, "lockInfo.txt"

    invoke-virtual {v6, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 1586
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v10

    new-array v0, v10, [B

    .line 1587
    :cond_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 1588
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1599
    .end local v6    # "other":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_1

    const/16 v10, 0x13

    if-lt v8, v10, :cond_1

    .line 1600
    const-string v7, "SETTING_VIEW"

    .line 1601
    .local v7, "strMsg":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1602
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1603
    const-string v10, "com.skt.skaf.A000Z00040"

    const-string v11, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1604
    const-string v10, "COLLAB_ACTION"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v10, "com.skt.skaf.COL.URI"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1606
    const-string v10, "com.skt.skaf.COL.REQUESTER"

    const-string v11, "A000Z00040"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1607
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v10, v5}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    .line 1618
    .end local v7    # "strMsg":Ljava/lang/String;
    :goto_2
    return-void

    .line 1570
    .end local v0    # "data":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "versionCode":I
    .end local v9    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1571
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1589
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "data":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "other":Landroid/content/Context;
    .restart local v8    # "versionCode":I
    .restart local v9    # "versionName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1590
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1593
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "other":Landroid/content/Context;
    :catch_2
    move-exception v1

    .line 1594
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1595
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v1

    .line 1596
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1612
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1613
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v10, "com.skt.skaf.A000Z00040"

    const-string v11, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v10, v5}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onErrorPopup()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 1524
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$35(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    .line 1526
    .local v1, "time":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1527
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1528
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1529
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1530
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1531
    const/16 v3, 0xe

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1532
    .local v0, "currTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v3, 0x75

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_SMS_NUMBER_AUTH_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v5}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/feelingk/iap/util/CommonString$Index;->LAST_REQUEST:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v5}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1534
    return-void
.end method

.method public onGetLguSmsAuthTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$35(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLguSmsAuthCancer()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1500
    const-string v3, "IAPActivity"

    const-string v4, "onLguSmsAuthCancerButtonClick"

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1503
    .local v0, "hnd":Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1504
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1506
    invoke-static {v7}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    .line 1507
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$32(Lcom/feelingk/iap/IAPActivity;)V

    .line 1509
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1510
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1511
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1513
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3, v7}, Lcom/feelingk/iap/IAPActivity;->access$34(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1516
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1517
    .local v2, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 1519
    return-void
.end method

.method public onLguSmsAuthNumberReq()V
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->sendLguSmsAuthNumber(Ljava/lang/String;)V

    .line 1475
    return-void
.end method

.method public onLguSmsAuthOK()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 1480
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$31()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$32(Lcom/feelingk/iap/IAPActivity;)V

    .line 1484
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$33(Lcom/feelingk/iap/IAPActivity;)V

    .line 1486
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1488
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$31()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPLib;->sendLguSmsAuth(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :goto_0
    return-void

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$32(Lcom/feelingk/iap/IAPActivity;)V

    .line 1492
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1493
    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0
.end method

.method public onSetLguSmsAuthTime(Z)V
    .locals 6
    .param p1, "flag"    # Z

    .prologue
    .line 1547
    if-eqz p1, :cond_0

    .line 1549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1550
    .local v0, "now":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v2, "sdfNow":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/IAPActivity;->access$34(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1552
    const-string v3, "IAPActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsAuthTimeCheck: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v5}, Lcom/feelingk/iap/IAPActivity;->access$35(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    .end local v0    # "now":J
    .end local v2    # "sdfNow":Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method

.method public onTstoreLockError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$13;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x77

    invoke-static {v0, v1, p1}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1561
    return-void
.end method
