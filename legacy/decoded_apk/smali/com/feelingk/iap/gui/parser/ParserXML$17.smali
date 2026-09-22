.class Lcom/feelingk/iap/gui/parser/ParserXML$17;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 5650
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 5651
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/feelingk/iap/gui/parser/ParserXML$17$1;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML$17$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML$17;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5661
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$35(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v0

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AutoPurchaseCheck:Z

    if-eqz v0, :cond_1

    .line 5662
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 5663
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseAutoButtonClick()V

    .line 5665
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    invoke-static {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$45(Lcom/feelingk/iap/gui/parser/ParserXML;[Z)V

    .line 5666
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$35(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/data/PurchaseItem;

    move-result-object v0

    iput-boolean v2, v0, Lcom/feelingk/iap/gui/data/PurchaseItem;->AfterAutoPurchaseInfoAgree:Z

    .line 5682
    :goto_0
    return-void

    .line 5669
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseAutoCancelButtonClick(Ljava/lang/String;)V

    goto :goto_0

    .line 5674
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseAutoButtonClick()V

    .line 5678
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmOCBUse()I

    move-result v0

    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmDotoriUse()I

    move-result v1

    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmCultureUse()I

    move-result v2

    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmTCashUse()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/iap/IAPLib;->setPayments(IIII)V

    goto :goto_0
.end method
