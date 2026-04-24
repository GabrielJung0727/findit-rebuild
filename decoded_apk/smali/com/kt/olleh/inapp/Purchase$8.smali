.class Lcom/kt/olleh/inapp/Purchase$8;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->AlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;

.field private final synthetic val$prevMode:I


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p2, p0, Lcom/kt/olleh/inapp/Purchase$8;->val$prevMode:I

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogAlert;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->close()V

    .line 404
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->val$prevMode:I

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 406
    const-string v0, "B007"

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 411
    :cond_1
    const-string v0, "B009"

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uc77c\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_3
    const-string v0, "B010"

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 417
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uc6d4\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_4
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_5
    const-string v0, "Z999"

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 421
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 422
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uc62c\ub808\ub9c8\ucf13\uc774 \uc124\uce58\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4.\n\uc124\uce58 \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_6
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :cond_7
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 426
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    sget v1, Lcom/kt/olleh/inapp/Purchase;->config:I

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->changeConfig(I)V

    .line 427
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$34(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 429
    :cond_8
    const-string v0, "B011"

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 430
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\ubcf4\uc548\ubc88\ud638\uac00 \ud2c0\ub838\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624(\uc624\ub958\ud69f\uc218:5\uc774\uc0c1)"

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_9
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :cond_a
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 435
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_b
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$8;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
