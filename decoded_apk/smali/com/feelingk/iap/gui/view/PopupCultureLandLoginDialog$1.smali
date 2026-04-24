.class Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog$1;
.super Ljava/lang/Object;
.source "PopupCultureLandLoginDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->access$0(Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;->onCultureLandCancelButtonClick()V

    .line 54
    return-void
.end method
