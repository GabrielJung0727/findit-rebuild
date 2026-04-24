.class Lcom/findit/battle/WaitingRoom$1;
.super Ljava/lang/Object;
.source "WaitingRoom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/WaitingRoom;->createMainDlg(Landroid/content/Context;II)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/WaitingRoom;


# direct methods
.method constructor <init>(Lcom/findit/battle/WaitingRoom;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    const-string v2, ">> onClick():\ub300\uc804\ubc29 \ub9cc\ub4e4\uae30"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mConnectNetwork.isConnectSocket(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v3}, Lcom/findit/battle/WaitingRoom;->access$0(Lcom/findit/battle/WaitingRoom;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$1(Lcom/findit/battle/WaitingRoom;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v2}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 138
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$0(Lcom/findit/battle/WaitingRoom;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v2

    if-nez v2, :cond_0

    .line 139
    const-string v2, "mConnectNetwork is null and get mConnectNetwork"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$1(Lcom/findit/battle/WaitingRoom;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v3, v2}, Lcom/findit/battle/WaitingRoom;->access$5(Lcom/findit/battle/WaitingRoom;Lcom/jargoandroid/connectnetwork/ConnectNetwork;)V

    .line 144
    :cond_0
    const-string v1, "|101|"

    .line 146
    .local v1, "sendmsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$2(Lcom/findit/battle/WaitingRoom;)Lcom/findit/battle/GameView;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/findit/battle/GameView;->getLengthText(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "length":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MakeBattleRoomButton: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 158
    new-instance v2, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;

    iget-object v3, p0, Lcom/findit/battle/WaitingRoom$1;->this$0:Lcom/findit/battle/WaitingRoom;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;-><init>(Lcom/findit/battle/WaitingRoom;Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "true"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 164
    return-void
.end method
