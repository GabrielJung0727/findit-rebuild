.class Lcom/findit/battle/Objects$Button;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Button"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final UP:I


# instance fields
.field public mImgBmp:[Landroid/graphics/Bitmap;

.field public mImgId:[I

.field public mImgNum:I

.field public mPaint:Landroid/graphics/Paint;

.field public mRect:[Landroid/graphics/Rect;

.field public mText:Ljava/lang/String;

.field public mTextPaint:Landroid/graphics/Paint;

.field public mTextSpace:I

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "upimgid"    # I
    .param p4, "downimgid"    # I
    .param p5, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 483
    iput-object p1, p0, Lcom/findit/battle/Objects$Button;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const-string v0, ">> Button()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 485
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    .line 486
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    .line 487
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgId:[I

    .line 488
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mPaint:Landroid/graphics/Paint;

    .line 489
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mTextPaint:Landroid/graphics/Paint;

    .line 491
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgId:[I

    aput p3, v0, v2

    .line 492
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgId:[I

    aput p4, v0, v3

    .line 493
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aput-object p5, v1, v3

    aput-object p5, v0, v2

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mText:Ljava/lang/String;

    .line 495
    iput v2, p0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    .line 496
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "upimgid"    # I
    .param p4, "downimgid"    # I
    .param p5, "uprect"    # Landroid/graphics/Rect;
    .param p6, "downrect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 498
    iput-object p1, p0, Lcom/findit/battle/Objects$Button;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const-string v0, ">> Button()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 500
    new-array v0, v2, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgBmp:[Landroid/graphics/Bitmap;

    .line 501
    new-array v0, v2, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    .line 502
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgId:[I

    .line 503
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mPaint:Landroid/graphics/Paint;

    .line 504
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mTextPaint:Landroid/graphics/Paint;

    .line 506
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgId:[I

    aput p3, v0, v1

    .line 507
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mImgId:[I

    aput p4, v0, v3

    .line 508
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aput-object p5, v0, v1

    .line 509
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aput-object p6, v0, v3

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/Objects$Button;->mText:Ljava/lang/String;

    .line 511
    iput v1, p0, Lcom/findit/battle/Objects$Button;->mImgNum:I

    .line 512
    return-void
.end method


# virtual methods
.method public getX()I
    .locals 2

    .prologue
    .line 561
    const-string v0, ">> getX()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 566
    const-string v0, ">> getY()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public setRect(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 533
    const-string v0, ">> setRect()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 535
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 536
    return-void
.end method

.method public setText(Ljava/lang/String;FI)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "color"    # I

    .prologue
    .line 515
    const-string v0, ">> setText()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 516
    iput-object p1, p0, Lcom/findit/battle/Objects$Button;->mText:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 518
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    iget-object v0, p0, Lcom/findit/battle/Objects$Button;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 520
    const/high16 v0, 0x40400000    # 3.0f

    div-float v0, p2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/findit/battle/Objects$Button;->mTextSpace:I

    .line 521
    return-void
.end method

.method public setX(I)V
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, 0x0

    .line 539
    const-string v1, ">> setX()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 541
    .local v0, "width":I
    iget-object v1, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v2

    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 542
    iget-object v1, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v2

    add-int v2, p1, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 547
    return-void
.end method

.method public setY(I)V
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 550
    const-string v1, ">> setY()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 552
    .local v0, "height":I
    iget-object v1, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v2

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 553
    iget-object v1, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v2

    add-int v2, p1, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 558
    return-void
.end method

.method public touch(II)Z
    .locals 3
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    const/4 v1, 0x0

    .line 524
    const-string v2, ">> touch()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/findit/battle/Objects$Button;->mRect:[Landroid/graphics/Rect;

    aget-object v0, v2, v1

    .line 526
    .local v0, "rect":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v2, p1, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, p2, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, p2, :cond_0

    .line 527
    const/4 v1, 0x1

    .line 529
    :cond_0
    return v1
.end method
