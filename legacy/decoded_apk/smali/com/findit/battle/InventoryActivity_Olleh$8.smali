.class Lcom/findit/battle/InventoryActivity_Olleh$8;
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
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 1211
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

    .line 1215
    const-string v0, ">> slotscrollview::onTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 1217
    .local v1, "touchx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 1221
    .local v2, "touchy":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1260
    :cond_0
    :goto_0
    return v8

    .line 1223
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    .line 1224
    .local v5, "index":I
    if-le v5, v7, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->move(IIII)V

    .line 1226
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0, v5, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$24(Lcom/findit/battle/InventoryActivity_Olleh;IZ)V

    .line 1229
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$25(Lcom/findit/battle/InventoryActivity_Olleh;IIIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1230
    if-gez v1, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0, v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$26(Lcom/findit/battle/InventoryActivity_Olleh;I)V

    .line 1232
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$27(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1238
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->fadeView()V

    .line 1240
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0, v7, v7, v6, v6}, Lcom/findit/battle/InventoryActivity_Olleh;->access$29(Lcom/findit/battle/InventoryActivity_Olleh;IIII)V

    goto :goto_0

    .line 1235
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    move v3, v6

    move v4, v6

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/InventoryActivity_Olleh;->access$28(Lcom/findit/battle/InventoryActivity_Olleh;IIIII)V

    goto :goto_1

    .line 1246
    .end local v5    # "index":I
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$30(Lcom/findit/battle/InventoryActivity_Olleh;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    iget v5, v0, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->mIndex:I

    .line 1250
    .restart local v5    # "index":I
    if-le v5, v7, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v3}, Lcom/findit/battle/InventoryActivity_Olleh;->access$22(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v3

    iget-object v4, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v4}, Lcom/findit/battle/InventoryActivity_Olleh;->access$23(Lcom/findit/battle/InventoryActivity_Olleh;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->move(IIII)V

    .line 1252
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$21(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/findit/battle/InventoryActivity_Olleh$MoveView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_Olleh$MoveView;->appearView()V

    .line 1253
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$8;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0, v5, v8}, Lcom/findit/battle/InventoryActivity_Olleh;->access$24(Lcom/findit/battle/InventoryActivity_Olleh;IZ)V

    goto/16 :goto_0

    .line 1221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
