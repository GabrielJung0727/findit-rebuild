.class Lcom/findit/battle/InventoryActivity_Olleh$4;
.super Landroid/os/Handler;
.source "InventoryActivity_Olleh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Olleh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Olleh;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 3484
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f09000b

    .line 3486
    const-string v5, ">> mCoinResultHandler::handleMessage()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3487
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 3489
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3490
    .local v4, "value":Z
    if-eqz v4, :cond_0

    .line 3491
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$3(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 3493
    .local v2, "jsonobject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3494
    .local v3, "result":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 3495
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const v7, 0x7f09000b

    const-string v8, "[0]"

    invoke-virtual {v5, v6, v7, v8}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    .line 3509
    .end local v2    # "jsonobject":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3498
    .restart local v2    # "jsonobject":Lorg/json/JSONObject;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    const-string v5, "000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3499
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "tag_string"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3500
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3501
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$8(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3505
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3506
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$4;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-virtual {v6}, Lcom/findit/battle/InventoryActivity_Olleh;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "[1]"

    invoke-virtual {v5, v6, v9, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
