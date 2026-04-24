.class Lcom/findit/battle/InventoryActivity_Google$22;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Google;->createSkillSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$22;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1640
    const-string v0, ">> SkillSlotPreButton::onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$22;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google$22;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v1}, Lcom/findit/battle/InventoryActivity_Google;->access$58(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/findit/battle/InventoryActivity_Google;->access$59(Lcom/findit/battle/InventoryActivity_Google;I)V

    .line 1642
    return-void
.end method
