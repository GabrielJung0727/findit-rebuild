.class Lcom/findit/battle/InventoryActivity_Olleh$3;
.super Landroid/os/Handler;
.source "InventoryActivity_Olleh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Olleh;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 3441
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v10, 0x7f090010

    .line 3443
    const-string v7, ">> mLearnResultHandler::handleMessage()"

    invoke-static {v7}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3444
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 3446
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "result"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 3447
    .local v6, "value":Z
    if-eqz v6, :cond_1

    .line 3448
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$3(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 3449
    .local v4, "jsonobject":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 3451
    :try_start_0
    const-string v7, "result"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3453
    .local v5, "result":Ljava/lang/String;
    const-string v7, "000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3455
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "tag_string"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3456
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3457
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3459
    .local v3, "index":I
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$11(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/widget/RelativeLayout;

    move-result-object v7

    aget-object v7, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3460
    .local v2, "imageview":Landroid/widget/ImageView;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3461
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$6(Lcom/findit/battle/InventoryActivity_Olleh;)[Landroid/view/animation/Animation;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3463
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;

    move-result-object v7

    iget-object v7, v7, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v7, v7, v3

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 3464
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;

    move-result-object v7

    iget-object v7, v7, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v7, v7, v3

    const/4 v8, -0x1

    iput v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 3465
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;

    move-result-object v7

    iget-object v7, v7, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_Olleh;->access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;

    move-result-object v8

    invoke-virtual {v8}, Lcom/findit/battle/Objects$Skills;->getEmptySlotNum()I

    move-result v8

    iput v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 3466
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$13(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v8

    iget-object v9, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v9}, Lcom/findit/battle/InventoryActivity_Olleh;->access$12(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Objects$Skills;

    move-result-object v9

    iget-object v9, v9, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v9, v9, v3

    iget v9, v9, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->access$14(Lcom/findit/battle/InventoryActivity_Olleh;I)V

    .line 3467
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$15(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v9}, Lcom/findit/battle/InventoryActivity_Olleh;->access$13(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3469
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7, v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$16(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3480
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "imageview":Landroid/widget/ImageView;
    .end local v3    # "index":I
    .end local v4    # "jsonobject":Lorg/json/JSONObject;
    .end local v5    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3473
    .restart local v4    # "jsonobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 3474
    .local v1, "e":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-virtual {v8}, Lcom/findit/battle/InventoryActivity_Olleh;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "[1]"

    invoke-virtual {v7, v8, v10, v9}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 3479
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "jsonobject":Lorg/json/JSONObject;
    :cond_1
    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$3;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$2(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/CommonDialog;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0
.end method
