.class Lcom/findit/battle/GameActivity$6;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$6;->this$0:Lcom/findit/battle/GameActivity;

    .line 1721
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1723
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">> handleMessage() msg.what: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1724
    iget-object v4, p0, Lcom/findit/battle/GameActivity$6;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v4}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 1726
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 1727
    const-string v5, "result"

    .line 1726
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1728
    .local v3, "value":Z
    if-eqz v3, :cond_0

    .line 1729
    iget-object v4, p0, Lcom/findit/battle/GameActivity$6;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v4}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1731
    .local v1, "jsonobject":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1732
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1733
    iget-object v4, p0, Lcom/findit/battle/GameActivity$6;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    iget-object v5, p0, Lcom/findit/battle/GameActivity$6;->this$0:Lcom/findit/battle/GameActivity;

    .line 1734
    const v6, 0x7f09000b

    const-string v7, "[0]"

    .line 1733
    invoke-virtual {v4, v5, v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1756
    .end local v1    # "jsonobject":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1736
    .restart local v1    # "jsonobject":Lorg/json/JSONObject;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAdViewCountResultHandler result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1737
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1736
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1738
    const-string v4, "000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1751
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "e":Lorg/json/JSONException;
    :try_start_3
    iget-object v4, p0, Lcom/findit/battle/GameActivity$6;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    iget-object v5, p0, Lcom/findit/battle/GameActivity$6;->this$0:Lcom/findit/battle/GameActivity;

    .line 1753
    const v6, 0x7f09000b

    const-string v7, "[1]"

    .line 1752
    invoke-virtual {v4, v5, v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1723
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonobject":Lorg/json/JSONObject;
    .end local v3    # "value":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
