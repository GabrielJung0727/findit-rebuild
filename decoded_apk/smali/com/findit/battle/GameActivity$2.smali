.class Lcom/findit/battle/GameActivity$2;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    .line 1498
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1500
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

    .line 1501
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1502
    .local v3, "value":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDownloadImageResultHandler value: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1503
    if-nez v3, :cond_3

    .line 1504
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 1505
    const-string v5, "tag_int"

    .line 1504
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1506
    .local v2, "index":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDownloadImageResultHandler: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1507
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v4}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1508
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v4}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v1

    .line 1510
    .local v1, "gameview":Lcom/findit/battle/GameView;
    add-int/lit8 v2, v2, 0x1

    .line 1513
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v4}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1514
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v4}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1515
    .local v0, "datas":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1516
    const-string v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 1517
    const-string v4, "mDownloadImageResultHandler save"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v1, v0}, Lcom/findit/battle/GameView;->saveImages(Ljava/lang/String;)Z

    .line 1519
    add-int/lit8 v2, v2, 0x1

    .line 1525
    .end local v0    # "datas":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v4}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1526
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v4}, Lcom/findit/battle/GameActivity;->access$4(Lcom/findit/battle/GameActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1529
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-virtual {v4, v2}, Lcom/findit/battle/GameActivity;->downloadImage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    .end local v1    # "gameview":Lcom/findit/battle/GameView;
    .end local v2    # "index":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1532
    .restart local v1    # "gameview":Lcom/findit/battle/GameView;
    .restart local v2    # "index":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/findit/battle/GameActivity;->access$5(Lcom/findit/battle/GameActivity;Ljava/util/ArrayList;)V

    .line 1533
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v4}, Lcom/findit/battle/GameActivity;->access$4(Lcom/findit/battle/GameActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1534
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mDownloadFileDlg:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->cancel()V

    .line 1538
    invoke-virtual {v1}, Lcom/findit/battle/GameView;->isRunningGame()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/findit/battle/GameView;->loadGameObject(Z)V

    .line 1539
    const-string v4, "mDownloadImageResultHandler finish"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1500
    .end local v1    # "gameview":Lcom/findit/battle/GameView;
    .end local v2    # "index":I
    .end local v3    # "value":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1543
    .restart local v3    # "value":I
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/findit/battle/GameActivity$2;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 1544
    const v5, 0x7f090011

    invoke-virtual {v4, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 1545
    const-string v4, "mDownloadImageResultHandler error"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
