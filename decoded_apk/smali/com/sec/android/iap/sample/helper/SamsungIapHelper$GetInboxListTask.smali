.class Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;
.super Landroid/os/AsyncTask;
.source "SamsungIapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iap/sample/helper/SamsungIapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetInboxListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEndDate:Ljava/lang/String;

.field private mEndNum:I

.field private mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

.field private mItemGroupId:Ljava/lang/String;

.field private mMoreInboxVOList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/iap/sample/vo/InBoxVO;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDate:Ljava/lang/String;

.field private mStartNum:I

.field final synthetic this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_itemGroupId"    # Ljava/lang/String;
    .param p4, "_startNum"    # I
    .param p5, "_endNum"    # I
    .param p6, "_startDate"    # Ljava/lang/String;
    .param p7, "_endDate"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1370
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1361
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1351
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    .line 1352
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mItemGroupId:Ljava/lang/String;

    .line 1353
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mStartNum:I

    .line 1354
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mEndNum:I

    .line 1355
    const-string v0, "20130101"

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mStartDate:Ljava/lang/String;

    .line 1356
    const-string v0, "20130729"

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mEndDate:Ljava/lang/String;

    .line 1358
    new-instance v0, Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-direct {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    .line 1359
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mMoreInboxVOList:Ljava/util/ArrayList;

    .line 1371
    iput-object p2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    .line 1372
    iput-object p3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mItemGroupId:Ljava/lang/String;

    .line 1373
    iput p4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mStartNum:I

    .line 1374
    iput p5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mEndNum:I

    .line 1375
    iput-object p6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mStartDate:Ljava/lang/String;

    .line 1376
    iput-object p7, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mEndDate:Ljava/lang/String;

    .line 1377
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mItemGroupId:Ljava/lang/String;

    .line 1414
    iget v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mStartNum:I

    .line 1415
    iget v3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mEndNum:I

    .line 1416
    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mStartDate:Ljava/lang/String;

    .line 1417
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mEndDate:Ljava/lang/String;

    .line 1413
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->getItemsInbox(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1423
    .local v6, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    const-string v1, "STATUS_CODE"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setErrorCode(I)V

    .line 1425
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    .line 1426
    const-string v1, "ERROR_STRING"

    .line 1425
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setErrorString(Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1432
    const-string v0, "RESULT_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1434
    .local v10, "purchaseItemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 1436
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 1466
    .end local v10    # "purchaseItemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .end local v6    # "bundle":Landroid/os/Bundle;
    :goto_2
    return-object v0

    .line 1436
    .restart local v6    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "purchaseItemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1438
    .local v9, "itemString":Ljava/lang/String;
    new-instance v8, Lcom/sec/android/iap/sample/vo/InBoxVO;

    invoke-direct {v8, v9}, Lcom/sec/android/iap/sample/vo/InBoxVO;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v8, "inboxVO":Lcom/sec/android/iap/sample/vo/InBoxVO;
    const-string v1, "S================================>"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v8}, Lcom/sec/android/iap/sample/vo/InBoxVO;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 1444
    const-string v1, "E================================>"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 1447
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mMoreInboxVOList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1460
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "inboxVO":Lcom/sec/android/iap/sample/vo/InBoxVO;
    .end local v9    # "itemString":Ljava/lang/String;
    .end local v10    # "purchaseItemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 1462
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1463
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 1452
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "purchaseItemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    const-string v0, "Bundle Value \'RESULT_LIST\' is null."

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1457
    .end local v10    # "purchaseItemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1402
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1403
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "_result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f090084

    const v3, 0x7f09007b

    const/4 v4, 0x0

    .line 1475
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1480
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1484
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$4(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$4(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

    move-result-object v0

    .line 1487
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mMoreInboxVOList:Ljava/util/ArrayList;

    .line 1486
    invoke-interface {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;->OnSucceedGetInboxList(Ljava/util/ArrayList;)V

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1499
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1500
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    .line 1501
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1502
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1503
    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v6}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1502
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1499
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 1513
    :cond_2
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1515
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    .line 1516
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1517
    iget-object v3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1515
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1382
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1384
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$4(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetInboxListListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1386
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->cancel(Z)Z

    .line 1389
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mMoreInboxVOList:Ljava/util/ArrayList;

    .line 1394
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetInboxListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showProgressDialog(Landroid/content/Context;)V

    .line 1396
    return-void
.end method
