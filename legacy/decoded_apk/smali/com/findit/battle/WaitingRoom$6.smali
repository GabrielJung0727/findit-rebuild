.class Lcom/findit/battle/WaitingRoom$6;
.super Ljava/lang/Object;
.source "WaitingRoom.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/WaitingRoom;->makeButtonOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/WaitingRoom;


# direct methods
.method constructor <init>(Lcom/findit/battle/WaitingRoom;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$6;->this$0:Lcom/findit/battle/WaitingRoom;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 361
    const-string v0, ">> onTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$6;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom;->access$3(Lcom/findit/battle/WaitingRoom;)I

    move-result v6

    .line 363
    .local v6, "size":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    :goto_0
    :pswitch_0
    return v2

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$6;->this$0:Lcom/findit/battle/WaitingRoom;

    neg-int v3, v6

    neg-int v5, v6

    move-object v1, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/WaitingRoom;->access$4(Lcom/findit/battle/WaitingRoom;Landroid/view/View;IIII)V

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$6;->this$0:Lcom/findit/battle/WaitingRoom;

    move-object v1, p1

    move v3, v6

    move v4, v2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/WaitingRoom;->access$4(Lcom/findit/battle/WaitingRoom;Landroid/view/View;IIII)V

    goto :goto_0

    .line 373
    :pswitch_3
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$6;->this$0:Lcom/findit/battle/WaitingRoom;

    neg-int v3, v6

    neg-int v5, v6

    move-object v1, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/WaitingRoom;->access$4(Lcom/findit/battle/WaitingRoom;Landroid/view/View;IIII)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
