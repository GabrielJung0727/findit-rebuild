.class Lcom/feelingk/iap/gui/parser/ParserXML$22;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x0

    .line 5729
    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 5730
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 5731
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v0, 0x0

    .line 5732
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 5733
    .local v6, "nSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_0

    .line 5742
    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$27(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 5745
    const/4 v4, 0x0

    .line 5747
    .local v4, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.skt.skaf.A000Z00040"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 5751
    :goto_1
    iget-object v10, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 5752
    .local v10, "versionName":Ljava/lang/String;
    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 5753
    .local v9, "versionCode":I
    const-string v11, "ParserXML"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "application versionName : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5754
    const-string v11, "ParserXML"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "application versionCode : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5758
    const/16 v11, 0x13

    if-ge v9, v11, :cond_2

    .line 5759
    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$49(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    move-result-object v11

    invoke-interface {v11}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;->onOtpErrorPopup()V

    .line 5782
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v9    # "versionCode":I
    .end local v10    # "versionName":Ljava/lang/String;
    :goto_2
    return-void

    .line 5734
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5735
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.skt.skaf.A000Z00040"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 5736
    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$48(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    .line 5737
    const-string v11, "ParserXML"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\ud2f0\uc2a4\ud1a0\uc5b4 \uc124\uce58\uc5ec\ubd80: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v13}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$27(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5733
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 5748
    .restart local v4    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 5749
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 5767
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "versionCode":I
    .restart local v10    # "versionName":Ljava/lang/String;
    :cond_2
    const-string v8, "SETTING_VIEW"

    .line 5768
    .local v8, "strMsg":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 5769
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v11, 0x20000000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5770
    const-string v11, "com.skt.skaf.A000Z00040"

    const-string v12, "com.skt.skaf.A000Z00040.A000Z00040"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5771
    const-string v11, "COLLAB_ACTION"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5772
    const-string v11, "com.skt.skaf.COL.URI"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5773
    const-string v11, "com.skt.skaf.COL.REQUESTER"

    const-string v12, "A000Z00040"

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5774
    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 5780
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "strMsg":Ljava/lang/String;
    .end local v9    # "versionCode":I
    .end local v10    # "versionName":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$22;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$49(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    move-result-object v11

    invoke-interface {v11}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;->onOtpTstoreButtonClick()V

    goto :goto_2
.end method
