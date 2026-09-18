.class Lcom/findit/battle/WaitingRoom$2;
.super Ljava/lang/Object;
.source "WaitingRoom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/WaitingRoom;->createMainDlg(Landroid/content/Context;II)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$2;->this$0:Lcom/findit/battle/WaitingRoom;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    const-string v0, ">> onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$2;->this$0:Lcom/findit/battle/WaitingRoom;

    iget-object v1, p0, Lcom/findit/battle/WaitingRoom$2;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v1}, Lcom/findit/battle/WaitingRoom;->access$2(Lcom/findit/battle/WaitingRoom;)Lcom/findit/battle/GameView;

    move-result-object v1

    iget-object v1, v1, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/findit/battle/WaitingRoom;->getUserList(Ljava/lang/String;)V

    .line 177
    return-void
.end method
