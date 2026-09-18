.class Lcom/findit/battle/WaitingRoom$RoomAdapter$1;
.super Ljava/lang/Object;
.source "WaitingRoom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$item:Lcom/findit/battle/WaitingRoom$RoomData;


# direct methods
.method constructor <init>(Lcom/findit/battle/WaitingRoom$RoomAdapter;Lcom/findit/battle/WaitingRoom$RoomData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$1;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    iput-object p2, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$1;->val$item:Lcom/findit/battle/WaitingRoom$RoomData;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 485
    const-string v0, ">> getView():\ub300\uc804\ubc29 \ub4e4\uc5b4\uac00\uae30 \uc694\uccad"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$1;->val$item:Lcom/findit/battle/WaitingRoom$RoomData;

    iget v0, v0, Lcom/findit/battle/WaitingRoom$RoomData;->mUserNum:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$1;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->access$0(Lcom/findit/battle/WaitingRoom$RoomAdapter;)Lcom/findit/battle/WaitingRoom;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom;->access$1(Lcom/findit/battle/WaitingRoom;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "On game, cannot enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter$1;->this$1:Lcom/findit/battle/WaitingRoom$RoomAdapter;

    invoke-static {v0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->access$0(Lcom/findit/battle/WaitingRoom$RoomAdapter;)Lcom/findit/battle/WaitingRoom;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/findit/battle/WaitingRoom;->enterBattleRoom(Ljava/lang/String;)V

    goto :goto_0
.end method
