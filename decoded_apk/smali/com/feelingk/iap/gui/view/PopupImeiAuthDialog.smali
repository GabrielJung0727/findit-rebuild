.class public Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;
.super Landroid/app/Dialog;
.source "PopupImeiAuthDialog.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field mImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;
    .param p3, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 15
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 21
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "IMEIAuthForm"

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 22
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 24
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public ClosePopupIMEIAuthDialog()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->dismiss()V

    .line 68
    return-void
.end method

.method public ShowPopupIMEIAuthDialog()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->show()V

    .line 64
    return-void
.end method

.method public inflageView(ILandroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "orientation"    # I

    .prologue
    .line 57
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 58
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/imeiauth"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->StartIMEIAuth(Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->setContentView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 39
    const/4 v0, 0x1

    .line 42
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
    .line 48
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 49
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
