.class Lcom/findit/battle/GameActivity$7;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    .line 1760
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1762
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">> handleMessage() msg.what: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1763
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v3}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 1764
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v3}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v1

    .line 1766
    .local v1, "gameview":Lcom/findit/battle/GameView;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1767
    const-string v4, "result"

    .line 1766
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1768
    .local v2, "value":Z
    if-eqz v2, :cond_2

    .line 1770
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v0, v3, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 1772
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1775
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mReceiveSocketMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startReceiveSocketMsg(Landroid/os/Handler;)V

    .line 1776
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/findit/battle/GameActivity;->access$6(Lcom/findit/battle/GameActivity;Ljava/lang/String;)V

    .line 1777
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/findit/battle/GameActivity;->access$7(Lcom/findit/battle/GameActivity;I)V

    .line 1780
    sget v3, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1784
    invoke-virtual {v1}, Lcom/findit/battle/GameView;->showWaitingRoom()V

    .line 1791
    :cond_0
    const-string v3, "mConnectSocketHandler success"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    .end local v0    # "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :goto_0
    monitor-exit p0

    return-void

    .line 1793
    .restart local v0    # "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 1796
    const-string v3, ""

    .line 1797
    const/4 v4, 0x2

    .line 1795
    invoke-virtual {v1, v3, v4}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 1799
    const-string v3, "mConnectSocketHandler fail1"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1762
    .end local v0    # "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .end local v1    # "gameview":Lcom/findit/battle/GameView;
    .end local v2    # "value":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1802
    .restart local v1    # "gameview":Lcom/findit/battle/GameView;
    .restart local v2    # "value":Z
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/findit/battle/GameActivity$7;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 1806
    const-string v3, ""

    .line 1807
    const/4 v4, 0x2

    .line 1806
    invoke-virtual {v1, v3, v4}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 1809
    const-string v3, "mConnectSocketHandler fail0"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
