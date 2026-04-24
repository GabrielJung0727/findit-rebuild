.class Lcom/feelingk/iap/IAPActivity$8;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOCBPWDCancelButtonClick()V
    .locals 2

    .prologue
    .line 1235
    const-string v0, "IAPActivity"

    const-string v1, "onOCBPWDCancelButtonClick Click!!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1237
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$18(Lcom/feelingk/iap/IAPActivity;)V

    .line 1239
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1240
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1247
    return-void
.end method

.method public onOCBPWDOKButtonClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "ocbCardPWNum"    # Ljava/lang/String;

    .prologue
    .line 1224
    const-string v0, "IAPActivity"

    const-string v1, "onOCBPWDOKButtonClick Click!!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-static {p1}, Lcom/feelingk/iap/IAPLib;->sendOCBPointReq(Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$19(Lcom/feelingk/iap/IAPActivity;)V

    .line 1228
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 1229
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1230
    return-void
.end method

.method public onOCBRegistrationButtonClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "CardNum"    # Ljava/lang/String;

    .prologue
    .line 1204
    const-string v0, "IAPActivity"

    const-string v1, "onOCBRegistrationButtonClick Click!!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOcbCardUpdateType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/feelingk/iap/IAPLib;->sendOCBUpdateReq(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$18(Lcom/feelingk/iap/IAPActivity;)V

    .line 1207
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 1208
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1209
    return-void
.end method

.method public onOCBRegistrationCancelClick()V
    .locals 2

    .prologue
    .line 1214
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1215
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$18(Lcom/feelingk/iap/IAPActivity;)V

    .line 1217
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$8;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1218
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1219
    return-void
.end method
