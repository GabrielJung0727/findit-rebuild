.class Lcom/findit/battle/SetupActivity$3;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/SetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/SetupActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/SetupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/SetupActivity$3;->this$0:Lcom/findit/battle/SetupActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    const-string v0, ">> onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/findit/battle/SetupActivity$3;->this$0:Lcom/findit/battle/SetupActivity;

    invoke-static {v0}, Lcom/findit/battle/SetupActivity;->access$2(Lcom/findit/battle/SetupActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/CommonDialog;->showLoadingDlg()V

    .line 116
    iget-object v0, p0, Lcom/findit/battle/SetupActivity$3;->this$0:Lcom/findit/battle/SetupActivity;

    invoke-static {v0}, Lcom/findit/battle/SetupActivity;->access$3(Lcom/findit/battle/SetupActivity;)V

    .line 117
    iget-object v0, p0, Lcom/findit/battle/SetupActivity$3;->this$0:Lcom/findit/battle/SetupActivity;

    invoke-virtual {v0}, Lcom/findit/battle/SetupActivity;->finish()V

    .line 118
    iget-object v0, p0, Lcom/findit/battle/SetupActivity$3;->this$0:Lcom/findit/battle/SetupActivity;

    const v1, 0x7f040002

    const v2, 0x7f040003

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/SetupActivity;->overridePendingTransition(II)V

    .line 119
    return-void
.end method
