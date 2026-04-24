.class Lcom/findit/battle/InventoryActivity_Google$15;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Google;->createShopSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$15;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1409
    const-string v0, ">> ShopBreakdownButton::onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$15;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$45(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$15;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$46(Lcom/findit/battle/InventoryActivity_Google;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$15;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$47(Lcom/findit/battle/InventoryActivity_Google;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$15;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$48(Lcom/findit/battle/InventoryActivity_Google;)V

    .line 1413
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$15;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$49(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1414
    return-void
.end method
