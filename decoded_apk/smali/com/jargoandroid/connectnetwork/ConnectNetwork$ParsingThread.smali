.class Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;
.super Ljava/lang/Thread;
.source "ConnectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jargoandroid/connectnetwork/ConnectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParsingThread"
.end annotation


# instance fields
.field private mEncodingType:Ljava/lang/String;

.field private mRequestType:Ljava/lang/String;

.field private mResultType:I

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;


# direct methods
.method public constructor <init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p2, "encodingtype"    # Ljava/lang/String;
    .param p3, "requesttype"    # Ljava/lang/String;
    .param p4, "resulttype"    # I

    .prologue
    .line 708
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 707
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 709
    const-string v0, ">> ParsingThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 710
    iput-object p2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mEncodingType:Ljava/lang/String;

    .line 711
    iput-object p3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mRequestType:Ljava/lang/String;

    .line 712
    iput p4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mResultType:I

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mTag:Ljava/lang/String;

    .line 715
    const-string v0, "ParsingThread"

    invoke-virtual {p0, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->setName(Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public constructor <init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p2, "encodingtype"    # Ljava/lang/String;
    .param p3, "requesttype"    # Ljava/lang/String;
    .param p4, "resulttype"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 718
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 720
    const-string v0, ">> ParsingThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 721
    iput-object p2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mEncodingType:Ljava/lang/String;

    .line 722
    iput-object p3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mRequestType:Ljava/lang/String;

    .line 723
    iput p4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mResultType:I

    .line 724
    iput-object p5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mTag:Ljava/lang/String;

    .line 726
    const-string v0, "ParsingThread"

    invoke-virtual {p0, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->setName(Ljava/lang/String;)V

    .line 727
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 730
    const-string v7, ">>ParsingThread:run()"

    invoke-static {v7}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 731
    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v7}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 732
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 734
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 735
    .local v4, "result":Z
    iget v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mResultType:I

    packed-switch v7, :pswitch_data_0

    .line 763
    :goto_0
    const-string v5, "result"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 764
    const-string v5, "tag_string"

    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 766
    iget-object v5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    iget-object v5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v5, v6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$11(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Z)V

    .line 770
    const-string v5, "ParsingThread end"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 771
    return-void

    .line 737
    :pswitch_0
    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v8, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v9, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mEncodingType:Ljava/lang/String;

    iget-object v10, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mRequestType:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$1(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$2(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/util/HashMap;)V

    .line 738
    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v7}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$3(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_0

    move v4, v5

    .line 739
    :goto_1
    goto :goto_0

    :cond_0
    move v4, v6

    .line 738
    goto :goto_1

    .line 742
    :pswitch_1
    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v8, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v9, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mEncodingType:Ljava/lang/String;

    iget-object v10, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mRequestType:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$4(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$5(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Lorg/json/JSONArray;)V

    .line 743
    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v7}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$6(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_1

    move v4, v5

    .line 745
    :goto_2
    goto :goto_0

    :cond_1
    move v4, v6

    .line 743
    goto :goto_2

    .line 748
    :pswitch_2
    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v8, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v9, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mEncodingType:Ljava/lang/String;

    iget-object v10, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mRequestType:Ljava/lang/String;

    invoke-static {v8, v9, v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$7(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$8(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Lorg/json/JSONObject;)V

    .line 749
    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v7}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$9(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    move v4, v5

    .line 751
    :goto_3
    goto :goto_0

    :cond_2
    move v4, v6

    .line 749
    goto :goto_3

    .line 756
    :pswitch_3
    :try_start_0
    iget-object v5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mEncodingType:Ljava/lang/String;

    iget-object v8, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ParsingThread;->mRequestType:Ljava/lang/String;

    invoke-static {v5, v7, v8}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$10(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "jsondata":Ljava/lang/String;
    const-string v5, "data"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 758
    .end local v2    # "jsondata":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 759
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
