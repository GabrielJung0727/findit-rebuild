.class Lcom/feelingk/iap/IAPLib$1;
.super Landroid/os/Handler;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 655
    const-string v10, "IAPLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[NET-Handler] Network Message Receive Msg.what = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1000
    :pswitch_0
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 1003
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/feelingk/iap/gui/data/SingletonCounter;->clear()V

    .line 1005
    const/4 v7, 0x0

    .line 1006
    .local v7, "msgUI":Landroid/os/Message;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_0

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1007
    :cond_0
    sget-object v10, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NONE_PARAMETER_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v10}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1011
    :cond_1
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x7d3

    if-ne v10, v11, :cond_2

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_2

    .line 1014
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->updateEncJuminNumber(Ljava/lang/String;)V

    .line 1017
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1018
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1019
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1021
    :cond_3
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v10, :cond_4

    .line 1022
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x7e2

    if-eq v10, v11, :cond_4

    .line 1023
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x7e3

    if-eq v10, v11, :cond_4

    .line 1024
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x7e4

    if-eq v10, v11, :cond_4

    .line 1025
    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x7e6

    if-eq v10, v11, :cond_4

    .line 1026
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    iget v11, p1, Landroid/os/Message;->what:I

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v11, v12}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onError(II)V

    .line 1030
    .end local v7    # "msgUI":Landroid/os/Message;
    :cond_4
    :goto_0
    return-void

    .line 662
    :pswitch_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    .line 663
    iget v10, p1, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    sput-object v10, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    .line 664
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()I

    move-result v10

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$1()I

    move-result v11

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$2()I

    move-result v12

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$3()I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Lcom/feelingk/iap/IAPLib;->sendItemQuery(IIII)V

    .line 665
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/feelingk/iap/IAPLib;->setPayments(IIII)V

    .line 667
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/feelingk/iap/gui/data/SingletonCounter;->clear()V

    goto :goto_0

    .line 662
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 663
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 674
    :pswitch_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()I

    move-result v10

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$1()I

    move-result v11

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$2()I

    move-result v12

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$3()I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Lcom/feelingk/iap/IAPLib;->sendItemQuery(IIII)V

    .line 675
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/feelingk/iap/IAPLib;->setPayments(IIII)V

    .line 677
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/feelingk/iap/gui/data/SingletonCounter;->clear()V

    goto :goto_0

    .line 682
    :pswitch_3
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v10, :cond_4

    .line 684
    const/4 v0, 0x0

    .line 687
    .local v0, "bFlag":Z
    :try_start_0
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v10}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemQueryComplete()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 689
    if-eqz v0, :cond_8

    .line 690
    const-string v10, "IAPLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onItemQueryComplete bFlag: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    sget v10, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 693
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->sendItemPurchse(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 709
    :catch_0
    move-exception v2

    .line 710
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "IAPLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[Exception] "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 712
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x7d3

    sget-object v12, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_ONITEMQUERY_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v12}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 713
    .local v6, "messageUI":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 714
    const-string v10, "IAPLib"

    const-string v11, "[Exception] mClientListener.onItemQueryComplete() is null!!"

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "messageUI":Landroid/os/Message;
    :cond_7
    :try_start_1
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget v11, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v12, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    sget-object v13, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-static {v10, v11, v12, v13}, Lcom/feelingk/iap/IAPLib;->sendItemPurchseByDanal(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 699
    :cond_8
    const-string v10, "IAPLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onItemQueryComplete bFlag: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 702
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x7d3

    sget-object v12, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_ONITEMQUERY_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v12}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 703
    .restart local v6    # "messageUI":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 704
    const-string v10, "IAPLib"

    const-string v11, "mClientListener.onItemQueryComplete() is false!!"

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 723
    .end local v0    # "bFlag":Z
    .end local v6    # "messageUI":Landroid/os/Message;
    :pswitch_4
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 730
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 731
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v10, :cond_4

    .line 732
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x452

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 733
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 745
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_5
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v10, :cond_4

    .line 747
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setIsOTPAuth(Z)V

    .line 748
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setOTPAgree(Z)V

    .line 749
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setOTPPurchaseSuccess(Z)V

    .line 750
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v10}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemPurchaseComplete()V

    goto/16 :goto_0

    .line 757
    :pswitch_6
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    .line 758
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget-object v11, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/feelingk/iap/net/IAPBase;->setBaseEncodeJuminNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 763
    :pswitch_7
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 765
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 766
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x450

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 767
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 773
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_8
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    goto/16 :goto_0

    .line 779
    :pswitch_9
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 781
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 782
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x45f

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 783
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 789
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_a
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 791
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 792
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x465

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 793
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 798
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_b
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 800
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 801
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x46b

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 802
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 818
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_c
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 820
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 821
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x466

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 822
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 828
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_d
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 830
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 831
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v10}, Lcom/feelingk/iap/net/IAPBase;->getLGUSmsAuthNumberConfirmMessage()Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    move-result-object v1

    .line 833
    .local v1, "confirm":Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    invoke-virtual {v1}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getAuthKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->access$5(Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x468

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 836
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 842
    .end local v1    # "confirm":Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .end local v7    # "msgUI":Landroid/os/Message;
    :cond_9
    :pswitch_e
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 844
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 845
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x45d

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 846
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 852
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_f
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 854
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 855
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x463

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 856
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 862
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_10
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 864
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 865
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x473

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 866
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 872
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_11
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 874
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 875
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x461

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 876
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 882
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_12
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 885
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v10}, Lcom/feelingk/iap/net/IAPBase;->getItemWholeAuthConfirmMessage()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    move-result-object v9

    .line 887
    .local v9, "whole":Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v10, :cond_4

    .line 888
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-virtual {v9}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->getItems()[Lcom/feelingk/iap/net/ItemAuth;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onWholeQuery([Lcom/feelingk/iap/net/ItemAuth;)V

    goto/16 :goto_0

    .line 894
    .end local v9    # "whole":Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    :pswitch_13
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 897
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v10}, Lcom/feelingk/iap/net/IAPBase;->getItemUseConfirmMessage()Lcom/feelingk/iap/net/ItemUseConfirm;

    move-result-object v5

    .line 898
    .local v5, "itemUse":Lcom/feelingk/iap/net/ItemUseConfirm;
    new-instance v4, Lcom/feelingk/iap/net/ItemUse;

    invoke-direct {v4}, Lcom/feelingk/iap/net/ItemUse;-><init>()V

    .line 900
    .local v4, "item":Lcom/feelingk/iap/net/ItemUse;
    invoke-virtual {v5}, Lcom/feelingk/iap/net/ItemUseConfirm;->getItemID()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/feelingk/iap/net/ItemUse;->pId:Ljava/lang/String;

    .line 901
    invoke-virtual {v5}, Lcom/feelingk/iap/net/ItemUseConfirm;->getItemName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/feelingk/iap/net/ItemUse;->pName:Ljava/lang/String;

    .line 902
    invoke-virtual {v5}, Lcom/feelingk/iap/net/ItemUseConfirm;->getCount()I

    move-result v10

    iput v10, v4, Lcom/feelingk/iap/net/ItemUse;->pCount:I

    .line 904
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v10, :cond_4

    .line 905
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v10, v4}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemUseQuery(Lcom/feelingk/iap/net/ItemUse;)V

    goto/16 :goto_0

    .line 911
    .end local v4    # "item":Lcom/feelingk/iap/net/ItemUse;
    .end local v5    # "itemUse":Lcom/feelingk/iap/net/ItemUseConfirm;
    :pswitch_14
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 914
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v10}, Lcom/feelingk/iap/net/IAPBase;->getInitConfirmMessage()Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v3

    .line 916
    .local v3, "init":Lcom/feelingk/iap/net/InitConfirm;
    new-instance v4, Lcom/feelingk/iap/net/ItemAuthInfo;

    invoke-direct {v4}, Lcom/feelingk/iap/net/ItemAuthInfo;-><init>()V

    .line 918
    .local v4, "item":Lcom/feelingk/iap/net/ItemAuthInfo;
    invoke-virtual {v3}, Lcom/feelingk/iap/net/InitConfirm;->getCount()I

    move-result v10

    iput v10, v4, Lcom/feelingk/iap/net/ItemAuthInfo;->pCount:I

    .line 919
    invoke-virtual {v3}, Lcom/feelingk/iap/net/InitConfirm;->getExpireDate()[B

    move-result-object v10

    iput-object v10, v4, Lcom/feelingk/iap/net/ItemAuthInfo;->pExpireDate:[B

    .line 920
    invoke-virtual {v3}, Lcom/feelingk/iap/net/InitConfirm;->getToken()[B

    move-result-object v10

    iput-object v10, v4, Lcom/feelingk/iap/net/ItemAuthInfo;->pToken:[B

    .line 922
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v10, :cond_4

    .line 923
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v10, v4}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemAuthInfo(Lcom/feelingk/iap/net/ItemAuthInfo;)V

    goto/16 :goto_0

    .line 930
    .end local v3    # "init":Lcom/feelingk/iap/net/InitConfirm;
    .end local v4    # "item":Lcom/feelingk/iap/net/ItemAuthInfo;
    :pswitch_15
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 932
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 933
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x460

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 934
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 940
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_16
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 943
    const-string v10, "IAPLib"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "OKCashbag \uce74\ub4dc \uc5c5\ub370\uc774\ud2b8: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$6()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$6()Ljava/lang/String;

    move-result-object v10

    const-string v11, "D"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$6()Ljava/lang/String;

    move-result-object v10

    const-string v11, "U"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 947
    :cond_a
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPaymentTotal()I

    move-result v10

    .line 948
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmOCBUse()I

    move-result v11

    .line 947
    sub-int v8, v10, v11

    .line 949
    .local v8, "totalPay":I
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmOCBUse(I)V

    .line 950
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmPaymentTotal(I)V

    .line 952
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    .line 953
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmTotalBalance()I

    move-result v11

    .line 954
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPaymentTotal()I

    move-result v12

    .line 953
    sub-int/2addr v11, v12

    .line 952
    invoke-virtual {v10, v11}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmPostPay(I)V

    .line 956
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmOCBBtnFlag(Z)V

    .line 959
    .end local v8    # "totalPay":I
    :cond_b
    sget-object v10, Lcom/feelingk/iap/IAPLib;->mProductID:Ljava/lang/String;

    sget-object v11, Lcom/feelingk/iap/IAPLib;->mProductName:Ljava/lang/String;

    sget-object v12, Lcom/feelingk/iap/IAPLib;->mTID:Ljava/lang/String;

    sget-object v13, Lcom/feelingk/iap/IAPLib;->mBPInfo:Ljava/lang/String;

    invoke-static {v10, v11, v12, v13}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 964
    :pswitch_17
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 966
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 967
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x46e

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 968
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 974
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_18
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    goto/16 :goto_0

    .line 980
    :pswitch_19
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 982
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 983
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x471

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 984
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 990
    .end local v7    # "msgUI":Landroid/os/Message;
    :pswitch_1a
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 992
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 993
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$4()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x46f

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 994
    .restart local v7    # "msgUI":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_9
        :pswitch_15
        :pswitch_11
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method
