.class Lcom/findit/battle/InventoryActivity_SAMSUNG$9;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createItemSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1179
    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1180
    .local v0, "layout":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1181
    .local v1, "slotnum":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$32(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1183
    const v2, 0x7f0201bb

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1186
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$33(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$32(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v3

    aget-object v2, v2, v3

    const v3, 0x7f0201b8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1187
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$34(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 1190
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$9;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$35(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V

    .line 1192
    :cond_0
    return-void
.end method
