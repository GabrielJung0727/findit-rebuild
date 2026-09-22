.class Lcom/feelingk/iap/IAPActivity$9;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCultureLandButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cultureLandID"    # Ljava/lang/String;
    .param p2, "cultureLandPW"    # Ljava/lang/String;

    .prologue
    .line 1259
    const-string v0, "IAPActivity"

    const-string v1, "onCultureLandButtonClick Click!!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;)V

    .line 1263
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 1264
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1266
    invoke-static {p1, p2}, Lcom/feelingk/iap/IAPLib;->sendCultureLandCashInfoReq(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    return-void
.end method

.method public onCultureLandCancelButtonClick()V
    .locals 2

    .prologue
    .line 1272
    const-string v0, "IAPActivity"

    const-string v1, "onCultureLandCancelButtonClick Click!!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1274
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$20(Lcom/feelingk/iap/IAPActivity;)V

    .line 1276
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$9;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1277
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1279
    return-void
.end method
