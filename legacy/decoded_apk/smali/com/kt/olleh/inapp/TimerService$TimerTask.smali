.class Lcom/kt/olleh/inapp/TimerService$TimerTask;
.super Landroid/os/AsyncTask;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/olleh/inapp/TimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/TimerService;


# direct methods
.method private constructor <init>(Lcom/kt/olleh/inapp/TimerService;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/kt/olleh/inapp/TimerService$TimerTask;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kt/olleh/inapp/TimerService;Lcom/kt/olleh/inapp/TimerService$TimerTask;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/TimerService$TimerTask;-><init>(Lcom/kt/olleh/inapp/TimerService;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kt/olleh/inapp/TimerService$TimerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 89
    :cond_0
    iget-object v8, p0, Lcom/kt/olleh/inapp/TimerService$TimerTask;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-static {v8}, Lcom/kt/olleh/inapp/TimerService;->access$0(Lcom/kt/olleh/inapp/TimerService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v8, p0, Lcom/kt/olleh/inapp/TimerService$TimerTask;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-virtual {v8}, Lcom/kt/olleh/inapp/TimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    .local v1, "context":Landroid/content/Context;
    const-string v8, "activity"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 98
    .local v4, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v2, ""

    .line 99
    .local v2, "currentTask":Ljava/lang/String;
    const/4 v6, 0x0

    .line 100
    .local v6, "result":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 116
    :goto_1
    if-nez v6, :cond_0

    .line 117
    iget-object v8, p0, Lcom/kt/olleh/inapp/TimerService$TimerTask;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-virtual {v8}, Lcom/kt/olleh/inapp/TimerService;->onDestroy()V

    .line 118
    :goto_2
    return-object v10

    .line 92
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "currentTask":Ljava/lang/String;
    .end local v4    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;
    .end local v6    # "result":Z
    :catch_0
    move-exception v3

    .line 93
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "currentTask":Ljava/lang/String;
    .restart local v4    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "iterator":Ljava/util/Iterator;
    .restart local v6    # "result":Z
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 102
    .local v7, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 104
    iget-object v8, p0, Lcom/kt/olleh/inapp/TimerService$TimerTask;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-static {v8}, Lcom/kt/olleh/inapp/TimerService;->access$1(Lcom/kt/olleh/inapp/TimerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    const/4 v6, 0x1

    .line 106
    goto :goto_1

    .line 112
    :cond_3
    iget-object v8, p0, Lcom/kt/olleh/inapp/TimerService$TimerTask;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-virtual {v8}, Lcom/kt/olleh/inapp/TimerService;->onDestroy()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kt/olleh/inapp/TimerService$TimerTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kt/olleh/inapp/TimerService$TimerTask;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/TimerService;->onDestroy()V

    .line 82
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
