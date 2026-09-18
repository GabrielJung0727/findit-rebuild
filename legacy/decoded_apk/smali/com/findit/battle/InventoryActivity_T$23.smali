.class Lcom/findit/battle/InventoryActivity_T$23;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_T;->createSkillSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$23;->this$0:Lcom/findit/battle/InventoryActivity_T;

    .line 1631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$23;->this$0:Lcom/findit/battle/InventoryActivity_T;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T$23;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v1}, Lcom/findit/battle/InventoryActivity_T;->access$59(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/findit/battle/InventoryActivity_T;->access$60(Lcom/findit/battle/InventoryActivity_T;I)V

    .line 1635
    return-void
.end method
