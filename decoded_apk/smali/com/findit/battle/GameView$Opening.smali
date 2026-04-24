.class Lcom/findit/battle/GameView$Opening;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Opening"
.end annotation


# static fields
.field public static final MTIME_OPENING_0:I = 0x0

.field public static final MTIME_OPENING_1:I = 0x1

.field public static final MTIME_OPENING_2:I = 0x2

.field public static final MTIME_OPENING_3:I = 0x3

.field public static final MTIME_OPENING_4:I = 0x4


# instance fields
.field public mBgColor:I

.field private mPaint:Landroid/graphics/Paint;

.field public mTime:I

.field public mTimeCount:I

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;)V
    .locals 3

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1336
    const-string v0, ">> Opening()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1339
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    .line 1353
    const/16 v0, 0xae

    const/16 v1, 0xde

    const/16 v2, 0xe4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/findit/battle/GameView$Opening;->mBgColor:I

    .line 1354
    const/4 v0, 0x0

    iput v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    .line 1355
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 7

    .prologue
    const/high16 v2, 0x41700000    # 15.0f

    const/4 v5, 0x0

    .line 1386
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    packed-switch v0, :pswitch_data_0

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1388
    :pswitch_0
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1389
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    .line 1390
    iput v5, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    goto :goto_0

    .line 1394
    :pswitch_1
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    iget v2, v2, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1395
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    .line 1396
    iput v5, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    goto :goto_0

    .line 1401
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    iget v1, v1, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v6, v0, v1

    .line 1403
    .local v6, "alpha":I
    const/16 v0, 0xfa

    if-ge v6, v0, :cond_1

    .line 1404
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1407
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    goto :goto_0

    .line 1412
    .end local v6    # "alpha":I
    :pswitch_3
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    int-to-float v0, v0

    const/high16 v1, 0x42700000    # 60.0f

    iget-object v2, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    iget v2, v2, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1413
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    .line 1414
    iput v5, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    goto :goto_0

    .line 1419
    :pswitch_4
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    iget v1, v1, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v6, v0, v1

    .line 1421
    .restart local v6    # "alpha":I
    if-lez v6, :cond_2

    .line 1422
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 1424
    :cond_2
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1428
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    if-lez v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v2}, Lcom/findit/battle/GameView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v3}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v3

    .line 1430
    const v4, 0x7f020184

    .line 1429
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/GameView;->loadBgImage(Landroid/content/Context;IIIZ)V

    .line 1431
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$1(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$MainMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView$MainMenu;->loadImage(Landroid/content/Context;)V

    .line 1432
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$1(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameView$MainMenu;

    move-result-object v0

    iput v5, v0, Lcom/findit/battle/GameView$MainMenu;->mTime:I

    .line 1433
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/findit/battle/GameView;->access$2(Lcom/findit/battle/GameView;I)V

    .line 1435
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/findit/battle/GameView$Opening;->mTime:I

    .line 1436
    iput v5, p0, Lcom/findit/battle/GameView$Opening;->mTimeCount:I

    goto/16 :goto_0

    .line 1386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 1444
    iget v0, p0, Lcom/findit/battle/GameView$Opening;->mBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1454
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/findit/battle/GameView$Opening;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameView$Opening;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1456
    :cond_0
    return-void
.end method
