.class Lcom/kt/olleh/inapp/Purchase$12;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->NewPwdDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Dialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 496
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 498
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$37(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getPwdEditText1()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 499
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "pwd1":Ljava/lang/String;
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$37(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getPwdEditText2()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 501
    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, "pwd2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 503
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v2

    .line 504
    const-string v3, "\ubcf4\uc548\ubc88\ud638\ub97c \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    .line 503
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 504
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 506
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v2

    .line 507
    const-string v3, "\ubcf4\uc548\ubc88\ud638 \ud655\uc778\uc744 \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    .line 506
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 507
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 508
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\ubcf4\uc548\ubc88\ud638\uc640 \ubcf4\uc548\ubc88\ud638 \ud655\uc778\uc774 \ub2e4\ub985\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v2, v0}, Lcom/kt/olleh/inapp/Purchase;->SetPin(Ljava/lang/String;)V

    .line 512
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v3, "\ucc98\ub9ac\uc911"

    invoke-static {v2, v3}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 514
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$12;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$37(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->close()V

    goto :goto_0
.end method
