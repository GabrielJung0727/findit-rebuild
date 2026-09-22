.class Lcom/findit/battle/GameActivity$32;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$32;->this$0:Lcom/findit/battle/GameActivity;

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1152
    const-string v0, ">> onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/findit/battle/GameActivity$32;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v0, v0, Lcom/findit/battle/GameActivity;->mInviteConsentDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1154
    return-void
.end method
