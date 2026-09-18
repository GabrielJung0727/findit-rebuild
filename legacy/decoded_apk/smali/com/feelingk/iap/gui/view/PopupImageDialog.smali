.class public Lcom/feelingk/iap/gui/view/PopupImageDialog;
.super Landroid/app/Dialog;
.source "PopupImageDialog.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurTelecom:I

.field private mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;
    .param p3, "themeStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 15
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 16
    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 17
    iput v3, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mCurTelecom:I

    .line 22
    invoke-static {p1}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mCurTelecom:I

    .line 23
    new-instance v0, Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v4, "PermissionPopup"

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/feelingk/iap/gui/parser/ParserXML;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/gui/view/PopupImageDialog;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public ClosePopupImageDialog()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->dismiss()V

    .line 53
    return-void
.end method

.method public InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 26
    iput-object p3, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mClickListener:Landroid/view/View$OnClickListener;

    .line 28
    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mCurTelecom:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mCurTelecom:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml_kt_lg/commonPopupImage.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->setContentView(Landroid/view/View;)V

    .line 36
    :goto_0
    const/16 v0, 0x69

    if-ne p1, v0, :cond_1

    .line 38
    new-instance v0, Lcom/feelingk/iap/gui/view/PopupImageDialog$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/gui/view/PopupImageDialog$1;-><init>(Lcom/feelingk/iap/gui/view/PopupImageDialog;)V

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 45
    :cond_1
    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImageDialog;->mGUIParser:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "/xml/commonPopupImage.xml"

    invoke-virtual {v0, v1, p2, p3}, Lcom/feelingk/iap/gui/parser/ParserXML;->Start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public ShowPopupImageDialog()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->show()V

    .line 49
    return-void
.end method
