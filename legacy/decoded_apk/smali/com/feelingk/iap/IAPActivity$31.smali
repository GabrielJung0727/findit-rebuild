.class Lcom/feelingk/iap/IAPActivity$31;
.super Landroid/os/Handler;
.source "IAPActivity.java"


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 2286
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2289
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v6

    .line 2291
    .local v6, "dlgType":I
    const-string v16, "IAPActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[GUI-Handler] mGUIMessageHandler msg.what= "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 2584
    :pswitch_0
    const-string v16, "IAPActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[GUI Handler] OnError "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    const-string v16, "IAPActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "dlgType :"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2588
    const/16 v16, 0x64

    move/from16 v0, v16

    if-eq v6, v0, :cond_0

    .line 2589
    const/16 v16, 0x0

    sput-boolean v16, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 2590
    const/16 v16, 0x64

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 2595
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7d4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7d7

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_6

    .line 2648
    :cond_1
    :goto_0
    return-void

    .line 2298
    :pswitch_1
    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_USER_CERTI_FAIL_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_USER_CERTI_FAIL_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2308
    :pswitch_2
    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$60(Lcom/feelingk/iap/IAPActivity;)V

    .line 2311
    const/16 v16, 0x76

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 2329
    :pswitch_3
    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$61(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2333
    const/16 v16, 0x74

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2341
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$63(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$64(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getAuthKey()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$65(Ljava/lang/String;)V

    .line 2344
    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->access$31()Ljava/lang/String;

    move-result-object v16

    const-string v17, "TEST"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 2345
    const/4 v15, 0x0

    .line 2346
    .local v15, "randomNum":I
    const/4 v11, 0x1

    .local v11, "num":I
    :goto_1
    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v11, v0, :cond_2

    .line 2350
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2347
    :cond_2
    const v9, 0x186a0

    .local v9, "n1":I
    const v10, 0xf423f

    .line 2348
    .local v10, "n2":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const v18, 0xdbba0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    int-to-double v0, v9

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    .line 2346
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2356
    .end local v9    # "n1":I
    .end local v10    # "n2":I
    .end local v11    # "num":I
    .end local v15    # "randomNum":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2358
    const/16 v16, 0x67

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$27(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto/16 :goto_0

    .line 2364
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_PURCHASE_INFONAME:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_FORM_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    const/16 v16, 0x6c

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 2372
    :pswitch_7
    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$66(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 2375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$67(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$68(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V

    .line 2376
    const/16 v16, 0x1

    sput-boolean v16, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->FINAL_VERSION_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->FINAL_VERSION_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2385
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$61(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2393
    :pswitch_9
    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2397
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 2398
    .local v8, "itemInfoConfirmObj":Lcom/feelingk/iap/net/ItemInfoConfirm;
    invoke-virtual {v8}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAutoPurchaseCheck()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 2403
    const/16 v16, 0x67

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 2407
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    sget-object v18, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_DLG_AUTO_PURCHASE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    .line 2408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_DLG_AUTO_PURCHASE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$61(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2409
    const/16 v16, 0x65

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 2414
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 2415
    const/16 v16, 0x67

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 2425
    .end local v8    # "itemInfoConfirmObj":Lcom/feelingk/iap/net/ItemInfoConfirm;
    :pswitch_a
    const/16 v16, 0x67

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$16(Lcom/feelingk/iap/IAPActivity;)V

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$33(Lcom/feelingk/iap/IAPActivity;)V

    .line 2431
    const/16 v16, 0x68

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 2439
    :pswitch_b
    const/16 v16, 0x68

    move/from16 v0, v16

    if-ne v6, v0, :cond_1

    .line 2440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2453
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/feelingk/iap/net/MsgConfirm;

    .line 2456
    .local v3, "confirm":Lcom/feelingk/iap/net/MsgConfirm;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v18

    const-string v19, "MS949"

    invoke-direct/range {v17 .. v19}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$69(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$70(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$69(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2463
    :goto_2
    const/16 v16, 0x69

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$70(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2459
    :catch_0
    move-exception v7

    .line 2460
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 2483
    .end local v3    # "confirm":Lcom/feelingk/iap/net/MsgConfirm;
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2485
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/feelingk/iap/net/PurchaseParam;

    .line 2488
    .local v14, "pp":Lcom/feelingk/iap/net/PurchaseParam;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-virtual {v14}, Lcom/feelingk/iap/net/PurchaseParam;->getpId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v14}, Lcom/feelingk/iap/net/PurchaseParam;->getpName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v14}, Lcom/feelingk/iap/net/PurchaseParam;->getpTid()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v14}, Lcom/feelingk/iap/net/PurchaseParam;->getpBPInfo()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Lcom/feelingk/iap/IAPActivity;->popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2496
    .end local v14    # "pp":Lcom/feelingk/iap/net/PurchaseParam;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/feelingk/iap/net/MsgConfirm;

    .line 2499
    .restart local v3    # "confirm":Lcom/feelingk/iap/net/MsgConfirm;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getMsg()[B

    move-result-object v18

    const-string v19, "MS949"

    invoke-direct/range {v17 .. v19}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$69(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$70(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$69(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2505
    :goto_3
    const-string v16, "IAPActivity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$70(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2507
    const/16 v16, 0x70

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$70(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2502
    :catch_1
    move-exception v7

    .line 2503
    .restart local v7    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 2513
    .end local v3    # "confirm":Lcom/feelingk/iap/net/MsgConfirm;
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2515
    const/16 v16, 0x1

    sput-boolean v16, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 2516
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;

    .line 2517
    .local v4, "confirmObj":Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;
    invoke-virtual {v4}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->getmDismissInfo()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Y"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v4}, Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;->getmDismissCount()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    sget-object v17, Lcom/feelingk/iap/util/CommonString$Index;->DLG_AUTO_PURCHASE_INFO:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$3(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$71(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2522
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/feelingk/iap/util/CommonString$Index;->DLG_AUTO_PURCHASE_INFO:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2523
    sget-object v18, Lcom/feelingk/iap/util/CommonString$Index;->DLG_AUTO_PURCHASE_INFO2:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2522
    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$3(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$71(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2533
    .end local v4    # "confirmObj":Lcom/feelingk/iap/net/AutoPurchaseDismissCheckConfirm;
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;

    .line 2535
    .local v13, "ocbpointObj":Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;
    invoke-virtual {v13}, Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;->getOCBPointBalance()Ljava/lang/String;

    move-result-object v12

    .line 2537
    .local v12, "ocbPoint":Ljava/lang/String;
    invoke-static {v12}, Lcom/feelingk/iap/IAPLib;->setOCBPoint(Ljava/lang/String;)V

    .line 2538
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setOCBPointInfo(Z)V

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2541
    const/16 v16, 0x67

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2549
    .end local v12    # "ocbPoint":Ljava/lang/String;
    .end local v13    # "ocbpointObj":Lcom/feelingk/iap/net/OKCashbagPointInfoConfirm;
    :pswitch_10
    const-string v16, "DotoriSMSAuthLog.txt"

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->reset(Ljava/lang/String;)V

    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 2556
    const/16 v16, 0x67

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 2562
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/feelingk/iap/net/CultureLandCashConfirm;

    .line 2564
    .local v5, "cultureLandCashObj":Lcom/feelingk/iap/net/CultureLandCashConfirm;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/feelingk/iap/net/CultureLandCashConfirm;->getCultureLandCashBalance()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2566
    .local v2, "CLPoint":Ljava/lang/String;
    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setCultureLandCashPoint(Ljava/lang/String;)V

    .line 2567
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setCultureCashQueryInfo(Z)V

    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 2571
    const/16 v16, 0x67

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto/16 :goto_0

    .line 2599
    .end local v2    # "CLPoint":Ljava/lang/String;
    .end local v5    # "cultureLandCashObj":Lcom/feelingk/iap/net/CultureLandCashConfirm;
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7dd

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$32(Lcom/feelingk/iap/IAPActivity;)V

    .line 2602
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7e2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 2604
    const-string v16, ""

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setOcbCardUpdateType(Ljava/lang/String;)V

    .line 2605
    const-string v16, "IAPActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "getOcbCardUpdateType: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOcbCardUpdateType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7e5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7d8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 2609
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$21(Lcom/feelingk/iap/IAPActivity;)V

    .line 2615
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$35(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_b

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$34(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$17(Lcom/feelingk/iap/IAPActivity;)V

    .line 2620
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$61(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2621
    const-string v16, "IAPActivity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/IAPActivity;->access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7e2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7e3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 2624
    :cond_c
    const/16 v16, 0x7f

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2628
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7e4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 2629
    const/16 v16, 0x80

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2633
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x7e6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 2634
    const/16 v16, 0x82

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2639
    :cond_f
    const/16 v16, 0x65

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/feelingk/iap/IAPActivity;->access$47(Lcom/feelingk/iap/IAPActivity;)V

    .line 2641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity$31;->this$0:Lcom/feelingk/iap/IAPActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/feelingk/iap/IAPActivity;->access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2292
    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_c
        :pswitch_8
        :pswitch_0
        :pswitch_d
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
