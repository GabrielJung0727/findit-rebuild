.class Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;
.super Ljava/lang/Object;
.source "IAPBase.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/net/IAPBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallOCBCardUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private pOCBCardNum:Ljava/lang/String;

.field private pTelecom:I

.field private pUpdateType:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "telecom_Type"    # I
    .param p3, "update_Type"    # Ljava/lang/String;
    .param p4, "card_num"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1198
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1190
    const/4 v0, 0x0

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pTelecom:I

    .line 1191
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pUpdateType:Ljava/lang/String;

    .line 1192
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pOCBCardNum:Ljava/lang/String;

    .line 1195
    iput p2, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pTelecom:I

    .line 1196
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pUpdateType:Ljava/lang/String;

    .line 1197
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pOCBCardNum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, -0xb

    const/16 v6, -0xc

    const/16 v5, -0xd

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1201
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v1, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pTelecom:I

    invoke-virtual {v0, v1, v4, v4}, Lcom/feelingk/iap/net/IAPBase;->connect(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1242
    :goto_0
    return-object v0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {}, Lcom/feelingk/iap/net/IAPNet;->iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1207
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1208
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_2

    .line 1213
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1214
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1219
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e1

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_1

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pUpdateType:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->pOCBCardNum:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/feelingk/iap/net/IAPNet;->iapSendOCBCardUpdateQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1223
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBCARD_UPDATE_REQ:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1225
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1227
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v7, :cond_4

    .line 1228
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-eq v0, v6, :cond_4

    .line 1229
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    if-ne v0, v5, :cond_5

    .line 1232
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v3, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1233
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1237
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1236
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7e2

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 1240
    :cond_6
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_OCBCARD_UPDATE_REQ_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1241
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x46d

    invoke-static {v0, v1, v4}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1242
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallOCBCardUpdate;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
