.class Lcom/findit/battle/InventoryActivity_Google$10;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Google;->createItemSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1205
    const-string v0, ">> slotlayout::onTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 1207
    .local v1, "touchx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 1211
    .local v2, "touchy":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1212
    .local v12, "slotnum":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1252
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1214
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    .line 1215
    .local v5, "index":I
    const/4 v0, -0x1

    if-le v5, v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$22(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardX(I)I

    move-result v6

    add-int v3, v0, v6

    .line 1217
    .local v3, "x":I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$23(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardY(I)I

    move-result v6

    add-int v4, v0, v6

    .line 1218
    .local v4, "y":I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->move(IIII)V

    .line 1219
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_Google;->access$24(Lcom/findit/battle/InventoryActivity_Google;IZ)V

    .line 1222
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Google;->access$25(Lcom/findit/battle/InventoryActivity_Google;IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1223
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardX(I)I

    move-result v9

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardY(I)I

    move-result v10

    move v7, v1

    move v8, v2

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/findit/battle/InventoryActivity_Google;->access$28(Lcom/findit/battle/InventoryActivity_Google;IIIII)V

    .line 1226
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->fadeView()V

    .line 1228
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/findit/battle/InventoryActivity_Google;->access$29(Lcom/findit/battle/InventoryActivity_Google;IIII)V

    goto :goto_0

    .line 1232
    .end local v5    # "index":I
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Google;->access$22(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Google;->access$23(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_Google;->access$30(Lcom/findit/battle/InventoryActivity_Google;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    .line 1236
    .restart local v5    # "index":I
    const/4 v0, -0x1

    if-le v5, v0, :cond_2

    .line 1237
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Google;->access$22(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Google;->access$23(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->move(IIII)V

    .line 1238
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->appearView()V

    .line 1239
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_Google;->access$24(Lcom/findit/battle/InventoryActivity_Google;IZ)V

    .line 1242
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/findit/battle/InventoryActivity_Google;->access$29(Lcom/findit/battle/InventoryActivity_Google;IIII)V

    goto/16 :goto_0

    .line 1246
    .end local v5    # "index":I
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Google;->access$4(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/Items;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v6

    invoke-static {v0, v6}, Lcom/findit/battle/InventoryActivity_Google;->access$35(Lcom/findit/battle/InventoryActivity_Google;I)V

    .line 1248
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Google;->access$22(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Google;->access$23(Lcom/findit/battle/InventoryActivity_Google;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Google$10;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_Google;->access$21(Lcom/findit/battle/InventoryActivity_Google;)Lcom/findit/battle/InventoryActivity_Google$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_Google$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_Google;->access$29(Lcom/findit/battle/InventoryActivity_Google;IIII)V

    goto/16 :goto_0

    .line 1212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
