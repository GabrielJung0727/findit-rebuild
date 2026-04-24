.class public Lcom/feelingk/iap/gui/view/PopupOTPDialog;
.super Landroid/app/Dialog;
.source "PopupOTPDialog.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurTelecom:I

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeStyle"    # I
    .param p3, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 17
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 18
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->mCurTelecom:I

    .line 24
    invoke-static {p1}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->mCurTelecom:I

    .line 25
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 26
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupOTPDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupOtpDialog()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->dismiss()V

    .line 73
    return-void
.end method

.method public InflateView(ILandroid/view/View$OnClickListener;I)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "orientation"    # I

    .prologue
    .line 50
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 52
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/otpPopup_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->setContentView(Landroid/view/View;)V

    .line 54
    const/16 v0, 0x72

    if-ne p1, v0, :cond_0

    .line 56
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupOTPDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupOTPDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method public ShowPopupOtpDialog()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->show()V

    .line 69
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 31
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 33
    const/4 v0, 0x1

    .line 36
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
    .line 42
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
