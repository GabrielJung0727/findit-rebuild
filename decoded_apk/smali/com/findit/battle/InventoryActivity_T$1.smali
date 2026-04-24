.class Lcom/findit/battle/InventoryActivity_T$1;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"

# interfaces
.implements Lcom/feelingk/iap/IAPLib$OnClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_T;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$1;->this$0:Lcom/findit/battle/InventoryActivity_T;

    .line 2978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlgAutoPurchaseInfoCancel()V
    .locals 0

    .prologue
    .line 2983
    return-void
.end method

.method public onDlgError()V
    .locals 0

    .prologue
    .line 2988
    return-void
.end method

.method public onDlgPurchaseCancel()V
    .locals 0

    .prologue
    .line 2993
    return-void
.end method

.method public onError(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 2997
    packed-switch p1, :pswitch_data_0

    .line 3022
    :pswitch_0
    return-void

    .line 2997
    :pswitch_data_0
    .packed-switch 0x7cf
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemAuthInfo(Lcom/feelingk/iap/net/ItemAuthInfo;)V
    .locals 0
    .param p1, "arg0"    # Lcom/feelingk/iap/net/ItemAuthInfo;

    .prologue
    .line 3027
    return-void
.end method

.method public onItemPurchaseComplete()V
    .locals 3

    .prologue
    .line 3031
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_T$1;->this$0:Lcom/findit/battle/InventoryActivity_T;

    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$1;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$0(Lcom/findit/battle/InventoryActivity_T;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_T$1;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v2}, Lcom/findit/battle/InventoryActivity_T;->access$1(Lcom/findit/battle/InventoryActivity_T;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/findit/battle/Items$Item;

    invoke-static {v1, v0}, Lcom/findit/battle/InventoryActivity_T;->access$2(Lcom/findit/battle/InventoryActivity_T;Lcom/findit/battle/Items$Item;)V

    .line 3032
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$1;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-virtual {v0}, Lcom/findit/battle/InventoryActivity_T;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\uacb0\uc81c \uc644\ub8cc"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3033
    return-void
.end method

.method public onItemQueryComplete()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 3037
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onItemUseQuery(Lcom/feelingk/iap/net/ItemUse;)V
    .locals 0
    .param p1, "arg0"    # Lcom/feelingk/iap/net/ItemUse;

    .prologue
    .line 3043
    return-void
.end method

.method public onJoinDialogCancel()V
    .locals 0

    .prologue
    .line 3048
    return-void
.end method

.method public onPurchaseDismiss()V
    .locals 0

    .prologue
    .line 3053
    return-void
.end method

.method public onWholeQuery([Lcom/feelingk/iap/net/ItemAuth;)V
    .locals 0
    .param p1, "arg0"    # [Lcom/feelingk/iap/net/ItemAuth;

    .prologue
    .line 3058
    return-void
.end method
