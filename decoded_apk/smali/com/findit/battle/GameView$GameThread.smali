.class Lcom/findit/battle/GameView$GameThread;
.super Ljava/lang/Thread;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameThread"
.end annotation


# instance fields
.field private mDelay:I

.field private mFramecount:I

.field private mResume:Z

.field public mRun:Z

.field private mSurfaceholder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5333
    iput-object p1, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5334
    const-string v0, ">> GameThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5335
    invoke-virtual {p0, p2}, Lcom/findit/battle/GameView$GameThread;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 5336
    iput-boolean v2, p0, Lcom/findit/battle/GameView$GameThread;->mRun:Z

    .line 5337
    iput-boolean v2, p0, Lcom/findit/battle/GameView$GameThread;->mResume:Z

    .line 5339
    iput v1, p0, Lcom/findit/battle/GameView$GameThread;->mFramecount:I

    .line 5340
    iput v1, p0, Lcom/findit/battle/GameView$GameThread;->mDelay:I

    .line 5342
    const-string v0, "GameThread"

    invoke-virtual {p0, v0}, Lcom/findit/battle/GameView$GameThread;->setName(Ljava/lang/String;)V

    .line 5343
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/GameView$GameThread;)Z
    .locals 1

    .prologue
    .line 5329
    iget-boolean v0, p0, Lcom/findit/battle/GameView$GameThread;->mResume:Z

    return v0
.end method

.method static synthetic access$1(Lcom/findit/battle/GameView$GameThread;Z)V
    .locals 0

    .prologue
    .line 5329
    iput-boolean p1, p0, Lcom/findit/battle/GameView$GameThread;->mResume:Z

    return-void
.end method

.method static synthetic access$2(Lcom/findit/battle/GameView$GameThread;)I
    .locals 1

    .prologue
    .line 5331
    iget v0, p0, Lcom/findit/battle/GameView$GameThread;->mFramecount:I

    return v0
.end method

.method static synthetic access$3(Lcom/findit/battle/GameView$GameThread;I)V
    .locals 0

    .prologue
    .line 5331
    iput p1, p0, Lcom/findit/battle/GameView$GameThread;->mFramecount:I

    return-void
.end method

.method static synthetic access$4(Lcom/findit/battle/GameView$GameThread;)I
    .locals 1

    .prologue
    .line 5331
    iget v0, p0, Lcom/findit/battle/GameView$GameThread;->mDelay:I

    return v0
.end method

