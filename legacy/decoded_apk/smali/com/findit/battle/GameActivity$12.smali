.class Lcom/findit/battle/GameActivity$12;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->createLoginDlg()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$12;->this$0:Lcom/findit/battle/GameActivity;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 662
    const-string v2, ">> onClick()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 666
    iget-object v2, p0, Lcom/findit/battle/GameActivity$12;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v2}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v1

    .line 668
    .local v1, "gameview":Lcom/findit/battle/GameView;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "displaywidth"

    .line 676
    invoke-virtual {v1}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v3

    .line 675
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    const-string v2, "displayheight"

    .line 678
    invoke-virtual {v1}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v3

    .line 677
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 679
    iget-object v2, p0, Lcom/findit/battle/GameActivity$12;->this$0:Lcom/findit/battle/GameActivity;

    const-class v3, Lcom/findit/battle/JoinActivity;

    invoke-virtual {v2, v3, v0}, Lcom/findit/battle/GameActivity;->movePage(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 680
    return-void
.end method
