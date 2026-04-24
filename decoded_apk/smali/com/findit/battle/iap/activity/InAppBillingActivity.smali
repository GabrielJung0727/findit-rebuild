.class public Lcom/findit/battle/iap/activity/InAppBillingActivity;
.super Landroid/app/Activity;
.source "InAppBillingActivity.java"


# static fields
.field private static final API_RSA_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoLHUZ3UGz+QNcl7q5h0NeB0w1KKI4x7v/uSO3jsKutL2memlRO6jb21tbOvKCFV1ozy1QjLtZOVWqSEMPk2s9duSx4Cu8dWOE3ay7DyEhp6hBPZpg7uWefIxyVpPh+Xv41aMixJzJ7KBqttYLX5Xu4X5OjyJM1DsNnOQM5Rv/hKN/47g7Jo4GDyFFqNMFNlBZGDvbCrz2egMa6oDlS+hbeBzGN9MEuefXJHtK5BH/2bDXoUuraddZktQNjczWRenFhpxFnz6dRG3vW3SSgEGWziQNfqAh/aU3H0gwntyrHjJHXdsQlDkHswJzfCcCqtBEKDHoI3jv1tm7ANl/ZqNdQIDAQAB"

.field public static final INAPP_RESULT_ACTIVITY_CODE:I = 0x3e9

.field static final SHOW_LOG:Z = false

.field static final TAG:Ljava/lang/String; = "TrivialDrive"


# instance fields
.field mGotInventoryListener:Lcom/findit/battle/iap/util/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/findit/battle/iap/util/IabHelper;

