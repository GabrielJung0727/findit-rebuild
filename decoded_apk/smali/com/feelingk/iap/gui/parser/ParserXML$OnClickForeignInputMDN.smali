.class public Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnClickForeignInputMDN"
.end annotation


# instance fields
.field private mRadioButton1:Landroid/widget/RadioButton;

.field private mRadioButton2:Landroid/widget/RadioButton;

.field private mRadioButton3:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 5389
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentSelected()I
    .locals 2

    .prologue
    .line 5412
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5413
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$67(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5414
    const/4 v0, 0x1

    .line 5423
    :goto_0
    return v0

    .line 5415
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5416
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton2:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$67(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5417
    const/4 v0, 0x2

    goto :goto_0

    .line 5418
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5419
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton3:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$67(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ForeignDevelopeTextLengthWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5420
    const/4 v0, 0x3

    goto :goto_0

    .line 5423
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5429
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    .line 5430
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5431
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5432
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5433
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$68()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5436
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0, v3}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$66(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    .line 5438
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$53(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5439
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 5441
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, v4, :cond_0

    .line 5442
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$54(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5443
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 5481
    :cond_0
    :goto_0
    return-void

    .line 5446
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton2:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_2

    .line 5447
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5448
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5449
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5450
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$68()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5452
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$66(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    .line 5454
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$53(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5455
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 5457
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, v4, :cond_0

    .line 5458
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ne v0, v5, :cond_0

    .line 5459
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$54(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5460
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    .line 5463
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton3:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_0

    .line 5464
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5465
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton2:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5466
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton3:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5467
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$68()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5469
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$66(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    .line 5471
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$53(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5472
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 5474
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-lt v0, v4, :cond_0

    .line 5475
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-ne v0, v5, :cond_0

    .line 5476
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$54(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5477
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$56(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method public setRadioButton1(Landroid/widget/RadioButton;)V
    .locals 2
    .param p1, "radioButton"    # Landroid/widget/RadioButton;

    .prologue
    const/4 v1, 0x1

    .line 5395
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    .line 5396
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5397
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$66(Lcom/feelingk/iap/gui/parser/ParserXML;I)V

    .line 5398
    return-void
.end method

.method public setRadioButton2(Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "radioButton"    # Landroid/widget/RadioButton;

    .prologue
    .line 5402
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton2:Landroid/widget/RadioButton;

    .line 5403
    return-void
.end method

.method public setRadioButton3(Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "radioButton"    # Landroid/widget/RadioButton;

    .prologue
    .line 5407
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$OnClickForeignInputMDN;->mRadioButton3:Landroid/widget/RadioButton;

    .line 5408
    return-void
.end method
