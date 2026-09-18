.class public Lcom/findit/battle/CommonDialog;
.super Ljava/lang/Object;
.source "CommonDialog.java"


# instance fields
.field private mLoadingDlg:Landroid/app/Dialog;

.field private mNoticeDlg:Landroid/app/Dialog;

.field private mNoticeMsgTextView:Landroid/widget/TextView;

.field private mProgressDlg:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, ">> CommonDialog() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/findit/battle/CommonDialog;->createNoticeDlg(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeDlg:Landroid/app/Dialog;

    .line 23
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeDlg:Landroid/app/Dialog;

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeMsgTextView:Landroid/widget/TextView;

    .line 25
    invoke-direct {p0, p1}, Lcom/findit/battle/CommonDialog;->createProgressDlg(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/CommonDialog;->mProgressDlg:Landroid/app/Dialog;

    .line 26
    invoke-direct {p0, p1}, Lcom/findit/battle/CommonDialog;->createLoadingDlg(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/CommonDialog;->mLoadingDlg:Landroid/app/Dialog;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/CommonDialog;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method private createLoadingDlg(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 113
    const-string v2, ">> createLoadingDlg() "

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 116
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 117
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    const v2, 0x7f030008

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 122
    return-object v0
.end method

.method private createNoticeDlg(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 78
    const-string v3, ">> createNoticeDlg() "

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 79
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 81
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 82
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 83
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 85
    const v3, 0x7f03000e

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 88
    const v3, 0x7f0b006f

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 89
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/CommonDialog$1;

    invoke-direct {v3, p0}, Lcom/findit/battle/CommonDialog$1;-><init>(Lcom/findit/battle/CommonDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-object v1
.end method

.method private createProgressDlg(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 100
    const-string v2, ">> createProgressDlg() "

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 103
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 104
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const v2, 0x7f03000f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 107
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 109
    return-object v0
.end method


# virtual methods
.method public cancelLoadingDlg()V
    .locals 1

    .prologue
    .line 68
    const-string v0, ">> cancelLoadingDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mLoadingDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 70
    return-void
.end method

.method public cancelProgressDlg()V
    .locals 1

    .prologue
    .line 53
    const-string v0, ">> cancelProgressDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mProgressDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 55
    return-void
.end method

.method public getLoadingDlg()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 73
    const-string v0, ">> getLoadingDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mLoadingDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method public getProgressDlg()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 58
    const-string v0, ">> getProgressDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mProgressDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method public showLoadingDlg()V
    .locals 1

    .prologue
    .line 63
    const-string v0, ">> showLoadingDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mLoadingDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 65
    return-void
.end method

.method public showNoticeDlg(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 30
    const-string v0, ">> showNoticeDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 33
    return-void
.end method

.method public showNoticeDlg(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, ">> showNoticeDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeMsgTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 39
    return-void
.end method

.method public showNoticeDlg(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 42
    const-string v0, ">> showNoticeDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeMsgTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mNoticeDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 45
    return-void
.end method

.method public showProgressDlg()V
    .locals 1

    .prologue
    .line 48
    const-string v0, ">> showProgressDlg() "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/findit/battle/CommonDialog;->mProgressDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 50
    return-void
.end method
