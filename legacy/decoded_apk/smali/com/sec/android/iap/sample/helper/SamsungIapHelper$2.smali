.class Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;
.super Ljava/lang/Object;
.source "SamsungIapHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->bindIapService(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

.field private final synthetic val$_listener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;


# direct methods
.method constructor <init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iput-object p2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->val$_listener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "_name"    # Landroid/content/ComponentName;
    .param p2, "_service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 437
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {p2}, Lcom/sec/android/iap/IAPConnector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/iap/IAPConnector;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$6(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Lcom/sec/android/iap/IAPConnector;)V

    .line 439
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$8(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/IAPConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->val$_listener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;I)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->val$_listener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;

    invoke-interface {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;->onBindIapFinished(I)V

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;I)V

    .line 449
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->val$_listener:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;

    .line 450
    const/4 v1, 0x2

    .line 449
    invoke-interface {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnIapBindListener;->onBindIapFinished(I)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "_name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 423
    const-string v0, "IAP Service Disconnected..."

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;I)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$6(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Lcom/sec/android/iap/IAPConnector;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$2;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0, v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$7(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/content/ServiceConnection;)V

    .line 428
    return-void
.end method
