.class Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;
.super Ljava/lang/Thread;
.source "ConnectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jargoandroid/connectnetwork/ConnectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectSocketThread"
.end annotation


# instance fields
.field private mIp:Ljava/lang/String;

.field private mPort:I

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;


# direct methods
.method public constructor <init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 998
    const-string v0, ">> ConnectSocketThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 999
    iput-object p2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->mIp:Ljava/lang/String;

    .line 1000
    iput p3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->mPort:I

    .line 1001
    iput-object p4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->mTag:Ljava/lang/String;

    .line 1003
    const-string v0, "ConnectSocketThread"

    invoke-virtual {p0, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->setName(Ljava/lang/String;)V

    .line 1004
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1007
    const-string v2, ">> run()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1009
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1011
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    iget-object v4, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->mIp:Ljava/lang/String;

    iget v5, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->mPort:I

    invoke-static {v3, v4, v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$14(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;I)Ljava/nio/channels/SocketChannel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$15(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/nio/channels/SocketChannel;)V

    .line 1012
    const-string v2, "result"

    iget-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1013
    const-string v2, "tag_string"

    iget-object v3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1016
    iget-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1018
    iget-object v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ConnectSocketThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$11(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Z)V

    .line 1020
    const-string v2, "ConnectSocketThread end"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 1021
    return-void
.end method
