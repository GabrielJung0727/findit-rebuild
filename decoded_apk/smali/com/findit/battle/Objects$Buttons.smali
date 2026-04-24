.class Lcom/findit/battle/Objects$Buttons;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Buttons"
.end annotation


# instance fields
.field public mButton:[Lcom/findit/battle/Objects$Button;

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;I)V
    .locals 1
    .param p2, "num"    # I

    .prologue
    .line 366
    iput-object p1, p0, Lcom/findit/battle/Objects$Buttons;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const-string v0, ">> Buttons()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 368
    new-array v0, p2, [Lcom/findit/battle/Objects$Button;

    iput-object v0, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    .line 369
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 453
    const-string v3, ">> doDraw()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseLoop(Ljava/lang/String;)V

    .line 454
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    array-length v2, v3

    .line 455
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 467
    return-void

    .line 456
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v0, v3, v1

    .line 458
    .local v0, "button":Lcom/findit/battle/Objects$Button;
    iget-object v3, v0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 459
    iget-object v3, v0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    iget v4, v0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    iget v6, v0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    aget-object v5, v5, v6

    iget-object v6, v0, Lcom/findit/battle/Objects$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 464
    :goto_1
    iget-object v3, v0, Lcom/findit/battle/Objects$Button;->mText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 465
    iget-object v3, v0, Lcom/findit/battle/Objects$Button;->mText:Ljava/lang/String;

    iget-object v4, v0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    iget v5, v0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    iget v6, v0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, v0, Lcom/findit/battle/Objects$Button;->mTextSpace:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/findit/battle/Objects$Button;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 455
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "button.mImgBmp[button.mImgNum] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    iget v5, v0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 372
    const-string v6, ">> loadImage()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 376
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 377
    iget-object v6, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    array-length v4, v6

    .line 378
    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 394
    return-void

    .line 379
    :cond_0
    iget-object v6, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v1, v6, v2

    .line 381
    .local v1, "button":Lcom/findit/battle/Objects$Button;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v1, Lcom/findit/battle/Objects$Button;->mImgId:[I

    aget v7, v7, v10

    invoke-static {v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 382
    iget-object v6, v1, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    iget-object v7, v1, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v1, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v10

    .line 383
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    iget-object v6, v1, Lcom/findit/battle/Objects$Button;->mImgId:[I

    aget v3, v6, v9

    .line 386
    .local v3, "id":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 387
    iget-object v6, v1, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    iget-object v7, v1, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v7, v7, v10

    aput-object v7, v6, v9

    .line 378
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    iget-object v6, v1, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    iget-object v7, v1, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v1, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v0, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v9

    .line 391
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public recycleImageInButton()V
    .locals 7

    .prologue
    .line 397
    const-string v5, ">> Buttons::recycleImageInButton()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 399
    iget-object v5, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    array-length v4, v5

    .line 400
    .local v4, "length":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "++ recycleImageInButton() Button length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 412
    return-void

    .line 402
    :cond_0
    iget-object v5, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v0, v5, v1

    .line 404
    .local v0, "button":Lcom/findit/battle/Objects$Button;
    iget-object v5, v0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    array-length v2, v5

    .line 405
    .local v2, "imglength":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_1
    iget-object v5, v0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 407
    iget-object v5, v0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 408
    iget-object v5, v0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 405
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 446
    const-string v2, ">> setAlpha()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 447
    iget-object v2, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    array-length v1, v2

    .line 448
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 450
    return-void

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/findit/battle/Objects$Button;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setImageNum(I)V
    .locals 3
    .param p1, "imgnum"    # I

    .prologue
    .line 439
    const-string v2, ">> setImageNum()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 440
    iget-object v2, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    array-length v1, v2

    .line 441
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 443
    return-void

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v2, v2, v0

    iput p1, v2, Lcom/findit/battle/Objects$Button;->mImgNum:I

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public touch(II)I
    .locals 5
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    .line 415
    const-string v3, ">> touch()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 416
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    array-length v1, v3

    .line 417
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 423
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 418
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 419
    .local v2, "rect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v3, p1, :cond_2

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le v3, p1, :cond_2

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, p2, :cond_2

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v3, p2, :cond_0

    .line 417
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public touchSingleDown(II)V
    .locals 6
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    const/4 v5, 0x0

    .line 427
    const-string v3, ">> touchSingleDown()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    array-length v1, v3

    .line 429
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 436
    return-void

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v3, v5

    .line 431
    .local v2, "rect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge v3, p1, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le v3, p1, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge v3, p2, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le v3, p2, :cond_1

    .line 432
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/findit/battle/Objects$Button;->mImgNum:I

    .line 429
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_1
    iget-object v3, p0, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v3, v3, v0

    iput v5, v3, Lcom/findit/battle/Objects$Button;->mImgNum:I

    goto :goto_1
.end method
