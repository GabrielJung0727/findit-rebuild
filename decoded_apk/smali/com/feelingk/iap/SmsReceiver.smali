.class public Lcom/feelingk/iap/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# instance fields
.field mSmsAddress:Ljava/lang/String;

.field mSmsAuthNumber:Ljava/lang/String;

.field mSmsMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsMessage:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsAuthNumber:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsAddress:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x1b

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 22
    const-string v5, "pdus"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 23
    .local v4, "pdusObj":[Ljava/lang/Object;
    array-length v5, v4

    new-array v3, v5, [Landroid/telephony/SmsMessage;

    .line 24
    .local v3, "messages":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_1

    .line 28
    const/4 v1, 0x0

    :goto_1
    array-length v5, v3

    if-lt v1, v5, :cond_2

    .line 52
    .end local v1    # "i":I
    .end local v3    # "messages":[Landroid/telephony/SmsMessage;
    .end local v4    # "pdusObj":[Ljava/lang/Object;
    :cond_0
    return-void

    .line 25
    .restart local v1    # "i":I
    .restart local v3    # "messages":[Landroid/telephony/SmsMessage;
    .restart local v4    # "pdusObj":[Ljava/lang/Object;
    :cond_1
    aget-object v5, v4, v1

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    aput-object v5, v3, v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_2
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsMessage:Ljava/lang/String;

    .line 31
    const-string v5, "mSmsMessage: "

    iget-object v6, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsMessage:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v5, "mSmsMessage length: "

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsMessage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v5, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsMessage:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_3

    .line 38
    iget-object v5, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsMessage:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "isDanaMsg":Ljava/lang/String;
    const-string v5, "isDanaMsg: "

    invoke-static {v5, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v5, "[  tstore.co.kr]\uc2b9\uc778\ubc88\ud638"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 42
    iget-object v5, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsMessage:Ljava/lang/String;

    const/16 v6, 0x15

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsAuthNumber:Ljava/lang/String;

    .line 43
    const-string v5, "mSmsAuthNumber: "

    iget-object v6, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsAuthNumber:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v5, p0, Lcom/feelingk/iap/SmsReceiver;->mSmsAuthNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    .line 28
    .end local v2    # "isDanaMsg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
