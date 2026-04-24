.class Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;
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
    name = "ForeignDevelopeTextLengthWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method private constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 3025
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;)V
    .locals 0

    .prologue
    .line 3025
    invoke-direct {p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3034
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->onForeignInputMDNClickLisener:Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->getCurrentSelected()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 3036
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, v4, :cond_1

    .line 3037
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$54(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3038
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 3056
    :cond_0
    :goto_0
    return-void

    .line 3040
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$53(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3041
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 3043
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->onForeignInputMDNClickLisener:Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->getCurrentSelected()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iget-object v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->onForeignInputMDNClickLisener:Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->getCurrentSelected()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3045
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, v4, :cond_4

    .line 3046
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 3047
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$54(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3048
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    .line 3050
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$53(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3051
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3030
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 3027
    return-void
.end method
