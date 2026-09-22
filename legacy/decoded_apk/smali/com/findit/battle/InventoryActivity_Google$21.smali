.class Lcom/findit/battle/InventoryActivity_Google$21;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Google;->createSkillSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$21;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1600
    const-string v2, ">> slotlayout::onClick()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    move-object v0, p1

    .line 1601
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1602
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1603
    .local v1, "slotnum":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$21;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$55(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1605
    const v2, 0x7f0201bb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1608
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$21;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$11(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$21;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$55(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v3

    aget-object v2, v2, v3

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1609
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$21;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2, v1}, Lcom/findit/battle/InventoryActivity_Google;->access$56(Lcom/findit/battle/InventoryActivity_Google;I)V

    .line 1612
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$21;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$57(Lcom/findit/battle/InventoryActivity_Google;)V

    .line 1614
    :cond_0
    return-void
.end method
