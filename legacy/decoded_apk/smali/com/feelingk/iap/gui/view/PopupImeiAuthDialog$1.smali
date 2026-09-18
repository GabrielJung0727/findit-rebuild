.class Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog$1;
.super Ljava/lang/Object;
.source "PopupImeiAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    iget-object v0, v0, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->mImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;->onIMEIAuthDialogCancelButtonClick()V

    .line 30
    return-void
.end method
