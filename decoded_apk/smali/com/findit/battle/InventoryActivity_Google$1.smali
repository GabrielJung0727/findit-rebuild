.class Lcom/findit/battle/InventoryActivity_Google$1;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Lcom/kt/olleh/inapp/OnInAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Google;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Google;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$1;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 2989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 3007
    const-string v0, ">> OnError()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3008
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$1;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Google;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3010
    return-void
.end method

.method public OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V
    .locals 1
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/kt/olleh/inapp/net/Response;

    .prologue
    .line 3001
    const-string v0, ">> OnResultAPI()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3003
    return-void
.end method

.method public OnResultFileURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 3017
    return-void
.end method

.method public OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3013
    const-string v0, ">> OnResultOLDAPI()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3014
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$1;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Google;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3015
    return-void
.end method

.method public OnResultPurchase(Ljava/lang/String;)V
    .locals 3
    .param p1, "tr_id"    # Ljava/lang/String;

    .prologue
    .line 2993
    const-string v0, ">> OnResultPurchase()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2994
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google$1;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$1;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$0(Lcom/findit/battle/InventoryActivity_Google;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/findit/battle/Items$Item;

    invoke-static {v1, v0}, Lcom/findit/battle/InventoryActivity_Google;->access$1(Lcom/findit/battle/InventoryActivity_Google;Lcom/findit/battle/Items$Item;)V

    .line 2996
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$1;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Google;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\uacb0\uc81c \uc644\ub8cc"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2997
    return-void
.end method

.method public OnResultPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 3022
    return-void
.end method
