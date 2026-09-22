.class Lcom/findit/battle/InventoryActivity_SAMSUNG$4;
.super Landroid/os/Handler;
.source "InventoryActivity_SAMSUNG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 3161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x7f09000b

    .line 3163
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 3165
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "result"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 3166
    .local v4, "value":Z
    if-eqz v4, :cond_0

    .line 3167
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$4(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 3169
    .local v2, "jsonobject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3170
    .local v3, "result":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 3171
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-virtual {v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f09000b

    const-string v8, "[0]"

    invoke-virtual {v5, v6, v7, v8}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    .line 3185
    .end local v2    # "jsonobject":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3173
    .restart local v2    # "jsonobject":Lorg/json/JSONObject;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mCoinResultHandler result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 3174
    const-string v5, "000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3175
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "tag_string"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3176
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3177
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$9(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3181
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3182
    .local v1, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$4;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-virtual {v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "[1]"

    invoke-virtual {v5, v6, v9, v7}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method
