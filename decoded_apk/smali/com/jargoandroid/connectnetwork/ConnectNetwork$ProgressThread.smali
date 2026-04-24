.class Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;
.super Ljava/lang/Thread;
.source "ConnectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jargoandroid/connectnetwork/ConnectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressThread"
.end annotation


# instance fields
.field private mTime:I

.field final synthetic this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;


# direct methods
.method public constructor <init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;)V
    .locals 1

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1177
    const-string v0, ">> ProgressThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1178
    const/16 v0, 0xa

    iput v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->mTime:I

    .line 1180
    const-string v0, "ProgressThread"

    invoke-virtual {p0, v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->setName(Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method static synthetic access$0(Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;)I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->mTime:I

    return v0
.end method

.method static synthetic access$1(Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;I)V
    .locals 0

    .prologue
    .line 1174
    iput p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->mTime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1185
    :try_start_0
    const-string v1, "ProgressThread start"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1186
    :goto_0
    iget v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->mTime:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->mTime:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v1, :cond_0

    .line 1193
    :goto_1
    const-string v1, "ProgressThread end"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 1194
    return-void

    .line 1187
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProgressThread mTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$ProgressThread;->mTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
