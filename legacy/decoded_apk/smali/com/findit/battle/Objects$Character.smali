.class Lcom/findit/battle/Objects$Character;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Character"
.end annotation


# static fields
.field public static final ANIM_START_END:I = -0x1

.field public static final ANIM_START_FLICKER:I = 0x0

.field public static final CHARACTER_IMAGE_TOTALNUM:I = 0x4

.field public static final IMAGE_HEAD:I = 0x3

.field public static final IMAGE_NORMAL:I = 0x0

.field public static final IMAGE_READY:I = 0x1

.field public static final IMAGE_WIN:I = 0x2


# instance fields
.field public mAlpha:[I

.field public mBodyNum:I

.field public mBodyType:I

.field public mFaceImgPath:Ljava/lang/String;

.field public mFaceImgnum:I

.field public mImgPng:[Landroid/graphics/drawable/Drawable;

.field public mImgnum:I

.field public mName:Ljava/lang/String;

.field public mRect:[Landroid/graphics/Rect;

.field public mTime:I

.field public mTimeCount:I

.field public mTimeCount1:I

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;Landroid/content/Context;III)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bodytype"    # I
    .param p4, "bodynum"    # I
    .param p5, "facenum"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x4

    .line 4439
    iput-object p1, p0, Lcom/findit/battle/Objects$Character;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4440
    const-string v1, ">> Character()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4441
    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    .line 4442
    new-array v1, v3, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/findit/battle/Objects$Character;->mRect:[Landroid/graphics/Rect;

    .line 4444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 4447
    iput v4, p0, Lcom/findit/battle/Objects$Character;->mTime:I

    .line 4448
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    .line 4449
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([II)V

    .line 4450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/findit/battle/Objects$Character;->mFaceImgPath:Ljava/lang/String;

    .line 4451
    iput p5, p0, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    .line 4452
    iput p3, p0, Lcom/findit/battle/Objects$Character;->mBodyType:I

    .line 4453
    iput p4, p0, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    .line 4454
    const-string v1, "AI"

    iput-object v1, p0, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    .line 4456
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 4458
    return-void

    .line 4445
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 4444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4687
    const-string v2, ">> compressBitmap()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4688
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4689
    .local v0, "bytearray":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4690
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4692
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    const-string v2, "img"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "headimg"    # Landroid/graphics/drawable/Drawable;
    .param p2, "faceimg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "widthrate"    # F
    .param p4, "heightrate"    # F

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42d00000    # 104.0f

    .line 4666
    const-string v4, ">> drawImg()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4667
    const/high16 v4, 0x43070000    # 135.0f

    mul-float/2addr v4, p3

    float-to-int v3, v4

    .line 4668
    .local v3, "imgwidth":I
    const/high16 v4, 0x42e00000    # 112.0f

    mul-float/2addr v4, p4

    float-to-int v2, v4

    .line 4670
    .local v2, "imgheight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4672
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 4673
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4676
    const/high16 v4, 0x41b00000    # 22.0f

    mul-float/2addr v4, p3

    float-to-int v4, v4

    const/high16 v5, 0x41f80000    # 31.0f

    mul-float/2addr v5, p4

    float-to-int v5, v5

    mul-float v6, v7, p3

    float-to-int v6, v6

    mul-float/2addr v7, p4

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4677
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4680
    invoke-virtual {p1, v8, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4681
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4683
    return-object v0
.end method

.method private drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bodyimg"    # Landroid/graphics/drawable/Drawable;
    .param p2, "poseimg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "faceimg"    # Landroid/graphics/drawable/Drawable;
    .param p4, "widthrate"    # F
    .param p5, "heightrate"    # F

    .prologue
    const/4 v8, 0x0

    .line 4641
    const-string v4, ">> drawImg()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4642
    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v4, p4

    float-to-int v3, v4

    .line 4643
    .local v3, "imgwidth":I
    const/high16 v4, 0x43fa0000    # 500.0f

    mul-float/2addr v4, p5

    float-to-int v2, v4

    .line 4645
    .local v2, "imgheight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4647
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 4648
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4651
    const/high16 v4, 0x42e20000    # 113.0f

    mul-float/2addr v4, p4

    float-to-int v4, v4

    const/high16 v5, 0x42a80000    # 84.0f

    mul-float/2addr v5, p5

    float-to-int v5, v5

    const/high16 v6, 0x43790000    # 249.0f

    mul-float/2addr v6, p4

    float-to-int v6, v6

    const/high16 v7, 0x434e0000    # 206.0f

    mul-float/2addr v7, p5

    float-to-int v7, v7

    invoke-virtual {p3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4652
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4655
    invoke-virtual {p1, v8, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4656
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4659
    const/high16 v4, 0x43c60000    # 396.0f

    mul-float/2addr v4, p5

    float-to-int v4, v4

    invoke-virtual {p2, v8, v8, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4660
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4662
    return-object v0
.end method


# virtual methods
.method public animation(F)V
    .locals 7
    .param p1, "speedrate"    # F

    .prologue
    const/16 v6, 0xfa

    const/4 v5, -0x1

    const/high16 v4, 0x41c80000    # 25.0f

    const/4 v3, 0x0

    .line 4696
    const-string v1, ">> animation()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4699
    iget v1, p0, Lcom/findit/battle/Objects$Character;->mTime:I

    packed-switch v1, :pswitch_data_0

    .line 4736
    :cond_0
    :goto_0
    return-void

    .line 4701
    :pswitch_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aput v6, v1, v2

    .line 4702
    iput v3, p0, Lcom/findit/battle/Objects$Character;->mTimeCount:I

    .line 4703
    iput v3, p0, Lcom/findit/battle/Objects$Character;->mTimeCount1:I

    .line 4704
    iget v1, p0, Lcom/findit/battle/Objects$Character;->mTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/findit/battle/Objects$Character;->mTime:I

    goto :goto_0

    .line 4708
    :pswitch_1
    iget v1, p0, Lcom/findit/battle/Objects$Character;->mTimeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Character;->mTimeCount:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 4709
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget v1, v1, v2

    mul-float v2, v4, p1

    float-to-int v2, v2

    sub-int v0, v1, v2

    .line 4711
    .local v0, "alpha":I
    if-lez v0, :cond_1

    .line 4712
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aput v0, v1, v2

    goto :goto_0

    .line 4714
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aput v3, v1, v2

    goto :goto_0

    .line 4716
    .end local v0    # "alpha":I
    :cond_2
    iget v1, p0, Lcom/findit/battle/Objects$Character;->mTimeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Character;->mTimeCount:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 4717
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget v1, v1, v2

    mul-float v2, v4, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 4719
    .restart local v0    # "alpha":I
    if-ge v0, v6, :cond_3

    .line 4720
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aput v0, v1, v2

    goto :goto_0

    .line 4722
    :cond_3
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aput v3, v1, v2

    goto :goto_0

    .line 4725
    .end local v0    # "alpha":I
    :cond_4
    iput v3, p0, Lcom/findit/battle/Objects$Character;->mTimeCount:I

    .line 4727
    iget v1, p0, Lcom/findit/battle/Objects$Character;->mTimeCount1:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Character;->mTimeCount1:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 4728
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aput v5, v1, v2

    .line 4730
    iput v3, p0, Lcom/findit/battle/Objects$Character;->mTimeCount1:I

    .line 4731
    iput v5, p0, Lcom/findit/battle/Objects$Character;->mTime:I

    goto :goto_0

    .line 4699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4739
    const-string v0, ">> doDraw()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4740
    iget v0, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4741
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 4742
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4743
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mRect:[Landroid/graphics/Rect;

    iget v2, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4744
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4747
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 2

    .prologue
    .line 4488
    const-string v0, ">> getAlpha()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4489
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget v0, v0, v1

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 4478
    const-string v0, ">> getRect()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4479
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mRect:[Landroid/graphics/Rect;

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4528
    const-string v0, ">> loadImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4529
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v0}, Lcom/findit/battle/Objects;->access$2(Lcom/findit/battle/Objects;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v10, 0x44a00000    # 1280.0f

    div-float v4, v0, v10

    .line 4530
    .local v4, "widthrate":F
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v0}, Lcom/findit/battle/Objects;->access$3(Lcom/findit/battle/Objects;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v10, 0x44480000    # 800.0f

    div-float v5, v0, v10

    .line 4531
    .local v5, "heightrate":F
    iget v9, p0, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    .line 4532
    .local v9, "index":I
    sget-object v0, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    iget v10, p0, Lcom/findit/battle/Objects$Character;->mBodyType:I

    aget-object v7, v0, v10

    .line 4533
    .local v7, "data":Lcom/findit/battle/Objects$CharacterData;
    const/4 v6, 0x0

    .line 4537
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_7

    .line 4538
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v10, v7, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    aget v10, v10, v9

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4544
    .local v1, "bodyimg":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mFaceImgPath:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 4545
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_8

    .line 4546
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v10, p0, Lcom/findit/battle/Objects$Character;->this$0:Lcom/findit/battle/Objects;

    iget-object v10, v10, Lcom/findit/battle/Objects;->mBodyFaceImgIds:[I

    iget v11, p0, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget v10, v10, v11

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4554
    .local v3, "faceimg":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v2, 0x0

    .line 4555
    .local v2, "poseimg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_a

    .line 4556
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    aget v0, v0, v9

    if-eqz v0, :cond_0

    .line 4557
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v10, v7, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    aget v10, v10, v9

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4562
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    move-object v0, p0

    .line 4563
    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/Objects$Character;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4564
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    invoke-direct {p0, v6}, Lcom/findit/battle/Objects$Character;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v0, v10

    .line 4568
    :cond_1
    const/4 v2, 0x0

    .line 4569
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_b

    .line 4570
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgIds:[I

    aget v0, v0, v9

    if-eqz v0, :cond_2

    .line 4571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v10, v7, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgIds:[I

    aget v10, v10, v9

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4576
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    move-object v0, p0

    .line 4577
    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/Objects$Character;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4578
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    invoke-direct {p0, v6}, Lcom/findit/battle/Objects$Character;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v0, v10

    .line 4582
    :cond_3
    const/4 v2, 0x0

    .line 4583
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_c

    .line 4584
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgIds:[I

    aget v0, v0, v9

    if-eqz v0, :cond_4

    .line 4585
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v10, v7, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgIds:[I

    aget v10, v10, v9

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4590
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    move-object v0, p0

    .line 4591
    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/Objects$Character;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4592
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x2

    invoke-direct {p0, v6}, Lcom/findit/battle/Objects$Character;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v0, v10

    .line 4596
    :cond_5
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mFaceImgPath:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 4597
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_d

    .line 4598
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v10, p0, Lcom/findit/battle/Objects$Character;->this$0:Lcom/findit/battle/Objects;

    iget-object v10, v10, Lcom/findit/battle/Objects;->mHeadFaceImgIds:[I

    iget v11, p0, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget v10, v10, v11

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4606
    :goto_5
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mHeadImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_f

    .line 4607
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v10, v7, Lcom/findit/battle/Objects$CharacterData;->mHeadImgIds:[I

    aget v10, v10, v9

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4611
    .local v8, "headimg":Landroid/graphics/drawable/Drawable;
    :goto_6
    invoke-direct {p0, v8, v3, v4, v5}, Lcom/findit/battle/Objects$Character;->drawImg(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4612
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x3

    invoke-direct {p0, v6}, Lcom/findit/battle/Objects$Character;->compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v0, v10

    .line 4614
    if-eqz v6, :cond_6

    .line 4615
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 4616
    :cond_6
    return-void

    .line 4540
    .end local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    .end local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    .end local v8    # "headimg":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "bodyimg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 4548
    :cond_8
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->this$0:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mBodyFaceImgPaths:[Ljava/lang/String;

    iget v10, p0, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget-object v0, v0, v10

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4549
    .restart local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 4551
    .end local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mFaceImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "faceimg":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 4560
    .restart local v2    # "poseimg":Landroid/graphics/drawable/Drawable;
    :cond_a
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_2

    .line 4574
    :cond_b
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 4588
    :cond_c
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_4

    .line 4600
    :cond_d
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->this$0:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mHeadFaceImgPaths:[Ljava/lang/String;

    iget v10, p0, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    aget-object v0, v0, v10

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4601
    goto :goto_5

    .line 4603
    :cond_e
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mFaceImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_5

    .line 4609
    :cond_f
    iget-object v0, v7, Lcom/findit/battle/Objects$CharacterData;->mHeadImgPaths:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .restart local v8    # "headimg":Landroid/graphics/drawable/Drawable;
    goto :goto_6
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 4483
    const-string v0, ">> setAlpha()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4484
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aput p1, v0, v1

    .line 4485
    return-void
.end method

.method public setImgnum(I)V
    .locals 3
    .param p1, "imgnum"    # I

    .prologue
    .line 4461
    const-string v1, ">> setImgnum()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4462
    iget v0, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    .line 4464
    .local v0, "preimgnum":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 4465
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/findit/battle/Objects$Character;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4466
    iget-object v1, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    iget-object v2, p0, Lcom/findit/battle/Objects$Character;->mAlpha:[I

    aget v2, v2, v0

    aput v2, v1, p1

    .line 4469
    :cond_0
    iput p1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    .line 4470
    return-void
.end method

.method public setRect(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 4473
    const-string v0, ">> setRect()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4474
    iget-object v0, p0, Lcom/findit/battle/Objects$Character;->mRect:[Landroid/graphics/Rect;

    iget v1, p0, Lcom/findit/battle/Objects$Character;->mImgnum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4475
    return-void
.end method
