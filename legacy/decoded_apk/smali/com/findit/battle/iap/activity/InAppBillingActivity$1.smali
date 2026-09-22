.class Lcom/findit/battle/iap/activity/InAppBillingActivity$1;
.super Ljava/lang/Object;
.source "InAppBillingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$1;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$1;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 50
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity$1;->this$0:Lcom/findit/battle/iap/activity/InAppBillingActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 54
    return-void
.end method
