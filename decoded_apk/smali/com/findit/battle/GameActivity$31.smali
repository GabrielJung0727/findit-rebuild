.class Lcom/findit/battle/GameActivity$31;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->createInviteConsentDlg()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$31;->this$0:Lcom/findit/battle/GameActivity;

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1134
    const-string v2, ">> onClick(): \uc2b9\ub099 \ubc84\ud2bc"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1135
    iget-object v2, p0, Lcom/findit/battle/GameActivity$31;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v2}, Lcom/findit/battle/GameActivity;->access$13(Lcom/findit/battle/GameActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1136
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1137
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/findit/battle/GameActivity$31;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v2}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v2

    iget-object v2, v2, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    invoke-virtual {v2, v0}, Lcom/findit/battle/WaitingRoom;->enterBattleRoom(Ljava/lang/String;)V

    .line 1140
    iget-object v2, p0, Lcom/findit/battle/GameActivity$31;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v2, v2, Lcom/findit/battle/GameActivity;->mInviteConsentDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 1143
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method
