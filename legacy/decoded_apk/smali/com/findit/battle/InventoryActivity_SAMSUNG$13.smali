.class Lcom/findit/battle/InventoryActivity_SAMSUNG$13;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createShopSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 1331
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

    .line 1335
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1337
    .local v1, "slotnum":I
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$39(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v5

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1338
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$39(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1340
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$39(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$7(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/view/animation/Animation;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1341
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$39(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;

    move-result-object v3

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$7(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/view/animation/Animation;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1344
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$40(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v4

    aget-object v3, v3, v4

    iget v2, v3, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 1345
    .local v2, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1348
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$42(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v3, v3, v1

    iget v2, v3, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 1352
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    .line 1355
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-virtual {v3, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->playSound(I)V

    .line 1358
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$44(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 1360
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$6(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v3, v4, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$45(Lcom/findit/battle/InventoryActivity_SAMSUNG;Landroid/widget/RelativeLayout;I)V

    .line 1361
    return-void

    .line 1346
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$41(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 1345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1353
    :cond_1
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$13;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3, v1, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$43(Lcom/findit/battle/InventoryActivity_SAMSUNG;II)V

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
