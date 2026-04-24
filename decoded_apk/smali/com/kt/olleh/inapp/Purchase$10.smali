.class Lcom/kt/olleh/inapp/Purchase$10;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->CheckDialog()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 461
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$36(Lcom/kt/olleh/inapp/Purchase;)V

    .line 465
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$35(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->close()V

    .line 466
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 468
    const/16 v0, 0x3fd

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 469
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$10;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 470
    return-void
.end method
