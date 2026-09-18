.class Lcom/findit/battle/GameActivity$11;
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 625
    const-string v4, ">> onClick()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 626
    iget-object v4, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 627
    const v5, 0x7f0b0059

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 626
    check-cast v0, Landroid/widget/EditText;

    .line 628
    .local v0, "edittext":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "email":Ljava/lang/String;
    iget-object v4, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 631
    const v5, 0x7f0b005a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 630
    .end local v0    # "edittext":Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 632
    .restart local v0    # "edittext":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "password":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 635
    :cond_0
    iget-object v4, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    .line 653
    :goto_0
    return-void

    .line 636
    :cond_1
    if-eqz v3, :cond_2

    .line 637
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_3

    .line 638
    :cond_2
    iget-object v4, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 639
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_5

    .line 640
    :cond_4
    iget-object v4, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 642
    :cond_5
    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 643
    .local v2, "index":I
    if-eq v2, v6, :cond_6

    .line 644
    if-le v2, v6, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 645
    const-string v5, "."

    .line 644
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 645
    if-ne v4, v6, :cond_7

    .line 646
    :cond_6
    iget-object v4, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v4, v4, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 647
    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_0

    .line 650
    :cond_7
    iget-object v4, p0, Lcom/findit/battle/GameActivity$11;->this$0:Lcom/findit/battle/GameActivity;

    invoke-virtual {v4, v1, v3}, Lcom/findit/battle/GameActivity;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
