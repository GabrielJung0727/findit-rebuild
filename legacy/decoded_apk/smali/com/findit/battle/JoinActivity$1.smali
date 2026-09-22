.class Lcom/findit/battle/JoinActivity$1;
.super Landroid/os/Handler;
.source "JoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/JoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/JoinActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    .line 459
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v13, 0x7f09000a

    .line 461
    const-string v0, ">> handleMessage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 464
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 465
    .local v12, "value":Z
    if-eqz v12, :cond_6

    .line 466
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$1(Lcom/findit/battle/JoinActivity;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    .line 468
    .local v8, "jsonobject":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "result"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, "result":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 470
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    const v2, 0x7f09000a

    const-string v5, "[0]"

    invoke-virtual {v0, v1, v2, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    .line 525
    .end local v8    # "jsonobject":Lorg/json/JSONObject;
    .end local v10    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 472
    .restart local v8    # "jsonobject":Lorg/json/JSONObject;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mJoinResultHandler result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 473
    const-string v0, "000"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 481
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$2(Lcom/findit/battle/JoinActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 482
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 483
    .local v7, "edittext":Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "email":Ljava/lang/String;
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "edittext":Landroid/widget/EditText;
    check-cast v7, Landroid/widget/EditText;

    .line 486
    .restart local v7    # "edittext":Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 493
    .end local v7    # "edittext":Landroid/widget/EditText;
    .local v4, "password":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 494
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$3(Lcom/findit/battle/JoinActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 495
    .local v11, "tag":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 497
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$4(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/DBAdapter;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v5, "on"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->updateSettingLogin(JLjava/lang/String;Ljava/lang/String;Z)Z

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "autologin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "on"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 502
    .restart local v7    # "edittext":Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 504
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    iget-object v1, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v1}, Lcom/findit/battle/JoinActivity;->access$5(Lcom/findit/battle/JoinActivity;)I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/findit/battle/JoinActivity;->access$6(Lcom/findit/battle/JoinActivity;Ljava/lang/String;I)V

    .line 508
    .end local v7    # "edittext":Landroid/widget/EditText;
    .end local v9    # "name":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-virtual {v0}, Lcom/findit/battle/JoinActivity;->finish()V

    .line 509
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    const v1, 0x7f040002

    const v2, 0x7f040003

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/JoinActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 519
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v10    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 520
    .local v6, "e":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    const-string v2, "[1]"

    invoke-virtual {v0, v1, v13, v2}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 489
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$2(Lcom/findit/battle/JoinActivity;)Ljava/lang/String;

    move-result-object v3

    .line 490
    .restart local v3    # "email":Ljava/lang/String;
    const-string v4, "facebook"

    .restart local v4    # "password":Ljava/lang/String;
    goto/16 :goto_1

    .line 511
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    :cond_4
    const-string v0, "910"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_0

    .line 514
    :cond_5
    const-string v0, "999"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    const v2, 0x7f09000a

    const-string v5, "[2]"

    invoke-virtual {v0, v1, v2, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 524
    .end local v8    # "jsonobject":Lorg/json/JSONObject;
    .end local v10    # "result":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$1;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_0
.end method
