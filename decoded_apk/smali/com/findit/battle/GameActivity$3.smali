.class Lcom/findit/battle/GameActivity$3;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    .line 1551
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1553
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> handleMessage() msg.what: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 1556
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1557
    const-string v2, "result"

    .line 1556
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1558
    .local v15, "value":Z
    if-eqz v15, :cond_0

    .line 1559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v13

    .line 1562
    .local v13, "jsonobject":Lorg/json/JSONObject;
    if-nez v13, :cond_1

    .line 1563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    .line 1564
    const v3, 0x7f09000b

    const-string v4, "[0]"

    .line 1563
    invoke-virtual {v1, v2, v3, v4}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    .line 1565
    const-string v1, "-- handleMessage() jsonobject is null"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    .end local v13    # "jsonobject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1569
    .restart local v13    # "jsonobject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v1, "result"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1570
    .local v14, "result":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 1571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    .line 1572
    const v3, 0x7f09000b

    const-string v4, "[0]"

    .line 1571
    invoke-virtual {v1, v2, v3, v4}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1594
    .end local v14    # "result":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1595
    .local v12, "e":Lorg/json/JSONException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    .line 1596
    const v3, 0x7f09000b

    const-string v4, "[1]"

    .line 1595
    invoke-virtual {v1, v2, v3, v4}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1553
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v13    # "jsonobject":Lorg/json/JSONObject;
    .end local v15    # "value":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1574
    .restart local v13    # "jsonobject":Lorg/json/JSONObject;
    .restart local v14    # "result":Ljava/lang/String;
    .restart local v15    # "value":Z
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAddUpResultHandler result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1575
    const-string v1, "000"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1576
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1577
    const-string v2, "tag_string"

    .line 1576
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1578
    .local v10, "data":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1579
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1580
    .local v11, "datas":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v1

    iget-object v1, v1, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    .line 1581
    const/4 v2, 0x0

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1582
    const/4 v3, 0x1

    aget-object v3, v11, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1583
    const/4 v5, 0x2

    aget-object v5, v11, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1584
    const/4 v6, 0x3

    aget-object v6, v11, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1580
    invoke-virtual/range {v1 .. v7}, Lcom/findit/battle/GameView$Result;->upAbillity(IJIJ)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v1

    iget-object v1, v1, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    .line 1588
    invoke-virtual {v1}, Lcom/findit/battle/GameView$Result;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v1

    iget-wide v8, v1, Lcom/findit/battle/Objects$FindImage;->mAdNum:J

    .line 1589
    .local v8, "adnum":J
    const-wide/16 v1, -0x1

    cmp-long v1, v8, v1

    if-lez v1, :cond_0

    .line 1590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/findit/battle/GameActivity$3;->this$0:Lcom/findit/battle/GameActivity;

    invoke-virtual {v1, v8, v9}, Lcom/findit/battle/GameActivity;->sendAdViewCount(J)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
