.class Lcom/findit/battle/CommonDialog$1;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/CommonDialog;->createNoticeDlg(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/CommonDialog;


# direct methods
.method constructor <init>(Lcom/findit/battle/CommonDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/CommonDialog$1;->this$0:Lcom/findit/battle/CommonDialog;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 92
    const-string v0, ">> () "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/findit/battle/CommonDialog$1;->this$0:Lcom/findit/battle/CommonDialog;

    invoke-static {v0}, Lcom/findit/battle/CommonDialog;->access$0(Lcom/findit/battle/CommonDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 94
    return-void
.end method
