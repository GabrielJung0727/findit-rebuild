.class Lcom/feelingk/iap/IAPActivity$10;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDotoriSmsAuthCancelButtonClick()V
    .locals 2

    .prologue
    .line 1306
    const-string v0, "IAPActivity"

    const-string v1, "onDotoriSmsAuthCancelButtonClick Click!!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;)V

    .line 1310
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$22(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1312
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1313
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1315
    return-void
.end method

.method public onDotoriSmsAuthOKButtonClick()V
    .locals 2

    .prologue
    .line 1289
    const-string v0, "IAPActivity"

    const-string v1, "onDotoriSmsAuthOKButtonClick Click!!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1291
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;)V

    .line 1293
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 1294
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1297
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDotoriSmsNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->sendDotoriSmsAuthReq(Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$22(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 1302
    return-void
.end method

.method public onDotoriSmsAuthSMSReceiveButtonClick()V
    .locals 10

    .prologue
    const/16 v9, 0x77

    .line 1324
    const-string v5, "IAPActivity"

    const-string v6, "onDotoriSmsAuthSMSReceiveButtonClick Click!!"

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1328
    .local v1, "now":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v4, "sdfNow":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    .local v0, "currTime":Ljava/lang/String;
    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v5}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1333
    .local v3, "oldTime":Ljava/lang/String;
    const-string v5, "IAPActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currTime: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string v5, "IAPActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oldTime: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v5}, Lcom/feelingk/iap/IAPActivity;->access$23(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v3, v0}, Lcom/feelingk/iap/util/CommonF;->getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 1340
    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    sget-object v6, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_AUTH_SMS_SEND_MESSAGE_ERROR_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v6}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v9, v6}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1355
    :goto_0
    return-void

    .line 1347
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendDotoriSmsAuthNumberReq()V

    .line 1349
    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    sget-object v6, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_AUTH_SMS_SEND_MESSAGE_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v6}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v9, v6}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 1351
    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity$10;->this$0:Lcom/feelingk/iap/IAPActivity;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/IAPActivity;->access$22(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
