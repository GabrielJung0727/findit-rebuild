.class Lcom/feelingk/iap/gui/view/PopupDialog$2;
.super Ljava/lang/Object;
.source "PopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupDialog$2;->this$0:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDialog$2;->this$0:Lcom/feelingk/iap/gui/view/PopupDialog;

    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->access$1(Lcom/feelingk/iap/gui/view/PopupDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;->onErrorDlgBtnClick()V

    .line 73
    return-void
.end method
