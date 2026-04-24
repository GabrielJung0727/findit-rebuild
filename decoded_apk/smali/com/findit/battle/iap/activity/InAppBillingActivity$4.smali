.class Lcom/findit/battle/iap/activity/InAppBillingActivity$4;
.super Ljava/lang/Object;
.source "InAppBillingActivity.java"

# interfaces
.implements Lcom/findit/battle/iap/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/iap/activity/InAppBillingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/iap/activity/InAppBillingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$4;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/findit/battle/iap/util/IabResult;Lcom/findit/battle/iap/util/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/findit/battle/iap/util/IabResult;
    .param p2, "inventory"    # Lcom/findit/battle/iap/util/Inventory;

    .prologue
    .line 222
    const-string v0, "TrivialDrive"

    const-string v1, "Query inventory finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$4;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    iget-object v0, v0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/findit/battle/iap/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$4;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to query inventory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->complain(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    const-string v0, "TrivialDrive"

    const-string v1, "Query inventory was successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v0, "TrivialDrive"

    const-string v1, "Initial inventory query finished; enabling main UI."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