.field mPurchaseFinishedListener:Lcom/findit/battle/iap/util/IabHelper$OnIabPurchaseFinishedListener;

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupFinishedListener:Lcom/findit/battle/iap/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/findit/battle/iap/activity/InAppBillingActivity$1;

    invoke-direct {v0, p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity$1;-><init>(Lcom/findit/battle/iap/activity/InAppBillingActivity;)V

    iput-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mServiceConn:Landroid/content/ServiceConnection;

    .line 174
    new-instance v0, Lcom/findit/battle/iap/activity/InAppBillingActivity$2;

    invoke-direct {v0, p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity$2;-><init>(Lcom/findit/battle/iap/activity/InAppBillingActivity;)V

    iput-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mPurchaseFinishedListener:Lcom/findit/battle/iap/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 194
    new-instance v0, Lcom/findit/battle/iap/activity/InAppBillingActivity$3;

    invoke-direct {v0, p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity$3;-><init>(Lcom/findit/battle/iap/activity/InAppBillingActivity;)V

    iput-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mSetupFinishedListener:Lcom/findit/battle/iap/util/IabHelper$OnIabSetupFinishedListener;

    .line 220
    new-instance v0, Lcom/findit/battle/iap/activity/InAppBillingActivity$4;

    invoke-direct {v0, p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity$4;-><init>(Lcom/findit/battle/iap/activity/InAppBillingActivity;)V

    iput-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mGotInventoryListener:Lcom/findit/battle/iap/util/IabHelper$QueryInventoryFinishedListener;

    .line 33
    return-void
.end method


# virtual methods
.method public AlreadyPurchaseItems()V
    .locals 13

    .prologue
    .line 102
    :try_start_0
    iget-object v8, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "inapp"

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 103
    .local v3, "ownedItems":Landroid/os/Bundle;
    const-string v8, "RESPONSE_CODE"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 104
    .local v6, "response":I
    if-nez v6, :cond_0

    .line 105
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 108
    .local v5, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "TrivialDrive"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "PurchaseDataList Size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 110
    .local v7, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v1, v8, :cond_1

    .line 123
    .end local v1    # "i":I
    .end local v3    # "ownedItems":Landroid/os/Bundle;
    .end local v5    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "response":I
    .end local v7    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 111
    .restart local v1    # "i":I
    .restart local v3    # "ownedItems":Landroid/os/Bundle;
    .restart local v5    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "response":I
    .restart local v7    # "tokens":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 112
    .local v4, "purchaseData":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "jo":Lorg/json/JSONObject;
    const-string v8, "purchaseToken"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    .line 115
    iget-object v8, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v1

    invoke-interface {v8, v9, v10, v11}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    .end local v2    # "jo":Lorg/json/JSONObject;
    .end local v3    # "ownedItems":Landroid/os/Bundle;
    .end local v4    # "purchaseData":Ljava/lang/String;
    .end local v5    # "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "response":I
    .end local v7    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method alert(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 295
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 297
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    const-string v1, "TrivialDrive"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing alert dialog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 300
    return-void
.end method

.method public buyItem(Ljava/lang/String;)V
    .locals 9
    .param p1, "id_item"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inapp"

    const-string v5, "test"

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 130
    .local v6, "buyIntentBundle":Landroid/os/Bundle;
    const-string v0, "BUY_INTENT"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 132
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v8, :cond_0

    .line 134
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    invoke-virtual {p0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e9

    iget-object v4, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mPurchaseFinishedListener:Lcom/findit/battle/iap/util/IabHelper$OnIabPurchaseFinishedListener;

    const-string v5, "test"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/iap/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/findit/battle/iap/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v6    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v7

    .line 140
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method complain(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 288
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 147
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestCode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resultCode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_0

    .line 150
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    invoke-virtual {v2, p1, p2, p3}, Lcom/findit/battle/iap/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    const-string v2, "RESPONSE_CODE"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, "responseCode":I
    const-string v2, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "purchaseData":Ljava/lang/String;
    const-string v2, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .end local v0    # "purchaseData":Ljava/lang/String;
    .end local v1    # "responseCode":I
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v3}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 65
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoLHUZ3UGz+QNcl7q5h0NeB0w1KKI4x7v/uSO3jsKutL2memlRO6jb21tbOvKCFV1ozy1QjLtZOVWqSEMPk2s9duSx4Cu8dWOE3ay7DyEhp6hBPZpg7uWefIxyVpPh+Xv41aMixJzJ7KBqttYLX5Xu4X5OjyJM1DsNnOQM5Rv/hKN/47g7Jo4GDyFFqNMFNlBZGDvbCrz2egMa6oDlS+hbeBzGN9MEuefXJHtK5BH/2bDXoUuraddZktQNjczWRenFhpxFnz6dRG3vW3SSgEGWziQNfqAh/aU3H0gwntyrHjJHXdsQlDkHswJzfCcCqtBEKDHoI3jv1tm7ANl/ZqNdQIDAQAB"

    .line 67
    .local v0, "base64EncodedPublicKey":Ljava/lang/String;
    new-instance v1, Lcom/findit/battle/iap/util/IabHelper;

    invoke-direct {v1, p0, v0}, Lcom/findit/battle/iap/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    .line 68
    iget-object v1, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    invoke-virtual {v1, v3}, Lcom/findit/battle/iap/util/IabHelper;->enableDebugLogging(Z)V

    .line 69
    iget-object v1, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    iget-object v2, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mSetupFinishedListener:Lcom/findit/battle/iap/util/IabHelper$OnIabSetupFinishedListener;

    invoke-virtual {v1, v2}, Lcom/findit/battle/iap/util/IabHelper;->startSetup(Lcom/findit/battle/iap/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 272
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/findit/battle/iap/activity/InAppBillingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 277
    :cond_0
    const-string v0, "TrivialDrive"

    const-string v1, "Destroying helper."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    invoke-virtual {v0}, Lcom/findit/battle/iap/util/IabHelper;->dispose()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/iap/activity/InAppBillingActivity;->mHelper:Lcom/findit/battle/iap/util/IabHelper;

    .line 283
    :cond_1
    return-void
.end method
