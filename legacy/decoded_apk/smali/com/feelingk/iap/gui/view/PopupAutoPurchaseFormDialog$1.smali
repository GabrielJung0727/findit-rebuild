.class Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog$1;
.super Ljava/lang/Object;
.source "PopupAutoPurchaseFormDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    iget-object v0, v0, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->mAutoFormCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;->onAutoPurchaseFormDialogCancelButtonClick()V

    .line 35
    return-void
.end method
