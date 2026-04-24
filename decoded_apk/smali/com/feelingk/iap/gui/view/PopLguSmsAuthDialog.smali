.class public Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;
.super Landroid/app/Dialog;
.source "PopLguSmsAuthDialog.java"


# instance fields
.field private mCurTelecom:I

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;
    .param p3, "themeStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 21
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->mCurTelecom:I

    .line 27
    invoke-static {p1}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->mCurTelecom:I

    .line 28
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 29
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->onLguSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupLguSMSAuthDialog()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->dismiss()V

    .line 72
    return-void
.end method

.method public InflateView(ILandroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "orientation"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml_kt_lg/lgusmsauthpopup_"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->setContentView(Landroid/view/View;)V

    .line 55
    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    .line 57
    new-instance v0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method public ShowPopupLguSMSAuthDialog()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->show()V

    .line 68
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 34
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 36
    const/4 v0, 0x1

    .line 39
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
    .line 45
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
