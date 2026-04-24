.class Lcom/feelingk/iap/gui/parser/ParserXML$40;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;->createViewOtpPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->val$editText:Landroid/widget/EditText;

    .line 4583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4603
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$78(Lcom/feelingk/iap/gui/parser/ParserXML;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->inputStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4605
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$49(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;->onOtpDialogOK()V

    .line 4616
    :cond_0
    :goto_0
    return-void

    .line 4609
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->inputStr:Ljava/lang/String;

    .line 4610
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->val$editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4611
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->val$editText:Landroid/widget/EditText;

    const-string v1, "\uc798\ubabb\ub41c \uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud558\uc168\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 4595
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 4587
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$40;->inputStr:Ljava/lang/String;

    .line 4589
    return-void
.end method