.method static synthetic access$5(Lcom/findit/battle/GameView$GameThread;I)V
    .locals 0

    .prologue
    .line 5331
    iput p1, p0, Lcom/findit/battle/GameView$GameThread;->mDelay:I

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 5454
    iget-object v0, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5478
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 5456
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$5(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$Opening;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/findit/battle/GameView$Opening;->doDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5460
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$1(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$MainMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/findit/battle/GameView$MainMenu;->doDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5464
    :pswitch_3
    iget-object v0, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v0, p1}, Lcom/findit/battle/GameView$BattleRoom;->doDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5468
    :pswitch_4
    iget-object v0, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v0}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5469
    iget-object v0, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v0, p1}, Lcom/findit/battle/GameView$GameRoom;->doDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5474
    :pswitch_5
    iget-object v0, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    invoke-virtual {v0, p1}, Lcom/findit/battle/GameView$Result;->doDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5454
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 5351
    const-string v1, ">> requestExitAndWait()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5352
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/findit/battle/GameView$GameThread;->mRun:Z

    .line 5354
    :try_start_0
    invoke-virtual {p0}, Lcom/findit/battle/GameView$GameThread;->join()V

    .line 5355
    iget-object v1, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$7(Lcom/findit/battle/GameView;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5359
    :goto_0
    return-void

    .line 5356
    :catch_0
    move-exception v0

    .line 5357
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 5363
    const-string v4, "run()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 5365
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v4}, Lcom/findit/battle/GameView;->access$8(Lcom/findit/battle/GameView;)V

    .line 5367
    iget-object v3, p0, Lcom/findit/battle/GameView$GameThread;->mSurfaceholder:Landroid/view/SurfaceHolder;

    .line 5368
    .local v3, "surfaceHolder":Landroid/view/SurfaceHolder;
    const/4 v1, 0x0

    .line 5370
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 5371
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget v4, v4, Lcom/findit/battle/GameView;->mLogin:I

    if-ne v4, v7, :cond_0

    .line 5373
    new-instance v0, Lcom/findit/battle/GameView$ActionRunnable;

    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    .line 5374
    const/4 v5, 0x3

    .line 5373
    invoke-direct {v0, v4, v5}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;I)V

    .line 5375
    .local v0, "action":Lcom/findit/battle/GameView$ActionRunnable;
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4, v0}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    .line 5380
    .end local v0    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/findit/battle/GameView$GameThread;->mRun:Z

    if-nez v4, :cond_1

    .line 5450
    return-void

    .line 5381
    :cond_1
    iget v4, p0, Lcom/findit/battle/GameView$GameThread;->mFramecount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/findit/battle/GameView$GameThread;->mFramecount:I

    .line 5383
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-boolean v4, v4, Lcom/findit/battle/GameView;->mWork:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/findit/battle/GameView$GameThread;->mResume:Z

    if-eqz v4, :cond_3

    .line 5386
    :cond_2
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 5432
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 5433
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5434
    if-eqz v1, :cond_4

    .line 5435
    :try_start_1
    invoke-direct {p0, v1}, Lcom/findit/battle/GameView$GameThread;->doDraw(Landroid/graphics/Canvas;)Z

    .line 5433
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5438
    :try_start_2
    iget v4, p0, Lcom/findit/battle/GameView$GameThread;->mDelay:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/findit/battle/GameView$GameThread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5444
    if-eqz v1, :cond_0

    .line 5445
    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 5388
    :pswitch_1
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v4}, Lcom/findit/battle/GameView;->access$5(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$Opening;

    move-result-object v4

    invoke-virtual {v4}, Lcom/findit/battle/GameView$Opening;->animate()V

    goto :goto_1

    .line 5392
    :pswitch_2
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v4}, Lcom/findit/battle/GameView;->access$1(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$MainMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/findit/battle/GameView$MainMenu;->animate()V

    goto :goto_1

    .line 5397
    :pswitch_3
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-boolean v4, v4, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    if-eqz v4, :cond_5

    .line 5398
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-boolean v4, v4, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    if-eqz v4, :cond_5

    .line 5399
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v4, v4, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    if-gez v4, :cond_5

    .line 5400
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iput-boolean v7, v4, Lcom/findit/battle/GameView$BattleRoom;->mGameStart:Z

    .line 5401
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v5, 0x0

    iput v5, v4, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 5408
    :cond_5
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v4}, Lcom/findit/battle/GameView$BattleRoom;->animate()V

    .line 5409
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v5, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget v5, v5, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v4, v5}, Lcom/findit/battle/Objects$Skills;->animation(F)V

    goto :goto_1

    .line 5413
    :pswitch_4
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v4}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5414
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v4}, Lcom/findit/battle/GameView$GameRoom;->animate()V

    .line 5415
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v5, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget v5, v5, Lcom/findit/battle/GameView;->mSpeedRate:F

    .line 5416
    iget-object v6, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    .line 5415
    invoke-virtual {v4, v5, v6}, Lcom/findit/battle/Objects$Skills;->animation(FLcom/findit/battle/GameView;)V

    .line 5418
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v4, v4, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    .line 5419
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v5, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v5, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v4, v4, v5

    .line 5420
    iget-object v5, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget v5, v5, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v4, v5}, Lcom/findit/battle/Objects$Character;->animation(F)V

    goto/16 :goto_1

    .line 5425
    :pswitch_5
    iget-object v4, p0, Lcom/findit/battle/GameView$GameThread;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    invoke-virtual {v4}, Lcom/findit/battle/GameView$Result;->animate()V

    goto/16 :goto_1

    .line 5433
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5439
    :catch_0
    move-exception v2

    .line 5440
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5444
    if-eqz v1, :cond_0

    .line 5445
    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 5441
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 5442
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5444
    if-eqz v1, :cond_0

    .line 5445
    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 5443
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 5444
    if-eqz v1, :cond_6

    .line 5445
    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 5446
    :cond_6
    throw v4

    .line 5386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 5346
    const-string v0, ">> setSurfaceHolder()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5347
    iput-object p1, p0, Lcom/findit/battle/GameView$GameThread;->mSurfaceholder:Landroid/view/SurfaceHolder;

    .line 5348
    return-void
.end method
