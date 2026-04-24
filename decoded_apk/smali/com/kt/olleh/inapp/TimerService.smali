.class public Lcom/kt/olleh/inapp/TimerService;
.super Landroid/app/Service;
.source "TimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/olleh/inapp/TimerService$TimerTask;
    }
.end annotation


# static fields
.field private static final TIMER_PERIOD:I = 0x1b7740


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunning:Z

.field private mStartId:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/TimerService;->packageName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/TimerService;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/TimerService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kt/olleh/inapp/TimerService;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kt/olleh/inapp/TimerService;Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/TimerService;->mHandler:Landroid/os/Handler;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    .line 71
    sput-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 74
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 42
    iput p2, p0, Lcom/kt/olleh/inapp/TimerService;->mStartId:I

    .line 43
    iget-boolean v1, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/TimerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/TimerService;->packageName:Ljava/lang/String;

    .line 46
    sput-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 47
    iget-object v1, p0, Lcom/kt/olleh/inapp/TimerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/kt/olleh/inapp/TimerService$1;

    invoke-direct {v2, p0}, Lcom/kt/olleh/inapp/TimerService$1;-><init>(Lcom/kt/olleh/inapp/TimerService;)V

    .line 58
    const-wide/32 v3, 0x1b7740

    .line 47
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    iput-boolean v6, p0, Lcom/kt/olleh/inapp/TimerService;->mRunning:Z

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 61
    new-instance v1, Lcom/kt/olleh/inapp/TimerService$TimerTask;

    invoke-direct {v1, p0, v5}, Lcom/kt/olleh/inapp/TimerService$TimerTask;-><init>(Lcom/kt/olleh/inapp/TimerService;Lcom/kt/olleh/inapp/TimerService$TimerTask;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/TimerService$TimerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 66
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Lcom/kt/olleh/inapp/TimerService$TimerTask;

    invoke-direct {v1, p0, v5}, Lcom/kt/olleh/inapp/TimerService$TimerTask;-><init>(Lcom/kt/olleh/inapp/TimerService;Lcom/kt/olleh/inapp/TimerService$TimerTask;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v5}, Lcom/kt/olleh/inapp/TimerService$TimerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
