.class Lcom/findit/battle/InventoryActivity_Google$18;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1524
    const-string v0, ">> ShopBackButton::onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1525
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1526
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v0

    aget-object v0, v0, v3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1528
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v1}, Lcom/findit/battle/InventoryActivity_Google;->access$6(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/view/animation/Animation;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1529
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v1}, Lcom/findit/battle/InventoryActivity_Google;->access$6(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/view/animation/Animation;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1531
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$18;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-virtual {v0, v2}, Lcom/findit/battle/InventoryActivity_Google;->playSound(I)V

    .line 1532
    return-void
.end method
