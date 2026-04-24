.class Lcom/findit/battle/InventoryActivity_Google$24;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$24;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1658
    const-string v2, ">> SkillLearnButton::onClick()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1659
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$24;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$55(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v0

    .line 1660
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1661
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$24;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$12(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Objects$Skills;

    move-result-object v2

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v2, v0

    .line 1662
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_0

    .line 1663
    iget-boolean v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v2, :cond_1

    .line 1664
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$24;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$2(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/CommonDialog;

    move-result-object v2

    const v3, 0x7f09004d

    invoke-virtual {v2, v3}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 1671
    .end local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_0
    :goto_0
    return-void

    .line 1666
    .restart local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$24;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2, v0}, Lcom/findit/battle/InventoryActivity_Google;->access$60(Lcom/findit/battle/InventoryActivity_Google;I)V

    .line 1667
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$24;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_Google;->access$61(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
