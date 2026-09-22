.class Lcom/findit/battle/InventoryActivity_Olleh$10;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Olleh;->createItemSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1314
    const-string v0, ">> slotlayout::onTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 1316
    .local v1, "touchx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 1320
    .local v2, "touchy":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1321
    .local v12, "slotnum":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1361
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1323
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    .line 1324
    .local v5, "index":I
    const/4 v0, -0x1

    if-le v5, v0, :cond_1

    .line 1325
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardX(I)I

    move-result v6

    add-int v3, v0, v6

    .line 1326
    .local v3, "x":I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardY(I)I

    move-result v6

    add-int v4, v0, v6

    .line 1327
    .local v4, "y":I
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->move(IIII)V

    .line 1328
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$24(Lcom/findit/battle/InventoryActivity_Olleh;IZ)V

    .line 1331
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$25(Lcom/findit/battle/InventoryActivity_Olleh;IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1332
    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardX(I)I

    move-result v9

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardY(I)I

    move-result v10

    move v7, v1

    move v8, v2

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/findit/battle/InventoryActivity_Olleh;->access$28(Lcom/findit/battle/InventoryActivity_Olleh;IIIII)V

    .line 1335
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->fadeView()V

    .line 1337
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->access$29(Lcom/findit/battle/InventoryActivity_Olleh;IIII)V

    goto :goto_0

    .line 1341
    .end local v5    # "index":I
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$30(Lcom/findit/battle/InventoryActivity_Olleh;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    .line 1345
    .restart local v5    # "index":I
    const/4 v0, -0x1

    if-le v5, v0, :cond_2

    .line 1346
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->move(IIII)V

    .line 1347
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->appearView()V

    .line 1348
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$24(Lcom/findit/battle/InventoryActivity_Olleh;IZ)V

    .line 1351
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v8, v9}, Lcom/findit/battle/InventoryActivity_Olleh;->access$29(Lcom/findit/battle/InventoryActivity_Olleh;IIII)V

    goto/16 :goto_0

    .line 1355
    .end local v5    # "index":I
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$4(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/Items;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/findit/battle/Items;->getIndex(I)I

    move-result v6

    invoke-static {v0, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$35(Lcom/findit/battle/InventoryActivity_Olleh;I)V

    .line 1357
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget-object v6, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardX(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v7

    iget-object v8, p0, Lcom/findit/battle/InventoryActivity_Olleh$10;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v8}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->getTileStandardY(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0, v1, v2, v6, v7}, Lcom/findit/battle/InventoryActivity_Olleh;->access$29(Lcom/findit/battle/InventoryActivity_Olleh;IIII)V

    goto/16 :goto_0

    .line 1321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
