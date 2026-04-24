.class Lcom/findit/battle/InventoryActivity_SAMSUNG$25;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createDeleteItemDlg()V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 2386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, -0x1

    .line 2390
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$63(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2391
    .local v2, "tag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2392
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2393
    .local v0, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createDeleteItemDlg mMoveItemView.mIndex: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2394
    if-le v0, v5, :cond_0

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v3

    iget v3, v3, Lcom/findit/battle/Items;->mItemTotalnum:I

    if-ge v0, v3, :cond_0

    .line 2395
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 2396
    .local v1, "slotnum":I
    if-le v1, v5, :cond_0

    .line 2397
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3, v1, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$64(Lcom/findit/battle/InventoryActivity_SAMSUNG;II)V

    .line 2398
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/findit/battle/Items;->destroyItem(I)V

    .line 2403
    .end local v0    # "index":I
    .end local v1    # "slotnum":I
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$25;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$28(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 2404
    return-void
.end method
