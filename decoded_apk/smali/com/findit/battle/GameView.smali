.class public Lcom/findit/battle/GameView;
.super Landroid/view/SurfaceView;
.source "GameView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/GameView$ActionRunnable;,
        Lcom/findit/battle/GameView$BattleRoom;,
        Lcom/findit/battle/GameView$GameRoom;,
        Lcom/findit/battle/GameView$GameThread;,
        Lcom/findit/battle/GameView$MainMenu;,
        Lcom/findit/battle/GameView$Opening;,
        Lcom/findit/battle/GameView$Rate;,
        Lcom/findit/battle/GameView$Result;,
        Lcom/findit/battle/GameView$doSendSocketMsgTask;
    }
.end annotation


# static fields
.field public static final ATTACK_BASE:I = 0x0

.field public static final CHARACTER_AI:Ljava/lang/String; = ""

.field public static final COIN_BASE:I = 0xa

.field public static final DEFENSE_BASE:I = 0x0

.field public static final LEVEL_BASE:I = 0x1

.field public static final LOGIN_GUEST:I = 0x2

.field public static final LOGIN_MEMBER:I = 0x1

.field public static final LOGOUT:I = 0x0

.field public static final NOTFINDRECT_DIM_TIME:I = 0x14

.field public static final POINT_BASE:I = 0x2

.field public static final SCORE_BASE:J = 0x0L

.field public static final SCREENMODE_BATTLEROOM:I = 0x3

.field public static final SCREENMODE_GAME:I = 0x4

.field public static final SCREENMODE_MAINMENU:I = 0x1

.field public static final SCREENMODE_OPENING:I = 0x0

.field public static final SCREENMODE_RESULT:I = 0x5

.field public static final SCREENMODE_WAITINGROOM:I = 0x2

.field public static final SOUND_DONG:I = 0x6

.field public static final SOUND_LOSE:I = 0x8

.field public static final SOUND_O:I = 0x0

.field public static final SOUND_READY:I = 0x2

.field public static final SOUND_SHOPPAGE:I = 0x4

.field public static final SOUND_TOUCH:I = 0x3

.field public static final SOUND_USEITEM:I = 0x9

.field private static final SOUND_VOLUME:F = 0.5f

.field public static final SOUND_WIN:I = 0x7

.field public static final SOUND_WIND:I = 0x5

.field public static final SOUND_X:I = 0x1

.field public static final VIBRATOR_TIME_NOTFINDRECT:I = 0xc8

.field protected static mMediaPlayer:Landroid/media/MediaPlayer;

.field public static mScreenMode:I

.field protected static mSoundpool:Landroid/media/SoundPool;


# instance fields
.field public mAttack:I

.field public mAutoLogin:Z

.field private mBattleRoomAndGameRoomTimer:Ljava/util/Timer;

.field private mBattleRoomAndGameRoomTimerInit:Z

.field private mBgBmp:Landroid/graphics/Bitmap;

.field private mBgPng:Landroid/graphics/drawable/BitmapDrawable;

.field public mCoin:J

.field private mContext:Landroid/content/Context;

.field protected mDbhelper:Lcom/findit/battle/DBAdapter;

.field public mDefense:I

.field public mDrawrate:F

.field public mEmail:Ljava/lang/String;

.field private mGameActivity:Lcom/findit/battle/GameActivity;

.field protected mGameThread:Lcom/findit/battle/GameView$GameThread;

.field public mHeightRate:F

.field public mLevel:I

