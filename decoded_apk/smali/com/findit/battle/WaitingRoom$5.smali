.class Lcom/findit/battle/WaitingRoom$5;
.super Ljava/lang/Object;
.source "WaitingRoom.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$5;->this$0:Lcom/findit/battle/WaitingRoom;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 237
    const-string v1, ">> onKey()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 238
    packed-switch p2, :pswitch_data_0

    .line 250
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/findit/battle/WaitingRoom$5;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v1}, Lcom/findit/battle/WaitingRoom;->access$2(Lcom/findit/battle/WaitingRoom;)Lcom/findit/battle/GameView;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/findit/battle/GameView;->enterMainMenu(I)V

    .line 244
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
