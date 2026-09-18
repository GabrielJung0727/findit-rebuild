.class Lcom/kt/olleh/inapp/Purchase$15;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->PayDialogNoPwd(I)V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p3, p0, Lcom/kt/olleh/inapp/Purchase$15;->val$mode:I

    .line 604
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 606
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 608
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 639
    :goto_0
    return-void

    .line 610
    :pswitch_0
    const/16 v0, 0x3fe

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 612
    :pswitch_1
    sget-object v0, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DP"

    const-string v4, "none"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kt/olleh/inapp/Purchase;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :goto_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\ucde8\uc18c"

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v1, "\uacb0\uc81c \uc694\uccad \uc911..."

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 621
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    goto :goto_0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HP"

    const-string v4, "none"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kt/olleh/inapp/Purchase;->getBuyDiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 625
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$38(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 628
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$39(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;)V

    goto/16 :goto_0

    .line 632
    :pswitch_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 633
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$15;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->userCancelResponse()V

    goto/16 :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
