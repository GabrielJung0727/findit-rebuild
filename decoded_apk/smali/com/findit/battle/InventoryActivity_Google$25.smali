.class Lcom/findit/battle/InventoryActivity_Google$25;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Google;->createDeleteItemDlg()V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$25;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 2328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 2332
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$25;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$62(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2333
    .local v2, "tag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2334
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2336
    .local v0, "index":I
    if-le v0, v4, :cond_0

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$25;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;

    move-result-object v3

    iget v3, v3, Lcom/findit/battle/Items;->mItemTotalnum:I

    if-ge v0, v3, :cond_0

    .line 2337
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$25;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 2338
    .local v1, "slotnum":I
    if-le v1, v4, :cond_0

    .line 2339
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$25;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3, v1, v4}, Lcom/findit/battle/InventoryActivity_Google;->access$63(Lcom/findit/battle/InventoryActivity_Google;II)V

    .line 2340
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$25;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/findit/battle/Items;->destroyItem(I)V

    .line 2345
    .end local v0    # "index":I
    .end local v1    # "slotnum":I
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$25;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$27(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 2346
    return-void
.end method
