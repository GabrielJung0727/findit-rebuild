.class Lcom/findit/battle/InventoryActivity_T$24;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$24;->this$0:Lcom/findit/battle/InventoryActivity_T;

    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1642
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$24;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$56(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v0

    .line 1643
    .local v0, "index":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 1644
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$24;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$13(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/Objects$Skills;

    move-result-object v2

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v2, v0

    .line 1645
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_0

    .line 1646
    iget-boolean v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v2, :cond_1

    .line 1647
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$24;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$3(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/CommonDialog;

    move-result-object v2

    const v3, 0x7f09004d

    invoke-virtual {v2, v3}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 1654
    .end local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_0
    :goto_0
    return-void

    .line 1649
    .restart local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$24;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2, v0}, Lcom/findit/battle/InventoryActivity_T;->access$61(Lcom/findit/battle/InventoryActivity_T;I)V

    .line 1650
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$24;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$62(Lcom/findit/battle/InventoryActivity_T;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
