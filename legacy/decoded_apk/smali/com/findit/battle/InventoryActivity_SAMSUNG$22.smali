.class Lcom/findit/battle/InventoryActivity_SAMSUNG$22;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createSkillSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$22;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$22;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$22;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$59(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$60(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 1622
    return-void
.end method
