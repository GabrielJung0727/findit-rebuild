.class Lcom/findit/battle/GameActivity$5;
.super Landroid/os/Handler;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    .line 1641
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1643
    monitor-enter p0

    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ">> handleMessage() msg.what: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v13}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 1646
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 1647
    const-string v14, "result"

    .line 1646
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 1648
    .local v12, "value":Z
    if-eqz v12, :cond_0

    .line 1649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v13}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1651
    .local v8, "jsonobject":Lorg/json/JSONObject;
    :try_start_1
    const-string v13, "result"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1652
    .local v11, "result":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 1653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    .line 1654
    const v15, 0x7f09000b

    const-string v16, "[0]"

    .line 1653
    invoke-virtual/range {v13 .. v16}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1717
    .end local v8    # "jsonobject":Lorg/json/JSONObject;
    .end local v11    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1656
    .restart local v8    # "jsonobject":Lorg/json/JSONObject;
    .restart local v11    # "result":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mImageListResultHandler result: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1657
    const-string v13, "000"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1659
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13, v14}, Lcom/findit/battle/GameActivity;->access$5(Lcom/findit/battle/GameActivity;Ljava/util/ArrayList;)V

    .line 1662
    const-string v13, "list"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1663
    .local v7, "jsonarray":Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    .line 1664
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 1665
    .local v9, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-lt v5, v9, :cond_2

    .line 1693
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "++ handleMessage() mDownloadList.size(): "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v14}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1693
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_0

    .line 1698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1712
    .end local v5    # "i":I
    .end local v7    # "jsonarray":Lorg/json/JSONArray;
    .end local v9    # "length":I
    .end local v11    # "result":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1713
    .local v4, "e":Lorg/json/JSONException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    .line 1714
    const v15, 0x7f09000b

    const-string v16, "[1]"

    .line 1713
    invoke-virtual/range {v13 .. v16}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1643
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v8    # "jsonobject":Lorg/json/JSONObject;
    .end local v12    # "value":Z
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1667
    .restart local v5    # "i":I
    .restart local v7    # "jsonarray":Lorg/json/JSONArray;
    .restart local v8    # "jsonobject":Lorg/json/JSONObject;
    .restart local v9    # "length":I
    .restart local v11    # "result":Ljava/lang/String;
    .restart local v12    # "value":Z
    :cond_2
    :try_start_4
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1668
    .local v10, "listjsonobject":Lorg/json/JSONObject;
    if-eqz v10, :cond_3

    .line 1669
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1671
    const-string v14, "img"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1670
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    const-string v13, "imageCut"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1675
    .local v1, "cutjsonarray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 1676
    .local v2, "cutlength":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-lt v6, v2, :cond_4

    .line 1688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1689
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1688
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    .end local v1    # "cutjsonarray":Lorg/json/JSONArray;
    .end local v2    # "cutlength":I
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1678
    .restart local v1    # "cutjsonarray":Lorg/json/JSONArray;
    .restart local v2    # "cutlength":I
    .restart local v6    # "j":I
    :cond_4
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1679
    .local v3, "cutlistjsonobject":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 1680
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$5;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1682
    const-string v14, "img"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1681
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1676
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method
