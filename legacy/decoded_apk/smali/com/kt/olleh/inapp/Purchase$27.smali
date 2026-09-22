.class Lcom/kt/olleh/inapp/Purchase$27;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->DialogPwdRet()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 1103
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1105
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 1106
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    const/16 v1, 0x3f3

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1108
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1109
    const-string v0, "\ud574\ub2f9 \uc544\uc774\ud15c\uc744 \uad6c\ub9e4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    .line 1110
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1, v0}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1111
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1112
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$27;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v1}, Lcom/kt/olleh/inapp/Purchase;->access$43(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->close()V

    .line 1114
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method
