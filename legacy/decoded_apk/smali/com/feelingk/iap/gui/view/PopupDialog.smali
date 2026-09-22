.class public Lcom/feelingk/iap/gui/view/PopupDialog;
.super Landroid/app/Dialog;
.source "PopupDialog.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;
    .param p3, "themeStyle"    # I
    .param p4, "isDeviceTab"    # Z

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 18
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    .line 24
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-direct {v0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 26
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feelingk/iap/gui/view/PopupDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupDialog()V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupDialog;->dismiss()V

    .line 108
    return-void
.end method

.method public InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 54
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getIsOTPAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOTPPurchaseSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/otpCommonPopup.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 59
    :goto_0
    const/16 v0, 0x69

    if-ne p1, v0, :cond_1

    .line 60
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 99
    :goto_1
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/commonPopup.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 66
    :cond_1
    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2

    .line 67
    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    .line 68
    const/16 v0, 0x82

    if-ne p1, v0, :cond_3

    .line 69
    :cond_2
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupDialog$2;-><init>(Lcom/feelingk/iap/gui/view/PopupDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 77
    :cond_3
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDialog$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupDialog$3;-><init>(Lcom/feelingk/iap/gui/view/PopupDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1
.end method

.method public ShowPopupDialog()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupDialog;->show()V

    .line 103
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 33
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 34
    const/4 v0, 0x1

    .line 37
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
    .line 43
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
