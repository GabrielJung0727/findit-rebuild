.class Lcom/findit/battle/InventoryActivity_SAMSUNG$24;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1637
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$56(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v0

    .line 1638
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1639
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$13(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Objects$Skills;

    move-result-object v2

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v2, v0

    .line 1640
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_0

    .line 1641
    iget-boolean v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v2, :cond_1

    .line 1642
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v2

    const v3, 0x7f09004d

    invoke-virtual {v2, v3}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 1649
    .end local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_0
    :goto_0
    return-void

    .line 1644
    .restart local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$61(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 1645
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$24;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$62(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
