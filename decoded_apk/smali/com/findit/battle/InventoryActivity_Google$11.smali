.class Lcom/findit/battle/InventoryActivity_Google$11;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Google;->createItemSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$11;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1291
    const-string v0, ">> SlotPreButton::setOnClickListener()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$11;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google$11;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v1}, Lcom/findit/battle/InventoryActivity_Google;->access$36(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->access$37(Lcom/findit/battle/InventoryActivity_Google;I)V

    .line 1293
    return-void
.end method
