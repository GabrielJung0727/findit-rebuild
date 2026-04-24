.class Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;
.super Landroid/os/AsyncTask;
.source "WaitingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/WaitingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "doSendSocketMsgTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/WaitingRoom;


# direct methods
.method private constructor <init>(Lcom/findit/battle/WaitingRoom;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/findit/battle/WaitingRoom;Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;-><init>(Lcom/findit/battle/WaitingRoom;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    if-eqz p1, :cond_0

    array-length v2, p1

    if-gt v2, v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v5

    .line 85
    :cond_1
    aget-object v0, p1, v4

    .line 86
    .local v0, "strMsg":Ljava/lang/String;
    aget-object v1, p1, v3

    .line 88
    .local v1, "strSinglePlay":Ljava/lang/String;
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$0(Lcom/findit/battle/WaitingRoom;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->sendSocketMsg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$1(Lcom/findit/battle/WaitingRoom;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v2}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 90
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$1(Lcom/findit/battle/WaitingRoom;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Network disconnected, try again!"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :cond_2
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v2}, Lcom/findit/battle/WaitingRoom;->access$2(Lcom/findit/battle/WaitingRoom;)Lcom/findit/battle/GameView;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 94
    iget-object v2, p0, Lcom/findit/battle/WaitingRoom$doSendSocketMsgTask;->this$0:Lcom/findit/battle/WaitingRoom;

    iget-object v2, v2, Lcom/findit/battle/WaitingRoom;->mMainDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