.field public mLevelScoreTable:[I

.field public mLogin:I

.field public mNickName:Ljava/lang/String;

.field protected mObjects:Lcom/findit/battle/Objects;

.field public mPassword:Ljava/lang/String;

.field public mPoint:I

.field private mRestore:Z

.field public mRoomName:Ljava/lang/String;

.field public mScore:J

.field public mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

.field public mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

.field private mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

.field private mScreenOpening:Lcom/findit/battle/GameView$Opening;

.field public mScreenResult:Lcom/findit/battle/GameView$Result;

.field public mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

.field protected mSoundPoolMap:Landroid/util/SparseIntArray;

.field public mSoundon:Z

.field public mSpeedRate:F

.field private mSurfaceholder:Landroid/view/SurfaceHolder;

.field private mVibrator:Landroid/os/Vibrator;

.field public mWidthRate:F

.field public mWork:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/findit/battle/GameView;->mRestore:Z

    .line 150
    const-string v0, ">> GameView() construct"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/findit/battle/GameView;->getSurfaceHolder()V

    .line 156
    invoke-direct {p0, p1}, Lcom/findit/battle/GameView;->loadSoundAndVibrator(Landroid/content/Context;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/findit/battle/GameView;->initMemberValue(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/findit/battle/GameView;->mRestore:Z

    .line 165
    const-string v0, ">> GameView() construct"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/findit/battle/GameView;->getSurfaceHolder()V

    .line 171
    invoke-direct {p0, p1}, Lcom/findit/battle/GameView;->loadSoundAndVibrator(Landroid/content/Context;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/findit/battle/GameView;->initMemberValue(Landroid/content/Context;)V

    .line 176
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$MainMenu;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    return-object v0
.end method

.method static synthetic access$10(Lcom/findit/battle/GameView;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/findit/battle/GameView;->mBattleRoomAndGameRoomTimerInit:Z

    return v0
.end method

.method static synthetic access$2(Lcom/findit/battle/GameView;I)V
    .locals 0

    .prologue
    .line 6002
    invoke-direct {p0, p1}, Lcom/findit/battle/GameView;->setScreenMode(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$Opening;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenOpening:Lcom/findit/battle/GameView$Opening;

    return-object v0
.end method

.method static synthetic access$6(Lcom/findit/battle/GameView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/findit/battle/GameView;)V
    .locals 0

    .prologue
    .line 5317
    invoke-direct {p0}, Lcom/findit/battle/GameView;->stopBattleRoomAndGameRoomTimer()V

    return-void
.end method

.method static synthetic access$8(Lcom/findit/battle/GameView;)V
    .locals 0

    .prologue
    .line 5091
    invoke-direct {p0}, Lcom/findit/battle/GameView;->startBattleRoomAndGameRoomTimer()V

    return-void
.end method

.method static synthetic access$9(Lcom/findit/battle/GameView;Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/findit/battle/GameView;->mBattleRoomAndGameRoomTimerInit:Z

    return-void
.end method

.method private createGameObjects(Landroid/content/Context;IIF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displaywidth"    # I
    .param p3, "displayheight"    # I
    .param p4, "drawrate"    # F

    .prologue
    .line 454
    const-string v0, ">> createGameObjects()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/findit/battle/Objects;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/findit/battle/Objects;-><init>(Landroid/content/Context;IIF)V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    .line 457
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/findit/battle/GameView;->loadGameObject(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method private createGameScreens(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displaywidth"    # I
    .param p3, "displayheight"    # I

    .prologue
    .line 436
    const-string v0, ">> createGameScreens()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenOpening:Lcom/findit/battle/GameView$Opening;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/findit/battle/GameView$Opening;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameView$Opening;-><init>(Lcom/findit/battle/GameView;)V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mScreenOpening:Lcom/findit/battle/GameView$Opening;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Lcom/findit/battle/GameView$MainMenu;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameView$MainMenu;-><init>(Lcom/findit/battle/GameView;)V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    if-nez v0, :cond_2

    .line 442
    new-instance v0, Lcom/findit/battle/WaitingRoom;

    .line 443
    invoke-direct {v0, p1, p0, p2, p3}, Lcom/findit/battle/WaitingRoom;-><init>(Landroid/content/Context;Lcom/findit/battle/GameView;II)V

    .line 442
    iput-object v0, p0, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    if-nez v0, :cond_3

    .line 445
    new-instance v0, Lcom/findit/battle/GameView$BattleRoom;

    invoke-direct {v0, p0, p2, p3}, Lcom/findit/battle/GameView$BattleRoom;-><init>(Lcom/findit/battle/GameView;II)V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    if-nez v0, :cond_4

    .line 447
    new-instance v0, Lcom/findit/battle/GameView$GameRoom;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/findit/battle/GameView$GameRoom;-><init>(Lcom/findit/battle/GameView;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    .line 448
    :cond_4
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    if-nez v0, :cond_5

    .line 449
    new-instance v0, Lcom/findit/battle/GameView$Result;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/findit/battle/GameView$Result;-><init>(Lcom/findit/battle/GameView;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    .line 450
    :cond_5
    return-void
.end method

.method private destroySoundResorce()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    const-string v0, ">> destroySoundResorce()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->stopBackgroundMusic()V

    .line 229
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 230
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 231
    sput-object v1, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 237
    iput-object v1, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    .line 239
    :cond_1
    sget-object v0, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 240
    sget-object v0, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 241
    sput-object v1, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    .line 243
    :cond_2
    return-void
.end method

.method private doStartGameView()V
    .locals 1

    .prologue
    .line 344
    const-string v0, ">> doStartGameView()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 345
    invoke-direct {p0}, Lcom/findit/battle/GameView;->startGameView()V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/findit/battle/GameView;->mRestore:Z

    .line 349
    const-string v0, "++ doStartGameView() start GameThread"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lcom/findit/battle/GameView;->startGameThread()V

    .line 351
    return-void
.end method

.method private getSurfaceHolder()V
    .locals 1

    .prologue
    .line 179
    const-string v0, ">> getSurfaceHolderAndStartThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/GameView;->mSurfaceholder:Landroid/view/SurfaceHolder;

    .line 181
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSurfaceholder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 182
    return-void
.end method

.method private initMemberValue(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 246
    const-string v0, ">> initMemberValue()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/GameView;->mLevelScoreTable:[I

    .line 249
    iput-object p1, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    .line 250
    check-cast p1, Lcom/findit/battle/GameActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    .line 251
    iput-boolean v2, p0, Lcom/findit/battle/GameView;->mWork:Z

    .line 252
    iput v3, p0, Lcom/findit/battle/GameView;->mLogin:I

    .line 253
    iput v2, p0, Lcom/findit/battle/GameView;->mLevel:I

    .line 254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/findit/battle/GameView;->mScore:J

    .line 255
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/findit/battle/GameView;->mCoin:J

    .line 256
    const/4 v0, 0x2

    iput v0, p0, Lcom/findit/battle/GameView;->mPoint:I

    .line 257
    iput-boolean v2, p0, Lcom/findit/battle/GameView;->mSoundon:Z

    .line 258
    invoke-direct {p0, v3}, Lcom/findit/battle/GameView;->setScreenMode(I)V

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/findit/battle/GameView;->mSpeedRate:F

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    .line 261
    return-void
.end method

.method private loadSoundAndVibrator(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    .line 185
    const-string v0, ">> loadSoundAndVibrator()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 187
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 186
    iput-object v0, p0, Lcom/findit/battle/GameView;->mVibrator:Landroid/os/Vibrator;

    .line 189
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 190
    const v0, 0x7f050001

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    sput-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 192
    :cond_0
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 193
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 196
    sget-object v0, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v5, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    if-nez v0, :cond_2

    .line 201
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    .line 202
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v3, 0x7f050003

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v2, 0x7f05000a

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    .line 205
    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v3, 0x7f050004

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    .line 207
    sget-object v1, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v2, 0x7f050006

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 206
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    .line 209
    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v3, 0x7f050005

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    .line 211
    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v3, 0x7f050009

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    .line 213
    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    .line 215
    const/4 v1, 0x7

    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v3, 0x7f050008

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    .line 217
    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v3, 0x7f050002

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    .line 219
    sget-object v2, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    const v3, 0x7f050007

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    :cond_2
    return-void
.end method

.method private readSettingValueFromDB()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 327
    const-string v1, ">> readSettingValueFromDB()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-nez v1, :cond_1

    .line 329
    const-string v1, "-- readSettingValueFromDB() mDbhelper is null"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/findit/battle/DBAdapter;->fetchSetup(J)Landroid/database/Cursor;

    move-result-object v0

    .line 333
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 336
    const-string v1, "mAutoLogin"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 335
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 336
    if-ne v1, v2, :cond_2

    move v1, v2

    .line 335
    :goto_1
    iput-boolean v1, p0, Lcom/findit/battle/GameView;->mAutoLogin:Z

    .line 339
    const-string v1, "mSoundon"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 338
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 339
    if-ne v1, v2, :cond_3

    .line 338
    :goto_2
    iput-boolean v2, p0, Lcom/findit/battle/GameView;->mSoundon:Z

    goto :goto_0

    :cond_2
    move v1, v3

    .line 336
    goto :goto_1

    :cond_3
    move v2, v3

    .line 339
    goto :goto_2
.end method

.method private setScreenMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 6003
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> setScreenMode() OldScreenMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/findit/battle/GameView;->mScreenMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6004
    const-string v1, " NewScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6003
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 6005
    sput p1, Lcom/findit/battle/GameView;->mScreenMode:I

    .line 6006
    return-void
.end method

.method private startBattleRoomAndGameRoomTimer()V
    .locals 6

    .prologue
    .line 5092
    const-string v2, ">> startBattleRoomAndGameRoomTimer()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5094
    iget-object v2, p0, Lcom/findit/battle/GameView;->mBattleRoomAndGameRoomTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 5095
    const-string v2, "++ startBattleRoomAndGameRoomTimer() Timer is running"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 5312
    :goto_0
    return-void

    .line 5099
    :cond_0
    new-instance v1, Lcom/findit/battle/GameView$1;

    invoke-direct {v1, p0}, Lcom/findit/battle/GameView$1;-><init>(Lcom/findit/battle/GameView;)V

    .line 5308
    .local v1, "myTask":Ljava/util/TimerTask;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/findit/battle/GameView;->mBattleRoomAndGameRoomTimerInit:Z

    .line 5309
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 5310
    .local v0, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 5311
    iput-object v0, p0, Lcom/findit/battle/GameView;->mBattleRoomAndGameRoomTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method private startGameThread()V
    .locals 2

    .prologue
    .line 493
    const-string v0, ">> startGameThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "-- startGameThread() mGameThread is working aleady"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mSurfaceholder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 500
    const-string v0, "-- startGameThread() mSurfaceholder is null"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/findit/battle/GameView;->mWork:Z

    .line 505
    new-instance v0, Lcom/findit/battle/GameView$GameThread;

    iget-object v1, p0, Lcom/findit/battle/GameView;->mSurfaceholder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/findit/battle/GameView$GameThread;-><init>(Lcom/findit/battle/GameView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    .line 506
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-virtual {v0}, Lcom/findit/battle/GameView$GameThread;->start()V

    goto :goto_0
.end method

.method private startGameView()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/high16 v8, 0x44480000    # 800.0f

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 354
    const-string v0, ">> startGameView()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    .line 357
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v2

    .line 358
    .local v2, "displaywidth":I
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v3

    .line 360
    .local v3, "displayheight":I
    if-ge v2, v3, :cond_0

    .line 361
    move v7, v2

    .line 362
    .local v7, "temp":I
    move v2, v3

    .line 363
    move v3, v7

    .line 366
    .end local v7    # "temp":I
    :cond_0
    add-int v0, v2, v3

    int-to-float v0, v0

    div-float v6, v0, v8

    .line 367
    .local v6, "drawrate":F
    iput v6, p0, Lcom/findit/battle/GameView;->mDrawrate:F

    .line 368
    int-to-float v0, v2

    const/high16 v4, 0x44a00000    # 1280.0f

    div-float/2addr v0, v4

    iput v0, p0, Lcom/findit/battle/GameView;->mWidthRate:F

    .line 369
    int-to-float v0, v3

    div-float/2addr v0, v8

    iput v0, p0, Lcom/findit/battle/GameView;->mHeightRate:F

    .line 371
    invoke-direct {p0, v1, v2, v3, v6}, Lcom/findit/battle/GameView;->createGameObjects(Landroid/content/Context;IIF)V

    .line 372
    invoke-direct {p0, v1, v2, v3}, Lcom/findit/battle/GameView;->createGameScreens(Landroid/content/Context;II)V

    .line 374
    iget-boolean v0, p0, Lcom/findit/battle/GameView;->mRestore:Z

    if-eqz v0, :cond_1

    .line 375
    const-string v0, "++ startGameView() restore"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 376
    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9, v5}, Lcom/findit/battle/GameView;->loadState(JZ)V

    .line 378
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0, v4}, Lcom/findit/battle/Objects;->loadChracters(Lcom/findit/battle/DBAdapter;)V

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/findit/battle/Objects;->loadCharactersImage(Landroid/content/Context;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "ScreenMode: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 432
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    iput v11, v0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 389
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    invoke-static {v0, v11}, Lcom/findit/battle/GameView$MainMenu;->access$0(Lcom/findit/battle/GameView$MainMenu;I)V

    .line 390
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    invoke-virtual {v0, v10}, Lcom/findit/battle/GameView$MainMenu;->setBackboard(Z)V

    .line 392
    iget v0, p0, Lcom/findit/battle/GameView;->mLogin:I

    if-ne v0, v5, :cond_2

    .line 393
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    .line 394
    invoke-virtual {v0, v10}, Lcom/findit/battle/GameActivity;->connectServer(I)V

    goto :goto_0

    .line 397
    :cond_2
    const-string v0, ""

    .line 398
    const/4 v4, 0x2

    .line 397
    invoke-virtual {p0, v0, v4}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    goto :goto_0

    .line 404
    :pswitch_1
    const v4, 0x7f02016a

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/GameView;->loadBgImage(Landroid/content/Context;IIIZ)V

    goto :goto_0

    .line 411
    :pswitch_2
    const v4, 0x7f020184

    move-object v0, p0

    move v5, v10

    .line 410
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/GameView;->loadBgImage(Landroid/content/Context;IIIZ)V

    .line 412
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$MainMenu;->loadImage(Landroid/content/Context;)V

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopBattleRoomAndGameRoomTimer()V
    .locals 1

    .prologue
    .line 5318
    const-string v0, ">> stopBattleRoomAndGameRoomTimer()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5320
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBattleRoomAndGameRoomTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView;->mBattleRoomAndGameRoomTimer:Ljava/util/Timer;

    .line 5322
    return-void
.end method


# virtual methods
.method public enterBattleRoom(Ljava/lang/String;I)V
    .locals 12
    .param p1, "rightname"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v5, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1250
    const-string v0, ">> enterBattleRoom()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    .line 1253
    .local v1, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 1255
    .local v6, "battleroom":Lcom/findit/battle/GameView$BattleRoom;
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0}, Lcom/findit/battle/Objects$Buttons;->recycleImageInButton()V

    .line 1257
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    if-ne v0, v11, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v3

    const v4, 0x7f02012b

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/GameView;->loadBgImage(Landroid/content/Context;IIIZ)V

    .line 1259
    invoke-virtual {v6, v1}, Lcom/findit/battle/GameView$BattleRoom;->loadImage(Landroid/content/Context;)V

    .line 1261
    invoke-direct {p0, v11}, Lcom/findit/battle/GameView;->setScreenMode(I)V

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v0, v10}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 1265
    invoke-static {v6}, Lcom/findit/battle/GameView$BattleRoom;->access$0(Lcom/findit/battle/GameView$BattleRoom;)V

    .line 1267
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v0, v0, v9

    iget-object v2, p0, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    iput-object v2, v0, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    .line 1268
    iput v10, v6, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 1270
    invoke-static {v6}, Lcom/findit/battle/GameView$BattleRoom;->access$1(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1271
    invoke-static {v6}, Lcom/findit/battle/GameView$BattleRoom;->access$2(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1273
    invoke-static {v6}, Lcom/findit/battle/GameView$BattleRoom;->access$3(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1274
    iget-object v0, v6, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    iget-object v2, v6, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v2, v2, v9

    aput v2, v0, v9

    .line 1276
    iget-object v0, v6, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v0, v0, v5

    invoke-static {v6, v0}, Lcom/findit/battle/GameView$BattleRoom;->access$4(Lcom/findit/battle/GameView$BattleRoom;I)V

    .line 1278
    iput-boolean v9, v6, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    .line 1279
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v7, v0, v9

    .line 1280
    .local v7, "character":Lcom/findit/battle/Objects$Character;
    invoke-virtual {v7, v9}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 1281
    invoke-static {v6}, Lcom/findit/battle/GameView$BattleRoom;->access$5(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1282
    .local v8, "rect":Landroid/graphics/Rect;
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 1284
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v7, v0, v5

    .line 1285
    iput-boolean v9, v6, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 1286
    invoke-virtual {v7, v9}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 1287
    invoke-static {v6}, Lcom/findit/battle/GameView$BattleRoom;->access$6(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1288
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 1290
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v2, 0x2

    aget-object v7, v0, v2

    .line 1291
    invoke-virtual {v7, v9}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 1292
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v0, v2, v3, v4}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 1294
    if-nez p1, :cond_3

    .line 1295
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iput v10, v0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 1300
    :goto_0
    const/4 v0, -0x2

    if-le p2, v0, :cond_2

    .line 1301
    iput p2, v6, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 1303
    :cond_2
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->startBackgroundMusic()V

    .line 1304
    return-void

    .line 1298
    :cond_3
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v0, p1}, Lcom/findit/battle/GameView$GameRoom;->setRightCharacter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enterMainMenu(I)V
    .locals 8
    .param p1, "time"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ">> enterMainMenu() time: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    .line 1224
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1227
    :cond_0
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v3

    const v4, 0x7f020184

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/GameView;->loadBgImage(Landroid/content/Context;IIIZ)V

    .line 1229
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$MainMenu;->loadImage(Landroid/content/Context;)V

    .line 1231
    invoke-direct {p0, v6}, Lcom/findit/battle/GameView;->setScreenMode(I)V

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0, v5}, Lcom/findit/battle/Objects$Buttons;->setImageNum(I)V

    .line 1235
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0, v7}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 1237
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    iput p1, v0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 1238
    if-gez p1, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    invoke-static {v0}, Lcom/findit/battle/GameView$MainMenu;->access$1(Lcom/findit/battle/GameView$MainMenu;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    iget-object v0, v0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v0, v6}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V

    .line 1246
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->stopBackgroundMusic()V

    .line 1247
    return-void
.end method

.method public getLengthText(I)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 554
    const-string v0, ">> getLengthText()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 555
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_0
    return-object v0

    .line 557
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getListImageNum()J
    .locals 3

    .prologue
    .line 1146
    const-string v1, ">> getListImageNum()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget v1, v1, Lcom/findit/battle/Objects;->mImagesTotalnum:I

    add-int/lit8 v0, v1, -0x1

    .line 1148
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, v1, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, v1, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v1, v1, v0

    iget-wide v1, v1, Lcom/findit/battle/Objects$FindImage;->mImgNum:J

    .line 1151
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x1

    goto :goto_0
.end method

.method public getScreenMode()I
    .locals 1

    .prologue
    .line 6015
    sget v0, Lcom/findit/battle/GameView;->mScreenMode:I

    return v0
.end method

.method public getSubTexts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "devider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    const-string v5, ">> getSubTexts()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 529
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v4, "subtexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 532
    .local v1, "length":I
    const/4 v2, 0x0

    .line 533
    .local v2, "startindex":I
    :cond_0
    :goto_0
    if-lt v2, v1, :cond_1

    .line 550
    :goto_1
    return-object v4

    .line 534
    :cond_1
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 535
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 536
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "subtext":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    .end local v3    # "subtext":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 542
    .restart local v3    # "subtext":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    add-int/lit8 v2, v0, 0x1

    .line 546
    if-ne v2, v1, :cond_0

    .line 547
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isRunningGame()Z
    .locals 2

    .prologue
    .line 483
    const-string v0, ">> isRunningGame()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-virtual {v0}, Lcom/findit/battle/GameView$GameThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    :cond_0
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-- isRunningGame() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    iget-boolean v1, v1, Lcom/findit/battle/GameView$GameThread;->mRun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    iget-boolean v0, v0, Lcom/findit/battle/GameView$GameThread;->mRun:Z

    goto :goto_0
.end method

.method public loadBgImage(Landroid/content/Context;IIIZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displaywidth"    # I
    .param p3, "displayheight"    # I
    .param p4, "id"    # I
    .param p5, "bmp"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 997
    const-string v6, ">> loadBgImage()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 998
    if-ge p2, p3, :cond_0

    .line 999
    move v5, p2

    .line 1000
    .local v5, "temp":I
    move p2, p3

    .line 1001
    move p3, v5

    .line 1004
    .end local v5    # "temp":I
    :cond_0
    iget-object v6, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 1005
    iget-object v6, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1006
    iput-object v9, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    .line 1009
    :cond_1
    iget-object v6, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 1010
    iget-object v6, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1011
    iput-object v9, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    .line 1014
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1016
    if-eqz p5, :cond_4

    .line 1018
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1019
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1021
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1020
    invoke-static {v6, p4, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1023
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x1

    .line 1022
    invoke-static {v0, p2, p3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    .line 1024
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_0
    return-void

    .line 1025
    :catch_0
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1027
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x2

    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1028
    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1030
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1029
    invoke-static {v6, p4, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1031
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p2, p3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    .line 1033
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1056
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const/4 v3, 0x0

    .line 1058
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1059
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 1061
    .local v2, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1062
    iput-object v2, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1081
    .end local v2    # "img":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    if-eqz v3, :cond_3

    .line 1083
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1084
    :catch_1
    move-exception v1

    .line 1085
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1063
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1064
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    iget-object v6, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    const-string v7, "\uac8c\uc784\uc744 \ub2e4\uc2dc \uc2e4\ud589\ud574 \uc8fc\uc138\uc694"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 1065
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1066
    iget-object v6, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    invoke-virtual {v6}, Lcom/findit/battle/GameActivity;->finish()V

    goto :goto_1
.end method

.method public loadGameObject(Z)V
    .locals 3
    .param p1, "bRunningGame"    # Z

    .prologue
    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> loadGameObject() bRunningGame: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 470
    const-string v0, "-- loadGameObject() mContext is null"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-nez v0, :cond_1

    .line 475
    const-string v0, "-- loadGameObject() mDbhelper is null"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, p0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0, v1, v2, p1}, Lcom/findit/battle/Objects;->createFindImages(Landroid/content/Context;Lcom/findit/battle/DBAdapter;Z)Z

    goto :goto_0
.end method

.method public loadState(JZ)V
    .locals 18
    .param p1, "rowid"    # J
    .param p3, "state"    # Z

    .prologue
    .line 848
    const-string v14, ">> loadState()"

    invoke-static {v14}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 849
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Lcom/findit/battle/DBAdapter;->fetchState(J)Landroid/database/Cursor;

    move-result-object v2

    .line 851
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 852
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-eqz v14, :cond_3

    .line 853
    if-eqz p3, :cond_0

    .line 855
    const-string v14, "mScreenMode"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 854
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/findit/battle/GameView;->setScreenMode(I)V

    .line 857
    const-string v14, "mLogin"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 856
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView;->mLogin:I

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView;->startBackgroundMusic()V

    .line 863
    :cond_0
    const-string v14, "mLogin"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 862
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView;->mLevel:I

    .line 864
    move-object/from16 v0, p0

    iget v14, v0, Lcom/findit/battle/GameView;->mLevel:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_1

    .line 865
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView;->mLevel:I

    .line 868
    :cond_1
    const-string v14, "mPoint"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 867
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView;->mPoint:I

    .line 870
    const-string v14, "mScore"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 869
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/findit/battle/GameView;->mScore:J

    .line 872
    const-string v14, "mCoin"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 871
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/findit/battle/GameView;->mCoin:J

    .line 874
    const-string v14, "mAttack"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 873
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView;->mAttack:I

    .line 876
    const-string v14, "mDefense"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 875
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView;->mDefense:I

    .line 880
    const-string v14, "mSkills"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 879
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, "data":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 882
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    new-array v4, v14, [C

    .line 883
    .local v4, "datas":[C
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 885
    const/4 v7, 0x0

    .line 886
    .local v7, "j":I
    add-int/lit8 v7, v7, 0x1

    .line 888
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v15, v14, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/16 v16, 0x0

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .local v8, "j":I
    aget-char v14, v4, v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_5

    const/4 v14, 0x1

    :goto_0
    aput-boolean v14, v15, v16

    .line 890
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v15, v14, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/16 v16, 0x1

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v14, v4, v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    const/4 v14, 0x1

    :goto_1
    aput-boolean v14, v15, v16

    .line 892
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v15, v14, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/16 v16, 0x2

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    const/4 v14, 0x1

    :goto_2
    aput-boolean v14, v15, v16

    .line 894
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v15, v14, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/16 v16, 0x3

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v14, v4, v8

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_8

    const/4 v14, 0x1

    :goto_3
    aput-boolean v14, v15, v16

    .line 899
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v11, v4, v7

    .line 901
    .local v11, "totalnum":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-lt v6, v11, :cond_9

    .line 912
    .end local v4    # "datas":[C
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v11    # "totalnum":I
    :cond_2
    const-string v14, "mItems"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 911
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 913
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 914
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    new-array v4, v14, [C

    .line 915
    .restart local v4    # "datas":[C
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 917
    const/4 v7, 0x0

    .line 918
    .restart local v7    # "j":I
    add-int/lit8 v7, v7, 0x1

    .line 920
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_5
    const/4 v14, 0x6

    if-lt v6, v14, :cond_d

    .line 957
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    const/4 v15, 0x0

    iput v15, v14, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 958
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v11, v4, v8

    .line 960
    .restart local v11    # "totalnum":I
    const/4 v6, 0x0

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    :goto_6
    if-lt v6, v11, :cond_f

    .line 985
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v14}, Lcom/findit/battle/Items;->setSetTable()V

    .line 989
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "datas":[C
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v11    # "totalnum":I
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_4
    return-void

    .line 888
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v4    # "datas":[C
    .restart local v8    # "j":I
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 890
    .end local v8    # "j":I
    .restart local v7    # "j":I
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 892
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 894
    .end local v8    # "j":I
    .restart local v7    # "j":I
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 902
    .end local v7    # "j":I
    .restart local v6    # "i":I
    .restart local v8    # "j":I
    .restart local v11    # "totalnum":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v14, v14, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v15, v14, v6

    aget-char v14, v4, v8

    const/16 v16, 0x7fff

    move/from16 v0, v16

    if-le v14, v0, :cond_a

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v14, v4, v8

    const/high16 v16, 0x10000

    sub-int v14, v14, v16

    :goto_7
    iput v14, v15, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 904
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v14, v14, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v15, v14, v6

    aget-char v14, v4, v7

    const/16 v16, 0x7fff

    move/from16 v0, v16

    if-le v14, v0, :cond_b

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    const/high16 v16, 0x10000

    sub-int v14, v14, v16

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    :goto_8
    iput v14, v15, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 906
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v14, v14, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v15, v14, v6

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_c

    const/4 v14, 0x1

    :goto_9
    iput-boolean v14, v15, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 901
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 903
    :cond_a
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v14, v4, v8

    goto :goto_7

    .line 905
    :cond_b
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_8

    .line 906
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :cond_c
    const/4 v14, 0x0

    goto :goto_9

    .line 945
    .end local v11    # "totalnum":I
    :cond_d
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v11, v4, v8

    .line 946
    .restart local v11    # "totalnum":I
    const/4 v13, 0x0

    .local v13, "z":I
    :goto_a
    if-lt v13, v11, :cond_e

    .line 920
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto/16 :goto_5

    .line 947
    .end local v8    # "j":I
    .restart local v7    # "j":I
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 948
    add-int/lit8 v7, v7, 0x1

    .line 949
    add-int/lit8 v7, v7, 0x1

    .line 950
    add-int/lit8 v7, v7, 0x1

    .line 951
    add-int/lit8 v7, v7, 0x1

    .line 952
    add-int/lit8 v7, v7, 0x1

    .line 953
    add-int/lit8 v7, v7, 0x1

    .line 946
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 961
    .end local v7    # "j":I
    .end local v13    # "z":I
    .restart local v8    # "j":I
    :cond_f
    aget-char v14, v4, v8

    const/16 v15, 0x7fff

    if-le v14, v15, :cond_10

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v14, v4, v8

    const/high16 v15, 0x10000

    sub-int v12, v14, v15

    .line 963
    .local v12, "type":I
    :goto_b
    aget-char v14, v4, v7

    const/16 v15, 0x7fff

    if-le v14, v15, :cond_11

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    const/high16 v15, 0x10000

    sub-int v9, v14, v15

    move v7, v8

    .line 965
    .end local v8    # "j":I
    .restart local v7    # "j":I
    .local v9, "subtype":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    invoke-virtual {v14, v12, v9}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 969
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v14, v14, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v15, v14, v6

    aget-char v14, v4, v7

    const/16 v16, 0x7fff

    move/from16 v0, v16

    if-le v14, v0, :cond_12

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    const/high16 v16, 0x10000

    sub-int v14, v14, v16

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    :goto_d
    iput v14, v15, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 971
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v14, v14, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v15, v14, v6

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_13

    const/4 v14, 0x1

    :goto_e
    iput-boolean v14, v15, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 972
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v14, v14, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v15, v14, v6

    aget-char v14, v4, v8

    const/16 v16, 0x7fff

    move/from16 v0, v16

    if-le v14, v0, :cond_14

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v14, v4, v8

    const/high16 v16, 0x10000

    sub-int v14, v14, v16

    :goto_f
    iput v14, v15, Lcom/findit/battle/Items$Item;->mNum:I

    .line 975
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v10, v4, v7

    .line 976
    .local v10, "total":I
    if-nez v10, :cond_15

    .line 977
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v14, v14, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v14, v14, v6

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    move v7, v8

    .line 960
    .end local v8    # "j":I
    .restart local v7    # "j":I
    :goto_10
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto/16 :goto_6

    .line 962
    .end local v9    # "subtype":I
    .end local v10    # "total":I
    .end local v12    # "type":I
    :cond_10
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v12, v4, v8

    goto/16 :goto_b

    .line 964
    .restart local v12    # "type":I
    :cond_11
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v9, v4, v7

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_c

    .line 970
    .restart local v9    # "subtype":I
    :cond_12
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "j":I
    .restart local v8    # "j":I
    aget-char v14, v4, v7

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_d

    .line 971
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :cond_13
    const/4 v14, 0x0

    goto :goto_e

    .line 973
    :cond_14
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v14, v4, v8

    goto :goto_f

    .line 979
    .end local v7    # "j":I
    .restart local v8    # "j":I
    .restart local v10    # "total":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v14, v14, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v14, v14, v6

    const-string v15, ""

    iput-object v15, v14, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 980
    const/4 v5, 0x0

    .local v5, "h":I
    :goto_11
    if-lt v5, v10, :cond_16

    move v7, v8

    .end local v8    # "j":I
    .restart local v7    # "j":I
    goto :goto_10

    .line 981
    .end local v7    # "j":I
    .restart local v8    # "j":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v14, v14, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v14, v14, v6

    iget-object v15, v14, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "j":I
    .restart local v7    # "j":I
    aget-char v15, v4, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 980
    add-int/lit8 v5, v5, 0x1

    move v8, v7

    .end local v7    # "j":I
    .restart local v8    # "j":I
    goto :goto_11
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 729
    const-string v0, ">> onDestroy()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 735
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/findit/battle/GameView;->loadState(JZ)V

    .line 738
    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/GameView;->saveState(J)V

    .line 740
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->recycleResources()V

    .line 743
    invoke-direct {p0}, Lcom/findit/battle/GameView;->destroySoundResorce()V

    .line 746
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    invoke-virtual {v0}, Lcom/findit/battle/GameActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    invoke-virtual {v0}, Lcom/findit/battle/WaitingRoom;->exit()V

    .line 752
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    const-string v0, ">> onPause()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->stopBackgroundMusic()V

    .line 313
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v0, v1}, Lcom/findit/battle/GameView$GameThread;->access$1(Lcom/findit/battle/GameView$GameThread;Z)V

    .line 315
    iput-boolean v1, p0, Lcom/findit/battle/GameView;->mWork:Z

    .line 324
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 290
    const-string v0, ">> onResume()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/findit/battle/GameView;->readSettingValueFromDB()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v0}, Lcom/findit/battle/GameView$GameThread;->access$0(Lcom/findit/battle/GameView$GameThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    const-string v0, "++ onResume() start GameThread"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/findit/battle/GameView$GameThread;->access$1(Lcom/findit/battle/GameView$GameThread;Z)V

    .line 299
    invoke-direct {p0}, Lcom/findit/battle/GameView;->startGameThread()V

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->startBackgroundMusic()V

    .line 304
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5484
    const-string v8, ">> onTouchEvent()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5485
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v0, v8

    move/from16 v26, v0

    .line 5486
    .local v26, "touchx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v0, v8

    move/from16 v27, v0

    .line 5489
    .local v27, "touchy":I
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 5968
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v8, 0x1

    return v8

    .line 5491
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$MainMenu;->isBackboard()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5492
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    .line 5574
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Buttons;->touchSingleDown(II)V

    goto :goto_0

    .line 5494
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Buttons;->touch(II)I

    move-result v3

    .line 5495
    .local v3, "index":I
    packed-switch v3, :pswitch_data_2

    .line 5569
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/findit/battle/Objects$Buttons;->setImageNum(I)V

    goto :goto_0

    .line 5497
    :pswitch_4
    const-string v8, "\uac8c\uc784\uc2dc\uc791\ubc84\ud2bc \ud074\ub9ad"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5500
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 5502
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x0

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    .line 5503
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto :goto_1

    .line 5507
    :pswitch_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/findit/battle/GameView;->mLogin:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 5508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v9, v0, Lcom/findit/battle/GameView;->mLogin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 5511
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 5513
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x1

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    .line 5516
    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/findit/battle/GameView;->mLogin:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 5517
    const-string v8, "\uc7ac\ub85c\uadf8\uc778\uc77c \uacbd\uc6b0?"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5520
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 5522
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x1

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    .line 5527
    :goto_3
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto :goto_1

    .line 5515
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    iget-object v8, v8, Lcom/findit/battle/GameActivity;->mGuestLoginDlg:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 5524
    :cond_2
    const-string v8, "\uc7ac\ub85c\uadf8\uc778\uc774 \uc544\ub2d0\uacbd\uc6b0?"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5525
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    iget-object v8, v8, Lcom/findit/battle/GameActivity;->mGuestLoginDlg:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 5530
    :pswitch_6
    const-string v8, "\ub7ad\ud0b9\ubc84\ud2bc \ud074\ub9ad"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5533
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 5535
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x2

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    .line 5536
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_1

    .line 5539
    :pswitch_7
    const-string v8, "\uc635\uc158\ubc84\ud2bc \ud074\ub9ad"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5542
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 5544
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x3

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    .line 5545
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_1

    .line 5549
    :pswitch_8
    const-string v8, "\uacf5\uc9c0\ubc84\ud2bc \ud074\ub9ad"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5552
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 5554
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x4

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    .line 5555
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_1

    .line 5559
    :pswitch_9
    const-string v8, "Facebook\ubc84\ud2bc \ud074\ub9ad"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5562
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 5564
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    const/4 v9, 0x5

    iput v9, v8, Lcom/findit/battle/GameView$MainMenu;->mResult:I

    .line 5565
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_1

    .line 5580
    .end local v3    # "index":I
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_3

    goto/16 :goto_0

    .line 5746
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Buttons;->touchSingleDown(II)V

    .line 5747
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v9, v9, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Lcom/findit/battle/Objects$Skills;->touchIcon(II)I

    move-result v9

    iput v9, v8, Lcom/findit/battle/GameView$BattleRoom;->mSkillIndex:I

    .line 5750
    const/16 v8, 0x2710

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v9, v9, Lcom/findit/battle/GameView$BattleRoom;->mSkillIndex:I

    if-ge v8, v9, :cond_0

    .line 5751
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$BattleRoom;->mSkillIndex:I

    goto/16 :goto_0

    .line 5582
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v3, v8, Lcom/findit/battle/GameView$BattleRoom;->mSkillIndex:I

    .line 5583
    .restart local v3    # "index":I
    const/4 v8, -0x1

    if-le v3, v8, :cond_b

    .line 5584
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 5587
    .local v2, "skills":Lcom/findit/battle/Objects$Skills;
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v3, v0, v1}, Lcom/findit/battle/Objects$Skills;->moveIcon(III)V

    .line 5642
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v5, v8, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotX:I

    .line 5643
    .local v5, "x":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-object v8, v8, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 5644
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v9, v9, Lcom/findit/battle/GameView$BattleRoom;->mSkillSetSlotY:I

    .line 5643
    add-int v6, v8, v9

    .line 5645
    .local v6, "sy":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-object v8, v8, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 5646
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v9, v9, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotY:I

    .line 5645
    add-int v10, v8, v9

    .line 5647
    .local v10, "y":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 5648
    const/4 v9, 0x5

    .line 5647
    invoke-virtual {v8, v6, v9, v3}, Lcom/findit/battle/GameView$BattleRoom;->checkSkillWindow(III)I

    move-result v4

    .line 5649
    .local v4, "windowiconnum":I
    const/4 v8, -0x1

    if-le v4, v8, :cond_7

    .line 5652
    const/4 v7, 0x5

    const/4 v8, 0x1

    .line 5650
    invoke-virtual/range {v2 .. v8}, Lcom/findit/battle/Objects$Skills;->setSlots(IIIIIZ)Lcom/findit/battle/Objects$Skills$Skill;

    move-result-object v7

    .line 5653
    .local v7, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-nez v7, :cond_5

    .line 5655
    iget-object v8, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v7, v8, v3

    .line 5656
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_4

    .line 5657
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    const/4 v11, 0x0

    .line 5658
    const/4 v12, 0x0

    move v9, v5

    .line 5657
    invoke-virtual/range {v7 .. v12}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    .line 5732
    .end local v2    # "skills":Lcom/findit/battle/Objects$Skills;
    .end local v4    # "windowiconnum":I
    .end local v5    # "x":I
    .end local v6    # "sy":I
    .end local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .end local v10    # "y":I
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/findit/battle/Objects$Buttons;->setImageNum(I)V

    goto/16 :goto_0

    .line 5659
    .restart local v2    # "skills":Lcom/findit/battle/Objects$Skills;
    .restart local v4    # "windowiconnum":I
    .restart local v5    # "x":I
    .restart local v6    # "sy":I
    .restart local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .restart local v10    # "y":I
    :cond_4
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_3

    .line 5660
    iget v12, v7, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v15, 0x1

    .line 5661
    const/16 v16, 0x0

    move-object v11, v7

    move v13, v5

    move v14, v6

    .line 5660
    invoke-virtual/range {v11 .. v16}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    goto :goto_4

    .line 5664
    :cond_5
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_6

    .line 5666
    const/4 v11, 0x0

    .line 5667
    iget v12, v2, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    iget v13, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 5668
    iget v14, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    move-object v8, v7

    move v9, v5

    .line 5665
    invoke-virtual/range {v8 .. v14}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    goto :goto_4

    .line 5669
    :cond_6
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_3

    .line 5671
    const/4 v14, 0x0

    .line 5672
    iget v15, v2, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    iget v0, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    move/from16 v16, v0

    .line 5673
    iget v0, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    move/from16 v17, v0

    move-object v11, v7

    move v12, v5

    move v13, v6

    .line 5670
    invoke-virtual/range {v11 .. v17}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    goto :goto_4

    .line 5677
    .end local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 5678
    const/16 v9, 0x8

    .line 5677
    invoke-virtual {v8, v10, v9, v3}, Lcom/findit/battle/GameView$BattleRoom;->checkSkillWindow(III)I

    move-result v4

    .line 5679
    const/4 v8, -0x1

    if-le v4, v8, :cond_9

    .line 5682
    const/16 v16, 0x8

    const/16 v17, 0x0

    move-object v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v10

    .line 5680
    invoke-virtual/range {v11 .. v17}, Lcom/findit/battle/Objects$Skills;->setSlots(IIIIIZ)Lcom/findit/battle/Objects$Skills$Skill;

    move-result-object v7

    .line 5683
    .restart local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v7, :cond_3

    .line 5685
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_8

    .line 5687
    const/4 v11, 0x0

    .line 5688
    iget v12, v2, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    .line 5689
    iget v13, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 5690
    iget v14, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    move-object v8, v7

    move v9, v5

    .line 5686
    invoke-virtual/range {v8 .. v14}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    goto :goto_4

    .line 5691
    :cond_8
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_3

    .line 5693
    const/4 v14, 0x0

    .line 5694
    iget v15, v2, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    .line 5695
    iget v0, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    move/from16 v16, v0

    .line 5696
    iget v0, v2, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    move/from16 v17, v0

    move-object v11, v7

    move v12, v5

    move v13, v6

    .line 5692
    invoke-virtual/range {v11 .. v17}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    goto/16 :goto_4

    .line 5700
    .end local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_9
    iget-object v8, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v7, v8, v3

    .line 5701
    .restart local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_a

    .line 5702
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    const/4 v11, 0x0

    .line 5703
    const/4 v12, 0x0

    move v9, v5

    .line 5702
    invoke-virtual/range {v7 .. v12}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    goto/16 :goto_4

    .line 5704
    :cond_a
    iget v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_3

    .line 5705
    iget v12, v7, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v15, 0x1

    .line 5706
    const/16 v16, 0x0

    move-object v11, v7

    move v13, v5

    move v14, v6

    .line 5705
    invoke-virtual/range {v11 .. v16}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    goto/16 :goto_4

    .line 5710
    .end local v2    # "skills":Lcom/findit/battle/Objects$Skills;
    .end local v4    # "windowiconnum":I
    .end local v5    # "x":I
    .end local v6    # "sy":I
    .end local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .end local v10    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Buttons;->touch(II)I

    move-result v3

    .line 5711
    packed-switch v3, :pswitch_data_4

    goto/16 :goto_4

    .line 5722
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$BattleRoom;->exitRoom()V

    .line 5723
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_4

    .line 5727
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$BattleRoom;->ready()V

    goto/16 :goto_4

    .line 5736
    .end local v3    # "index":I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget v3, v8, Lcom/findit/battle/GameView$BattleRoom;->mSkillIndex:I

    .line 5737
    .restart local v3    # "index":I
    const/4 v8, -0x1

    if-le v3, v8, :cond_c

    .line 5738
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v3, v0, v1}, Lcom/findit/battle/Objects$Skills;->moveIcon(III)V

    goto/16 :goto_0

    .line 5741
    :cond_c
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Buttons;->touchSingleDown(II)V

    goto/16 :goto_0

    .line 5758
    .end local v3    # "index":I
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_5

    goto/16 :goto_0

    .line 5768
    :pswitch_11
    const/16 v24, 0x1

    .line 5769
    .local v24, "run":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    move-object/from16 v20, v0

    .line 5770
    .local v20, "game":Lcom/findit/battle/GameView$GameRoom;
    move-object/from16 v0, v20

    iget v8, v0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_d

    .line 5771
    move-object/from16 v0, v20

    iget v8, v0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v9, v9, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v9, v9, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v8, v9, :cond_d

    .line 5773
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v8, v8, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v0, v20

    iget v9, v0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    aget-object v8, v8, v9

    iget-boolean v8, v8, Lcom/findit/battle/Objects$Skills$Skill;->mDim:Z

    if-eqz v8, :cond_11

    const/16 v24, 0x0

    .line 5775
    :cond_d
    :goto_5
    move-object/from16 v0, v20

    iget v8, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_f

    .line 5776
    move-object/from16 v0, v20

    iget v8, v0, Lcom/findit/battle/GameView$GameRoom;->mDimTime:I

    if-gez v8, :cond_f

    if-eqz v24, :cond_f

    .line 5777
    invoke-virtual/range {v20 .. v20}, Lcom/findit/battle/GameView$GameRoom;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v8

    .line 5778
    move-object/from16 v0, v20

    iget v9, v0, Lcom/findit/battle/GameView$GameRoom;->mImgSpace:I

    move-object/from16 v0, v20

    iget v11, v0, Lcom/findit/battle/GameView$GameRoom;->mImgRightX:I

    .line 5777
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1, v9, v11}, Lcom/findit/battle/Objects$FindImage;->touchRect(IIII)I

    move-result v3

    .line 5779
    .restart local v3    # "index":I
    const/4 v8, -0x1

    if-le v3, v8, :cond_12

    .line 5780
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    if-lez v8, :cond_f

    .line 5781
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    .line 5783
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e

    .line 5784
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v9, v8, Lcom/findit/battle/GameView$GameRoom;->mTempLeftNum:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mTempLeftNum:I

    .line 5828
    :cond_e
    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Lcom/findit/battle/GameView$GameRoom;->sendFindData(II)V

    .line 5829
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 5843
    .end local v3    # "index":I
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    const/16 v9, 0xb

    if-ne v8, v9, :cond_0

    .line 5844
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    if-gez v8, :cond_0

    .line 5845
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Skills;->touchIcon(II)I

    move-result v25

    .line 5847
    .local v25, "skillindex":I
    const/4 v8, -0x1

    move/from16 v0, v25

    if-le v0, v8, :cond_0

    .line 5849
    const/16 v8, 0x2710

    move/from16 v0, v25

    if-ge v0, v8, :cond_13

    .line 5850
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v8, v8, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v7, v8, v25

    .line 5863
    .restart local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_10
    :goto_7
    iget-boolean v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    if-eqz v8, :cond_0

    .line 5864
    const/4 v8, 0x0

    iput v8, v7, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    .line 5866
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    move/from16 v0, v25

    iput v0, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    .line 5867
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, 0x0

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    .line 5870
    const/16 v23, -0x1

    .line 5871
    .local v23, "penindex":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 5872
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v23

    .line 5876
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$GameRoom;->getLeftSkillNum()I

    move-result v8

    .line 5875
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/findit/battle/GameView$GameRoom;->sendFindData(II)V

    .line 5879
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_0

    .line 5773
    .end local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .end local v23    # "penindex":I
    .end local v25    # "skillindex":I
    :cond_11
    const/16 v24, 0x1

    goto/16 :goto_5

    .line 5831
    .restart local v3    # "index":I
    :cond_12
    invoke-static/range {v20 .. v20}, Lcom/findit/battle/GameView$GameRoom;->access$1(Lcom/findit/battle/GameView$GameRoom;)[I

    move-result-object v8

    const/4 v9, 0x1

    aget v8, v8, v9

    move/from16 v0, v27

    if-ge v0, v8, :cond_f

    .line 5833
    const/4 v8, -0x1

    if-ne v3, v8, :cond_f

    .line 5834
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v11, 0xc8

    invoke-virtual {v8, v11, v12}, Landroid/os/Vibrator;->vibrate(J)V

    .line 5835
    const/16 v8, 0x14

    move-object/from16 v0, v20

    iput v8, v0, Lcom/findit/battle/GameView$GameRoom;->mDimTime:I

    .line 5837
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_6

    .line 5852
    .end local v3    # "index":I
    .restart local v25    # "skillindex":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v7, v8, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 5856
    .restart local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 5857
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v19

    .line 5858
    .local v19, "berryindex":I
    const/4 v8, -0x1

    move/from16 v0, v19

    if-le v0, v8, :cond_10

    .line 5859
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mGameActivity:Lcom/findit/battle/GameActivity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    .line 5860
    const-wide/16 v11, 0x1

    .line 5859
    move/from16 v0, v19

    invoke-virtual {v8, v9, v0, v11, v12}, Lcom/findit/battle/GameActivity;->sendSpendItem(Ljava/lang/String;IJ)V

    goto/16 :goto_7

    .line 5896
    .end local v7    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .end local v19    # "berryindex":I
    .end local v20    # "game":Lcom/findit/battle/GameView$GameRoom;
    .end local v24    # "run":Z
    .end local v25    # "skillindex":I
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_6

    goto/16 :goto_0

    .line 5963
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Buttons;->touchSingleDown(II)V

    goto/16 :goto_0

    .line 5899
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Lcom/findit/battle/Objects$Buttons;->touch(II)I

    move-result v3

    .line 5900
    .restart local v3    # "index":I
    packed-switch v3, :pswitch_data_7

    .line 5958
    :goto_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v8, v8, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/findit/battle/Objects$Buttons;->setImageNum(I)V

    goto/16 :goto_0

    .line 5912
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v8, v8, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_14

    .line 5913
    move-object/from16 v0, p0

    iget v8, v0, Lcom/findit/battle/GameView;->mLogin:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    .line 5914
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v9, -0x1

    iput v9, v8, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 5917
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    const/16 v9, 0xa

    iput v9, v8, Lcom/findit/battle/GameView$Result;->mTime:I

    .line 5918
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto :goto_8

    .line 5922
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$BattleRoom;->exitRoom()V

    .line 5923
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto :goto_8

    .line 5927
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$Result;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v21

    .line 5928
    .local v21, "image":Lcom/findit/battle/Objects$FindImage;
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/findit/battle/Objects$FindImage;->mDetailUrl:Ljava/lang/String;

    if-nez v8, :cond_15

    .line 5929
    new-instance v18, Lcom/findit/battle/GameView$ActionRunnable;

    .line 5930
    const/4 v8, 0x1

    .line 5931
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "\ub9c1\ud06c \uc815\ubcf4\uac00 \uc5c6\uc2b5\ub2c8\ub2e4"

    aput-object v12, v9, v11

    .line 5929
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;I[Ljava/lang/String;)V

    .line 5932
    .local v18, "action":Lcom/findit/battle/GameView$ActionRunnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    .line 5939
    .end local v18    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :goto_9
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto :goto_8

    .line 5934
    :cond_15
    new-instance v22, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    .line 5935
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/findit/battle/Objects$FindImage;->mDetailUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 5934
    move-object/from16 v0, v22

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5936
    .local v22, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 5943
    .end local v21    # "image":Lcom/findit/battle/Objects$FindImage;
    .end local v22    # "intent":Landroid/content/Intent;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    invoke-virtual {v8}, Lcom/findit/battle/GameView$Result;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v21

    .line 5944
    .restart local v21    # "image":Lcom/findit/battle/Objects$FindImage;
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/findit/battle/Objects$FindImage;->mDownloadUrl:Ljava/lang/String;

    if-nez v8, :cond_16

    .line 5945
    new-instance v18, Lcom/findit/battle/GameView$ActionRunnable;

    .line 5946
    const/4 v8, 0x1

    .line 5947
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "\ub2e4\uc6b4\ub85c\ub4dc \uc815\ubcf4\uac00 \uc5c6\uc2b5\ub2c8\ub2e4"

    aput-object v12, v9, v11

    .line 5945
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;I[Ljava/lang/String;)V

    .line 5948
    .restart local v18    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    .line 5955
    .end local v18    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :goto_a
    const/4 v8, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto/16 :goto_8

    .line 5950
    :cond_16
    new-instance v22, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    .line 5951
    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/findit/battle/Objects$FindImage;->mDownloadUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 5950
    move-object/from16 v0, v22

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5952
    .restart local v22    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/findit/battle/GameView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 5489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 5492
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 5495
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 5580
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_f
    .end packed-switch

    .line 5711
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 5758
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch

    .line 5896
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 5900
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1185
    const-string v0, ">> playSound()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1186
    iget-boolean v0, p0, Lcom/findit/battle/GameView;->mSoundon:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v0}, Lcom/findit/battle/GameView$GameThread;->access$0(Lcom/findit/battle/GameView$GameThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    sget-object v0, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 1188
    sget-object v0, Lcom/findit/battle/GameView;->mSoundpool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/findit/battle/GameView;->mSoundPoolMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1189
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    .line 1188
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1191
    :cond_0
    return-void
.end method

.method public randomNumber(II)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 511
    const-string v2, ">> randomNumber()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 513
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 514
    .local v0, "random":Ljava/util/Random;
    const/4 v1, 0x0

    .line 516
    .local v1, "result":I
    if-le p1, p2, :cond_1

    .line 517
    const/4 p1, 0x0

    .line 523
    .end local p1    # "start":I
    :cond_0
    :goto_0
    return p1

    .line 518
    .restart local p1    # "start":I
    :cond_1
    if-eq p1, p2, :cond_0

    .line 521
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v2, v3

    add-int v1, v2, p1

    move p1, v1

    .line 523
    goto :goto_0
.end method

.method public recycleResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 681
    const-string v0, ">> recycleResources()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 699
    iput-object v1, p0, Lcom/findit/battle/GameView;->mBgPng:Landroid/graphics/drawable/BitmapDrawable;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 704
    iput-object v1, p0, Lcom/findit/battle/GameView;->mBgBmp:Landroid/graphics/Bitmap;

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    if-eqz v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    invoke-virtual {v0}, Lcom/findit/battle/Objects;->recycleResources()V

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    if-eqz v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenMainMenu:Lcom/findit/battle/GameView$MainMenu;

    invoke-virtual {v0}, Lcom/findit/battle/GameView$MainMenu;->recycleImageInButton()V

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    if-eqz v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v0}, Lcom/findit/battle/GameView$BattleRoom;->recycleImageInBattleRoom()V

    .line 719
    :cond_4
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    if-eqz v0, :cond_5

    .line 720
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v0}, Lcom/findit/battle/GameView$GameRoom;->recycleImageInGameRoom()V

    .line 722
    :cond_5
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    if-eqz v0, :cond_6

    .line 723
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    invoke-virtual {v0}, Lcom/findit/battle/GameView$Result;->recycleImageInResultWindow()V

    .line 726
    :cond_6
    return-void
.end method

.method public saveImages(Ljava/lang/String;)Z
    .locals 5
    .param p1, "datas"    # Ljava/lang/String;

    .prologue
    .line 1129
    const-string v4, ">> saveImages()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1131
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v3, "jsonobject":Lorg/json/JSONObject;
    const-string v4, "imgId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1135
    .local v1, "imgid":J
    iget-object v4, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v4, v1, v2, p1}, Lcom/findit/battle/DBAdapter;->createImages(JLjava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    const/4 v4, 0x1

    .end local v1    # "imgid":J
    .end local v3    # "jsonobject":Lorg/json/JSONObject;
    :goto_0
    return v4

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public saveState(J)V
    .locals 11
    .param p1, "rowid"    # J

    .prologue
    .line 756
    const-string v0, ">> saveState()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/findit/battle/GameView;->mRestore:Z

    .line 759
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    if-nez v0, :cond_0

    .line 760
    const-string v0, "-- saveState() mObjects is null \uc2a4\ud0ac, \uc544\uc774\ud15c, \ucf00\ub9ad\ud130 \uc815\ubcf4\uac00 \uc5c6\ub2e4. "

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 844
    :goto_0
    return-void

    .line 765
    :cond_0
    const/4 v0, 0x6

    new-array v3, v0, [I

    .line 766
    .local v3, "intvalues":[I
    const/4 v0, 0x2

    new-array v4, v0, [J

    .line 767
    .local v4, "longvalues":[J
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, ""

    aput-object v1, v5, v0

    .line 771
    .local v5, "strvalues":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 773
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 774
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/findit/battle/GameView;->setScreenMode(I)V

    .line 777
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v1

    aput v1, v3, v0

    .line 778
    const/4 v0, 0x1

    iget v1, p0, Lcom/findit/battle/GameView;->mLogin:I

    aput v1, v3, v0

    .line 779
    const/4 v0, 0x2

    iget v1, p0, Lcom/findit/battle/GameView;->mLevel:I

    aput v1, v3, v0

    .line 780
    const/4 v0, 0x3

    iget v1, p0, Lcom/findit/battle/GameView;->mPoint:I

    aput v1, v3, v0

    .line 781
    const/4 v0, 0x4

    iget v1, p0, Lcom/findit/battle/GameView;->mAttack:I

    aput v1, v3, v0

    .line 782
    const/4 v0, 0x5

    iget v1, p0, Lcom/findit/battle/GameView;->mDefense:I

    aput v1, v3, v0

    .line 784
    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/findit/battle/GameView;->mScore:J

    aput-wide v1, v4, v0

    .line 785
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/findit/battle/GameView;->mCoin:J

    aput-wide v1, v4, v0

    .line 787
    iget-object v8, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    .line 789
    .local v8, "objects":Lcom/findit/battle/Objects;
    const/4 v0, 0x0

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 790
    const/4 v1, 0x0

    aget-object v0, v5, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/4 v10, 0x0

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 791
    :goto_1
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 792
    const/4 v1, 0x0

    aget-object v0, v5, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/4 v10, 0x1

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 793
    :goto_2
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 794
    const/4 v1, 0x0

    aget-object v0, v5, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/4 v10, 0x2

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 795
    :goto_3
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 796
    const/4 v1, 0x0

    aget-object v0, v5, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    const/4 v10, 0x3

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 797
    :goto_4
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 798
    const/4 v0, 0x0

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v1, v1, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 799
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    iget-object v0, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v0, v0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v6, v0, :cond_7

    .line 806
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 808
    const/4 v6, 0x0

    :goto_6
    const/4 v0, 0x6

    if-lt v6, v0, :cond_9

    .line 822
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget v1, v1, Lcom/findit/battle/Items;->mItemTotalnum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 823
    const/4 v6, 0x0

    :goto_7
    iget-object v0, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget v0, v0, Lcom/findit/battle/Items;->mItemTotalnum:I

    if-lt v6, v0, :cond_b

    .line 838
    iget-object v0, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->updateState(J[I[J[Ljava/lang/String;)Z

    .line 841
    iget-object v0, p0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, p0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    iget-object v2, p0, Lcom/findit/battle/GameView;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/Objects;->saveChracters(Lcom/findit/battle/DBAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 791
    .end local v6    # "i":I
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 793
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 795
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 797
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 800
    .restart local v6    # "i":I
    :cond_7
    const/4 v0, 0x0

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 801
    const/4 v0, 0x0

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 802
    const/4 v1, 0x0

    aget-object v0, v5, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_8
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 799
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 802
    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    .line 809
    :cond_9
    iget-object v0, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v0, v0, v6

    iget v9, v0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 810
    .local v9, "totalnum":I
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v9

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 811
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_9
    if-lt v7, v9, :cond_a

    .line 808
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 812
    :cond_a
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/findit/battle/Items$Item;->mType:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 813
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/findit/battle/Items$Item;->mSubType:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 814
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 815
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/findit/battle/Items$Item;->mNum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 816
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/findit/battle/Items$Item;->mPower:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 817
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/findit/battle/Items$Item;->mPrice:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 818
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/findit/battle/Items$Item;->mMoney:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 811
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    .line 824
    .end local v7    # "j":I
    .end local v9    # "totalnum":I
    :cond_b
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/findit/battle/Items$Item;->mType:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 825
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/findit/battle/Items$Item;->mSubType:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 826
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 827
    const/4 v1, 0x1

    aget-object v0, v5, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/findit/battle/Items$Item;->mSet:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 828
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/findit/battle/Items$Item;->mNum:I

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 830
    iget-object v0, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v0, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 831
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 823
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    .line 827
    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 833
    :cond_d
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 834
    const/4 v0, 0x1

    aget-object v1, v5, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    goto :goto_b
.end method

.method public showWaitingRoom()V
    .locals 2

    .prologue
    .line 1307
    const-string v0, ">> showWaitingRoom()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    .line 1310
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    iget-object v1, p0, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/findit/battle/WaitingRoom;->getUserList(Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    iget-object v0, v0, Lcom/findit/battle/WaitingRoom;->mMainDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1313
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/findit/battle/GameView;->setScreenMode(I)V

    .line 1315
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->stopBackgroundMusic()V

    .line 1316
    return-void
.end method

.method public startBackgroundMusic()V
    .locals 2

    .prologue
    .line 1156
    const-string v0, ">> startBackgroundMusic()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1157
    iget-boolean v0, p0, Lcom/findit/battle/GameView;->mSoundon:Z

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v0}, Lcom/findit/battle/GameView$GameThread;->access$0(Lcom/findit/battle/GameView$GameThread;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1167
    :cond_1
    :goto_0
    return-void

    .line 1164
    :cond_2
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1165
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 1171
    const-string v0, ">> stopBackgroundMusic()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1172
    iget-boolean v0, p0, Lcom/findit/battle/GameView;->mSoundon:Z

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    invoke-static {v0}, Lcom/findit/battle/GameView$GameThread;->access$0(Lcom/findit/battle/GameView$GameThread;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    sget-object v0, Lcom/findit/battle/GameView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 273
    const-string v0, ">> surfaceChanged()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 265
    const-string v0, ">> surfaceCreated()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/findit/battle/GameView;->mGameThread:Lcom/findit/battle/GameView$GameThread;

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/findit/battle/GameView;->doStartGameView()V

    .line 269
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 278
    const-string v0, ">> surfaceDestroyed()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 287
    return-void
.end method
