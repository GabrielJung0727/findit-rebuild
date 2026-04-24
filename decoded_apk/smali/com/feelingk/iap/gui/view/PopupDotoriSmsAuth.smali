.class public Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;
.super Landroid/app/Dialog;
.source "PopupDotoriSmsAuth.java"


# instance fields
.field private mDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeStyle"    # I
    .param p3, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 17
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->mDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    .line 22
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 23
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->mDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->mDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupDotoriSMSAuthDialog()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->dismiss()V

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
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/dotori_sms_auth_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->setContentView(Landroid/view/View;)V

    .line 49
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth$1;-><init>(Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    return-void
.end method

.method public ShowPopupDotoriSMSAuthDialog()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->show()V

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
