.class Lcom/feelingk/iap/gui/parser/ParserXML$1;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    .line 5245
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$0(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 5247
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v5

    .line 5248
    .local v5, "num_jumin1":I
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v6

    .line 5250
    .local v6, "num_jumin2":I
    const/4 v9, 0x6

    if-ne v5, v9, :cond_1

    const/4 v9, 0x7

    if-ne v6, v9, :cond_1

    .line 5251
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$0(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;->onAuthDialogOKButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 5290
    .end local v5    # "num_jumin1":I
    .end local v6    # "num_jumin2":I
    :cond_0
    :goto_0
    return-void

    .line 5253
    .restart local v5    # "num_jumin1":I
    .restart local v6    # "num_jumin2":I
    :cond_1
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$3(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_JUMIN_NUMBER_LENGTH:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v10}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 5254
    .local v8, "toast":Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5257
    .end local v5    # "num_jumin1":I
    .end local v6    # "num_jumin2":I
    .end local v8    # "toast":Landroid/widget/Toast;
    :cond_2
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 5258
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$5(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonF;->getSTRFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5259
    .local v7, "ocbPwNum":Ljava/lang/String;
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$4(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    move-result-object v9

    invoke-interface {v9, v7}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;->onOCBPWDOKButtonClick(Ljava/lang/String;)V

    goto :goto_0

    .line 5261
    .end local v7    # "ocbPwNum":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$6(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 5262
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$7(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonF;->getSTRFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5263
    .local v0, "cultureId":Ljava/lang/String;
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$8(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/iap/util/CommonF;->getSTRFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5264
    .local v1, "culturePw":Ljava/lang/String;
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$6(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    move-result-object v9

    invoke-interface {v9, v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;->onCultureLandButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 5265
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$9(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 5266
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Z)V

    .line 5270
    :goto_1
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$11()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5271
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$7(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$12(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5268
    :cond_4
    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$10(Z)V

    goto :goto_1

    .line 5274
    .end local v0    # "cultureId":Ljava/lang/String;
    .end local v1    # "culturePw":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 5276
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$14(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5277
    .local v2, "dotoriSmsAuthNumber":Ljava/lang/String;
    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDotoriSmsNumber(Ljava/lang/String;)V

    .line 5279
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$13(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    move-result-object v9

    invoke-interface {v9}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;->onDotoriSmsAuthOKButtonClick()V

    .line 5281
    invoke-static {v11}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$15(Z)V

    goto/16 :goto_0

    .line 5283
    .end local v2    # "dotoriSmsAuthNumber":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 5284
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$17(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$18(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$19(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5285
    .local v4, "mdn":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$1(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$2(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5287
    .local v3, "juminNum":Ljava/lang/String;
    iget-object v9, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v9}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$16(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    move-result-object v9

    iget-object v10, p0, Lcom/feelingk/iap/gui/parser/ParserXML$1;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v10}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$20(Lcom/feelingk/iap/gui/parser/ParserXML;)I

    move-result v10

    invoke-interface {v9, v10, v4, v3}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;->onForeignInputMDNOKButtonClick(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
