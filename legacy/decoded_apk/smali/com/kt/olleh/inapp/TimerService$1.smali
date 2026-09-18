.class Lcom/kt/olleh/inapp/TimerService$1;
.super Ljava/lang/Object;
.source "TimerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/TimerService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/TimerService;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/TimerService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/TimerService$1;->this$0:Lcom/kt/olleh/inapp/TimerService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/kt/olleh/inapp/TimerService$1;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-static {v0}, Lcom/kt/olleh/inapp/TimerService;->access$0(Lcom/kt/olleh/inapp/TimerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sput-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 53
    iget-object v0, p0, Lcom/kt/olleh/inapp/TimerService$1;->this$0:Lcom/kt/olleh/inapp/TimerService;

    invoke-static {v0, v1}, Lcom/kt/olleh/inapp/TimerService;->access$2(Lcom/kt/olleh/inapp/TimerService;Z)V

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method
