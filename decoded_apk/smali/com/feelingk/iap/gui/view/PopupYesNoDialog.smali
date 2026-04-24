.class public Lcom/feelingk/iap/gui/view/PopupYesNoDialog;
.super Landroid/app/Dialog;
.source "PopupYesNoDialog.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurTelecom:I

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;
    .param p3, "themeStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 17
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 18
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 20
    iput v3, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mCurTelecom:I

    .line 25
    invoke-static {p1}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mCurTelecom:I

    .line 26
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v4, "YesNo"

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 27
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupYesNoDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->onYesNoResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePopupYesNoDialog()V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->dismiss()V

    .line 88
    return-void
.end method

.method public InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 52
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 53
    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mCurTelecom:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mCurTelecom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml_kt_lg/commonPopupYesNo.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->setContentView(Landroid/view/View;)V

    .line 61
    :goto_0
    const/16 v0, 0x69

    if-ne p1, v0, :cond_3

    .line 63
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupYesNoDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 80
    :cond_1
    :goto_1
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/commonPopupYesNo.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 70
    :cond_3
    const/16 v0, 0x81

    if-ne p1, v0, :cond_1

    .line 71
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupYesNoDialog$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog$2;-><init>(Lcom/feelingk/iap/gui/view/PopupYesNoDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1
.end method

.method public ShowPopupYesNoDialog()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->show()V

    .line 84
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 33
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 34
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 35
    const/4 v0, 0x1

    .line 38
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
    .line 44
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
