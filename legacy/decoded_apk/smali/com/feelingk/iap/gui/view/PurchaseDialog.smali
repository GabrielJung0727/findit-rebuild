.class public Lcom/feelingk/iap/gui/view/PurchaseDialog;
.super Landroid/app/Dialog;
.source "PurchaseDialog.java"


# instance fields
.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private mRetCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeStyle"    # I
    .param p3, "callback"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    .param p4, "bIsDeviceTab"    # Z

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 17
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mRetCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 57
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1, p4}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;IZ)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 58
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mRetCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 59
    new-instance v0, Lcom/feelingk/iap/gui/view/PurchaseDialog$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PurchaseDialog$2;-><init>(Lcom/feelingk/iap/gui/view/PurchaseDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .prologue
    const/4 v1, 0x0

    .line 20
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    iput-object v1, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 17
    iput-object v1, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mRetCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 22
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-direct {v0, p1, p2}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 23
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mRetCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 25
    new-instance v0, Lcom/feelingk/iap/gui/view/PurchaseDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PurchaseDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PurchaseDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PurchaseDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mRetCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    return-object v0
.end method


# virtual methods
.method public ClosePurchaseDialog()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->dismiss()V

    .line 83
    return-void
.end method

.method public InflateParserDialog(ILcom/feelingk/iap/gui/data/PurchaseItem;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "itemInfo"    # Lcom/feelingk/iap/gui/data/PurchaseItem;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/feelingk/iap/gui/view/PurchaseDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-virtual {v1, p1, p2}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(ILjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->setContentView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public ShowPurchaseDialog()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->show()V

    .line 79
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
