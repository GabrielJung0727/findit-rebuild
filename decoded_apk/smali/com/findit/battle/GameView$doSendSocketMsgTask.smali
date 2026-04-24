.class Lcom/findit/battle/GameView$doSendSocketMsgTask;
.super Landroid/os/AsyncTask;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
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
.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method private constructor <init>(Lcom/findit/battle/GameView;)V
    .locals 0

    .prologue
    .line 5975
    iput-object p1, p0, Lcom/findit/battle/GameView$doSendSocketMsgTask;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/findit/battle/GameView;Lcom/findit/battle/GameView$doSendSocketMsgTask;)V
    .locals 0

    .prologue
    .line 5975
    invoke-direct {p0, p1}, Lcom/findit/battle/GameView$doSendSocketMsgTask;-><init>(Lcom/findit/battle/GameView;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/findit/battle/GameView$doSendSocketMsgTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5983
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 5994
    :cond_0
    :goto_0
    return-object v4

    .line 5987
    :cond_1
    aget-object v0, p1, v3

    .line 5989
    .local v0, "strMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/findit/battle/GameView$doSendSocketMsgTask;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v1, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->sendSocketMsg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5990
    iget-object v1, p0, Lcom/findit/battle/GameView$doSendSocketMsgTask;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/findit/battle/GameActivity;

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 5991
    iget-object v1, p0, Lcom/findit/battle/GameView$doSendSocketMsgTask;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Network disconnected, try again!"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
