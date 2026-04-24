.class Lcom/findit/battle/WaitingRoom$RoomAdapter$2;
.super Ljava/lang/Object;
.source "WaitingRoom.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/WaitingRoom$RoomAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;


# direct methods
.method constructor <init>(Lcom/findit/battle/WaitingRoom$RoomAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$2;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 500
    const-string v0, ">> onTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$2;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->access$0(Lcom/findit/battle/WaitingRoom$RoomAdapter;)Lcom/findit/battle/WaitingRoom;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom;->access$3(Lcom/findit/battle/WaitingRoom;)I

    move-result v6

    .line 502
    .local v6, "size":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_0
    :pswitch_0
    return v3

    .line 504
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$2;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->access$0(Lcom/findit/battle/WaitingRoom$RoomAdapter;)Lcom/findit/battle/WaitingRoom;

    move-result-object v0

    neg-int v2, v6

    neg-int v4, v6

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/WaitingRoom;->access$4(Lcom/findit/battle/WaitingRoom;Landroid/view/View;IIII)V

    goto :goto_0

    .line 508
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$2;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->access$0(Lcom/findit/battle/WaitingRoom$RoomAdapter;)Lcom/findit/battle/WaitingRoom;

    move-result-object v0

    move-object v1, p1

    move v2, v6

    move v4, v6

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/WaitingRoom;->access$4(Lcom/findit/battle/WaitingRoom;Landroid/view/View;IIII)V

    goto :goto_0

    .line 512
    :pswitch_3
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$2;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->access$0(Lcom/findit/battle/WaitingRoom$RoomAdapter;)Lcom/findit/battle/WaitingRoom;

    move-result-object v0

    neg-int v2, v6

    neg-int v4, v6

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/WaitingRoom;->access$4(Lcom/findit/battle/WaitingRoom;Landroid/view/View;IIII)V

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
