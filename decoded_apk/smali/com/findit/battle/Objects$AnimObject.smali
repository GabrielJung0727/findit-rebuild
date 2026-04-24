.class Lcom/findit/battle/Objects$AnimObject;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimObject"
.end annotation


# static fields
.field public static final IMAGETOTALNUM:I = 0xa


# instance fields
.field public mAlpha:I

.field public mAnim:Lcom/findit/battle/Objects$Animation;

.field public mChangeAlpha:I

.field public mChangeImgnum:F

.field public mChangeRotate:I

.field public mDelay:I

.field public mDelayCount:I

.field public mFromImgnum:I

.field public mHeight:I

.field public mImgBmp:[Landroid/graphics/Bitmap;

.field public mImgBmpId:[I

.field public mImgBmpPath:[Ljava/lang/String;

.field public mImgBmpTotalnum:I

.field public mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

.field public mImgPngId:[I

.field public mImgPngPath:[Ljava/lang/String;

.field public mImgPngTotalnum:I

.field public mImgnum:I

.field public mMatrix:Landroid/graphics/Matrix;

.field public mMoveHeight:F

.field public mMoveWidth:F

.field public mMoveX:F

.field public mMoveY:F

.field public mPaint:Landroid/graphics/Paint;

.field public mRect:Landroid/graphics/Rect;

.field public mRepeatNum:I

.field public mRotate:I

.field private mRotateEnd:Z

.field public mRotateHeightRate:F

.field public mRotateWidthRate:F

.field public mSrcImgBmpnum:[I

.field public mSrcImgPngnum:[I

.field public mTargetX:I

.field public mTargetY:I

.field public mTempHeight:F

.field public mTempImgnum:F

.field public mTempWidth:F

.field public mTempX:F

.field public mTempY:F

.field public mToAlpha:I

.field public mToHeight:I

.field public mToImgnum:I

.field public mToRotate:I

.field public mToWidth:I

.field public mWidth:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/16 v1, 0xa

    .line 3105
    iput-object p1, p0, Lcom/findit/battle/Objects$AnimObject;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3106
    const-string v0, ">> AnimObject()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3108
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    .line 3109
    new-array v0, v1, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    .line 3110
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpPath:[Ljava/lang/String;

    .line 3111
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngPath:[Ljava/lang/String;

    .line 3112
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpId:[I

    .line 3113
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    .line 3114
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    .line 3115
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgPngnum:[I

    .line 3117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    .line 3118
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mMatrix:Landroid/graphics/Matrix;

    .line 3119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    .line 3120
    new-instance v0, Lcom/findit/battle/Objects$Animation;

    invoke-direct {v0, p1}, Lcom/findit/battle/Objects$Animation;-><init>(Lcom/findit/battle/Objects;)V

    iput-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    .line 3122
    iget-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpPath:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3123
    iget-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngPath:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3124
    iget-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpId:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3125
    iget-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3126
    iget-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3127
    iget-object v0, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgPngnum:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 3128
    const/4 v0, 0x0

    iput v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    .line 3129
    return-void
.end method

.method private applyMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "img"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 3302
    const-string v2, ">> applyMatrix()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 3304
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 3305
    .local v4, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3307
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    .line 3308
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3311
    const/4 v2, 0x0

    invoke-virtual {v7, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3312
    const/4 v6, 0x1

    move v2, v1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3320
    return-object v0
.end method

.method private changeAlpha(F)Z
    .locals 3
    .param p1, "speedrate"    # F

    .prologue
    const/4 v0, 0x0

    .line 3599
    const-string v1, ">> changeAlpha()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3600
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeAlpha:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 3601
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3603
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeAlpha:I

    if-nez v1, :cond_0

    .line 3622
    :goto_0
    return v0

    .line 3606
    :cond_0
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeAlpha:I

    if-lez v1, :cond_1

    .line 3607
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mToAlpha:I

    if-lt v1, v2, :cond_2

    .line 3608
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToAlpha:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 3609
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 3614
    :cond_1
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mToAlpha:I

    if-gt v1, v2, :cond_2

    .line 3615
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToAlpha:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 3616
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 3622
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeImgnum(F)Z
    .locals 4
    .param p1, "speedrate"    # F

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3372
    const-string v2, ">> changeImgnum()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3373
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mTempImgnum:F

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeImgnum:F

    div-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mTempImgnum:F

    float-to-int v2, v2

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    .line 3375
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mFromImgnum:I

    if-ge v2, v3, :cond_1

    .line 3376
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRepeatNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRepeatNum:I

    if-ge v2, v1, :cond_0

    .line 3377
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mFromImgnum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    .line 3393
    :goto_0
    return v0

    .line 3381
    :cond_0
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mToImgnum:I

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    .line 3384
    :cond_1
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mToImgnum:I

    if-le v2, v3, :cond_3

    .line 3385
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRepeatNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRepeatNum:I

    if-ge v2, v1, :cond_2

    .line 3386
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToImgnum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    goto :goto_0

    .line 3390
    :cond_2
    iget v0, p0, Lcom/findit/battle/Objects$AnimObject;->mFromImgnum:I

    iput v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    :cond_3
    move v0, v1

    .line 3393
    goto :goto_0
.end method

.method private changeRotate(F[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "speedrate"    # F
    .param p2, "srcimgbmp"    # [Landroid/graphics/Bitmap;
    .param p3, "srcimgpng"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    .line 3666
    const-string v2, ">> changeRotate()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3667
    const/4 v0, 0x1

    .line 3669
    .local v0, "result":Z
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v1, v2

    .line 3670
    .local v1, "speed":I
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    if-lez v2, :cond_4

    .line 3671
    if-ge v1, v4, :cond_0

    .line 3672
    const/4 v1, 0x1

    .line 3681
    :cond_0
    :goto_0
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    .line 3682
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    if-gez v2, :cond_1

    .line 3683
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    add-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    .line 3684
    iput-boolean v4, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    .line 3686
    :cond_1
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    const/16 v3, 0x168

    if-lt v2, v3, :cond_2

    .line 3687
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    add-int/lit16 v2, v2, -0x168

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    .line 3688
    iput-boolean v4, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    .line 3693
    :cond_2
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    if-nez v2, :cond_5

    .line 3694
    const/4 v0, 0x0

    .line 3710
    :cond_3
    :goto_1
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    invoke-direct {p0, v2, p2, p3}, Lcom/findit/battle/Objects$AnimObject;->rotate(I[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V

    .line 3714
    return v0

    .line 3675
    :cond_4
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 3676
    const/4 v1, -0x1

    goto :goto_0

    .line 3696
    :cond_5
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    if-lez v2, :cond_6

    .line 3697
    iget-boolean v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mToRotate:I

    if-lt v2, v3, :cond_3

    .line 3698
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mToRotate:I

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    .line 3699
    const/4 v0, 0x0

    .line 3701
    goto :goto_1

    .line 3703
    :cond_6
    iget-boolean v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mToRotate:I

    if-gt v2, v3, :cond_3

    .line 3704
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mToRotate:I

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    .line 3705
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3338
    const-string v4, ">> compressBitmap()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3339
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3340
    .local v0, "bytearray":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3341
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3342
    .local v3, "in":Ljava/io/ByteArrayInputStream;
    const-string v4, "img"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3343
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 3345
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3346
    const/4 v3, 0x0

    .line 3351
    :cond_0
    :goto_0
    return-object v1

    .line 3347
    :catch_0
    move-exception v2

    .line 3348
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private decompressImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "img"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 3324
    const-string v4, ">> decompressImage()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3325
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 3326
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 3327
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3329
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 3330
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3332
    invoke-virtual {p1, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3334
    return-object v0
.end method

.method private delay(F)Z
    .locals 2
    .param p1, "speedrate"    # F

    .prologue
    .line 3769
    const-string v0, ">> delay()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3770
    iget v0, p0, Lcom/findit/battle/Objects$AnimObject;->mDelayCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mDelayCount:I

    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mDelay:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    if-le v0, v1, :cond_0

    .line 3771
    const/4 v0, 0x0

    .line 3773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private move(F)Z
    .locals 12
    .param p1, "speedrate"    # F

    .prologue
    const/4 v11, 0x0

    .line 3443
    const-string v8, ">> move()"

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3444
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveX:F

    div-float/2addr v9, p1

    add-float/2addr v8, v9

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    float-to-int v8, v8

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    .line 3445
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveY:F

    div-float/2addr v9, p1

    add-float/2addr v8, v9

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    float-to-int v8, v8

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    .line 3447
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 3448
    .local v6, "width":I
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 3449
    .local v0, "height":I
    div-int/lit8 v7, v6, 0x2

    .line 3450
    .local v7, "widthhalf":I
    div-int/lit8 v1, v0, 0x2

    .line 3451
    .local v1, "heighthalf":I
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    sub-int v2, v8, v7

    .line 3452
    .local v2, "left":I
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    sub-int v5, v8, v1

    .line 3453
    .local v5, "top":I
    iget-object v8, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    add-int v9, v2, v6

    add-int v10, v5, v0

    invoke-virtual {v8, v2, v5, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3458
    const/4 v3, 0x0

    .local v3, "stopx":Z
    const/4 v4, 0x0

    .line 3460
    .local v4, "stopy":Z
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveX:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_2

    .line 3461
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 3462
    const/4 v3, 0x1

    .line 3469
    :cond_0
    :goto_0
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveY:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_3

    .line 3470
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetY:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 3471
    const/4 v4, 0x1

    .line 3478
    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 3480
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetX:I

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    int-to-float v8, v8

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    .line 3481
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetY:I

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    int-to-float v8, v8

    iput v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    .line 3482
    const/4 v8, 0x0

    .line 3485
    :goto_2
    return v8

    .line 3465
    :cond_2
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetX:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 3466
    const/4 v3, 0x1

    goto :goto_0

    .line 3474
    :cond_3
    iget v8, p0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetY:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 3475
    const/4 v4, 0x1

    goto :goto_1

    .line 3485
    :cond_4
    const/4 v8, 0x1

    goto :goto_2
.end method

.method private rotate(I[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "rotate"    # I
    .param p2, "srcimgbmp"    # [Landroid/graphics/Bitmap;
    .param p3, "srcimgpng"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 3734
    const-string v2, ">> rotate()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3735
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    if-le v2, v10, :cond_1

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 3736
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 3737
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    aget v7, v2, v3

    .line 3738
    .local v7, "num":I
    if-le v7, v10, :cond_0

    .line 3739
    aget-object v0, p2, v7

    .line 3741
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3742
    iget-object v8, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    iget v9, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/findit/battle/Objects$AnimObject;->mMatrix:Landroid/graphics/Matrix;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v8, v9

    .line 3743
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/findit/battle/Objects$AnimObject;->setRotateImgRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 3747
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "num":I
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 3748
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgPngnum:[I

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    aget v7, v2, v3

    .line 3749
    .restart local v7    # "num":I
    if-le v7, v10, :cond_1

    .line 3750
    aget-object v2, p3, v7

    invoke-direct {p0, v2}, Lcom/findit/battle/Objects$AnimObject;->decompressImage(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3752
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 3753
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/findit/battle/Objects$AnimObject;->mMatrix:Landroid/graphics/Matrix;

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3754
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    invoke-direct {p0, v0}, Lcom/findit/battle/Objects$AnimObject;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v1, v2, v3

    .line 3755
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/findit/battle/Objects$AnimObject;->setRotateImgRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 3756
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3760
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "num":I
    :cond_1
    return-void
.end method

.method private scaling(F)Z
    .locals 9
    .param p1, "speedrate"    # F

    .prologue
    const/4 v8, 0x0

    .line 3523
    const-string v6, ">> scaling()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3524
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveWidth:F

    div-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    .line 3525
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveHeight:F

    div-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    .line 3528
    const/4 v2, 0x0

    .local v2, "stopx":Z
    const/4 v3, 0x0

    .line 3530
    .local v3, "stopy":Z
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveWidth:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    .line 3531
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mToWidth:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 3532
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mToWidth:I

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    int-to-float v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    .line 3533
    const/4 v2, 0x1

    .line 3543
    :cond_0
    :goto_0
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveHeight:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 3544
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mToHeight:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 3545
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mToHeight:I

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    int-to-float v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    .line 3546
    const/4 v3, 0x1

    .line 3557
    :cond_1
    :goto_1
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 3558
    .local v5, "width":I
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 3559
    .local v0, "height":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int v1, v6, v7

    .line 3560
    .local v1, "left":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v0, 0x2

    sub-int v4, v6, v7

    .line 3562
    .local v4, "top":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    add-int v7, v1, v5

    add-int v8, v4, v0

    invoke-virtual {v6, v1, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3565
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 3566
    const/4 v6, 0x0

    .line 3568
    :goto_2
    return v6

    .line 3537
    .end local v0    # "height":I
    .end local v1    # "left":I
    .end local v4    # "top":I
    .end local v5    # "width":I
    :cond_2
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mToWidth:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 3538
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mToWidth:I

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    int-to-float v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    .line 3539
    const/4 v2, 0x1

    goto :goto_0

    .line 3550
    :cond_3
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    iget v7, p0, Lcom/findit/battle/Objects$AnimObject;->mToHeight:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 3551
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mToHeight:I

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    int-to-float v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    .line 3552
    const/4 v3, 0x1

    goto :goto_1

    .line 3568
    .restart local v0    # "height":I
    .restart local v1    # "left":I
    .restart local v4    # "top":I
    .restart local v5    # "width":I
    :cond_4
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private setAlpha(IIF)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "time"    # F

    .prologue
    .line 3572
    const-string v3, ">> setAlpha()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3573
    sub-int v0, p2, p1

    .line 3575
    .local v0, "alpha":I
    if-nez v0, :cond_0

    .line 3576
    const/4 v3, 0x0

    iput v3, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeAlpha:I

    .line 3593
    :goto_0
    iput p1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 3594
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3595
    iput p2, p0, Lcom/findit/battle/Objects$AnimObject;->mToAlpha:I

    .line 3596
    return-void

    .line 3578
    :cond_0
    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p3

    const/high16 v4, 0x42480000    # 50.0f

    div-float v2, v3, v4

    .line 3579
    .local v2, "rate":F
    int-to-float v3, v0

    div-float/2addr v3, v2

    float-to-int v1, v3

    .line 3581
    .local v1, "changealpha":I
    if-lez v0, :cond_2

    .line 3582
    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 3583
    const/4 v1, 0x1

    .line 3590
    :cond_1
    :goto_1
    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeAlpha:I

    goto :goto_0

    .line 3586
    :cond_2
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 3587
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private setDelay(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 3763
    const-string v0, ">> setDelay()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3764
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/findit/battle/Objects$AnimObject;->mDelay:I

    .line 3765
    const/4 v0, 0x0

    iput v0, p0, Lcom/findit/battle/Objects$AnimObject;->mDelayCount:I

    .line 3766
    return-void
.end method

.method private setImgnum(IIIF)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "num"    # I
    .param p4, "time"    # F

    .prologue
    const/4 v2, 0x1

    .line 3355
    const-string v3, ">> setImgnum()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3356
    sub-int v0, p2, p1

    .line 3357
    .local v0, "imgnum":I
    if-ge p3, v2, :cond_0

    move p3, v2

    .line 3359
    :cond_0
    if-nez v0, :cond_1

    .line 3360
    const/4 v2, 0x0

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeImgnum:F

    .line 3366
    :goto_0
    iput p1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    iput p1, p0, Lcom/findit/battle/Objects$AnimObject;->mFromImgnum:I

    int-to-float v2, p1

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mTempImgnum:F

    .line 3367
    iput p2, p0, Lcom/findit/battle/Objects$AnimObject;->mToImgnum:I

    .line 3368
    iput p3, p0, Lcom/findit/battle/Objects$AnimObject;->mRepeatNum:I

    .line 3369
    return-void

    .line 3362
    :cond_1
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, p4

    const/high16 v3, 0x42480000    # 50.0f

    div-float v1, v2, v3

    .line 3363
    .local v1, "rate":F
    int-to-float v2, v0

    div-float/2addr v2, v1

    int-to-float v3, p3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeImgnum:F

    goto :goto_0
.end method

.method private setRotate(IIZF[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "direct"    # Z
    .param p4, "time"    # F
    .param p5, "srcimgbmp"    # [Landroid/graphics/Bitmap;
    .param p6, "srcimgpng"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3626
    const-string v3, ">> setRotate()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3627
    if-eqz p3, :cond_1

    sub-int v2, p2, p1

    .line 3628
    .local v2, "rotate":I
    :goto_0
    if-gez v2, :cond_2

    .line 3629
    add-int/lit16 v2, v2, 0x168

    .line 3630
    iput-boolean v4, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    .line 3635
    :goto_1
    if-nez p3, :cond_0

    .line 3636
    neg-int v2, v2

    .line 3638
    :cond_0
    if-nez v2, :cond_3

    .line 3639
    iput v4, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    .line 3657
    :goto_2
    invoke-direct {p0, p1, p5, p6}, Lcom/findit/battle/Objects$AnimObject;->rotate(I[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V

    .line 3659
    iput p1, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    .line 3660
    iput p2, p0, Lcom/findit/battle/Objects$AnimObject;->mToRotate:I

    .line 3663
    return-void

    .line 3627
    .end local v2    # "rotate":I
    :cond_1
    sub-int v2, p1, p2

    goto :goto_0

    .line 3633
    .restart local v2    # "rotate":I
    :cond_2
    iput-boolean v5, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    goto :goto_1

    .line 3641
    :cond_3
    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p4

    const/high16 v4, 0x42480000    # 50.0f

    div-float v1, v3, v4

    .line 3642
    .local v1, "rate":F
    int-to-float v3, v2

    div-float/2addr v3, v1

    float-to-int v0, v3

    .line 3644
    .local v0, "changerotate":I
    if-lez v2, :cond_5

    .line 3645
    if-ge v0, v5, :cond_4

    .line 3646
    const/4 v0, 0x1

    .line 3653
    :cond_4
    :goto_3
    iput v0, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    goto :goto_2

    .line 3649
    :cond_5
    const/4 v3, -0x1

    if-le v0, v3, :cond_4

    .line 3650
    const/4 v0, -0x1

    goto :goto_3
.end method

.method private setRotateImgRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "srcimg"    # Landroid/graphics/Bitmap;
    .param p2, "img"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3718
    const-string v6, ">> setRotateImgRect()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3719
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 3720
    .local v5, "widthrate":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 3722
    .local v1, "heightrate":F
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v4, v6

    .line 3723
    .local v4, "width":I
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v0, v6

    .line 3724
    .local v0, "height":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v4, 0x2

    sub-int v2, v6, v7

    .line 3725
    .local v2, "left":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v0, 0x2

    sub-int v3, v6, v7

    .line 3727
    .local v3, "top":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    add-int v7, v2, v4

    add-int v8, v3, v0

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3729
    iput v5, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    .line 3730
    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    .line 3731
    return-void
.end method

.method private setScale(FFFFF)V
    .locals 9
    .param p1, "fw"    # F
    .param p2, "fh"    # F
    .param p3, "tw"    # F
    .param p4, "th"    # F
    .param p5, "time"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 3489
    const-string v6, ">> setScale()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3490
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v6}, Lcom/findit/battle/Objects;->access$2(Lcom/findit/battle/Objects;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float v4, v6, v7

    .line 3493
    .local v4, "unit":F
    mul-float v6, v4, p1

    float-to-int v6, v6

    int-to-float p1, v6

    .line 3494
    mul-float v6, v4, p2

    float-to-int v6, v6

    int-to-float p2, v6

    .line 3495
    mul-float v6, v4, p3

    float-to-int v6, v6

    int-to-float p3, v6

    .line 3496
    mul-float v6, v4, p4

    float-to-int v6, v6

    int-to-float p4, v6

    .line 3499
    sub-float v5, p3, p1

    .line 3500
    .local v5, "width":F
    sub-float v0, p4, p2

    .line 3502
    .local v0, "height":F
    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v6, p5

    const/high16 v7, 0x42480000    # 50.0f

    div-float v2, v6, v7

    .line 3503
    .local v2, "rate":F
    div-float v6, v5, v2

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveWidth:F

    .line 3504
    div-float v6, v0, v2

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveHeight:F

    .line 3506
    float-to-int v6, p3

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mToWidth:I

    .line 3507
    float-to-int v6, p4

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mToHeight:I

    .line 3508
    iput p1, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    .line 3509
    iput p2, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    .line 3510
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    .line 3511
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    .line 3514
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    mul-float v5, p1, v6

    .line 3515
    iget v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    mul-float v0, p2, v6

    .line 3516
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    div-float v7, v5, v8

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 3517
    .local v1, "left":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    div-float v7, v0, v8

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 3519
    .local v3, "top":I
    iget-object v6, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    int-to-float v7, v1

    add-float/2addr v7, v5

    float-to-int v7, v7

    int-to-float v8, v3

    add-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {v6, v1, v3, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3520
    return-void
.end method

.method private targeting(FFFFF)V
    .locals 18
    .param p1, "fx"    # F
    .param p2, "fy"    # F
    .param p3, "tx"    # F
    .param p4, "ty"    # F
    .param p5, "time"    # F

    .prologue
    .line 3398
    const-string v15, ">> targeting()"

    invoke-static {v15}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/Objects$AnimObject;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v15}, Lcom/findit/battle/Objects;->access$2(Lcom/findit/battle/Objects;)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v9, v15, v16

    .line 3400
    .local v9, "unitx":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/Objects$AnimObject;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v15}, Lcom/findit/battle/Objects;->access$3(Lcom/findit/battle/Objects;)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v10, v15, v16

    .line 3403
    .local v10, "unity":F
    mul-float v15, v9, p1

    float-to-int v15, v15

    int-to-float v0, v15

    move/from16 p1, v0

    .line 3404
    mul-float v15, v10, p2

    float-to-int v15, v15

    int-to-float v0, v15

    move/from16 p2, v0

    .line 3405
    mul-float v15, v9, p3

    float-to-int v15, v15

    int-to-float v0, v15

    move/from16 p3, v0

    .line 3406
    mul-float v15, v10, p4

    float-to-int v15, v15

    int-to-float v0, v15

    move/from16 p4, v0

    .line 3409
    sub-float v13, p3, p1

    .line 3410
    .local v13, "x":F
    sub-float v14, p4, p2

    .line 3411
    .local v14, "y":F
    mul-float v15, v13, v13

    mul-float v16, v14, v14

    add-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 3413
    .local v2, "distance":D
    const-wide/16 v15, 0x0

    cmpl-double v15, v2, v15

    if-nez v15, :cond_0

    .line 3414
    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/Objects$AnimObject;->mMoveX:F

    .line 3415
    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/Objects$AnimObject;->mMoveY:F

    .line 3423
    :goto_0
    move/from16 v0, p3

    float-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/Objects$AnimObject;->mTargetX:I

    .line 3424
    move/from16 v0, p4

    float-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/Objects$AnimObject;->mTargetY:I

    .line 3425
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    .line 3426
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    .line 3427
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    .line 3428
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    .line 3431
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v11, v15

    .line 3432
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v4, v15

    .line 3433
    .local v4, "height":I
    div-int/lit8 v12, v11, 0x2

    .line 3434
    .local v12, "widthhalf":I
    div-int/lit8 v5, v4, 0x2

    .line 3435
    .local v5, "heighthalf":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    sub-int v6, v15, v12

    .line 3436
    .local v6, "left":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    sub-int v8, v15, v5

    .line 3437
    .local v8, "top":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    add-int v16, v6, v11

    add-int v17, v8, v4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v6, v8, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3440
    return-void

    .line 3418
    .end local v4    # "height":I
    .end local v5    # "heighthalf":I
    .end local v6    # "left":I
    .end local v8    # "top":I
    .end local v11    # "width":I
    .end local v12    # "widthhalf":I
    :cond_0
    const/high16 v15, 0x447a0000    # 1000.0f

    mul-float v15, v15, p5

    const/high16 v16, 0x42480000    # 50.0f

    div-float v7, v15, v16

    .line 3419
    .local v7, "rate":F
    div-float v15, v13, v7

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/Objects$AnimObject;->mMoveX:F

    .line 3420
    div-float v15, v14, v7

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/Objects$AnimObject;->mMoveY:F

    goto :goto_0
.end method


# virtual methods
.method public animation(F[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)Z
    .locals 23
    .param p1, "speedrate"    # F
    .param p2, "srcimgbmp"    # [Landroid/graphics/Bitmap;
    .param p3, "srcimgpng"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3777
    const-string v4, ">> animation()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    iget v4, v4, Lcom/findit/battle/Objects$Animation;->mTime:I

    if-ltz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    iget v4, v4, Lcom/findit/battle/Objects$Animation;->mTime:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    iget-object v5, v5, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 3779
    :cond_0
    const/4 v4, 0x0

    .line 3939
    :goto_0
    return v4

    .line 3781
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    iget-object v4, v4, Lcom/findit/battle/Objects$Animation;->mOrders:[Lcom/findit/battle/Objects$Animation$Order;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    iget v5, v5, Lcom/findit/battle/Objects$Animation;->mTime:I

    aget-object v16, v4, v5

    .line 3783
    .local v16, "order":Lcom/findit/battle/Objects$Animation$Order;
    const/4 v15, 0x1

    .line 3784
    .local v15, "next":Z
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    array-length v0, v4

    move/from16 v19, v0

    .line 3785
    .local v19, "totalnum":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v19

    if-lt v13, v0, :cond_2

    .line 3939
    const/4 v4, 0x1

    goto :goto_0

    .line 3786
    :cond_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    const-string v5, "N"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3789
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mImgnum:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    .line 3792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v4}, Lcom/findit/battle/Objects;->access$2(Lcom/findit/battle/Objects;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v20, v4, v5

    .line 3793
    .local v20, "unitx":F
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mX:F

    mul-float v4, v4, v20

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    .line 3794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v4}, Lcom/findit/battle/Objects;->access$3(Lcom/findit/battle/Objects;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/findit/battle/Objects$OrderData;->mY:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    .line 3796
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mWidth:F

    mul-float v4, v4, v20

    float-to-int v0, v4

    move/from16 v21, v0

    .line 3797
    .local v21, "width":I
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mHeight:F

    mul-float v4, v4, v20

    float-to-int v11, v4

    .line 3798
    .local v11, "height":I
    div-int/lit8 v22, v21, 0x2

    .line 3799
    .local v22, "widthhalf":I
    div-int/lit8 v12, v11, 0x2

    .line 3800
    .local v12, "heighthalf":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    sub-int v14, v4, v22

    .line 3801
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    sub-int v18, v4, v12

    .line 3802
    .local v18, "top":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    add-int v5, v14, v21

    add-int v6, v18, v11

    move/from16 v0, v18

    invoke-virtual {v4, v14, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3803
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    .line 3804
    move-object/from16 v0, p0

    iput v11, v0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    .line 3807
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mAlpha:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 3808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3811
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v0, v4, Lcom/findit/battle/Objects$OrderData;->mRotate:I

    move/from16 v17, v0

    .line 3812
    .local v17, "rotate":I
    if-nez v17, :cond_3

    .line 3813
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    .line 3814
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    .line 3816
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/findit/battle/Objects$AnimObject;->rotate(I[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V

    .line 3818
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3929
    .end local v11    # "height":I
    .end local v12    # "heighthalf":I
    .end local v14    # "left":I
    .end local v17    # "rotate":I
    .end local v18    # "top":I
    .end local v20    # "unitx":F
    .end local v21    # "width":I
    .end local v22    # "widthhalf":I
    :cond_4
    :goto_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-boolean v4, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    if-nez v4, :cond_5

    .line 3930
    const/4 v15, 0x0

    .line 3932
    :cond_5
    add-int/lit8 v4, v19, -0x1

    if-ne v13, v4, :cond_6

    .line 3934
    if-eqz v15, :cond_6

    .line 3935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    iget v5, v4, Lcom/findit/battle/Objects$Animation;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$Animation;->mTime:I

    .line 3785
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 3820
    :cond_7
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    const-string v5, "I"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3822
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 3824
    :pswitch_0
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/findit/battle/Objects$OrderData;->mTo:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/findit/battle/Objects$OrderData;->mNum:I

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v7, v7, v13

    iget v7, v7, Lcom/findit/battle/Objects$OrderData;->mTime:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/findit/battle/Objects$AnimObject;->setImgnum(IIIF)V

    .line 3825
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3826
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 3827
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    goto :goto_2

    .line 3831
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/findit/battle/Objects$AnimObject;->changeImgnum(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3832
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3833
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    goto/16 :goto_2

    .line 3838
    :cond_8
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    const-string v5, "T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3840
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_2

    .line 3842
    :pswitch_2
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mFromX:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v6, v4, Lcom/findit/battle/Objects$OrderData;->mFromY:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v7, v4, Lcom/findit/battle/Objects$OrderData;->mToX:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v8, v4, Lcom/findit/battle/Objects$OrderData;->mToY:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v9, v4, Lcom/findit/battle/Objects$OrderData;->mTime:F

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/findit/battle/Objects$AnimObject;->targeting(FFFFF)V

    .line 3843
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3844
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 3845
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    goto/16 :goto_2

    .line 3849
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/findit/battle/Objects$AnimObject;->move(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3850
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3851
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    goto/16 :goto_2

    .line 3856
    :cond_9
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3858
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_2

    .line 3860
    :pswitch_4
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mFromX:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v6, v4, Lcom/findit/battle/Objects$OrderData;->mFromY:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v7, v4, Lcom/findit/battle/Objects$OrderData;->mToX:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v8, v4, Lcom/findit/battle/Objects$OrderData;->mToY:F

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v9, v4, Lcom/findit/battle/Objects$OrderData;->mTime:F

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/findit/battle/Objects$AnimObject;->setScale(FFFFF)V

    .line 3861
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3862
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 3863
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    goto/16 :goto_2

    .line 3867
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/findit/battle/Objects$AnimObject;->scaling(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3868
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3869
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    goto/16 :goto_2

    .line 3874
    :cond_a
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3876
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_2

    .line 3878
    :pswitch_6
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/findit/battle/Objects$OrderData;->mTo:I

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/findit/battle/Objects$OrderData;->mTime:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/findit/battle/Objects$AnimObject;->setAlpha(IIF)V

    .line 3879
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3880
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 3881
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    goto/16 :goto_2

    .line 3885
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/findit/battle/Objects$AnimObject;->changeAlpha(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3886
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3887
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    goto/16 :goto_2

    .line 3892
    :cond_b
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3894
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    packed-switch v4, :pswitch_data_4

    goto/16 :goto_2

    .line 3896
    :pswitch_8
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v6, v4, Lcom/findit/battle/Objects$OrderData;->mTo:I

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-boolean v7, v4, Lcom/findit/battle/Objects$OrderData;->mDirect:Z

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v8, v4, Lcom/findit/battle/Objects$OrderData;->mTime:F

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$AnimObject;->setRotate(IIZF[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V

    .line 3897
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3898
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 3899
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    goto/16 :goto_2

    .line 3903
    :pswitch_9
    invoke-direct/range {p0 .. p3}, Lcom/findit/battle/Objects$AnimObject;->changeRotate(F[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3904
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3905
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    goto/16 :goto_2

    .line 3910
    :cond_c
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    const-string v5, "D"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3912
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    packed-switch v4, :pswitch_data_5

    goto/16 :goto_2

    .line 3914
    :pswitch_a
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v4, v4, Lcom/findit/battle/Objects$OrderData;->mTime:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/findit/battle/Objects$AnimObject;->setDelay(F)V

    .line 3915
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3916
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 3917
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x0

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    goto/16 :goto_2

    .line 3921
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/findit/battle/Objects$AnimObject;->delay(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3922
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 3923
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v13

    iget v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/findit/battle/Objects$OrderData;->mStep:I

    goto/16 :goto_2

    .line 3822
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3840
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3858
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3876
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 3894
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 3912
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3943
    const-string v1, ">> doDraw()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3944
    iget v0, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    .line 3946
    .local v0, "imgnum":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 3947
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3948
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3952
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 3953
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 3954
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3955
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 3958
    :cond_1
    return-void
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    .line 3216
    const-string v3, ">> loadImage()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3217
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 3218
    .local v2, "totalnum":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3219
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 3231
    iget v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 3232
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 3272
    return-void

    .line 3221
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 3222
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpPath:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 3223
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpId:[I

    aget v3, v3, v0

    if-le v3, v8, :cond_1

    .line 3224
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpId:[I

    aget v5, v5, v0

    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v0

    .line 3220
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3227
    :cond_2
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpPath:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_2

    .line 3233
    :cond_3
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    .line 3234
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngPath:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_5

    .line 3235
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    aget v3, v3, v0

    if-le v3, v8, :cond_4

    .line 3236
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    aput-object v4, v3, v0

    .line 3232
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3239
    :cond_5
    iget-object v4, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngPath:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v3, v4, v0

    goto :goto_3
.end method

.method public loadImage([Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "imgbmp"    # [Landroid/graphics/Bitmap;
    .param p2, "imgpng"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3204
    const-string v2, ">> loadImage()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3205
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 3206
    .local v1, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 3209
    iget v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 3210
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 3212
    return-void

    .line 3207
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    aget v3, v3, v0

    aget-object v3, p1, v3

    aput-object v3, v2, v0

    .line 3206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3211
    :cond_1
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgPngnum:[I

    aget v2, v2, v0

    aget-object v2, p2, v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v2, v3, v0

    .line 3210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public recycleImageInAnimObject()V
    .locals 5

    .prologue
    .line 3275
    const-string v3, ">> recycleImageInAnimObject()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 3276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-lt v1, v3, :cond_0

    .line 3288
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v2, v3

    .line 3289
    .local v2, "nImgPngSize":I
    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_3

    .line 3298
    return-void

    .line 3282
    .end local v2    # "nImgPngSize":I
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    .line 3283
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 3284
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 3276
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3288
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 3290
    .restart local v2    # "nImgPngSize":I
    :cond_3
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v1

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_4

    .line 3291
    iget-object v3, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3292
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 3293
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3289
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public set(Lcom/findit/battle/Objects$AnimObject;)V
    .locals 3
    .param p1, "animobject"    # Lcom/findit/battle/Objects$AnimObject;

    .prologue
    .line 3132
    const-string v1, ">> set()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3133
    iget-object v1, p1, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmp:[Landroid/graphics/Bitmap;

    .line 3134
    iget-object v1, p1, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    .line 3135
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 3136
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpPath:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 3141
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngPath:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 3144
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3145
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    invoke-virtual {v1, v2}, Lcom/findit/battle/Objects$Animation;->set(Lcom/findit/battle/Objects$Animation;)V

    .line 3147
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgnum:I

    .line 3148
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 3149
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 3151
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpId:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 3154
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 3157
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 3160
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgPngnum:[I

    array-length v1, v1

    if-lt v0, v1, :cond_5

    .line 3163
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mFromImgnum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mFromImgnum:I

    .line 3164
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mToImgnum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToImgnum:I

    .line 3165
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mRepeatNum:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mRepeatNum:I

    .line 3166
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mTempImgnum:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mTempImgnum:F

    .line 3167
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mChangeImgnum:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeImgnum:F

    .line 3169
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mX:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mX:I

    .line 3170
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mY:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mY:I

    .line 3171
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mTargetX:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetX:I

    .line 3172
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mTargetY:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mTargetY:I

    .line 3173
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mTempX:F

    .line 3174
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mTempY:F

    .line 3175
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mMoveX:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveX:F

    .line 3176
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mMoveY:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveY:F

    .line 3178
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mWidth:I

    .line 3179
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mHeight:I

    .line 3180
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mToWidth:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToWidth:I

    .line 3181
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mToHeight:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToHeight:I

    .line 3182
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateWidthRate:F

    .line 3183
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateHeightRate:F

    .line 3184
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mTempWidth:F

    .line 3185
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mTempHeight:F

    .line 3186
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mMoveWidth:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveWidth:F

    .line 3187
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mMoveHeight:F

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mMoveHeight:F

    .line 3189
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 3190
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mChangeAlpha:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeAlpha:I

    .line 3191
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mToAlpha:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToAlpha:I

    .line 3193
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mRotate:I

    .line 3194
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mChangeRotate:I

    .line 3195
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mToRotate:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mToRotate:I

    .line 3197
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mDelay:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mDelay:I

    .line 3198
    iget v1, p1, Lcom/findit/battle/Objects$AnimObject;->mDelayCount:I

    iput v1, p0, Lcom/findit/battle/Objects$AnimObject;->mDelayCount:I

    .line 3199
    iget-boolean v1, p1, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    iput-boolean v1, p0, Lcom/findit/battle/Objects$AnimObject;->mRotateEnd:Z

    .line 3200
    return-void

    .line 3139
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpPath:[Ljava/lang/String;

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mImgBmpPath:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 3138
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3142
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngPath:[Ljava/lang/String;

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mImgPngPath:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 3141
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3152
    :cond_2
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgBmpId:[I

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mImgBmpId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 3151
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 3155
    :cond_3
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 3154
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 3158
    :cond_4
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 3157
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 3161
    :cond_5
    iget-object v1, p0, Lcom/findit/battle/Objects$AnimObject;->mSrcImgPngnum:[I

    iget-object v2, p1, Lcom/findit/battle/Objects$AnimObject;->mSrcImgPngnum:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 3160
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method
