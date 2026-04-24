.class Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;
.super Landroid/os/AsyncTask;
.source "SamsungIapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iap/sample/helper/SamsungIapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitIapTask"
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

.field private mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

.field final synthetic this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;Landroid/app/Activity;)V
    .locals 1
    .param p2, "_activity"    # Landroid/app/Activity;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 841
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    .line 839
    new-instance v0, Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-direct {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;-><init>()V

    iput-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    .line 843
    iput-object p2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    .line 844
    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;)Lcom/sec/android/iap/sample/vo/ErrorVO;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 875
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$1(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 877
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/iap/sample/vo/ErrorVO;->setErrorCode(I)V

    .line 885
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 890
    :goto_1
    return-object v1

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->init()Lcom/sec/android/iap/sample/vo/ErrorVO;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 890
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 864
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 865
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v11, 0x0

    const v2, 0x7f09007f

    const/4 v10, 0x0

    const v3, 0x7f09007b

    .line 900
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$0(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$2(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;I)V

    .line 914
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$0(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;->onSucceedInitIap()V

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v0

    const/16 v1, -0x3e9

    if-ne v0, v1, :cond_2

    .line 924
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 926
    new-instance v5, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask$1;

    invoke-direct {v5, p0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask$1;-><init>(Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;)V

    .line 955
    .local v5, "OkBtnRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 956
    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    .line 957
    iget-object v2, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 958
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    const v6, 0x7f09007e

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 959
    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v4}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 958
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 960
    const/4 v4, 0x1

    .line 955
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 963
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 971
    .end local v5    # "OkBtnRunnable":Ljava/lang/Runnable;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 973
    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 974
    iget-object v7, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    .line 975
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v1}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 973
    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 981
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 991
    :cond_3
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->dismissProgressDialog()V

    .line 993
    iget-object v6, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    .line 994
    iget-object v7, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    .line 995
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 996
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 993
    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showIapDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1000
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mErrorVO:Lcom/sec/android/iap/sample/vo/ErrorVO;

    invoke-virtual {v0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 849
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 851
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    invoke-static {v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->access$0(Lcom/sec/android/iap/sample/helper/SamsungIapHelper;)Lcom/sec/android/iap/sample/helper/SamsungIapHelper$OnInitIapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 853
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->cancel(Z)Z

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->this$0:Lcom/sec/android/iap/sample/helper/SamsungIapHelper;

    iget-object v1, p0, Lcom/sec/android/iap/sample/helper/SamsungIapHelper$InitIapTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/iap/sample/helper/SamsungIapHelper;->showProgressDialog(Landroid/content/Context;)V

    .line 857
    return-void
.end method
