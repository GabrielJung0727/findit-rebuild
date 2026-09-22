.class Lcom/kt/olleh/inapp/Purchase$24;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->DialogWebPay()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$24;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 1055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$24;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$41(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->dismiss()V

    .line 1060
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$24;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1061
    return-void
.end method
