.class public Lcom/feelingk/iap/gui/view/ForeignInputMDN;
.super Landroid/app/Dialog;
.source "ForeignInputMDN.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;
    .param p3, "themeStyle"    # I
    .param p4, "isDeviceTab"    # Z

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 13
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 14
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->mClickListener:Landroid/view/View$OnClickListener;

    .line 15
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    .line 19
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-direct {v0, p1, p2}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 20
    iput-object p2, p0, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    .line 21
    return-void
.end method


# virtual methods
.method public ClosePopupDialog()V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->dismiss()V

    .line 59
    return-void
.end method

.method public InflateView(I)V
    .locals 3
    .param p1, "mRotaion"    # I

    .prologue
    const/4 v2, 0x0

    .line 47
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/foreign_inputmdn_w.xml"

    invoke-virtual {v0, v1, v2, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->setContentView(Landroid/view/View;)V

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/foreign_inputmdn_h.xml"

    invoke-virtual {v0, v1, v2, v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public ShowPopupDialog()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->show()V

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 26
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 27
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 28
    const/4 v0, 0x1

    .line 31
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
    .line 37
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 38
    const/4 v0, 0x1

    .line 41
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
