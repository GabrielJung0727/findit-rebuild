.class Lcom/feelingk/iap/gui/parser/ParserXML$23;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$23;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 5793
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$50()Landroid/widget/Button;

    move-result-object v5

    sget-object v6, Lcom/feelingk/iap/util/CommonString$Index;->MENT_NUMBER_RECLAIMED:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v6}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5794
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$50()Landroid/widget/Button;

    move-result-object v5

    const-string v6, "#999999"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 5796
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$51(Ljava/lang/Boolean;)V

    .line 5807
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onGetLguSmsAuthTime()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5810
    .local v1, "now":J
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5813
    .local v4, "sdfNow":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 5814
    .local v0, "currTime":Ljava/lang/String;
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onGetLguSmsAuthTime()Ljava/lang/String;

    move-result-object v3

    .line 5815
    .local v3, "oldTime":Ljava/lang/String;
    const-string v5, "ParserXML"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currTime: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5816
    const-string v5, "ParserXML"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "oldTime: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5819
    invoke-static {v3, v0}, Lcom/feelingk/iap/util/CommonF;->getTimeDifference(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0xb4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 5820
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onErrorPopup()V

    .line 5821
    const-string v5, "ParserXML"

    const-string v6, "LguSmsAuthNumberReq Fail"

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5866
    .end local v0    # "currTime":Ljava/lang/String;
    .end local v1    # "now":J
    .end local v3    # "oldTime":Ljava/lang/String;
    .end local v4    # "sdfNow":Ljava/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 5826
    .restart local v0    # "currTime":Ljava/lang/String;
    .restart local v1    # "now":J
    .restart local v3    # "oldTime":Ljava/lang/String;
    .restart local v4    # "sdfNow":Ljava/text/SimpleDateFormat;
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthNumberReq()V

    .line 5827
    const-string v5, "ParserXML"

    const-string v6, "LguSmsAuthNumberReq Flow1 Start "

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5829
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onSetLguSmsAuthTime(Z)V

    goto :goto_0

    .line 5836
    .end local v0    # "currTime":Ljava/lang/String;
    .end local v1    # "now":J
    .end local v3    # "oldTime":Ljava/lang/String;
    .end local v4    # "sdfNow":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthNumberReq()V

    .line 5837
    const-string v5, "ParserXML"

    const-string v6, "LguSmsAuthNumberReq Flow2 Start "

    invoke-static {v5, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5839
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v5

    invoke-interface {v5, v9}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onSetLguSmsAuthTime(Z)V

    goto :goto_0
.end method
