.class Lcom/feelingk/iap/IAPActivity$4;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYesNoDialogCancelButtonClick()V
    .locals 4

    .prologue
    .line 1102
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;)V

    .line 1105
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x81

    if-ne v1, v2, :cond_0

    .line 1108
    const/16 v1, 0x67

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1109
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1125
    :goto_0
    return-void

    .line 1113
    :cond_0
    const/16 v1, 0x64

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1116
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 1117
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1118
    .local v0, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    sget-boolean v1, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v1, :cond_1

    .line 1119
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgAutoPurchaseInfoCancel()V

    goto :goto_0

    .line 1122
    :cond_1
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgPurchaseCancel()V

    goto :goto_0
.end method

.method public onYesNoDialogOKButtonClick()V
    .locals 3

    .prologue
    .line 1070
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DlgType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$11(Lcom/feelingk/iap/IAPActivity;)V

    .line 1075
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v0

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    .line 1077
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1078
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 1079
    const-string v0, "D"

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmOCBCardNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPLib;->sendOCBUpdateReq(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void

    .line 1082
    :cond_0
    sget-boolean v0, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 1084
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->sendPurchaseDismiss(Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_1
    sget-boolean v0, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    if-eqz v0, :cond_2

    .line 1088
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1089
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$4;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/IAPActivity;->popupJoinDlg()V

    .line 1094
    const/16 v0, 0x6b

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0
.end method
