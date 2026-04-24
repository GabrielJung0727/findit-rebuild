.class Lcom/feelingk/iap/IAPActivity$17;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$17;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x6b

    const/16 v7, 0x67

    const/4 v6, 0x0

    .line 2060
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2061
    .local v0, "hnd":Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2062
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2064
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$17;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    .line 2068
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v8, :cond_0

    .line 2069
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 2070
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2073
    :cond_0
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$17;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$17;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 2074
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$17;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 2076
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$17;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 2077
    .local v2, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    sget-boolean v3, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v3, :cond_2

    .line 2078
    sput-boolean v6, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 2080
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onPurchaseDismiss()V

    .line 2089
    :cond_1
    :goto_0
    return-void

    .line 2085
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v8, :cond_1

    .line 2086
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 2087
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgError()V

    goto :goto_0
.end method
