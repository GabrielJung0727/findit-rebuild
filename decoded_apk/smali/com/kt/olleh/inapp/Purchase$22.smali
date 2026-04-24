.class Lcom/kt/olleh/inapp/Purchase$22;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->setModifyText()V
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
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 867
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "vnd.kt.olleh.storefront/inapp.kt.olleh.storefront"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->bTBserver:Z

    if-eqz v3, :cond_0

    .line 870
    const-string v3, "INAPP_URL"

    const-string v4, "http://221.148.243.100/hybrid2/appMy?tab=CERT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    :goto_0
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 876
    const/4 v3, 0x0

    sput-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 877
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/kt/olleh/inapp/TimerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    .local v2, "intentService":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 879
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v3}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 880
    const/16 v3, 0x3f1

    sput v3, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 881
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v4, 0x3f1

    invoke-virtual {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 889
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentService":Landroid/content/Intent;
    :goto_1
    return-void

    .line 872
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "INAPP_URL"

    const-string v4, "http://hybrid.olleh.com/hybrid/appMy?tab=CERT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 884
    :cond_1
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\uc548\ub0b4"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 885
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "\uc62c\ub808\ub9c8\ucf13\uc774 \uc124\uce58\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4.\n\uc124\uce58 \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 886
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v4, "Z999"

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 887
    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase$22;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_1
.end method
