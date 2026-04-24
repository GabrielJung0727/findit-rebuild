.class Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;
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
    name = "NextFocusTextWatcher"
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private strNum:I

.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method private constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;)V
    .locals 0
    .param p2, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 3070
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 3067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3069
    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method synthetic constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;)V
    .locals 0

    .prologue
    .line 3067
    invoke-direct {p0, p1, p2}, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 3075
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3076
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 3078
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v3, :cond_5

    .line 3079
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$21(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 3080
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$22(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3081
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$58(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    .line 3100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$61(Lcom/feelingk/iap/gui/parser/ParserXML;)I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$62(Lcom/feelingk/iap/gui/parser/ParserXML;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$63(Lcom/feelingk/iap/gui/parser/ParserXML;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->strNum:I

    .line 3101
    iget v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->strNum:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_8

    .line 3102
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$64(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3103
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 3104
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "#DDDDDD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 3105
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 3115
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3116
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_9

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    .line 3117
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3126
    :cond_2
    :goto_2
    return-void

    .line 3082
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$22(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 3083
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$23(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3084
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$59(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    goto/16 :goto_0

    .line 3085
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$23(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3086
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$24(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3087
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$60(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    goto/16 :goto_0

    .line 3091
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$21(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 3092
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$58(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    goto/16 :goto_0

    .line 3093
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$22(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_7

    .line 3094
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$59(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    goto/16 :goto_0

    .line 3095
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$23(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$60(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    goto/16 :goto_0

    .line 3108
    :cond_8
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$65(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3109
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 3110
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "#8B8B8B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 3111
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$57(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    goto/16 :goto_1

    .line 3119
    :cond_9
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, v3, :cond_2

    .line 3120
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$NextFocusTextWatcher;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 3131
    return-void
.end method
