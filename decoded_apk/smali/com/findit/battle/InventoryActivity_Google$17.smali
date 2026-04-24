.class Lcom/findit/battle/InventoryActivity_Google$17;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 1495
    const-string v4, ">> ShopBuyButton::onClick()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1496
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;

    move-result-object v1

    .line 1497
    .local v1, "items":Lcom/findit/battle/Items;
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$39(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v3

    .line 1498
    .local v3, "type":I
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$50(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v2

    .line 1499
    .local v2, "suptype":I
    if-le v3, v5, :cond_0

    if-le v2, v5, :cond_0

    .line 1500
    iget-object v4, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 1501
    iget-object v4, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v4, v2

    .line 1502
    .local v0, "item":Lcom/findit/battle/Items$Item;
    if-eqz v0, :cond_0

    .line 1503
    iget v4, v0, Lcom/findit/battle/Items$Item;->mMoney:I

    if-lez v4, :cond_1

    .line 1505
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Lcom/findit/battle/InventoryActivity_Google;->access$51(Lcom/findit/battle/InventoryActivity_Google;IIZ)V

    .line 1506
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$52(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1516
    .end local v0    # "item":Lcom/findit/battle/Items$Item;
    :cond_0
    :goto_0
    return-void

    .line 1510
    .restart local v0    # "item":Lcom/findit/battle/Items$Item;
    :cond_1
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    const/4 v5, 0x1

    invoke-static {v4, v3, v2, v5}, Lcom/findit/battle/InventoryActivity_Google;->access$51(Lcom/findit/battle/InventoryActivity_Google;IIZ)V

    .line 1511
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$17;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$52(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
