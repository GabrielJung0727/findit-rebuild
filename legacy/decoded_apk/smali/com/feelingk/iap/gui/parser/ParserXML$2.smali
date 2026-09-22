.class Lcom/feelingk/iap/gui/parser/ParserXML$2;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5296
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$0(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5297
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$0(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;->onAuthDialogCancelButtonClick()V

    .line 5304
    :cond_0
    :goto_0
    return-void

    .line 5298
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5299
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;->onOCBPWDCancelButtonClick()V

    goto :goto_0

    .line 5300
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$6(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5301
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$6(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;->onCultureLandCancelButtonClick()V

    goto :goto_0

    .line 5302
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5303
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$2;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;->onDotoriSmsAuthCancelButtonClick()V

    goto :goto_0
.end method
