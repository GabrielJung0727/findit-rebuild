.class Lcom/findit/battle/GameActivity$28;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->createInviteDlg()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameActivity$28;->this$0:Lcom/findit/battle/GameActivity;

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 1058
    const-string v0, ">> onKey()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1059
    packed-switch p2, :pswitch_data_0

    .line 1066
    :goto_0
    return v1

    .line 1061
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/GameActivity$28;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v0}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v0

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iput v1, v0, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    goto :goto_0

    .line 1059
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
