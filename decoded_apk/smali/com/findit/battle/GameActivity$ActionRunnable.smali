.class public Lcom/findit/battle/GameActivity$ActionRunnable;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameActivity;)V
    .locals 0

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/findit/battle/GameActivity$ActionRunnable;->this$0:Lcom/findit/battle/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2230
    const-string v0, ">> run()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2231
    iget-object v0, p0, Lcom/findit/battle/GameActivity$ActionRunnable;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v0, v0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    iget-object v1, p0, Lcom/findit/battle/GameActivity$ActionRunnable;->this$0:Lcom/findit/battle/GameActivity;

    .line 2232
    const v2, 0x7f090011

    const-string v3, "[1]"

    .line 2231
    invoke-virtual {v0, v1, v2, v3}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V

    .line 2233
    return-void
.end method
