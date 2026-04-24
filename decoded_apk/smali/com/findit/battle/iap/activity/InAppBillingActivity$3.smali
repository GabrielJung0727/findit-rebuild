.class Lcom/findit/battle/iap/activity/InAppBillingActivity$3;
.super Ljava/lang/Object;
.source "InAppBillingActivity.java"

# interfaces
.implements Lcom/findit/battle/iap/util/IabHelper$OnIabSetupFinishedListener;


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
    iput-object p1, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$3;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/findit/battle/iap/util/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/findit/battle/iap/util/IabResult;

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/findit/battle/iap/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$3;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem setting up in-app billing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->complain(Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, "TrivialDrive"

    const-string v1, "Setup successful. Querying inventory."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$3;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    invoke-virtual {v0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->AlreadyPurchaseItems()V

    goto :goto_0
.end method
