.class Lcom/findit/battle/WaitingRoom$RoomData;
.super Ljava/lang/Object;
.source "WaitingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/WaitingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoomData"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mUserNum:I

.field final synthetic this$0:Lcom/findit/battle/WaitingRoom;


# direct methods
.method constructor <init>(Lcom/findit/battle/WaitingRoom;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$RoomData;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 533
    const-string v1, ">> equals()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 534
    instance-of v1, p1, Lcom/findit/battle/WaitingRoom$RoomData;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 535
    check-cast v0, Lcom/findit/battle/WaitingRoom$RoomData;

    .line 536
    .local v0, "t":Lcom/findit/battle/WaitingRoom$RoomData;
    iget-object v1, p0, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    :cond_1
    const/4 v1, 0x1

    .line 540
    .end local v0    # "t":Lcom/findit/battle/WaitingRoom$RoomData;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
