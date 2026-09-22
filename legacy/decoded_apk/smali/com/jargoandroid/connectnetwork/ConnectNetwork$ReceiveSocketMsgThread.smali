.class Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;
.super Ljava/lang/Thread;
.source "ConnectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jargoandroid/connectnetwork/ConnectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveSocketMsgThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;


# direct methods
.method public constructor <init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)V
    .locals 1

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1027
    const-string v0, ">> ReceiveSocketMsgThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1028
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$16(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Z)V

    .line 1030
    const-string v0, "ReceiveSocketMsgThread"

    invoke-virtual {p0, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->setName(Ljava/lang/String;)V

    .line 1031
    return-void
.end method


# virtual methods
.method public requestexitAndWait()V
    .locals 3

    .prologue
    .line 1034
    const-string v1, ">> requestexitAndWait()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$16(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Z)V

    .line 1037
    :try_start_0
    invoke-virtual {p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->join()V

    .line 1038
    iget-object v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$17(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :goto_0
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 16

    .prologue
    const/4 v15, 0x0

    .line 1045
    const-string v12, ">> run()"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1046
    const/16 v12, 0x400

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1047
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 1050
    .local v9, "readyChannel":Ljava/nio/channels/SocketChannel;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v11

    .line 1051
    .local v11, "selector":Ljava/nio/channels/Selector;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$18(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Ljava/nio/channels/SocketChannel;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v11, v13, v14}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    .line 1054
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$19(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_3

    .line 1153
    .end local v11    # "selector":Ljava/nio/channels/Selector;
    :goto_0
    if-eqz v9, :cond_1

    .line 1154
    :try_start_1
    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->close()V

    .line 1155
    const/4 v9, 0x0

    .line 1158
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$18(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Ljava/nio/channels/SocketChannel;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1159
    const-string v12, "close1"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$18(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Ljava/nio/channels/SocketChannel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/channels/SocketChannel;->close()V

    .line 1161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$15(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1167
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1168
    const/4 v1, 0x0

    .line 1169
    return-void

    .line 1056
    .restart local v11    # "selector":Ljava/nio/channels/Selector;
    :cond_3
    const-wide/16 v12, 0x1f4

    :try_start_2
    invoke-virtual {v11, v12, v13}, Ljava/nio/channels/Selector;->select(J)I

    move-result v8

    .line 1057
    .local v8, "numkeys":I
    if-lez v8, :cond_4

    .line 1058
    invoke-virtual {v11}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v12

    .line 1059
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1061
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1134
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1135
    const-string v12, "isConnectSocket1"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1144
    .end local v8    # "numkeys":I
    .end local v11    # "selector":Ljava/nio/channels/Selector;
    :catch_0
    move-exception v3

    .line 1145
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Receive Error: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v12, v15}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V

    goto :goto_0

    .line 1062
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v8    # "numkeys":I
    .restart local v11    # "selector":Ljava/nio/channels/Selector;
    :cond_5
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;

    .line 1063
    .local v5, "key":Ljava/nio/channels/SelectionKey;
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1065
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/nio/channels/SocketChannel;

    move-object v9, v0

    .line 1067
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$20(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v12

    .line 1068
    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 1069
    .local v7, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1073
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1074
    invoke-virtual {v9, v1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1075
    .local v6, "length":I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "length: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v12

    if-nez v12, :cond_7

    .line 1078
    const-string v12, "isConnectSocket4"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1113
    .end local v6    # "length":I
    :catch_1
    move-exception v3

    .line 1114
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "close: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V

    .line 1126
    const-string v12, "result"

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v7, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-static {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->access$20(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 1085
    .restart local v6    # "length":I
    :cond_7
    :try_start_6
    const-string v12, "null1"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1089
    const-string v12, "null2"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1090
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13, v6}, Ljava/lang/String;-><init>([BII)V

    .line 1093
    .local v10, "result":Ljava/lang/String;
    const-string v12, "null3"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v12

    if-nez v12, :cond_8

    .line 1096
    const-string v12, "isConnectSocket3"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V

    goto/16 :goto_3

    .line 1103
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "msg: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1104
    const-string v12, "result"

    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v12}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v12

    if-nez v12, :cond_6

    .line 1107
    const-string v12, "isConnectSocket2"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ReceiveSocketMsgThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 1163
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v5    # "key":Ljava/nio/channels/SelectionKey;
    .end local v6    # "length":I
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "numkeys":I
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "selector":Ljava/nio/channels/Selector;
    :catch_2
    move-exception v12

    goto/16 :goto_1
.end method
