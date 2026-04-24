.class Lcom/findit/battle/InventoryActivity_SAMSUNG$8;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createItemSlots(FF)V
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 1102
    .local v1, "touchx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 1106
    .local v2, "touchy":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1145
    :cond_0
    :goto_0
    return v8

    .line 1108
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$22(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 1109
    .local v5, "index":I
    if-le v5, v7, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$22(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    move-result-object v0

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$23(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$24(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->move(IIII)V

    .line 1111
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$25(Lcom/findit/battle/InventoryActivity_SAMSUNG;IZ)V

    .line 1114
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$23(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$24(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$26(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1115
    if-gez v1, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0, v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$27(Lcom/findit/battle/InventoryActivity_SAMSUNG;I)V

    .line 1117
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$28(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1123
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$22(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->fadeView()V

    .line 1125
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0, v7, v7, v6, v6}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$30(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIII)V

    goto :goto_0

    .line 1120
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    move v3, v6

    move v4, v6

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$29(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIIII)V

    goto :goto_1

    .line 1131
    .end local v5    # "index":I
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$23(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$24(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$31(Lcom/findit/battle/InventoryActivity_SAMSUNG;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$22(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 1135
    .restart local v5    # "index":I
    if-le v5, v7, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$22(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    move-result-object v0

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$23(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$24(Lcom/findit/battle/InventoryActivity_SAMSUNG;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->move(IIII)V

    .line 1137
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$22(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->appearView()V

    .line 1138
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$8;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0, v5, v8}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$25(Lcom/findit/battle/InventoryActivity_SAMSUNG;IZ)V

    goto/16 :goto_0

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
