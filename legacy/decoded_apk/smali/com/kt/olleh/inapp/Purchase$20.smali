.class Lcom/kt/olleh/inapp/Purchase$20;
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$20;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p3, p0, Lcom/kt/olleh/inapp/Purchase$20;->val$mode:I

    .line 817
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x3f1

    .line 821
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 823
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$20;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 831
    :goto_0
    return-void

    .line 826
    :pswitch_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$20;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 827
    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 828
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$20;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
