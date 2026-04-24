.class Lcom/findit/battle/InventoryActivity_SAMSUNG$2;
.super Landroid/os/Handler;
.source "InventoryActivity_SAMSUNG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 3057
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3059
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 3061
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "result"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 3062
    .local v10, "value":Z
    if-eqz v10, :cond_5

    .line 3063
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$4(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 3064
    .local v5, "jsonobject":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 3066
    :try_start_0
    const-string v11, "result"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3067
    .local v6, "result":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mBuyResultHandler: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 3068
    const-string v11, "000"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3070
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "tag_string"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3071
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3072
    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3074
    .local v1, "datas":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3075
    .local v8, "type":I
    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3076
    .local v7, "subtype":I
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v11

    iget-object v11, v11, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v11, v11, v8

    iget-object v11, v11, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v9, v11, v7

    .line 3078
    .local v9, "typeitem":Lcom/findit/battle/Items$Item;
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$6(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/widget/RelativeLayout;

    move-result-object v11

    aget-object v11, v11, v7

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3079
    .local v3, "imageview":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$7(Lcom/findit/battle/InventoryActivity_SAMSUNG;)[Landroid/view/animation/Animation;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3081
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v11

    invoke-virtual {v11, v8, v7}, Lcom/findit/battle/Items;->checkOverlap(II)Lcom/findit/battle/Items$Item;

    move-result-object v4

    .line 3082
    .local v4, "item":Lcom/findit/battle/Items$Item;
    if-nez v4, :cond_1

    .line 3084
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$5(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/Items;

    move-result-object v11

    invoke-virtual {v11, v8, v7}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    move-result-object v4

    .line 3085
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$8(Lcom/findit/battle/InventoryActivity_SAMSUNG;Lcom/findit/battle/Items$Item;)Z

    .line 3086
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mBuyResultHandler: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v4, Lcom/findit/battle/Items$Item;->mType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/findit/battle/Items$Item;->mSubType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 3088
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    iget v12, v4, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-static {v11, v12}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$9(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 3115
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "datas":[Ljava/lang/String;
    .end local v3    # "imageview":Landroid/widget/ImageView;
    .end local v4    # "item":Lcom/findit/battle/Items$Item;
    .end local v5    # "jsonobject":Lorg/json/JSONObject;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "subtype":I
    .end local v8    # "type":I
    .end local v9    # "typeitem":Lcom/findit/battle/Items$Item;
    :cond_0
    :goto_0
    return-void

    .line 3092
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v1    # "datas":[Ljava/lang/String;
    .restart local v3    # "imageview":Landroid/widget/ImageView;
    .restart local v4    # "item":Lcom/findit/battle/Items$Item;
    .restart local v5    # "jsonobject":Lorg/json/JSONObject;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "subtype":I
    .restart local v8    # "type":I
    .restart local v9    # "typeitem":Lcom/findit/battle/Items$Item;
    :cond_1
    iget v11, v4, Lcom/findit/battle/Items$Item;->mNum:I

    iget v12, v9, Lcom/findit/battle/Items$Item;->mNum:I

    add-int/2addr v11, v12

    iput v11, v4, Lcom/findit/battle/Items$Item;->mNum:I

    .line 3093
    iget v11, v4, Lcom/findit/battle/Items$Item;->mNum:I

    const/16 v12, 0x63

    if-le v11, v12, :cond_2

    .line 3094
    const/16 v11, 0x63

    iput v11, v4, Lcom/findit/battle/Items$Item;->mNum:I

    .line 3096
    :cond_2
    iget-boolean v11, v4, Lcom/findit/battle/Items$Item;->mSet:Z

    if-eqz v11, :cond_4

    .line 3097
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11, v8, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$10(Lcom/findit/battle/InventoryActivity_SAMSUNG;ILcom/findit/battle/Items$Item;)I

    .line 3103
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    iget v12, v4, Lcom/findit/battle/Items$Item;->mPrice:I

    invoke-static {v11, v12}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$9(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3108
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "datas":[Ljava/lang/String;
    .end local v3    # "imageview":Landroid/widget/ImageView;
    .end local v4    # "item":Lcom/findit/battle/Items$Item;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "subtype":I
    .end local v8    # "type":I
    .end local v9    # "typeitem":Lcom/findit/battle/Items$Item;
    :catch_0
    move-exception v2

    .line 3109
    .local v2, "e":Lorg/json/JSONException;
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v11

    iget-object v12, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-virtual {v12}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090010

    const-string v14, "[1]"

    invoke-virtual {v11, v12, v13, v14}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 3099
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v1    # "datas":[Ljava/lang/String;
    .restart local v3    # "imageview":Landroid/widget/ImageView;
    .restart local v4    # "item":Lcom/findit/battle/Items$Item;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "subtype":I
    .restart local v8    # "type":I
    .restart local v9    # "typeitem":Lcom/findit/battle/Items$Item;
    :cond_4
    :try_start_1
    iget v11, v4, Lcom/findit/battle/Items$Item;->mSlotnum:I

    const/4 v12, -0x1

    if-le v11, v12, :cond_3

    .line 3100
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    iget v12, v4, Lcom/findit/battle/Items$Item;->mSlotnum:I

    invoke-static {v11, v12, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$11(Lcom/findit/battle/InventoryActivity_SAMSUNG;ILcom/findit/battle/Items$Item;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3114
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "datas":[Ljava/lang/String;
    .end local v3    # "imageview":Landroid/widget/ImageView;
    .end local v4    # "item":Lcom/findit/battle/Items$Item;
    .end local v5    # "jsonobject":Lorg/json/JSONObject;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "subtype":I
    .end local v8    # "type":I
    .end local v9    # "typeitem":Lcom/findit/battle/Items$Item;
    :cond_5
    iget-object v11, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$2;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v11}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$3(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/CommonDialog;

    move-result-object v11

    const v12, 0x7f090010

    invoke-virtual {v11, v12}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0
.end method
