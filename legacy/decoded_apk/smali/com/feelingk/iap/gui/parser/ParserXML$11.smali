.class Lcom/feelingk/iap/gui/parser/ParserXML$11;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5493
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5495
    .local v0, "id":Ljava/lang/String;
    const-string v1, "info_checkbox1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5496
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$34(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    .line 5506
    :goto_0
    const-string v1, "purchase_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5507
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoPurchase flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$35(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    if-eqz v1, :cond_8

    .line 5511
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$36(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5512
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean v4, v1, v4

    .line 5513
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$37(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    .line 5514
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onAutoPurchaseCheck(Z)V

    .line 5531
    :cond_0
    :goto_1
    const-string v1, "auto_purchase_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5532
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "autoPurchaseForm flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5534
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    .line 5538
    :cond_1
    const-string v1, "imei_auth_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5539
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "imei_auth_checkbox flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5540
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$39(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    .line 5541
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$39(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_9

    .line 5542
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$40(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$41(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5543
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$40(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iget-object v2, v2, Lcom/feelingk/iap/gui/parser/ParserXML;->imeiAuthBtn:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5552
    :cond_2
    :goto_2
    const-string v1, "otp_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5553
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOTPAgree flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5554
    if-eqz p2, :cond_a

    .line 5555
    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setOTPAgree(Z)V

    .line 5561
    :cond_3
    :goto_3
    const-string v1, "culture_login_checkbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5562
    const-string v1, "ParserXML"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "culture_login_checkbox flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5564
    if-eqz p2, :cond_b

    .line 5565
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$43(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    .line 5573
    :cond_4
    :goto_4
    return-void

    .line 5498
    :cond_5
    const-string v1, "info_checkbox2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5499
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$34(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v5

    goto/16 :goto_0

    .line 5502
    :cond_6
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$34(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    const/4 v2, 0x2

    aput-boolean p2, v1, v2

    goto/16 :goto_0

    .line 5517
    :cond_7
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$36(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5518
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean v5, v1, v4

    .line 5519
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1, v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$37(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    .line 5520
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onAutoPurchaseCheck(Z)V

    goto/16 :goto_1

    .line 5524
    :cond_8
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$35(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    if-nez v1, :cond_0

    .line 5525
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v1

    aput-boolean p2, v1, v4

    .line 5526
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onAutoPurchaseCheck(Z)V

    goto/16 :goto_1

    .line 5546
    :cond_9
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$40(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v2}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$42(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5547
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$40(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 5556
    :cond_a
    if-nez p2, :cond_3

    .line 5557
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setOTPAgree(Z)V

    goto/16 :goto_3

    .line 5568
    :cond_b
    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$11;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1, v4}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$43(Lcom/feelingk/iap/gui/parser/ParserXML;Z)V

    goto/16 :goto_4
.end method
