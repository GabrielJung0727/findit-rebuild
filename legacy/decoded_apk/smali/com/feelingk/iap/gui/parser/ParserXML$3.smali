.class Lcom/feelingk/iap/gui/parser/ParserXML$3;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5310
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5311
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$21(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$22(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5312
    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$23(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$24(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5311
    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$25(Lcom/feelingk/iap/gui/parser/ParserXML;Ljava/lang/String;)V

    .line 5313
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$26(Lcom/feelingk/iap/gui/parser/ParserXML;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;->onOCBRegistrationButtonClick(Ljava/lang/String;)V

    .line 5319
    :cond_0
    :goto_0
    return-void

    .line 5315
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5316
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Z)V

    .line 5317
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$3;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;->onDotoriSmsAuthSMSReceiveButtonClick()V

    goto :goto_0
.end method
