.class public Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;
.super Landroid/app/Dialog;
.source "PopupAutoPurchaseFormDialog.java"


# instance fields
.field mAutoFormCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurTelecom:I

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;
    .param p3, "themeStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 19
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 20
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mAutoFormCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 21
    iput v3, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mCurTelecom:I

    .line 27
    invoke-static {p1}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mCurTelecom:I

    .line 28
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v4, "AutoPurchaseForm"

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 29
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mAutoFormCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 31
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public ClosePopupAutoPurchaseFormDialog()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->dismiss()V

    .line 87
    return-void
.end method

.method public InflateView(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "formName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "orientation"    # I

    .prologue
    .line 62
    iput-object p4, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 63
    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mCurTelecom:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mCurTelecom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml_kt_lg/commonPopupAutoPurchaseForm"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->setContentView(Landroid/view/View;)V

    .line 70
    :goto_0
    const/16 v0, 0x69

    if-ne p1, v0, :cond_1

    .line 72
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog$2;-><init>(Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    :cond_1
    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/commonPopupAutoPurchaseForm"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public ShowPopupAutoPurchaseFormDialog()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->show()V

    .line 83
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 43
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 44
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 54
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 55
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
