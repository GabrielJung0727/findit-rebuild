.class Lcom/feelingk/iap/IAPActivity$14;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoPurchaseCheck(Z)V
    .locals 2
    .param p1, "autoPurchaseCheck"    # Z

    .prologue
    .line 1857
    if-eqz p1, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAfterAutoPurchaseInfoAgree(Z)V

    .line 1862
    :goto_0
    return-void

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setmAfterAutoPurchaseInfoAgree(Z)V

    goto :goto_0
.end method

.method public onAutoPurchaseInfoClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "formName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1702
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 1703
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$40(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x464

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1704
    .local v0, "msgUI":Landroid/os/Message;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$40(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1705
    return-void
.end method

.method public onEnterTstore()V
    .locals 13

    .prologue
    .line 1759
    const/4 v4, 0x0

    .line 1761
    .local v4, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v10}, Lcom/feelingk/iap/IAPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "com.skt.skaf.A000Z00040"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1765
    :goto_0
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1766
    .local v9, "versionName":Ljava/lang/String;
    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1767
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

    .line 1768
    const-string v10, "IAPActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "application versionCode : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    const/4 v3, 0x0

    .line 1773
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1775
    .local v0, "data":[B
    :try_start_1
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v11, "com.skt.skaf.A000Z00040"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/feelingk/iap/IAPActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 1776
    .local v6, "other":Landroid/content/Context;
    const-string v10, "lockInfo.txt"

    invoke-virtual {v6, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 1778
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v10

    new-array v0, v10, [B

    .line 1779
    :cond_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 1780
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1791
    .end local v6    # "other":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_1

    const/16 v10, 0x13

    if-lt v8, v10, :cond_1

    .line 1792
    const-string v7, "SETTING_VIEW"

    .line 1793
    .local v7, "strMsg":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1794
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1795
    const-string v10, "com.skt.skaf.A000Z00040"

    const-string v11, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    const-string v10, "COLLAB_ACTION"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    const-string v10, "com.skt.skaf.COL.URI"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1798
    const-string v10, "com.skt.skaf.COL.REQUESTER"

    const-string v11, "A000Z00040"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1799
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v10, v5}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    .line 1809
    .end local v7    # "strMsg":Ljava/lang/String;
    :goto_2
    return-void

    .line 1762
    .end local v0    # "data":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "versionCode":I
    .end local v9    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1763
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1781
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "data":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "other":Landroid/content/Context;
    .restart local v8    # "versionCode":I
    .restart local v9    # "versionName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1782
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1785
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "other":Landroid/content/Context;
    :catch_2
    move-exception v1

    .line 1786
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1787
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v1

    .line 1788
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1804
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1805
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v10, "com.skt.skaf.A000Z00040"

    const-string v11, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1806
    iget-object v10, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v10, v5}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onPurchaseAutoButtonClick()V
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 1725
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1728
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPostPay()I

    move-result v0

    if-lez v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$41(Lcom/feelingk/iap/IAPActivity;)V

    .line 1741
    :goto_0
    return-void

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$8(Lcom/feelingk/iap/IAPActivity;)V

    goto :goto_0
.end method

.method public onPurchaseAutoCancelButtonClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 1745
    const-string v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x67

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_PURCHASE_INFO_AGREE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1748
    :cond_0
    return-void
.end method

.method public onPurchaseButtonClick()V
    .locals 1

    .prologue
    .line 1694
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1696
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$39(Lcom/feelingk/iap/IAPActivity;)V

    .line 1698
    return-void
.end method

.method public onPurchaseCancelButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1650
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1651
    .local v0, "hnd":Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1652
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1654
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 1656
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1657
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1658
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1660
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setLimitExcess(Z)V

    .line 1663
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$38(Lcom/feelingk/iap/IAPActivity;)V

    .line 1666
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1667
    .local v2, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 1668
    return-void
.end method

.method public onShowCultureLandDialog()V
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 1830
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$44(Lcom/feelingk/iap/IAPActivity;)V

    .line 1831
    return-void
.end method

.method public onShowDotoriQueryBtnClick(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1836
    if-eqz p1, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 1838
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$45(Lcom/feelingk/iap/IAPActivity;)V

    .line 1845
    :goto_0
    return-void

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x77

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_MEMBERINFO_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onShowMessageDialog()V
    .locals 3

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x64

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_LIMIT_EXCESS_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1853
    return-void
.end method

.method public onShowOCBPWDDialog()V
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 1822
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$43(Lcom/feelingk/iap/IAPActivity;)V

    .line 1824
    return-void
.end method

.method public onShowOCBRegPopup(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputType"    # Ljava/lang/String;

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 1815
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0, p1}, Lcom/feelingk/iap/IAPActivity;->access$42(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1816
    return-void
.end method

.method public onTstoreLockError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x64

    invoke-static {v0, v1, p1}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1753
    return-void
.end method

.method public onUseTCashCheckChanged(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1629
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0, p1}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1632
    if-eqz p1, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1644
    :goto_0
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PopupCheck!!  UseTCash ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / BPProtocol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$37(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    return-void

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$36(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1639
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1641
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$14;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
