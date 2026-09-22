.class public Lcom/feelingk/iap/gui/view/PopupJoinDialog;
.super Landroid/app/Dialog;
.source "PopupJoinDialog.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurTelecom:I

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    .param p3, "themeStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 17
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 18
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 20
    iput v3, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mCurTelecom:I

    .line 26
    invoke-static {p1}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mCurTelecom:I

    .line 27
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v4, "Join"

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 28
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupJoinDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupJoinDialog()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->dismiss()V

    .line 79
    return-void
.end method

.method public InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;I)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "orientation"    # I

    .prologue
    .line 54
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 55
    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mCurTelecom:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mCurTelecom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml_kt_lg/commonPopupJoin_"

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->setContentView(Landroid/view/View;)V

    .line 62
    :goto_0
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_1

    .line 64
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupJoinDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupJoinDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 71
    :cond_1
    return-void

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/commonPopupJoin_"

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public ShowPopupJoinDialog()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->show()V

    .line 75
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 35
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 37
    const/4 v0, 0x1

    .line 40
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
    .line 46
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
