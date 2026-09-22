.class Lcom/feelingk/iap/IAPActivity$11;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJoinDialogCancelButtonClick()V
    .locals 3

    .prologue
    .line 1410
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1411
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$25(Lcom/feelingk/iap/IAPActivity;)V

    .line 1414
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 1415
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1416
    .local v0, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onJoinDialogCancel()V

    .line 1417
    return-void
.end method

.method public onJoinDialogOKButtonClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 1394
    const-string v0, "join"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$25(Lcom/feelingk/iap/IAPActivity;)V

    .line 1397
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 1398
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1401
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendDataMemebership()V

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/16 v1, 0x6b

    const-string v2, "\uc774\uc6a9\uc57d\uad00 \ub3d9\uc758\uc5d0\n\uccb4\ud06c \ud574 \uc8fc\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onJoinFormDialogPopupClick(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1378
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.tstore.co.kr/userpoc/mobile/policy.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1380
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v1, v0}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    .line 1390
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.tstore.co.kr/userpoc/mobile/cashInfo.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1384
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v1, v0}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1386
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.tstore.co.kr/userpoc/mobile/information.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1388
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$11;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v1, v0}, Lcom/feelingk/iap/IAPActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
