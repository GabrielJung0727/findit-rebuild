.class Lcom/feelingk/iap/IAPActivity$15;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;


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
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 1867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlgButtonClick()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 1874
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_0

    .line 1875
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x67

    if-eq v1, v2, :cond_0

    .line 1877
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1, v3}, Lcom/feelingk/iap/IAPActivity;->access$6(Lcom/feelingk/iap/IAPActivity;I)V

    .line 1878
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;

    move-result-object v1

    iget-object v0, v1, Lcom/feelingk/iap/IAPLibSetting;->ClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    .line 1880
    .local v0, "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    sget-boolean v1, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    if-eqz v1, :cond_1

    .line 1881
    sput-boolean v3, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 1882
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1884
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onPurchaseDismiss()V

    .line 1900
    .end local v0    # "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    :cond_0
    :goto_0
    return-void

    .line 1886
    .restart local v0    # "onAppCallbackFn":Lcom/feelingk/iap/IAPLib$OnClientListener;
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x75

    if-eq v1, v2, :cond_2

    .line 1887
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x72

    if-eq v1, v2, :cond_2

    .line 1888
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_3

    .line 1889
    :cond_2
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    goto :goto_0

    .line 1891
    :cond_3
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1892
    invoke-interface {v0}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onDlgError()V

    goto :goto_0
.end method

.method public onErrorDlgBtnClick()V
    .locals 2

    .prologue
    .line 1905
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 1907
    :cond_0
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 1908
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$15;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V

    .line 1912
    return-void
.end method
