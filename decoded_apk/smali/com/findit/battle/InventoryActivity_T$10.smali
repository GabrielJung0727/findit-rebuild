.class Lcom/findit/battle/InventoryActivity_T$10;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_T;->createItemSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1203
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 1204
    .local v1, "touchx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 1205
    .local v2, "touchy":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "slotlayout x: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", y: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1209
    .local v12, "slotnum":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1251
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1211
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_T$MoveView;->mIndex:I

    .line 1212
    .local v5, "index":I
    const/4 v0, -0x1

    if-le v5, v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$23(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardX(I)I

    move-result v6

    add-int v3, v0, v6

    .line 1214
    .local v3, "x":I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$24(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardY(I)I

    move-result v6

    add-int v4, v0, v6

    .line 1215
    .local v4, "y":I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_T$MoveView;->move(IIII)V

    .line 1216
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_T;->access$25(Lcom/findit/battle/InventoryActivity_T;IZ)V

    .line 1219
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_T;->access$26(Lcom/findit/battle/InventoryActivity_T;IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1220
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardX(I)I

    move-result v9

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardY(I)I

    move-result v10

    move v7, v1

    move v8, v2

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/findit/battle/InventoryActivity_T;->access$29(Lcom/findit/battle/InventoryActivity_T;IIIII)V

    .line 1223
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_T$MoveView;->fadeView()V

    .line 1225
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->access$30(Lcom/findit/battle/InventoryActivity_T;IIII)V

    .line 1226
    const-string v0, "slotlayout MotionEvent.ACTION_UP"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1230
    .end local v5    # "index":I
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_T;->access$23(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_T;->access$24(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_T;->access$31(Lcom/findit/battle/InventoryActivity_T;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_T$MoveView;->mIndex:I

    .line 1234
    .restart local v5    # "index":I
    const/4 v0, -0x1

    if-le v5, v0, :cond_2

    .line 1235
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_T;->access$23(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_T;->access$24(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_T$MoveView;->move(IIII)V

    .line 1236
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_T$MoveView;->appearView()V

    .line 1237
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_T;->access$25(Lcom/findit/battle/InventoryActivity_T;IZ)V

    .line 1240
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/findit/battle/InventoryActivity_T;->access$30(Lcom/findit/battle/InventoryActivity_T;IIII)V

    .line 1241
    const-string v0, "slotlayout MotionEvent.ACTION_MOVE"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1245
    .end local v5    # "index":I
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_T;->access$5(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/Items;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v6

    invoke-static {v0, v6}, Lcom/findit/battle/InventoryActivity_T;->access$36(Lcom/findit/battle/InventoryActivity_T;I)V

    .line 1247
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_T;->access$23(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_T;->access$24(Lcom/findit/battle/InventoryActivity_T;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_T$10;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_T;->access$22(Lcom/findit/battle/InventoryActivity_T;)Lcom/findit/battle/InventoryActivity_T$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_T$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_T;->access$30(Lcom/findit/battle/InventoryActivity_T;IIII)V

    goto/16 :goto_0

    .line 1209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
