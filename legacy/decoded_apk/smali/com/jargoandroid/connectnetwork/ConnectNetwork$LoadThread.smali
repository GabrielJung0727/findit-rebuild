.class Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;
.super Ljava/lang/Thread;
.source "ConnectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jargoandroid/connectnetwork/ConnectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadThread"
.end annotation


# instance fields
.field private mDesName:Ljava/lang/String;

.field private mDesPath:Ljava/lang/String;

.field private mLoadType:Z

.field private mSize:J

.field private mSrcName:Ljava/lang/String;

.field private mSrcPath:Ljava/lang/String;

.field private mTag:I

.field final synthetic this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;


# direct methods
.method public constructor <init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p2, "srcpath"    # Ljava/lang/String;
    .param p3, "srcname"    # Ljava/lang/String;
    .param p4, "size"    # J
    .param p6, "despath"    # Ljava/lang/String;
    .param p7, "desname"    # Ljava/lang/String;
    .param p8, "tag"    # I
    .param p9, "loadtype"    # Z

    .prologue
    .line 782
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 781
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 783
    const-string v0, ">> LoadThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 784
    iput-object p2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSrcPath:Ljava/lang/String;

    .line 785
    iput-object p3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSrcName:Ljava/lang/String;

    .line 786
    iput p8, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mTag:I

    .line 787
    iput-wide p4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSize:J

    .line 788
    iput-object p6, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesPath:Ljava/lang/String;

    .line 789
    iput-object p7, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesName:Ljava/lang/String;

    .line 790
    iput-boolean p9, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mLoadType:Z

    .line 792
    const-string v0, "LoadThread"

    invoke-virtual {p0, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->setName(Ljava/lang/String;)V

    .line 793
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 796
    const-string v0, ">>LoadThread:run()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 798
    .local v8, "msg":Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 800
    .local v7, "bundle":Landroid/os/Bundle;
    iget-boolean v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mLoadType:Z

    if-eqz v0, :cond_1

    .line 801
    iget-object v11, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSrcPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSrcName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSize:J

    iget-object v5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesPath:Ljava/lang/String;

    .line 802
    iget-object v6, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesName:Ljava/lang/String;

    .line 801
    invoke-static/range {v0 .. v6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$12(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$2(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/util/HashMap;)V

    .line 803
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$3(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    .line 804
    .local v9, "result":Z
    :goto_0
    const-string v0, "result"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 811
    .end local v9    # "result":Z
    :goto_1
    const-string v0, "tag_int"

    iget v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mTag:I

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 813
    const-string v0, "filepath"

    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesPath:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "filename"

    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesName:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    invoke-virtual {v8, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 817
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v0, v10}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$11(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Z)V

    .line 821
    const-string v0, "LoadThread end"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 822
    return-void

    :cond_0
    move v9, v10

    .line 803
    goto :goto_0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSrcPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSrcName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mSize:J

    iget-object v5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesPath:Ljava/lang/String;

    .line 807
    iget-object v6, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$LoadThread;->mDesName:Ljava/lang/String;

    .line 806
    invoke-static/range {v0 .. v6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$13(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 808
    .local v9, "result":I
    const-string v0, "result"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
