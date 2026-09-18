.class Lcom/findit/battle/InventoryActivity_T$29;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_T;->createLearnSkillDlg()V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$29;->this$0:Lcom/findit/battle/InventoryActivity_T;

    .line 2526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2530
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$29;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$69(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2531
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2532
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2533
    .local v0, "index":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$29;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$14(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v2

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_T$29;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_T;->access$13(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/Objects$Skills;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    if-lt v2, v3, :cond_1

    .line 2546
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$29;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2, v0}, Lcom/findit/battle/InventoryActivity_T;->access$70(Lcom/findit/battle/InventoryActivity_T;I)V

    .line 2552
    .end local v0    # "index":I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$29;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$62(Lcom/findit/battle/InventoryActivity_T;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 2553
    return-void

    .line 2549
    .restart local v0    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$29;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$3(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/CommonDialog;

    move-result-object v2

    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0
.end method
