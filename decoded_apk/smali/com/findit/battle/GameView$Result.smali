.class Lcom/findit/battle/GameView$Result;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Result"
.end annotation


# static fields
.field public static final ADTEXT_SIZE:I = 0x19

.field private static final END:I = 0x1

.field private static final IMAGEBMP_TOTALNUM:I = 0x1

.field private static final IMAGEPNG_TOTALNUM:I = 0x2

.field public static final IMAGE_ADVERTISE:I = 0x0

.field public static final IMAGE_LOSE:I = 0x1

.field public static final IMAGE_WIN:I = 0x0

.field public static final MTIME_APPEAR_IMAGE:I = 0x0

.field public static final MTIME_EXIT_BUTTON:I = 0xf

.field public static final MTIME_FADE_BUTTON:I = 0xa

.field public static final MTIME_FADE_DOWN_SOFT_IMAGE:I = 0xe

.field public static final MTIME_FADE_UP_SOFT_IMAGE:I = 0xd

.field public static final MTIME_MOVE_CENTER_IMAGE:I = 0x4

.field public static final MTIME_MOVE_DOWN_SOFT_IMAGE:I = 0x2

.field public static final MTIME_MOVE_INSIDE_IMAGE:I = 0x6

.field public static final MTIME_MOVE_INSIDE_SOFT_IMAGE:I = 0xb

.field public static final MTIME_MOVE_OUTSIDE_IMAGE:I = 0x5

.field public static final MTIME_MOVE_OUTSIDE_SOFT_IMAGE:I = 0xc

.field public static final MTIME_MOVE_UP_IMAGE:I = 0x1

.field public static final MTIME_MOVE_UP_SOFT_IMAGE:I = 0x3

.field public static final MTIME_RESULT_IMAGE:I = 0x7

.field public static final MTIME_RESULT_SOUND:I = 0x8

.field public static final MTIME_STAND_BY:I = 0x9

.field private static final RECT:I = 0x2

.field private static final START:I


# instance fields
.field public mAdBaseimg:Z

.field public mAdImgnum:I

.field private mAdvertiseCanvas:Landroid/graphics/Canvas;

