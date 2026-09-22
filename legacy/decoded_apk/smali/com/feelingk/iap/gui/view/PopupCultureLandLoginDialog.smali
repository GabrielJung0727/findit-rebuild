.class public Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;
.super Landroid/app/Dialog;
.source "PopupCultureLandLoginDialog.java"


# instance fields
.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeStyle"    # I
    .param p3, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 17
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    .line 22
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 23
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupCultureLandLoginDialog()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->dismiss()V

    .line 64
    return-void
.end method

.method public InflateView(ILandroid/view/View$OnClickListener;I)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "orientation"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/culture_login_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->setContentView(Landroid/view/View;)V

    .line 49
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    return-void
.end method

.method public ShowPopupCultureLandLoginDialog()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->show()V

    .line 60
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 29
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 30
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 31
    const/4 v0, 0x1

    .line 34
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
    .line 40
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
