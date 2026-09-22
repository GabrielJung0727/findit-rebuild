.class Lcom/kt/olleh/inapp/Purchase$19;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->PayDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;

.field private final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Dialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p3, p0, Lcom/kt/olleh/inapp/Purchase$19;->val$mode:I

    .line 750
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x3eb

    .line 756
    iget v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->val$mode:I

    packed-switch v1, :pswitch_data_0

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 759
    :pswitch_0
    const/16 v1, 0x3f4

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 762
    :pswitch_1
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    sget-object v2, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 763
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    sget-object v2, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DP"

    .line 766
    sget-object v5, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    .line 765
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/kt/olleh/inapp/Purchase;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ucde8\uc18c"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\uacb0\uc81c \uc694\uccad \uc911..."

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v1, v6}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 768
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HP"

    .line 769
    sget-object v5, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    .line 768
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/kt/olleh/inapp/Purchase;->getBuyDiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getPwd()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "pin":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 779
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    sget-object v2, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 781
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DP"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/kt/olleh/inapp/Purchase;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :goto_2
    sput-object v0, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    .line 788
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ucde8\uc18c"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\uacb0\uc81c \uc694\uccad \uc911..."

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v1, v6}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_0

    .line 784
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HP"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/kt/olleh/inapp/Purchase;->getBuyDiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 792
    :cond_4
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\ubcf4\uc548\ubc88\ud638\ub97c \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    .line 793
    const/4 v3, 0x0

    .line 792
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 793
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 801
    .end local v0    # "pin":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 802
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v1

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$38(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :cond_5
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 804
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$40(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPay;)V

    goto/16 :goto_0

    .line 808
    :pswitch_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 809
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$19;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/Purchase;->userCancelResponse()V

    goto/16 :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
