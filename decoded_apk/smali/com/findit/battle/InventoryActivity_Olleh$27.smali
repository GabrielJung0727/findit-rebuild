.class Lcom/findit/battle/InventoryActivity_Olleh$27;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Olleh;->createBuyItemDlg()V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 2602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2605
    const-string v7, ">> YesButton::onClick()"

    invoke-static {v7}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2607
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$64(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2608
    .local v4, "tag":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2609
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2610
    .local v0, "data":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2611
    .local v5, "type":I
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2612
    .local v3, "subtype":I
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;

    move-result-object v7

    iget-object v7, v7, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v6, v7, v3

    .line 2614
    .local v6, "typeitem":Lcom/findit/battle/Items$Item;
    iget v7, v6, Lcom/findit/battle/Items$Item;->mMoney:I

    if-lez v7, :cond_1

    .line 2616
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$65(Lcom/findit/battle/InventoryActivity_Olleh;Lcom/findit/battle/Items$Item;)V

    .line 2658
    .end local v0    # "data":[Ljava/lang/String;
    .end local v3    # "subtype":I
    .end local v5    # "type":I
    .end local v6    # "typeitem":Lcom/findit/battle/Items$Item;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$52(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->cancel()V

    .line 2659
    return-void

    .line 2621
    .restart local v0    # "data":[Ljava/lang/String;
    .restart local v3    # "subtype":I
    .restart local v5    # "type":I
    .restart local v6    # "typeitem":Lcom/findit/battle/Items$Item;
    :cond_1
    iget v7, v6, Lcom/findit/battle/Items$Item;->mPrice:I

    int-to-long v7, v7

    iget-object v9, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v9}, Lcom/findit/battle/InventoryActivity_Olleh;->access$66(Lcom/findit/battle/InventoryActivity_Olleh;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 2622
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v7

    const v8, 0x7f090046

    invoke-virtual {v7, v8}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 2627
    :cond_2
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$5(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/widget/RelativeLayout;

    move-result-object v7

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2628
    .local v1, "imageview":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$6(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/view/animation/Animation;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2630
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Lcom/findit/battle/Items;->checkOverlap(II)Lcom/findit/battle/Items$Item;

    move-result-object v2

    .line 2631
    .local v2, "item":Lcom/findit/battle/Items$Item;
    if-nez v2, :cond_5

    .line 2633
    const/4 v7, 0x5

    if-ne v5, v7, :cond_4

    .line 2634
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;

    move-result-object v7

    iget-object v7, v7, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    iget v8, v6, Lcom/findit/battle/Items$Item;->mPower:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_3

    .line 2635
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v7

    const v8, 0x7f090047

    invoke-virtual {v7, v8}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 2637
    :cond_3
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;

    move-result-object v7

    iget-object v7, v7, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    iget v8, v6, Lcom/findit/battle/Items$Item;->mPower:I

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 2638
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget v8, v6, Lcom/findit/battle/Items$Item;->mPrice:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->sendSpendCoin(J)V

    goto :goto_0

    .line 2642
    :cond_4
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$67(Lcom/findit/battle/InventoryActivity_Olleh;Lcom/findit/battle/Items$Item;)V

    goto/16 :goto_0

    .line 2645
    :cond_5
    const/4 v7, 0x2

    if-eq v5, v7, :cond_6

    const/4 v7, 0x3

    if-ne v5, v7, :cond_7

    .line 2647
    :cond_6
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$67(Lcom/findit/battle/InventoryActivity_Olleh;Lcom/findit/battle/Items$Item;)V

    goto/16 :goto_0

    .line 2651
    :cond_7
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$27;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v7

    const v8, 0x7f090047

    invoke-virtual {v7, v8}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_0
.end method
