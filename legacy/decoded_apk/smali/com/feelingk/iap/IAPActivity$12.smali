.class Lcom/feelingk/iap/IAPActivity$12;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtpDialogCancelButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1439
    const-string v3, "IAPActivity"

    const-string v4, "onOtpDialogCancelButtonClick"

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1442
    .local v0, "hnd":Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1443
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1445
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$26(Lcom/feelingk/iap/IAPActivity;)V

    .line 1447
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1448
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/feelingk/iap/IAPActivity;->access$28(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    invoke-static {v3, v5}, Lcom/feelingk/iap/IAPActivity;->access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V

    .line 1449
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3, v6}, Lcom/feelingk/iap/IAPActivity;->access$30(Lcom/feelingk/iap/IAPActivity;Z)V

    .line 1452
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v3

    iget-object v2, v3, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1453
    .local v2, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v2}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    .line 1455
    return-void
.end method

.method public onOtpDialogOK()V
    .locals 2

    .prologue
    .line 1429
    const-string v0, "IAPActivity"

    const-string v1, "onOtpDialogOKButtonClick"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$26(Lcom/feelingk/iap/IAPActivity;)V

    .line 1431
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setIsOTPAuth(Z)V

    .line 1433
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1434
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$27(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    .line 1435
    return-void
.end method

.method public onOtpErrorPopup()V
    .locals 3

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x77

    const-string v2, "T store \uc571\uc758 \uc5c5\uadf8\ub808\uc774\ub4dc\uac00 \ud544\uc694\ud569\ub2c8\ub2e4. \uc5c5\uadf8\ub808\uc774\ub4dc \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1466
    return-void
.end method

.method public onOtpTstoreButtonClick()V
    .locals 3

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$12;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x77

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->DLG_TSTORE_NOT_INSTALLED_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1460
    return-void
.end method
