.class Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OKCashbackTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method private constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 2979
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;)V
    .locals 0

    .prologue
    .line 2979
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 2985
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$52(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$53(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2986
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$52(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2991
    :goto_0
    return-void

    .line 2988
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$52(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$54(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2989
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OKCashbackTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$52(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2994
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2997
    return-void
.end method
