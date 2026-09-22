.class Lcom/findit/battle/JoinActivity$2;
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
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    .line 529
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v8, 0x7f09000a

    .line 531
    const-string v4, ">> handleMessage()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 532
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 534
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "result"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 535
    .local v3, "value":Z
    if-eqz v3, :cond_4

    .line 536
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$1(Lcom/findit/battle/JoinActivity;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 538
    .local v1, "jsonobject":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "result"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "result":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 540
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    const v6, 0x7f09000a

    const-string v7, "[0]"

    invoke-virtual {v4, v5, v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    .line 560
    .end local v1    # "jsonobject":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 542
    .restart local v1    # "jsonobject":Lorg/json/JSONObject;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 543
    const-string v4, "000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 544
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v4

    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    const-string v6, "[1]"

    invoke-virtual {v4, v5, v8, v6}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 546
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "901"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 547
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v4

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 549
    :cond_3
    const-string v4, "999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 550
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    const v6, 0x7f09000a

    const-string v7, "[2]"

    invoke-virtual {v4, v5, v6, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 559
    .end local v1    # "jsonobject":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$2;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0
.end method
