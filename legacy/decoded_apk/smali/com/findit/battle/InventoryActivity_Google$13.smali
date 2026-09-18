.class Lcom/findit/battle/InventoryActivity_Google$13;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1344
    const-string v3, ">> slotlayout::onClick()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1347
    .local v1, "slotnum":I
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v5

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1348
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1350
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$6(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/view/animation/Animation;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1351
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$38(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$6(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/view/animation/Animation;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1354
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$39(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v4

    aget-object v3, v3, v4

    iget v2, v3, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 1355
    .local v2, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1358
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$41(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1361
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Google;->access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v3, v3, v1

    iget v2, v3, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 1362
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    .line 1365
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-virtual {v3, v5}, Lcom/findit/battle/InventoryActivity_Google;->playSound(I)V

    .line 1368
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3, v1}, Lcom/findit/battle/InventoryActivity_Google;->access$43(Lcom/findit/battle/InventoryActivity_Google;I)V

    .line 1370
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Google;->access$5(Lcom/findit/battle/InventoryActivity_Google;)[Landroid/widget/RelativeLayout;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v3, v4, v5}, Lcom/findit/battle/InventoryActivity_Google;->access$44(Lcom/findit/battle/InventoryActivity_Google;Landroid/widget/RelativeLayout;I)V

    .line 1371
    return-void

    .line 1356
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3, v0}, Lcom/findit/battle/InventoryActivity_Google;->access$40(Lcom/findit/battle/InventoryActivity_Google;I)V

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    :cond_1
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Google$13;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v3, v1, v0}, Lcom/findit/battle/InventoryActivity_Google;->access$42(Lcom/findit/battle/InventoryActivity_Google;II)V

    .line 1362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