.field public mAdvertiseImgY:[I

.field private mCharacterRect:Landroid/graphics/Rect;

.field public mCombo:I

.field public mExitButtonX:[I

.field public mFacebookButtonX:[I

.field public mFindNum:I

.field private mImgBmp:[Landroid/graphics/Bitmap;

.field public mImgHeight:[I

.field private mImgPng:[Landroid/graphics/drawable/Drawable;

.field private mImgRectPaint:Landroid/graphics/Paint;

.field public mImgWidth:[I

.field public mImgX:[I

.field public mImgY:[I

.field public mOnemoreButtonX:[I

.field public mOtherFindNum:I

.field public mRemainTime:I

.field private mTextPaint:Landroid/graphics/Paint;

.field public mTime:I

.field public mTimeCount:I

.field public mWinLoseAlpha:I

.field public mWinLoseImgnum:I

.field private mWinLoseRect:[Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;Landroid/content/Context;II)V
    .locals 14
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "displaywidth"    # I
    .param p4, "displayheight"    # I

    .prologue
    .line 4271
    iput-object p1, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4272
    const-string v7, ">> Result()"

    invoke-static {v7}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4273
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/graphics/Bitmap;

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    .line 4274
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgX:[I

    .line 4275
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    .line 4276
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgWidth:[I

    .line 4277
    const/4 v7, 0x1

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgHeight:[I

    .line 4283
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgPng:[Landroid/graphics/drawable/Drawable;

    .line 4284
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 4285
    const v10, 0x7f020195

    .line 4284
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aput-object v9, v7, v8

    .line 4286
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 4287
    const v10, 0x7f020194

    .line 4286
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    aput-object v9, v7, v8

    .line 4289
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mAdvertiseCanvas:Landroid/graphics/Canvas;

    .line 4290
    const/4 v7, 0x0

    iput v7, p0, Lcom/findit/battle/GameView$Result;->mWinLoseImgnum:I

    .line 4291
    const/4 v7, -0x1

    iput v7, p0, Lcom/findit/battle/GameView$Result;->mTime:I

    .line 4293
    iget v6, p1, Lcom/findit/battle/GameView;->mWidthRate:F

    .line 4294
    .local v6, "widthrate":F
    iget v1, p1, Lcom/findit/battle/GameView;->mHeightRate:F

    .line 4296
    .local v1, "heightrate":F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mTextPaint:Landroid/graphics/Paint;

    .line 4297
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41c80000    # 25.0f

    mul-float/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4298
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mTextPaint:Landroid/graphics/Paint;

    const-string v8, "#54443b"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 4301
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgRectPaint:Landroid/graphics/Paint;

    .line 4302
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgRectPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4303
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgRectPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v8, v6

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4304
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgRectPaint:Landroid/graphics/Paint;

    const-string v8, "#543b0e"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 4307
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgWidth:[I

    const/4 v8, 0x0

    const/high16 v9, 0x44410000    # 772.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    aput v9, v7, v8

    .line 4308
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgHeight:[I

    const/4 v8, 0x0

    const v9, 0x443b8000    # 750.0f

    mul-float/2addr v9, v1

    float-to-int v9, v9

    aput v9, v7, v8

    .line 4309
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgX:[I

    const/4 v8, 0x0

    const v9, 0x43fa8000    # 501.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    aput v9, v7, v8

    .line 4310
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    const/4 v8, 0x0

    const/high16 v9, 0x41b80000    # 23.0f

    mul-float/2addr v9, v1

    float-to-int v9, v9

    aput v9, v7, v8

    .line 4314
    new-instance v7, Landroid/graphics/Rect;

    const/high16 v8, 0x42a60000    # 83.0f

    mul-float/2addr v8, v6

    float-to-int v8, v8

    .line 4315
    const/high16 v9, 0x436c0000    # 236.0f

    mul-float/2addr v9, v1

    float-to-int v9, v9

    const v10, 0x43dd8000    # 443.0f

    mul-float/2addr v10, v6

    float-to-int v10, v10

    .line 4316
    const/high16 v11, 0x44380000    # 736.0f

    mul-float/2addr v11, v1

    float-to-int v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4314
    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mCharacterRect:Landroid/graphics/Rect;

    .line 4319
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    .line 4320
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    const/4 v8, 0x0

    aput p4, v7, v8

    .line 4321
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v7, v8

    .line 4324
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    .line 4325
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    const/4 v8, 0x2

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v7, v8

    .line 4327
    const/high16 v7, 0x42400000    # 48.0f

    mul-float/2addr v7, v6

    float-to-int v2, v7

    .line 4328
    .local v2, "left":I
    const/high16 v7, 0x42d60000    # 107.0f

    mul-float/2addr v7, v6

    float-to-int v5, v7

    .line 4329
    .local v5, "top":I
    const/high16 v7, 0x43ef0000    # 478.0f

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 4330
    .local v4, "right":I
    const/high16 v7, 0x43520000    # 210.0f

    mul-float/2addr v7, v6

    float-to-int v0, v7

    .line 4331
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    const/4 v8, 0x1

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v2, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v9, v7, v8

    .line 4333
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    const/4 v8, 0x1

    aget-object v3, v7, v8

    .line 4334
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    const/4 v8, 0x0

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v10, v2, v10

    .line 4335
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    sub-int v11, v5, v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v12, v4

    .line 4336
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v13, v0

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4334
    aput-object v9, v7, v8

    .line 4339
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mOnemoreButtonX:[I

    .line 4340
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mOnemoreButtonX:[I

    const/4 v8, 0x0

    const/high16 v9, 0x43850000    # 266.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    neg-int v9, v9

    aput v9, v7, v8

    .line 4341
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mOnemoreButtonX:[I

    const/4 v8, 0x1

    const/high16 v9, 0x41700000    # 15.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    aput v9, v7, v8

    .line 4343
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    .line 4344
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    const/4 v8, 0x0

    aput p3, v7, v8

    .line 4345
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    const/4 v8, 0x1

    const v9, 0x4483e000    # 1055.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    aput v9, v7, v8

    .line 4347
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/findit/battle/GameView$Result;->mFacebookButtonX:[I

    .line 4348
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mFacebookButtonX:[I

    const/4 v8, 0x0

    const/high16 v9, 0x434f0000    # 207.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    neg-int v9, v9

    aput v9, v7, v8

    .line 4349
    iget-object v7, p0, Lcom/findit/battle/GameView$Result;->mFacebookButtonX:[I

    const/4 v8, 0x1

    const/high16 v9, 0x41900000    # 18.0f

    mul-float/2addr v9, v6

    float-to-int v9, v9

    aput v9, v7, v8

    .line 4402
    return-void
.end method

.method private calculateScore(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 4559
    const-string v0, ">> calculateScore()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4566
    if-nez p1, :cond_0

    .line 4567
    iget v0, p0, Lcom/findit/battle/GameView$Result;->mFindNum:I

    mul-int/lit8 v0, v0, 0x32

    .line 4569
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/findit/battle/GameView$Result;->mFindNum:I

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public animate()V
    .locals 24

    .prologue
    .line 4622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 4961
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4625
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mOnemoreButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4632
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mWinLoseAlpha:I

    .line 4633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects;->setCharactersImgnum(I)V

    .line 4635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 4637
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4644
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    rsub-int/lit8 v17, v17, 0x1e

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4645
    .local v14, "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v8, v0

    .line 4646
    .local v8, "drawrate":I
    if-ge v14, v8, :cond_1

    .line 4647
    move v14, v8

    .line 4649
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4651
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 4652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 4654
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 4655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4657
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4665
    .end local v8    # "drawrate":I
    .end local v14    # "speed":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4667
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    add-int v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v19, v0

    div-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 4670
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4671
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4678
    .end local v14    # "speed":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4680
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v19, v0

    div-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 4683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4685
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4686
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4693
    .end local v14    # "speed":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    rsub-int/lit8 v17, v17, 0xd

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4694
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v8, v0

    .line 4695
    .restart local v8    # "drawrate":I
    if-ge v14, v8, :cond_3

    .line 4696
    move v14, v8

    .line 4698
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    .line 4700
    invoke-virtual/range {v18 .. v18}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v18

    .line 4699
    add-int v18, v18, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4702
    invoke-virtual/range {v17 .. v17}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v16

    .line 4703
    .local v16, "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4704
    sub-int v18, v16, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 4709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 4711
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 4712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mOnemoreButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4717
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4724
    .end local v8    # "drawrate":I
    .end local v14    # "speed":I
    .end local v16    # "x":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4726
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    .line 4728
    invoke-virtual/range {v18 .. v18}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v18

    .line 4727
    add-int v18, v18, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4730
    invoke-virtual/range {v17 .. v17}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v16

    .line 4731
    .restart local v16    # "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4732
    sub-int v18, v16, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4736
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v19, v0

    div-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 4737
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4744
    .end local v14    # "speed":I
    .end local v16    # "x":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4746
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    .line 4748
    invoke-virtual/range {v18 .. v18}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v18

    .line 4747
    add-int v18, v18, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4750
    invoke-virtual/range {v17 .. v17}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v16

    .line 4751
    .restart local v16    # "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4752
    sub-int v18, v16, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4756
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v19, v0

    div-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mOnemoreButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4762
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4769
    .end local v14    # "speed":I
    .end local v16    # "x":I
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4770
    .restart local v14    # "speed":I
    int-to-float v0, v14

    move/from16 v17, v0

    const v18, 0x408570a4    # 4.17f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 4772
    .local v15, "speed1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v15

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 4774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v18, v15

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 4775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 4777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseAlpha:I

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v5, v17, v18

    .line 4778
    .local v5, "alpha":I
    const/16 v17, 0xfa

    move/from16 v0, v17

    if-le v5, v0, :cond_5

    .line 4779
    const/16 v5, 0xfa

    .line 4781
    :cond_5
    move-object/from16 v0, p0

    iput v5, v0, Lcom/findit/battle/GameView$Result;->mWinLoseAlpha:I

    .line 4783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 4784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4785
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mWinLoseAlpha:I

    .line 4787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseImgnum:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 4788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4789
    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 4792
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v12, v0, Lcom/findit/battle/GameView;->mScore:J

    .line 4793
    .local v12, "score":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseImgnum:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/findit/battle/GameView$Result;->calculateScore(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v12, v12, v17

    .line 4794
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-gez v17, :cond_7

    .line 4795
    const-wide/16 v12, 0x0

    .line 4798
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lcom/findit/battle/GameView;->mLevel:I

    .line 4799
    .local v11, "prelevel":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v9, v0, Lcom/findit/battle/GameView;->mLevel:I

    .line 4800
    .local v9, "level":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/findit/battle/GameView$Result;->getLevel(J)I

    move-result v9

    .line 4803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/findit/battle/GameView;->mCoin:J

    .line 4804
    .local v6, "coin":J
    const-wide/16 v17, 0x1

    add-long v6, v6, v17

    .line 4807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lcom/findit/battle/GameView;->mPoint:I

    .line 4808
    .local v10, "point":I
    if-ge v11, v9, :cond_8

    .line 4809
    add-int/lit8 v10, v10, 0x1

    .line 4811
    :cond_8
    new-instance v4, Lcom/findit/battle/GameView$ActionRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    .line 4812
    const/16 v18, 0x5

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 4813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/findit/battle/GameView;->mLevel:I

    move/from16 v21, v0

    sub-int v21, v9, v21

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/findit/battle/GameView;->mPoint:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    aput v21, v19, v20

    .line 4814
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/findit/battle/GameView;->mScore:J

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    aput-wide v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/findit/battle/GameView;->mCoin:J

    move-wide/from16 v22, v0

    sub-long v22, v6, v22

    aput-wide v22, v20, v21

    .line 4811
    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;I[I[J)V

    .line 4815
    .local v4, "action":Lcom/findit/battle/GameView$ActionRunnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    .line 4817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 4818
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4825
    .end local v4    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    .end local v5    # "alpha":I
    .end local v6    # "coin":J
    .end local v9    # "level":I
    .end local v10    # "point":I
    .end local v11    # "prelevel":I
    .end local v12    # "score":J
    .end local v14    # "speed":I
    .end local v15    # "speed1":I
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 4826
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseImgnum:I

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 4827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 4831
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4832
    const/16 v17, 0x9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4829
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->playSound(I)V

    goto :goto_1

    .line 4841
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mOnemoreButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4847
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mWinLoseAlpha:I

    .line 4848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 4852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 4854
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseImgnum:I

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 4855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4856
    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 4861
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4858
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4859
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    goto :goto_2

    .line 4867
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4869
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    .line 4871
    invoke-virtual/range {v18 .. v18}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v18

    .line 4870
    add-int v18, v18, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4873
    invoke-virtual/range {v17 .. v17}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v16

    .line 4874
    .restart local v16    # "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4875
    sub-int v18, v16, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v19, v0

    div-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 4880
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4887
    .end local v14    # "speed":I
    .end local v16    # "x":I
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4888
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v8, v0

    .line 4889
    .restart local v8    # "drawrate":I
    if-ge v14, v8, :cond_c

    .line 4890
    move v14, v8

    .line 4892
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    .line 4893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    .line 4894
    invoke-virtual/range {v18 .. v18}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v18

    .line 4893
    sub-int v18, v18, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4896
    invoke-virtual/range {v17 .. v17}, Lcom/findit/battle/Objects$Button;->getX()I

    move-result v16

    .line 4897
    .restart local v16    # "x":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    .line 4898
    add-int v18, v16, v14

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/Objects$Button;->setX(I)V

    .line 4902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mExitButtonX:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 4903
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4910
    .end local v8    # "drawrate":I
    .end local v14    # "speed":I
    .end local v16    # "x":I
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4912
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    sub-int v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 4915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 4917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v19, v0

    div-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 4918
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTime:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4926
    .end local v14    # "speed":I
    :pswitch_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v14, v0

    .line 4927
    .restart local v14    # "speed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mSpeedRate:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v8, v0

    .line 4928
    .restart local v8    # "drawrate":I
    if-ge v14, v8, :cond_d

    .line 4929
    move v14, v8

    .line 4931
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    add-int v17, v17, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 4934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 4936
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 4937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 4939
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 4940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseImgY:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$Result;->setPanelsY(I)V

    .line 4942
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$Result;->recycleImageInResultWindow()V

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lcom/findit/battle/GameView;->access$2(Lcom/findit/battle/GameView;I)V

    .line 4944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 4945
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTimeCount:I

    .line 4946
    const/16 v17, 0x9

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4952
    .end local v8    # "drawrate":I
    .end local v14    # "speed":I
    :pswitch_f
    const-string v17, "ResultRomm ---> Main Menu or WaitingRoom"

    invoke-static/range {v17 .. v17}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 4955
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$Result;->recycleImageInResultWindow()V

    .line 4956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/findit/battle/GameView$BattleRoom;->recycleImageInBattleRoom()V

    .line 4957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/findit/battle/GameView;->enterMainMenu(I)V

    .line 4958
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/GameView$Result;->mTime:I

    goto/16 :goto_0

    .line 4622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 4965
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v2}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4966
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v2}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2, v3, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4970
    :cond_0
    iget v2, p0, Lcom/findit/battle/GameView$Result;->mTime:I

    if-lez v2, :cond_2

    .line 4972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    .line 4978
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/findit/battle/Objects$Character;->doDraw(Landroid/graphics/Canvas;)V

    .line 4981
    iget v1, p0, Lcom/findit/battle/GameView$Result;->mWinLoseImgnum:I

    .line 4982
    .local v1, "imgnum":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 4983
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/findit/battle/GameView$Result;->mWinLoseRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4984
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/findit/battle/GameView$Result;->mWinLoseAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4985
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4989
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v2, p1}, Lcom/findit/battle/Objects$Buttons;->doDraw(Landroid/graphics/Canvas;)V

    .line 4991
    .end local v0    # "i":I
    .end local v1    # "imgnum":I
    :cond_2
    return-void

    .line 4973
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    .line 4974
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/findit/battle/GameView$Result;->mImgX:[I

    aget v3, v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    aget v4, v4, v0

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4972
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFindImage()Lcom/findit/battle/Objects$FindImage;
    .locals 2

    .prologue
    .line 4573
    const-string v0, ">> getFindImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4574
    iget-boolean v0, p0, Lcom/findit/battle/GameView$Result;->mAdBaseimg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    iget v1, p0, Lcom/findit/battle/GameView$Result;->mAdImgnum:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 4575
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    iget v1, p0, Lcom/findit/battle/GameView$Result;->mAdImgnum:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLevel(J)I
    .locals 6
    .param p1, "score"    # J

    .prologue
    .line 4579
    const-string v4, ">> getLevel()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4580
    iget-object v4, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v4, Lcom/findit/battle/GameView;->mLevelScoreTable:[I

    .line 4582
    .local v3, "table":[I
    const/4 v2, 0x0

    .local v2, "start":I
    const/16 v0, 0x14

    .line 4583
    .local v0, "end":I
    const/16 v1, 0x14

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-lt v1, v4, :cond_2

    .line 4591
    :cond_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_1

    .line 4592
    array-length v4, v3

    add-int/lit8 v0, v4, -0x1

    .line 4594
    :cond_1
    move v1, v2

    :goto_1
    if-lt v1, v0, :cond_4

    .line 4602
    const/16 v4, 0x64

    :goto_2
    return v4

    .line 4584
    :cond_2
    add-int/lit8 v2, v1, -0x14

    .line 4585
    move v0, v1

    .line 4587
    aget v4, v3, v2

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_3

    aget v4, v3, v0

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    .line 4583
    :cond_3
    add-int/lit8 v1, v1, 0x14

    goto :goto_0

    .line 4595
    :cond_4
    aget v4, v3, v1

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    aget v4, v3, v4

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_5

    .line 4597
    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    .line 4594
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4405
    const-string v2, ">> loadImage()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget v0, v2, Lcom/findit/battle/GameView;->mWidthRate:F

    move/from16 v19, v0

    .line 4436
    .local v19, "widthrate":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget v13, v2, Lcom/findit/battle/GameView;->mHeightRate:F

    .line 4439
    .local v13, "heightrate":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mImgWidth:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 4440
    .local v10, "advertisewidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mImgHeight:[I

    const/4 v3, 0x0

    aget v9, v2, v3

    .line 4441
    .local v9, "advertiseheight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 4442
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4441
    invoke-static {v10, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    .line 4443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4446
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v13

    float-to-int v0, v2

    move/from16 v18, v0

    .line 4447
    .local v18, "tabbottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4448
    const v3, 0x7f0201cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 4449
    .local v17, "img":Landroid/graphics/drawable/Drawable;
    const/high16 v2, 0x424c0000    # 51.0f

    mul-float v2, v2, v19

    float-to-int v2, v2

    const/4 v3, 0x0

    const v4, 0x439f8000    # 319.0f

    mul-float v4, v4, v19

    float-to-int v4, v4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4454
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 4455
    const/4 v2, 0x0

    const/high16 v3, 0x42be0000    # 95.0f

    mul-float/2addr v3, v13

    float-to-int v3, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-static {v2}, Lcom/findit/battle/GameView$GameRoom;->access$0(Lcom/findit/battle/GameView$GameRoom;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit8 v16, v2, 0x2

    .line 4461
    .local v16, "imagewidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-static {v2}, Lcom/findit/battle/GameView$GameRoom;->access$1(Lcom/findit/battle/GameView$GameRoom;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit8 v15, v2, 0x2

    .line 4462
    .local v15, "imageheight":I
    int-to-float v2, v10

    const/high16 v3, 0x40600000    # 3.5f

    div-float/2addr v2, v3

    float-to-int v8, v2

    .line 4463
    .local v8, "advertisecenterx":I
    int-to-float v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v8, v2

    .line 4464
    div-int/lit8 v2, v16, 0x2

    sub-int v20, v8, v2

    .line 4465
    .local v20, "x":I
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v13

    float-to-int v2, v2

    add-int v21, v18, v2

    .line 4468
    .local v21, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseCanvas:Landroid/graphics/Canvas;

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v4, v0

    add-int v5, v20, v16

    int-to-float v5, v5

    add-int v6, v21, v15

    int-to-float v6, v6

    .line 4469
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/findit/battle/GameView$Result;->mImgRectPaint:Landroid/graphics/Paint;

    .line 4468
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4472
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$Result;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v14

    .line 4473
    .local v14, "imageGameImage":Lcom/findit/battle/Objects$FindImage;
    const/4 v11, 0x0

    .line 4474
    .local v11, "bitmapGameImage":Landroid/graphics/Bitmap;
    iget-object v2, v14, Lcom/findit/battle/Objects$FindImage;->mAdImgPath:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 4475
    iget v2, v14, Lcom/findit/battle/Objects$FindImage;->mAdImgId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v14, Lcom/findit/battle/Objects$FindImage;->mAdImgId:I

    .line 4476
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 4482
    :cond_0
    :goto_0
    if-nez v11, :cond_1

    .line 4483
    iget-object v2, v14, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 4485
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v14, Lcom/findit/battle/Objects$FindImage;->mImgId:I

    .line 4484
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 4491
    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    .line 4493
    const/4 v2, 0x1

    .line 4492
    move/from16 v0, v16

    invoke-static {v11, v0, v15, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 4495
    .local v12, "bitmapResizeGameImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->mAdvertiseCanvas:Landroid/graphics/Canvas;

    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4496
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 4497
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 4514
    .end local v12    # "bitmapResizeGameImage":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/findit/battle/Objects$Buttons;->loadImage(Landroid/content/Context;)V

    .line 4516
    return-void

    .line 4480
    :cond_3
    iget-object v2, v14, Lcom/findit/battle/Objects$FindImage;->mAdImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 4479
    goto :goto_0

    .line 4488
    :cond_4
    iget-object v2, v14, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 4487
    goto :goto_1
.end method

.method public recycleImageInResultWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4519
    const-string v2, ">> recycleImageInResultWindow()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4520
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    array-length v1, v2

    .line 4521
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4528
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mAdvertiseCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4531
    return-void

    .line 4522
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 4523
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 4524
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgBmp:[Landroid/graphics/Bitmap;

    aput-object v3, v2, v0

    .line 4521
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setGameResultData(IIII)V
    .locals 1
    .param p1, "findnum"    # I
    .param p2, "otherfindnum"    # I
    .param p3, "remaintime"    # I
    .param p4, "combo"    # I

    .prologue
    .line 4551
    const-string v0, ">> setGameResultData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4552
    iput p1, p0, Lcom/findit/battle/GameView$Result;->mFindNum:I

    .line 4553
    iput p2, p0, Lcom/findit/battle/GameView$Result;->mOtherFindNum:I

    .line 4554
    iput p3, p0, Lcom/findit/battle/GameView$Result;->mRemainTime:I

    .line 4555
    iput p4, p0, Lcom/findit/battle/GameView$Result;->mCombo:I

    .line 4556
    return-void
.end method

.method public setPanelsY(I)V
    .locals 7
    .param p1, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 4534
    const-string v2, ">> setPanelsY()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4535
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->mImgY:[I

    aput p1, v2, v3

    .line 4537
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget v0, v2, Lcom/findit/battle/GameView;->mHeightRate:F

    .line 4538
    .local v0, "heightrate":F
    iget-object v1, p0, Lcom/findit/battle/GameView$Result;->mCharacterRect:Landroid/graphics/Rect;

    .line 4539
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v2, v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 4540
    const/high16 v4, 0x43550000    # 213.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v4, p1

    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 4541
    const v6, 0x44324000    # 713.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    add-int/2addr v6, p1

    .line 4539
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 4543
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v2, v2, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 4544
    const/high16 v3, 0x43580000    # 216.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v3, p1

    .line 4543
    invoke-virtual {v2, v3}, Lcom/findit/battle/Objects$Button;->setY(I)V

    .line 4545
    iget-object v2, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v2, v2, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 4546
    const/high16 v3, 0x43b70000    # 366.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/findit/battle/Objects$Button;->setY(I)V

    .line 4547
    return-void
.end method

.method public upAbillity(IJIJ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "score"    # J
    .param p4, "point"    # I
    .param p5, "coin"    # J

    .prologue
    .line 4606
    const-string v0, ">> upAbillity()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 4609
    iget-object v0, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget v1, v0, Lcom/findit/battle/GameView;->mLevel:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/findit/battle/GameView;->mLevel:I

    .line 4610
    iget-object v0, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-wide v1, v0, Lcom/findit/battle/GameView;->mScore:J

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/findit/battle/GameView;->mScore:J

    .line 4611
    iget-object v0, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget v1, v0, Lcom/findit/battle/GameView;->mPoint:I

    add-int/2addr v1, p4

    iput v1, v0, Lcom/findit/battle/GameView;->mPoint:I

    .line 4612
    iget-object v0, p0, Lcom/findit/battle/GameView$Result;->this$0:Lcom/findit/battle/GameView;

    iget-wide v1, v0, Lcom/findit/battle/GameView;->mCoin:J

    add-long/2addr v1, p5

    iput-wide v1, v0, Lcom/findit/battle/GameView;->mCoin:J

    .line 4616
    return-void
.end method
