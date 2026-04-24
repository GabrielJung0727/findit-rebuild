.class Lcom/findit/battle/Objects$FindRect;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FindRect"
.end annotation


# static fields
.field private static final ALPHA:I = 0xe6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field private static final TIME_REPEAT:I = 0x4


# instance fields
.field public mAlpha:I

.field public mFinded:Z

.field public mHeight:I

.field public mImgId:I

.field public mImgPath:Ljava/lang/String;

.field public mOutputRect:[Landroid/graphics/Rect;

.field public mRateHeight:I

.field public mRateWidth:I

.field public mRateX:I

.field public mRateY:I

.field public mShow:Z

.field public mTime:I

.field public mTimeCount:I

.field public mWidth:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1297
    iput-object p1, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    const-string v0, ">> FindRect()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1299
    iput v2, p0, Lcom/findit/battle/Objects$FindRect;->mImgId:I

    .line 1300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mImgPath:Ljava/lang/String;

    .line 1301
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    .line 1302
    iget-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    .line 1303
    iget-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    .line 1305
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    .line 1306
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    .line 1307
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    .line 1308
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    .line 1309
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Objects;IIIII)V
    .locals 4
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "imgid"    # I

    .prologue
    const/4 v3, -0x1

    .line 1311
    iput-object p1, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    const-string v0, ">> FindRect()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1313
    iput p2, p0, Lcom/findit/battle/Objects$FindRect;->mX:I

    .line 1314
    iput p3, p0, Lcom/findit/battle/Objects$FindRect;->mY:I

    .line 1315
    iput p4, p0, Lcom/findit/battle/Objects$FindRect;->mWidth:I

    .line 1316
    iput p5, p0, Lcom/findit/battle/Objects$FindRect;->mHeight:I

    .line 1317
    iput p6, p0, Lcom/findit/battle/Objects$FindRect;->mImgId:I

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mImgPath:Ljava/lang/String;

    .line 1319
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    .line 1320
    iget-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    .line 1321
    iget-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    .line 1323
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    .line 1324
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    .line 1325
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    .line 1326
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    .line 1327
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Objects;IIIILjava/lang/String;)V
    .locals 4
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "imgpath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1329
    iput-object p1, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    const-string v0, ">> FindRect()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1331
    iput p2, p0, Lcom/findit/battle/Objects$FindRect;->mX:I

    .line 1332
    iput p3, p0, Lcom/findit/battle/Objects$FindRect;->mY:I

    .line 1333
    iput p4, p0, Lcom/findit/battle/Objects$FindRect;->mWidth:I

    .line 1334
    iput p5, p0, Lcom/findit/battle/Objects$FindRect;->mHeight:I

    .line 1335
    iput v2, p0, Lcom/findit/battle/Objects$FindRect;->mImgId:I

    .line 1336
    iput-object p6, p0, Lcom/findit/battle/Objects$FindRect;->mImgPath:Ljava/lang/String;

    .line 1337
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    .line 1338
    iget-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    .line 1339
    iget-object v0, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    .line 1341
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    .line 1342
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    .line 1343
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    .line 1344
    iput v3, p0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    .line 1345
    return-void
.end method


# virtual methods
.method public animation(FII)V
    .locals 12
    .param p1, "speedrate"    # F
    .param p2, "space"    # I
    .param p3, "rightx"    # I

    .prologue
    const/4 v6, 0x3

    const/16 v11, 0xe6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1348
    const-string v4, ">> animation()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1351
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    packed-switch v4, :pswitch_data_0

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1354
    :pswitch_0
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v4}, Lcom/findit/battle/Objects;->access$0(Lcom/findit/battle/Objects;)I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 1355
    .local v2, "circlespace":I
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    iget v5, p0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v0, v4, p2

    .line 1356
    .local v0, "centerx":I
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    iget v5, p0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v1, v4, p2

    .line 1362
    .local v1, "centery":I
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1366
    add-int/2addr v0, p3

    .line 1367
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1369
    iput v9, p0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    .line 1370
    iput v9, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    .line 1371
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    goto :goto_0

    .line 1375
    .end local v0    # "centerx":I
    .end local v1    # "centery":I
    .end local v2    # "circlespace":I
    :pswitch_1
    const/high16 v4, 0x40400000    # 3.0f

    iget-object v5, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v4, v5

    mul-float/2addr v4, p1

    float-to-int v3, v4

    .line 1377
    .local v3, "speed":I
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1378
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1379
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1380
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1381
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1382
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1383
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1384
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1386
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    .line 1387
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    if-le v4, v11, :cond_1

    .line 1388
    iput v11, p0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    .line 1390
    :cond_1
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    if-ge v4, v5, :cond_0

    .line 1392
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v4}, Lcom/findit/battle/Objects;->access$0(Lcom/findit/battle/Objects;)I

    move-result v2

    .line 1393
    .restart local v2    # "circlespace":I
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    iget v5, p0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v0, v4, p2

    .line 1394
    .restart local v0    # "centerx":I
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    iget v5, p0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v1, v4, p2

    .line 1398
    .restart local v1    # "centery":I
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1402
    add-int/2addr v0, p3

    .line 1403
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1405
    iput v11, p0, Lcom/findit/battle/Objects$FindRect;->mAlpha:I

    .line 1406
    iput v9, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    .line 1407
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    goto/16 :goto_0

    .line 1412
    .end local v0    # "centerx":I
    .end local v1    # "centery":I
    .end local v2    # "circlespace":I
    .end local v3    # "speed":I
    :pswitch_2
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v4}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v4

    mul-float/2addr v4, p1

    float-to-int v3, v4

    .line 1414
    .restart local v3    # "speed":I
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1415
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1416
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1417
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1418
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1419
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1420
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1421
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1423
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    if-le v4, v6, :cond_0

    .line 1424
    iput v9, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    .line 1425
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    goto/16 :goto_0

    .line 1430
    .end local v3    # "speed":I
    :pswitch_3
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v4}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v4

    mul-float/2addr v4, p1

    float-to-int v3, v4

    .line 1432
    .restart local v3    # "speed":I
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1433
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1434
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1435
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1436
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1437
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1438
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1439
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1441
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    if-le v4, v6, :cond_0

    .line 1443
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->this$0:Lcom/findit/battle/Objects;

    invoke-static {v4}, Lcom/findit/battle/Objects;->access$0(Lcom/findit/battle/Objects;)I

    move-result v2

    .line 1444
    .restart local v2    # "circlespace":I
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    iget v5, p0, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v0, v4, p2

    .line 1445
    .restart local v0    # "centerx":I
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    iget v5, p0, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int v1, v4, p2

    .line 1449
    .restart local v1    # "centery":I
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v9

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1453
    add-int/2addr v0, p3

    .line 1454
    iget-object v4, p0, Lcom/findit/battle/Objects$FindRect;->mOutputRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    sub-int v5, v0, v2

    sub-int v6, v1, v2

    add-int v7, v0, v2

    add-int v8, v1, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1456
    iput v9, p0, Lcom/findit/battle/Objects$FindRect;->mTimeCount:I

    .line 1457
    iget v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/findit/battle/Objects$FindRect;->mTime:I

    goto/16 :goto_0

    .line 1351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
