.class public Lcom/feelingk/iap/gui/view/PopupOCBDialog;
.super Landroid/app/Dialog;
.source "PopupOCBDialog.java"


# instance fields
.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onOCBCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeStyle"    # I
    .param p3, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->onOCBCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    .line 21
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 22
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->onOCBCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupOCBDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->onOCBCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupOCBDialog()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->dismiss()V

    .line 77
    return-void
.end method

.method public InflateView(ILandroid/view/View$OnClickListener;I)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "orientation"    # I

    .prologue
    const/4 v2, 0x0

    .line 48
    const/16 v0, 0x78

    if-ne p1, v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/ocbpopup_"

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->setContentView(Landroid/view/View;)V

    .line 50
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupOCBDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupOCBDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/16 v0, 0x79

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/ocb_pw_auth.xml"

    invoke-virtual {v0, v1, v2, p2}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->setContentView(Landroid/view/View;)V

    .line 60
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupOCBDialog$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog$2;-><init>(Lcom/feelingk/iap/gui/view/PopupOCBDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public ShowPopupOCBDialog()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->show()V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 28
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 30
    const/4 v0, 0x1

    .line 33
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
    .line 39
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
