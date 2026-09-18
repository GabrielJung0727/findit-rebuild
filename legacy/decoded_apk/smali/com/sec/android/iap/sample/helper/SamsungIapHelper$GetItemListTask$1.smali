.class Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask$1;
.super Ljava/lang/Object;
.source "SamsungIapHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;


# direct methods
.method constructor <init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask$1;->this$1:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1216
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask$1;->this$1:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    invoke-static {v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;)Lcom/sec/android/iap/sample/vo/ErrorVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getExtraString()Ljava/lang/String;

    move-result-object v2

    .line 1215
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1216
    if-eqz v2, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1221
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1224
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask$1;->this$1:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    invoke-static {v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;)Lcom/sec/android/iap/sample/vo/ErrorVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getExtraString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1223
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1226
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1230
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask$1;->this$1:Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;

    invoke-static {v2}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->access$3(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
