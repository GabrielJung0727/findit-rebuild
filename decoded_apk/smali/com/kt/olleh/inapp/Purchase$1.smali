.class Lcom/kt/olleh/inapp/Purchase$1;
.super Landroid/os/Handler;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/olleh/inapp/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 987
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 990
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 992
    :pswitch_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->LoginDialog()V

    goto :goto_0

    .line 996
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->AlertDialog()V

    goto :goto_0

    .line 1000
    :pswitch_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$0(Lcom/kt/olleh/inapp/Purchase;)V

    goto :goto_0

    .line 1004
    :pswitch_4
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    sget v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->PayDialog(I)V

    goto :goto_0

    .line 1008
    :pswitch_5
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    sget v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->PayDialogNoPwd(I)V

    goto :goto_0

    .line 1012
    :pswitch_6
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->CheckDialog()V

    goto :goto_0

    .line 1016
    :pswitch_7
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->NewPwdDialog()V

    goto :goto_0

    .line 1020
    :pswitch_8
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->LodingDialog()V

    goto :goto_0

    .line 1024
    :pswitch_9
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/Purchase;->SelectDialog()V

    goto :goto_0

    .line 1028
    :pswitch_a
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$1(Lcom/kt/olleh/inapp/Purchase;)V

    goto :goto_0

    .line 1032
    :pswitch_b
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$2(Lcom/kt/olleh/inapp/Purchase;)V

    goto :goto_0

    .line 1036
    :pswitch_c
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$3(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$3(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogProgress;->dismiss()V

    .line 1038
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$1;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$4(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogProgress;)V

    goto :goto_0

    .line 990
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_1
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
