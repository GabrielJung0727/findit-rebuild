.class Lcom/findit/battle/InventoryActivity_SAMSUNG$29;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createLearnSkillDlg()V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 2521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2525
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$69(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2526
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2527
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2528
    .local v0, "index":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$14(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$13(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Objects$Skills;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    if-lt v2, v3, :cond_1

    .line 2541
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2, v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$70(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 2547
    .end local v0    # "index":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$62(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 2548
    return-void

    .line 2544
    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$29;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v2

    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0
.end method
