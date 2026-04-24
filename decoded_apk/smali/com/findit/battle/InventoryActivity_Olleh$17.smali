.class Lcom/findit/battle/InventoryActivity_Olleh$17;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Olleh;->createShopSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 1600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 1604
    const-string v4, ">> ShopBuyButton::onClick()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1605
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;

    move-result-object v1

    .line 1606
    .local v1, "items":Lcom/findit/battle/Items;
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$39(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v3

    .line 1607
    .local v3, "type":I
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$50(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v2

    .line 1608
    .local v2, "suptype":I
    if-le v3, v5, :cond_0

    if-le v2, v5, :cond_0

    .line 1609
    iget-object v4, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 1610
    iget-object v4, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v4, v2

    .line 1611
    .local v0, "item":Lcom/findit/battle/Items$Item;
    if-eqz v0, :cond_0

    .line 1612
    iget v4, v0, Lcom/findit/battle/Items$Item;->mMoney:I

    if-lez v4, :cond_1

    .line 1614
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$51(Lcom/findit/battle/InventoryActivity_Olleh;IIZ)V

    .line 1615
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$52(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1625
    .end local v0    # "item":Lcom/findit/battle/Items$Item;
    :cond_0
    :goto_0
    return-void

    .line 1619
    .restart local v0    # "item":Lcom/findit/battle/Items$Item;
    :cond_1
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const/4 v5, 0x1

    invoke-static {v4, v3, v2, v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$51(Lcom/findit/battle/InventoryActivity_Olleh;IIZ)V

    .line 1620
    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$17;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$52(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
