.class Lcom/findit/battle/InventoryActivity_Olleh$32;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Olleh;->bindIapService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Olleh;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 3526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindIapFinished(I)V
    .locals 6
    .param p1, "result"    # I

    .prologue
    .line 3531
    const-string v0, ">> OnIapBindListener::onBindIapFinished()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3535
    if-nez p1, :cond_0

    .line 3543
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$70(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->safeInitIap(Landroid/app/Activity;)V

    .line 3568
    :goto_0
    return-void

    .line 3554
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$70(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 3559
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$70(Lcom/findit/battle/InventoryActivity_Olleh;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    move-result-object v0

    .line 3560
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 3561
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3562
    iget-object v3, p0, Lcom/findit/battle/InventoryActivity_Olleh$32;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    const v4, 0x7f09008c

    invoke-virtual {v3, v4}, Lcom/findit/battle/InventoryActivity_Olleh;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3563
    const/4 v4, 0x1

    .line 3564
    const/4 v5, 0x0

    .line 3559
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
