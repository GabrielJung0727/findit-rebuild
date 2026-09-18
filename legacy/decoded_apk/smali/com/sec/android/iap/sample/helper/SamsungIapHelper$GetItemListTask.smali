.class Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;
.super Landroid/os/AsyncTask;
.source "SamsungIapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iap/sample/helper/SamsungIapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetItemListTask"
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

.field private mEndNum:I

.field private mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

.field private mItemGroupId:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mMoreItemVOList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/iap/sample/vo/ItemVO;",
            ">;"
        }
    .end annotation
.end field

.field private mStartNum:I

.field final synthetic this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p2, "_activity"    # Landroid/app/Activity;
    .param p3, "_itemGroupId"    # Ljava/lang/String;
    .param p4, "_startNum"    # I
    .param p5, "_endNum"    # I
    .param p6, "_itemType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1085
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1077
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1068
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mMoreItemVOList:Ljava/util/ArrayList;

    .line 1069
    new-instance v0, Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-direct {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    .line 1070
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mItemGroupId:Ljava/lang/String;

    .line 1071
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mStartNum:I

    .line 1072
    const/16 v0, 0xf

    iput v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mEndNum:I

    .line 1073
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mItemType:Ljava/lang/String;

    .line 1075
    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    .line 1086
    iput-object p2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    .line 1087
    iput-object p3, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mItemGroupId:Ljava/lang/String;

    .line 1088
    iput p4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mStartNum:I

    .line 1089
    iput p5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mEndNum:I

    .line 1090
    iput-object p6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mItemType:Ljava/lang/String;

    .line 1091
    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;)Lcom/sec/android/iap/sample/vo/ErrorVO;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1122
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mItemGroupId:Ljava/lang/String;

    .line 1123
    iget v7, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mStartNum:I

    .line 1124
    iget v8, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mEndNum:I

    .line 1125
    iget-object v9, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mItemType:Ljava/lang/String;

    .line 1122
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->getItemList(Ljava/lang/String;IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1131
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    const-string v6, "STATUS_CODE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setErrorCode(I)V

    .line 1133
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    .line 1134
    const-string v6, "ERROR_STRING"

    .line 1133
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setErrorString(Ljava/lang/String;)V

    .line 1136
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    .line 1137
    const-string v6, "IAP_UPGRADE_URL"

    .line 1136
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setExtraString(Ljava/lang/String;)V

    .line 1140
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v5}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v5

    if-nez v5, :cond_2

    .line 1143
    const-string v5, "RESULT_LIST"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1145
    .local v3, "itemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 1147
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 1177
    .end local v3    # "itemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_2
    return-object v5

    .line 1147
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "itemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1149
    .local v2, "itemString":Ljava/lang/String;
    new-instance v4, Lcom/sec/android/iap/sample/vo/ItemVO;

    invoke-direct {v4, v2}, Lcom/sec/android/iap/sample/vo/ItemVO;-><init>(Ljava/lang/String;)V

    .line 1153
    .local v4, "itemVO":Lcom/sec/android/iap/sample/vo/ItemVO;
    const-string v6, "S================================>"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v4}, Lcom/sec/android/iap/sample/vo/ItemVO;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 1155
    const-string v6, "E================================>"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 1158
    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mMoreItemVOList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1171
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "itemString":Ljava/lang/String;
    .end local v3    # "itemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "itemVO":Lcom/sec/android/iap/sample/vo/ItemVO;
    :catch_0
    move-exception v1

    .line 1173
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1174
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    .line 1163
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "itemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    const-string v5, "RESULT_LIST of bundle is empty.\n"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 1168
    .end local v3    # "itemStringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v5, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v5}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1111
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1112
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "_result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x0

    const v2, 0x7f090080

    const/4 v10, 0x0

    const v3, 0x7f09007b

    .line 1186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1191
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$3(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$3(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

    move-result-object v0

    .line 1198
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mMoreItemVOList:Ljava/util/ArrayList;

    .line 1197
    invoke-interface {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;->onSucceedGetItemList(Ljava/util/ArrayList;)V

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v0

    const/16 v1, -0x3e9

    if-ne v0, v1, :cond_2

    .line 1208
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1210
    new-instance v5, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask$1;

    invoke-direct {v5, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask$1;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;)V

    .line 1239
    .local v5, "OkBtnRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1240
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    .line 1241
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1242
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    const v6, 0x7f09007e

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1243
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v4}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1242
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    const/4 v4, 0x1

    .line 1239
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1247
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1255
    .end local v5    # "OkBtnRunnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1257
    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1258
    iget-object v7, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    .line 1259
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1261
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v1}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1257
    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1265
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    :cond_3
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 1276
    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 1277
    iget-object v7, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    .line 1278
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1279
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1276
    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1096
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1098
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$3(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnGetItemListListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->cancel(Z)Z

    .line 1103
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mMoreItemVOList:Ljava/util/ArrayList;

    .line 1104
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$GetItemListTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showProgressDialog(Landroid/content/Context;)V

    .line 1105
    return-void
.end method
