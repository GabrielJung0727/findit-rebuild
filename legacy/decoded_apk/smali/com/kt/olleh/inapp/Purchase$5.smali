.class Lcom/kt/olleh/inapp/Purchase$5;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->SelectDialog()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 311
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "getTagValue":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    sget-object v2, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$28(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ud578\ub4dc\ud3f0 \uacb0\uc81c"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$29(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 327
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v2}, Lcom/kt/olleh/inapp/Purchase;->access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kt/olleh/inapp/Purchase;->getDIInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\ucde8\uc18c"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\uc815\ubcf4\uc694\uccad\uc911.."

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 331
    return-void

    .line 321
    :cond_1
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "02"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$28(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase$5;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v2, "\uc778\ud130\ub137\uc804\ud654 \uacb0\uc81c"

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Purchase;->access$29(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto :goto_0
.end method
