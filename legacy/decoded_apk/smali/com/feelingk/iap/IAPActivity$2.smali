.class Lcom/feelingk/iap/IAPActivity$2;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/iap/IAPActivity$2;)Lcom/feelingk/iap/IAPActivity;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;

    return-object v0
.end method


# virtual methods
.method public onForeignInputMDNOKButtonClick(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "carrier"    # I
    .param p2, "strMDN"    # Ljava/lang/String;
    .param p3, "JuminNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 939
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4}, Lcom/feelingk/iap/IAPActivity;->access$0(Lcom/feelingk/iap/IAPActivity;)V

    .line 941
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$2;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v4, p1}, Lcom/feelingk/iap/util/CommonF;->setCarrier(Landroid/content/Context;I)V

    .line 942
    invoke-static {p2}, Lcom/feelingk/iap/util/CommonF;->setMDN(Ljava/lang/String;)V

    .line 947
    :try_start_0
    invoke-static {p3}, Lcom/feelingk/iap/encryption/CryptoManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 954
    .local v3, "tmpJuminNumber":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 956
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v1

    .line 957
    .local v1, "hnd":Landroid/os/Handler;
    const/16 v4, 0x456

    invoke-virtual {v1, v4, v5, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 958
    .local v2, "msgNET":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 961
    .end local v1    # "hnd":Landroid/os/Handler;
    .end local v2    # "msgNET":Landroid/os/Message;
    :cond_0
    const/16 v4, 0x64

    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 963
    if-eqz v3, :cond_1

    .line 964
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/feelingk/iap/IAPActivity$2$1;

    invoke-direct {v5, p0}, Lcom/feelingk/iap/IAPActivity$2$1;-><init>(Lcom/feelingk/iap/IAPActivity$2;)V

    .line 988
    const-wide/16 v6, 0x12c

    .line 964
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 991
    :cond_1
    return-void

    .line 949
    .end local v3    # "tmpJuminNumber":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 950
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 951
    .restart local v3    # "tmpJuminNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
