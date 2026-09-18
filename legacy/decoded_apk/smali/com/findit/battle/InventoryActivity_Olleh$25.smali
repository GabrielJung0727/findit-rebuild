.class Lcom/findit/battle/InventoryActivity_Olleh$25;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Olleh;->createDeleteItemDlg()V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$25;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 2552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 2556
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$25;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$62(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2557
    .local v2, "tag":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2558
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2560
    .local v0, "index":I
    if-le v0, v4, :cond_0

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$25;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;

    move-result-object v3

    iget v3, v3, Lcom/findit/battle/Items;->mItemTotalnum:I

    if-ge v0, v3, :cond_0

    .line 2561
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$25;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 2562
    .local v1, "slotnum":I
    if-le v1, v4, :cond_0

    .line 2563
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$25;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3, v1, v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$63(Lcom/findit/battle/InventoryActivity_Olleh;II)V

    .line 2564
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$25;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/findit/battle/Items;->destroyItem(I)V

    .line 2569
    .end local v0    # "index":I
    .end local v1    # "slotnum":I
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$25;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$27(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 2570
    return-void
.end method
