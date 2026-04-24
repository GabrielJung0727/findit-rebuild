.class Lcom/findit/battle/InventoryActivity_Olleh$19;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Olleh;->createShopSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$19;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1648
    const-string v0, ">> ShopSlotPreButton::onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$19;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh$19;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v1}, Lcom/findit/battle/InventoryActivity_Olleh;->access$53(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/findit/battle/InventoryActivity_Olleh;->access$54(Lcom/findit/battle/InventoryActivity_Olleh;I)V

    .line 1650
    return-void
.end method
