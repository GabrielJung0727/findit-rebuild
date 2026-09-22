.class Lcom/findit/battle/InventoryActivity_T$16;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_T;->createShopSlots(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_T;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$16;->this$0:Lcom/findit/battle/InventoryActivity_T;

    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1456
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1457
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1459
    .local v1, "slotnum":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$16;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2, v0, v1}, Lcom/findit/battle/InventoryActivity_T;->access$45(Lcom/findit/battle/InventoryActivity_T;Landroid/widget/RelativeLayout;I)V

    .line 1460
    return-void
.end method
