.class Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;
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
    name = "CallItemPurchaseDanal"
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
.field private bUseTcash:Z

.field private pBPInfo:Ljava/lang/String;

.field private pCarrier:I

.field private pEncJumin:Ljava/lang/String;

.field private pID:Ljava/lang/String;

.field private pMdn:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field private pTID:Ljava/lang/String;

.field final synthetic this$0:Lcom/feelingk/iap/net/IAPBase;


# direct methods
.method public constructor <init>(Lcom/feelingk/iap/net/IAPBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p2, "mdn"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "carrier"    # I
    .param p6, "tid"    # Ljava/lang/String;
    .param p7, "bpInfo"    # Ljava/lang/String;
    .param p8, "TCash"    # Z
    .param p9, "encJumin"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1105
    iput-object p1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    .line 1093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pMdn:Ljava/lang/String;

    .line 1083
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pID:Ljava/lang/String;

    .line 1084
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pName:Ljava/lang/String;

    .line 1085
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pCarrier:I

    .line 1086
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pTID:Ljava/lang/String;

    .line 1087
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pBPInfo:Ljava/lang/String;

    .line 1088
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->bUseTcash:Z

    .line 1089
    iput-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pEncJumin:Ljava/lang/String;

    .line 1097
    iput-object p2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pMdn:Ljava/lang/String;

    .line 1098
    iput-object p3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pID:Ljava/lang/String;

    .line 1099
    iput-object p4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pName:Ljava/lang/String;

    .line 1100
    iput p5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pCarrier:I

    .line 1101
    iput-object p6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pTID:Ljava/lang/String;

    .line 1102
    iput-object p7, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pBPInfo:Ljava/lang/String;

    .line 1103
    iput-boolean p8, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->bUseTcash:Z

    .line 1104
    iput-object p9, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pEncJumin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1109
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1110
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1168
    :goto_0
    return-object v0

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v0, v10}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1136
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pCarrier:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1137
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pMdn:Ljava/lang/String;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pName:Ljava/lang/String;

    iget v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pCarrier:I

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pTID:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pBPInfo:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->bUseTcash:Z

    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pEncJumin:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPNet;->ReIapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    .line 1141
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1144
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setSmsAuthNumberKey(Ljava/lang/String;)V

    .line 1145
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setSmsAuthKey(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v1}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPBase;->access$6(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1149
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xb

    if-eq v0, v1, :cond_2

    .line 1150
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xc

    if-eq v0, v1, :cond_2

    .line 1151
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget v0, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    const/16 v1, -0xd

    if-ne v0, v1, :cond_4

    .line 1153
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iput v9, v0, Lcom/feelingk/iap/net/IAPBase;->subErrorCode:I

    .line 1154
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d9

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1160
    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1138
    :cond_3
    iget v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pCarrier:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1139
    iget-object v8, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pMdn:Ljava/lang/String;

    iget-object v1, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pName:Ljava/lang/String;

    iget v3, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pCarrier:I

    iget-object v4, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pTID:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pBPInfo:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->bUseTcash:Z

    iget-object v7, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->pEncJumin:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/feelingk/iap/net/IAPNet;->LguIapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/feelingk/iap/net/IAPBase;->access$4(Lcom/feelingk/iap/net/IAPBase;Lcom/feelingk/iap/net/MsgConfirm;)V

    goto :goto_1

    .line 1157
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x7d3

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    iget-object v2, v2, Lcom/feelingk/iap/net/IAPBase;->errMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    goto :goto_2

    .line 1163
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    sget-object v1, Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;->APP_CHARGE_ITEM_OK:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    iput-object v1, v0, Lcom/feelingk/iap/net/IAPBase;->mNetworkState:Lcom/feelingk/iap/net/IAPBase$NETWORK_RESULT_TYPE;

    .line 1164
    invoke-static {v11}, Lcom/feelingk/iap/IAPLib;->setOTPPurchaseSuccess(Z)V

    .line 1165
    iget-object v0, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    const/16 v1, 0x452

    iget-object v2, p0, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->this$0:Lcom/feelingk/iap/net/IAPBase;

    invoke-static {v2}, Lcom/feelingk/iap/net/IAPBase;->access$5(Lcom/feelingk/iap/net/IAPBase;)Lcom/feelingk/iap/net/MsgConfirm;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/feelingk/iap/net/IAPBase;->access$7(Lcom/feelingk/iap/net/IAPBase;ILjava/lang/Object;)V

    .line 1168
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/feelingk/iap/net/IAPBase$CallItemPurchaseDanal;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
