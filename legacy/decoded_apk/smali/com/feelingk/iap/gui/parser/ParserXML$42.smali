.class Lcom/feelingk/iap/gui/parser/ParserXML$42;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;->createViewLguSmsAuthPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inputStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$42;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 4760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v1, 0x6

    .line 4777
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$42;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4778
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$79(Ljava/lang/Boolean;)V

    .line 4780
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$80()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$42;->inputStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4781
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$79(Ljava/lang/Boolean;)V

    .line 4782
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$42;->inputStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    .line 4785
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 4772
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 4764
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$42;->inputStr:Ljava/lang/String;

    .line 4766
    return-void
.end method
