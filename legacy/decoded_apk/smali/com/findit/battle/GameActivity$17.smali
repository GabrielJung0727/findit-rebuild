.class Lcom/findit/battle/GameActivity$17;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->createGuestDlg()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$17;->this$0:Lcom/findit/battle/GameActivity;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 812
    const-string v0, ">> onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/findit/battle/GameActivity$17;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v0}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/findit/battle/GameView;->mLogin:I

    .line 814
    iget-object v0, p0, Lcom/findit/battle/GameActivity$17;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v0, v0, Lcom/findit/battle/GameActivity;->mGuestDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 818
    return-void
.end method
