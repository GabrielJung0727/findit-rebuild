.class Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog$1;
.super Ljava/lang/Object;
.source "PopLguSmsAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog$1;->this$0:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->access$0(Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthCancer()V

    .line 61
    return-void
.end method
