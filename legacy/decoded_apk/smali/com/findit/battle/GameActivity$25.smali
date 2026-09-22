.class Lcom/findit/battle/GameActivity$25;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$25;->this$0:Lcom/findit/battle/GameActivity;

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/findit/battle/GameActivity$25;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v0, v0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v0}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 1021
    iget-object v0, p0, Lcom/findit/battle/GameActivity$25;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v0}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v0

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-object v1, p0, Lcom/findit/battle/GameActivity$25;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$12(Lcom/findit/battle/GameActivity;)Landroid/widget/EditText;

    move-result-object v1

    .line 1022
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    iput-object v1, v0, Lcom/findit/battle/GameView$BattleRoom;->mFriendName:Ljava/lang/String;

    .line 1023
    iget-object v0, p0, Lcom/findit/battle/GameActivity$25;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v0}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v0

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    iget-object v1, p0, Lcom/findit/battle/GameActivity$25;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v1

    iget-object v1, v1, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/findit/battle/WaitingRoom;->getUserList(Ljava/lang/String;)V

    .line 1025
    return-void
.end method
