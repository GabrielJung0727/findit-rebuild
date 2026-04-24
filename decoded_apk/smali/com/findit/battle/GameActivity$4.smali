.class Lcom/findit/battle/GameActivity$4;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    .line 1603
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1605
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ">> handleMessage() msg.what: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1606
    iget-object v6, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v6, v6, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v6}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 1608
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1609
    const-string v7, "result"

    .line 1608
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1610
    .local v5, "value":Z
    if-eqz v5, :cond_0

    .line 1611
    iget-object v6, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v6, v6, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1613
    .local v3, "jsonobject":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "result"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1614
    .local v4, "result":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1615
    iget-object v6, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v6, v6, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    iget-object v7, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    .line 1616
    const v8, 0x7f09000b

    const-string v9, "[0]"

    .line 1615
    invoke-virtual {v6, v7, v8, v9}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    .end local v3    # "jsonobject":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1618
    .restart local v3    # "jsonobject":Lorg/json/JSONObject;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mSpendItemResultHandler result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1619
    const-string v6, "000"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1620
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 1621
    const-string v7, "tag_string"

    .line 1620
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1622
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1623
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1624
    .local v1, "datas":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mSpendItemResultHandler tag: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1625
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1624
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1626
    iget-object v6, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v6}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v6

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    .line 1627
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1628
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1626
    invoke-virtual {v6, v7, v8}, Lcom/findit/battle/GameView$GameRoom;->spendItem(II)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1632
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "datas":[Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1633
    .local v2, "e":Lorg/json/JSONException;
    :try_start_3
    iget-object v6, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v6, v6, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    iget-object v7, p0, Lcom/findit/battle/GameActivity$4;->this$0:Lcom/findit/battle/GameActivity;

    .line 1634
    const v8, 0x7f09000b

    const-string v9, "[1]"

    .line 1633
    invoke-virtual {v6, v7, v8, v9}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1605
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonobject":Lorg/json/JSONObject;
    .end local v5    # "value":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
