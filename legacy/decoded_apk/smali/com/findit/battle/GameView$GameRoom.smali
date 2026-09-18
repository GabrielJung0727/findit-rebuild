.class Lcom/findit/battle/GameView$GameRoom;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameRoom"
.end annotation


# static fields
.field private static final AIFINDTIME_NULL:I = 0x2710

.field private static final DIMALPHA:I = 0x7f

.field private static final END:I = 0x1

.field public static final GAMETIME:I = 0x28

.field private static final IMAGEBMP_TOTALNUM:I = 0x3

.field private static final IMAGENUM_TOTALNUM:I = 0xd

.field public static final IMAGE_BOTTOMPANEL:I = 0x2

.field public static final IMAGE_CHALLENGE:I = 0xc

.field public static final IMAGE_COUNT_NUM1:I = 0x6

.field public static final IMAGE_COUNT_NUM2:I = 0x7

.field public static final IMAGE_COUNT_NUM3:I = 0x8

.field public static final IMAGE_GO:I = 0x9

.field public static final IMAGE_LEFTIMAGE:I = 0x0

.field public static final IMAGE_NUM0:I = 0x0

.field public static final IMAGE_NUM1:I = 0x1

.field public static final IMAGE_NUM2:I = 0x2

.field public static final IMAGE_NUM3:I = 0x3

.field public static final IMAGE_NUM4:I = 0x4

.field public static final IMAGE_NUM5:I = 0x5

.field public static final IMAGE_RIGHTIMAGE:I = 0x1

.field public static final IMAGE_YOULOSE:I = 0xb

.field public static final IMAGE_YOUWIN:I = 0xa

.field public static final MTIME_GAME_0:I = 0x0

.field public static final MTIME_GAME_1:I = 0x1

.field public static final MTIME_GAME_10:I = 0xa

.field public static final MTIME_GAME_13:I = 0xd

.field public static final MTIME_GAME_14:I = 0xe

.field public static final MTIME_GAME_15:I = 0xf

.field public static final MTIME_GAME_16:I = 0x10

.field public static final MTIME_GAME_17:I = 0x11

.field public static final MTIME_GAME_18:I = 0x12

.field public static final MTIME_GAME_2:I = 0x2

.field public static final MTIME_GAME_3:I = 0x3

.field public static final MTIME_GAME_4:I = 0x4

.field public static final MTIME_GAME_5:I = 0x5

.field public static final MTIME_GAME_6:I = 0x6

.field public static final MTIME_GAME_7:I = 0x7

.field public static final MTIME_GAME_8:I = 0x8

.field public static final MTIME_GAME_9:I = 0x9

.field public static final MTIME_GAME_PROGRESS:I = 0xb

.field public static final MTIME_GAME_RESULT:I = 0xc

.field private static final NOTICERECT:I = 0x0

.field private static final NOTICERECT_CHALLENGE:I = 0x5

.field private static final NOTICERECT_GO:I = 0x2

.field private static final NOTICERECT_NUM:I = 0x1

.field private static final NOTICERECT_YOULOSE:I = 0x4

.field private static final NOTICERECT_YOUWIN:I = 0x3

.field private static final NOTICE_IMGRECT_NUM:I = 0x7

.field private static final START:I


# instance fields
.field public mAI:Z

.field public mAIFindTime:I

.field private mAISkillIndexs:[I

.field private mAISkillRate:Lcom/findit/battle/GameView$Rate;

.field public mBaseImg:Z

.field private mBottomPanelY:[I

.field private mCharacterRect:[Landroid/graphics/Rect;

.field public mCharacterSize:I

.field public mCombo:I

.field private mDimPaint:Landroid/graphics/Paint;

.field public mDimTime:I

.field private mExitGameRoom:Z

.field public mGameTime:I

.field public mGameTimeCount:I

.field private mImgBmp:[Landroid/graphics/Bitmap;

.field private mImgBmpHeight:[I

.field private mImgBmpWidth:[I

.field public mImgBmpX:[I

.field public mImgBmpY:[I

.field public mImgIndex:I

.field private mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

.field public mImgRightX:I

.field public mImgSpace:I

.field private mLeftImgX:[I

.field public mLeftNum:I

.field public mLeftPenNum:I

.field public mLeftSkilTimeCount:I

.field public mLeftSkillNum:I

.field private mNoticeAlpha:I

.field public mNoticeImgnum:I

.field private mNoticeRect:[Landroid/graphics/Rect;

.field private mNumRect:[Landroid/graphics/Rect;

.field public mResultPass:Z

.field public mRightCharacterIndex:I

.field private mRightImgCanvas:Landroid/graphics/Canvas;

.field private mRightImgX:[I

.field public mRightNum:I

.field public mRightPenNum:I

.field public mRightSkilTimeCount:I

.field public mRightSkillNum:I

.field private mSkillIconSize:I

.field private mSkillIconSpace:I

.field private mSkillRate:Lcom/findit/battle/GameView$Rate;

.field private mSkillWindowX:I

.field private mSkillWindowY:I

.field public mTempLeftNum:I

.field public mTime:I

.field public mTimeCount:I

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;Landroid/content/Context;II)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "displaywidth"    # I
    .param p4, "displayheight"    # I

    .prologue
    .line 2894
    iput-object p1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2892
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/findit/battle/GameView$GameRoom;->mExitGameRoom:Z

    .line 2895
    const-string v6, ">> GameRoom()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2896
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    .line 2897
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    .line 2898
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    .line 2899
    const/4 v6, 0x3

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    .line 2902
    invoke-direct {p0}, Lcom/findit/battle/GameView$GameRoom;->createImageInstance()V

    .line 2933
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgCanvas:Landroid/graphics/Canvas;

    .line 2934
    new-instance v6, Lcom/findit/battle/GameView$Rate;

    invoke-direct {v6, p1}, Lcom/findit/battle/GameView$Rate;-><init>(Lcom/findit/battle/GameView;)V

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillRate:Lcom/findit/battle/GameView$Rate;

    .line 2935
    new-instance v6, Lcom/findit/battle/GameView$Rate;

    invoke-direct {v6, p1}, Lcom/findit/battle/GameView$Rate;-><init>(Lcom/findit/battle/GameView;)V

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mAISkillRate:Lcom/findit/battle/GameView$Rate;

    .line 2937
    iget v5, p1, Lcom/findit/battle/GameView;->mWidthRate:F

    .line 2938
    .local v5, "widthrate":F
    iget v1, p1, Lcom/findit/battle/GameView;->mHeightRate:F

    .line 2942
    .local v1, "heightrate":F
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    const/4 v9, 0x1

    div-int/lit8 v10, p3, 0x2

    aput v10, v8, v9

    aput v10, v6, v7

    .line 2943
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    const/4 v9, 0x1

    const v10, 0x44338000    # 718.0f

    mul-float/2addr v10, v1

    float-to-int v10, v10

    aput v10, v8, v9

    aput v10, v6, v7

    .line 2944
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    const/4 v7, 0x2

    aput p3, v6, v7

    .line 2945
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    const/4 v7, 0x2

    const/high16 v8, 0x42e00000    # 112.0f

    mul-float/2addr v8, v1

    float-to-int v8, v8

    aput v8, v6, v7

    .line 2947
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 2948
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v7, 0x2

    aput p4, v6, v7

    .line 2951
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    .line 2952
    const/high16 v6, 0x41a80000    # 21.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2953
    .local v2, "left":I
    const/high16 v6, 0x44130000    # 588.0f

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 2954
    .local v4, "top":I
    const/high16 v6, 0x42960000    # 75.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2955
    .local v3, "right":I
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    const/4 v7, 0x2

    aget v0, v6, v7

    .line 2956
    .local v0, "bottom":I
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    .line 2958
    const v6, 0x448ae000    # 1111.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2959
    const v6, 0x4491a000    # 1165.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2960
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    .line 2963
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mCharacterRect:[Landroid/graphics/Rect;

    .line 2964
    const/high16 v6, 0x43340000    # 180.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2965
    const/high16 v6, 0x44130000    # 588.0f

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 2966
    const v6, 0x439d8000    # 315.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2967
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    const/4 v7, 0x2

    aget v0, v6, v7

    .line 2968
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mCharacterRect:[Landroid/graphics/Rect;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    .line 2970
    const v6, 0x44718000    # 966.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2971
    const v6, 0x4489a000    # 1101.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2972
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mCharacterRect:[Landroid/graphics/Rect;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/Rect;

    .line 2973
    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2972
    aput-object v8, v6, v7

    .line 2976
    const/4 v6, 0x6

    new-array v6, v6, [Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    .line 2977
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v7

    .line 2979
    const v6, 0x440cc000    # 563.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2980
    const/high16 v6, 0x43820000    # 260.0f

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 2981
    const v6, 0x44338000    # 718.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2982
    const/high16 v6, 0x43dd0000    # 442.0f

    mul-float/2addr v6, v1

    float-to-int v0, v6

    .line 2983
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    .line 2985
    const v6, 0x43ec8000    # 473.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2986
    const/high16 v6, 0x444a0000    # 808.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2987
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v7, 0x2

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    .line 2989
    const/high16 v6, 0x43bd0000    # 378.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2990
    const v6, 0x4470c000    # 963.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2991
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v7, 0x3

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    .line 2993
    const v6, 0x43978000    # 303.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2994
    const v6, 0x44748000    # 978.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2995
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v7, 0x4

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v8, v6, v7

    .line 2997
    const v6, 0x43978000    # 303.0f

    mul-float/2addr v6, v5

    float-to-int v2, v6

    .line 2998
    const v6, 0x44748000    # 978.0f

    mul-float/2addr v6, v5

    float-to-int v3, v6

    .line 2999
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v7, 0x5

    new-instance v8, Landroid/graphics/Rect;

    .line 3000
    invoke-direct {v8, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2999
    aput-object v8, v6, v7

    .line 3003
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    .line 3004
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    .line 3005
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    .line 3007
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    neg-int v8, v8

    aput v8, v6, v7

    .line 3008
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3009
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/4 v7, 0x0

    aput p3, v6, v7

    .line 3010
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    aput v8, v6, v7

    .line 3011
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/4 v7, 0x0

    aput p4, v6, v7

    .line 3012
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/4 v7, 0x1

    .line 3013
    iget-object v8, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-int v8, p4, v8

    .line 3012
    aput v8, v6, v7

    .line 3016
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mAISkillRate:Lcom/findit/battle/GameView$Rate;

    const/16 v7, 0x9

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7}, Lcom/findit/battle/GameView$Rate;->set([I)V

    .line 3019
    const/4 v6, 0x0

    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgSpace:I

    .line 3020
    div-int/lit8 v6, p3, 0x2

    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mImgRightX:I

    .line 3021
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    .line 3022
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v7, 0x7f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3025
    const/high16 v6, 0x43a20000    # 324.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillWindowX:I

    .line 3026
    const/high16 v6, 0x421c0000    # 39.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillWindowY:I

    .line 3027
    const/high16 v6, 0x42880000    # 68.0f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillIconSize:I

    .line 3028
    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillIconSpace:I

    .line 3095
    invoke-direct {p0}, Lcom/findit/battle/GameView$GameRoom;->initMemberValue()V

    .line 3096
    return-void

    .line 3016
    :array_0
    .array-data 4
        0x3c
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method static synthetic access$0(Lcom/findit/battle/GameView$GameRoom;)[I
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/GameView$GameRoom;)[I
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    return-object v0
.end method

.method static synthetic access$2(Lcom/findit/battle/GameView$GameRoom;)I
    .locals 1

    .prologue
    .line 3545
    invoke-direct {p0}, Lcom/findit/battle/GameView$GameRoom;->getAIFindTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/findit/battle/GameView$GameRoom;)[I
    .locals 1

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mAISkillIndexs:[I

    return-object v0
.end method

.method private createImageInstance()V
    .locals 1

    .prologue
    .line 3401
    const-string v0, ">> createImageInstance()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3402
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 3403
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    .line 3405
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    .line 3406
    const/16 v0, 0xd

    new-array v0, v0, [Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    .line 3408
    :cond_1
    return-void
.end method

.method private getAIFindTime()I
    .locals 3

    .prologue
    .line 3546
    const-string v0, ">> getAIFindTime()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3548
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/16 v1, 0x64

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v0

    return v0
.end method

.method private getAISetSkillIndexs(Lcom/findit/battle/GameView$Rate;)[I
    .locals 10
    .param p1, "rate"    # Lcom/findit/battle/GameView$Rate;

    .prologue
    const/4 v9, 0x4

    .line 3553
    const-string v5, ">> getAISetSkillIndexs()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3554
    new-array v2, v9, [I

    .line 3556
    .local v2, "indexs":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v9, :cond_0

    .line 3573
    return-object v2

    .line 3557
    :cond_0
    iget-object v5, p1, Lcom/findit/battle/GameView$Rate;->mTable:[I

    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v7, 0x0

    const/16 v8, 0x63

    invoke-virtual {v6, v7, v8}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v6

    aget v5, v5, v6

    add-int/lit8 v1, v5, -0x1

    .line 3559
    .local v1, "index":I
    const/4 v4, 0x0

    .line 3560
    .local v4, "overlap":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, v0, :cond_1

    .line 3565
    if-eqz v4, :cond_3

    .line 3566
    add-int/lit8 v0, v0, -0x1

    .line 3556
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3561
    :cond_1
    aget v5, v2, v3

    if-ne v5, v1, :cond_2

    aget v5, v2, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 3562
    const/4 v4, 0x1

    .line 3560
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3568
    :cond_3
    aput v1, v2, v0

    goto :goto_2
.end method

.method private getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "oCon"    # Landroid/content/Context;
    .param p2, "nResId"    # I

    .prologue
    .line 3267
    const-string v1, ">> BitmapDrawable()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3269
    .local v0, "oResources":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3270
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 3269
    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    return-object v1
.end method

.method private initMemberValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3099
    const-string v0, ">> initMemberValue()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3100
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3101
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    .line 3102
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 3103
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    .line 3104
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    .line 3105
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftPenNum:I

    .line 3106
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightPenNum:I

    .line 3107
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    .line 3108
    iput-boolean v2, p0, Lcom/findit/battle/GameView$GameRoom;->mAI:Z

    .line 3109
    iput-boolean v2, p0, Lcom/findit/battle/GameView$GameRoom;->mResultPass:Z

    .line 3110
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mDimTime:I

    .line 3111
    const/4 v0, 0x1

    iput v0, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 3113
    return-void
.end method

.method private setExitGameRoom(Z)V
    .locals 1
    .param p1, "bExitGameRoom"    # Z

    .prologue
    .line 3121
    const-string v0, ">> setExitGameRoom()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3122
    iput-boolean p1, p0, Lcom/findit/battle/GameView$GameRoom;->mExitGameRoom:Z

    .line 3123
    return-void
.end method

.method private setPanelY(I)V
    .locals 8
    .param p1, "y"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3520
    const-string v0, ">> setPanelY()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3522
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    aput p1, v0, v2

    .line 3525
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    aget v0, v0, v2

    add-int v6, p1, v0

    .line 3526
    .local v6, "bottom":I
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 3527
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 3528
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 3529
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 3532
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mCharacterRect:[Landroid/graphics/Rect;

    aget-object v7, v0, v1

    .line 3533
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v0, v0, v1

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 3534
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 3533
    invoke-virtual {v0, v1, p1, v2, v6}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 3536
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mCharacterRect:[Landroid/graphics/Rect;

    aget-object v7, v0, v3

    .line 3537
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v0, v0, v1

    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 3538
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 3537
    invoke-virtual {v0, v1, p1, v2, v6}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 3541
    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillWindowX:I

    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillWindowY:I

    add-int v2, p1, v0

    .line 3542
    const/4 v3, -0x1

    iget v4, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillIconSize:I

    iget v5, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillIconSpace:I

    move-object v0, p0

    .line 3541
    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/GameView$GameRoom;->setSkillIcon(IIIII)V

    .line 3543
    return-void
.end method

.method private setSkillIcon(IIIII)V
    .locals 10
    .param p1, "windowx"    # I
    .param p2, "windowy"    # I
    .param p3, "time"    # I
    .param p4, "size"    # I
    .param p5, "space"    # I

    .prologue
    .line 3578
    const-string v0, ">> setSkillIcon()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3579
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v9, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 3582
    .local v9, "skills":Lcom/findit/battle/Objects$Skills;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x4

    if-lt v7, v0, :cond_1

    .line 3593
    iget-object v0, v9, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    if-eqz v0, :cond_0

    .line 3594
    iget-object v0, v9, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 3595
    iget-object v0, v9, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 3596
    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3595
    invoke-virtual/range {v0 .. v6}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    .line 3597
    iget-object v0, v9, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 3598
    iget-object v1, v9, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/findit/battle/Objects$Skills$Skill;->setActionIconSlot(Landroid/graphics/Rect;)V

    .line 3601
    :cond_0
    return-void

    .line 3583
    :cond_1
    invoke-virtual {v9, v7}, Lcom/findit/battle/Objects$Skills;->getSetSkillIndex(I)I

    move-result v8

    .line 3584
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_2

    .line 3585
    iget-object v0, v9, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v8

    .line 3586
    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 3585
    invoke-virtual/range {v0 .. v6}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    .line 3587
    iget-object v0, v9, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v8

    .line 3588
    iget-object v1, v9, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/findit/battle/Objects$Skills$Skill;->setActionIconSlot(Landroid/graphics/Rect;)V

    .line 3582
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public animate()V
    .locals 18

    .prologue
    .line 3652
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    packed-switch v13, :pswitch_data_0

    .line 4146
    :cond_0
    :goto_0
    return-void

    .line 3655
    :pswitch_0
    const-string v13, "MTIME_GAME_0 \ud2c0\ub9b0 \uadf8\ub9bc \ub098\uc624\uae30"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget v3, v13, Lcom/findit/battle/Objects;->mBaseImagesTotalnum:I

    .line 3657
    .local v3, "baseimagestotalnum":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget v8, v13, Lcom/findit/battle/Objects;->mImagesTotalnum:I

    .line 3659
    .local v8, "imagestotalnum":I
    const/4 v4, 0x1

    .line 3660
    .local v4, "baseimg":Z
    const/4 v9, 0x0

    .line 3661
    .local v9, "index":I
    if-lez v8, :cond_3

    .line 3662
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x0

    add-int v15, v3, v8

    invoke-virtual {v13, v14, v15}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v13

    if-ge v13, v3, :cond_2

    .line 3663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x0

    add-int/lit8 v15, v3, -0x1

    invoke-virtual {v13, v14, v15}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v9

    .line 3671
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v13}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v9, v4}, Lcom/findit/battle/GameView$GameRoom;->loadFindedImage(Landroid/content/Context;IZ)V

    .line 3672
    move-object/from16 v0, p0

    iput v9, v0, Lcom/findit/battle/GameView$GameRoom;->mImgIndex:I

    .line 3673
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/findit/battle/GameView$GameRoom;->mBaseImg:Z

    .line 3677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v13, v13, Lcom/findit/battle/GameView;->mLogin:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 3678
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v13}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->loadInventoryData(Landroid/content/Context;)V

    .line 3680
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    .line 3681
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    .line 3682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    .line 3685
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3686
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    .line 3687
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x1

    aget-object v10, v13, v14

    .line 3688
    .local v10, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    iget v15, v10, Landroid/graphics/Rect;->top:I

    .line 3689
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 3688
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 3690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3692
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$GameRoom;->intiateData()V

    .line 3693
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3694
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3665
    .end local v10    # "rect":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x0

    add-int/lit8 v15, v8, -0x1

    invoke-virtual {v13, v14, v15}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v9

    .line 3666
    const/4 v4, 0x0

    .line 3668
    goto/16 :goto_1

    .line 3669
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x0

    add-int/lit8 v15, v3, -0x1

    invoke-virtual {v13, v14, v15}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v9

    goto/16 :goto_1

    .line 3698
    .end local v3    # "baseimagestotalnum":I
    .end local v4    # "baseimg":Z
    .end local v8    # "imagestotalnum":I
    .end local v9    # "index":I
    :pswitch_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_1:\t//\uac00\uc6b4\ub370\ub85c \uc774\ub3d9 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3699
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    rsub-int/lit8 v13, v13, 0x1e

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3700
    .local v11, "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v13, v13, Lcom/findit/battle/GameView;->mDrawrate:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v7, v13

    .line 3701
    .local v7, "drawrate":I
    if-ge v11, v7, :cond_4

    .line 3702
    move v11, v7

    .line 3704
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    add-int/2addr v15, v11

    aput v15, v13, v14

    .line 3705
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    aget v15, v13, v14

    sub-int/2addr v15, v11

    aput v15, v13, v14

    .line 3707
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 3708
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 3710
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    if-le v13, v14, :cond_0

    .line 3711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    if-ge v13, v14, :cond_0

    .line 3712
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    .line 3713
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    .line 3714
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3715
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3720
    .end local v7    # "drawrate":I
    .end local v11    # "speed":I
    :pswitch_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_2:\t//\ubc14\uae65\ucabd\uc73c\ub85c \uc0b4\uc9dd \uc774\ub3d9 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3721
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3720
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3722
    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3724
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    sub-int/2addr v15, v11

    aput v15, v13, v14

    .line 3725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    aget v15, v13, v14

    add-int/2addr v15, v11

    aput v15, v13, v14

    .line 3727
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 3728
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3729
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3734
    .end local v11    # "speed":I
    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_3:\t//\uc548\ucabd\uc73c\ub85c \uc0b4\uc9dd \uc774\ub3d9 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3735
    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3737
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    add-int/2addr v15, v11

    aput v15, v13, v14

    .line 3738
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    aget v15, v13, v14

    sub-int/2addr v15, v11

    aput v15, v13, v14

    .line 3740
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 3741
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    .line 3742
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    .line 3743
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3744
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3750
    .end local v11    # "speed":I
    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_4:\t\ubc14\ub2e5\ud310\ub12c \ub098\uc624\uae30 //\uc704\ub85c \uc774\ub3d9 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3750
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3752
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    rsub-int/lit8 v13, v13, 0x8

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3753
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v13, v13, Lcom/findit/battle/GameView;->mDrawrate:F

    float-to-int v7, v13

    .line 3754
    .restart local v7    # "drawrate":I
    if-ge v11, v7, :cond_6

    .line 3755
    move v11, v7

    .line 3757
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int/2addr v13, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 3760
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 3761
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 3763
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    if-ge v13, v14, :cond_0

    .line 3764
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 3766
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3767
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3773
    .end local v7    # "drawrate":I
    .end local v11    # "speed":I
    :pswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_5:\t//\uc544\ub798\ucabd\uc73c\ub85c \uc0b4\uc9dd \uc774\ub3d9 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3774
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3773
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v13, v13, Lcom/findit/battle/GameView;->mDrawrate:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3777
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 3781
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 3782
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3783
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3788
    .end local v11    # "speed":I
    :pswitch_6
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_6:\t//\uc704\ucabd\uc73c\ub85c \uc0b4\uc9dd \uc774\ub3d9 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3789
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v13, v13, Lcom/findit/battle/GameView;->mDrawrate:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3791
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int/2addr v13, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 3795
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 3796
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 3800
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3801
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    .line 3802
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x1

    aget-object v10, v13, v14

    .line 3803
    .restart local v10    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    iget v15, v10, Landroid/graphics/Rect;->top:I

    .line 3804
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 3803
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 3806
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3807
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3813
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "speed":I
    :pswitch_7
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_7:\t//\uce74\uc6b4\ud2b8 \ub298\ub9ac\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3814
    const/high16 v13, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3816
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 3817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 3819
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, 0x14

    .line 3820
    .local v2, "alpha":I
    const/16 v13, 0x7f

    if-ge v2, v13, :cond_8

    .line 3821
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3825
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_0

    .line 3826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 3828
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3829
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3823
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v14, 0x7f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 3834
    .end local v2    # "alpha":I
    .end local v11    # "speed":I
    :pswitch_8
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_8:\t//\uce74\uc6b4\ud2b8 \uc904\uc774\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3835
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, 0x14

    .line 3836
    .restart local v2    # "alpha":I
    const/16 v13, 0x7f

    if-ge v2, v13, :cond_9

    .line 3837
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3841
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 3842
    const/high16 v13, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3844
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 3845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 3847
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    .line 3848
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    if-le v13, v14, :cond_0

    .line 3849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    .line 3850
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    .line 3849
    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 3851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    .line 3852
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    .line 3851
    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 3854
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    const/4 v14, 0x6

    if-lt v13, v14, :cond_a

    .line 3855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v14, 0x7f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3857
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3858
    const/4 v13, 0x7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3839
    .end local v11    # "speed":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v14, 0x7f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 3860
    .restart local v11    # "speed":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v14, 0x7f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3862
    const/16 v13, 0x9

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3863
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    .line 3864
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3865
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3872
    .end local v2    # "alpha":I
    .end local v11    # "speed":I
    :pswitch_9
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_9:\t//Go \ub298\ub9ac\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3873
    const/high16 v13, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3875
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 3876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 3878
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_0

    .line 3879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 3881
    const/16 v13, 0xff

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    .line 3882
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3887
    .end local v11    # "speed":I
    :pswitch_a
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_10: //Go \uc0ac\ub77c\uc9c0\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3888
    const/high16 v13, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float v5, v13, v14

    .line 3889
    .local v5, "delay":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    cmpl-float v13, v13, v5

    if-nez v13, :cond_b

    .line 3890
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 3892
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    cmpl-float v13, v13, v5

    if-lez v13, :cond_0

    .line 3893
    const/high16 v13, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3894
    .restart local v11    # "speed":I
    int-to-float v13, v11

    const v14, 0x3feb851f    # 1.84f

    mul-float/2addr v13, v14

    float-to-int v12, v13

    .line 3896
    .local v12, "speed1":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v14, v12

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 3897
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 3898
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v12

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 3899
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 3901
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    const/high16 v14, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    sub-int v2, v13, v14

    .line 3903
    .restart local v2    # "alpha":I
    if-lez v2, :cond_c

    .line 3904
    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    goto/16 :goto_0

    .line 3906
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    .line 3907
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3909
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    .line 3910
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mGameTimeCount:I

    .line 3911
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3912
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3921
    .end local v2    # "alpha":I
    .end local v5    # "delay":F
    .end local v11    # "speed":I
    .end local v12    # "speed1":I
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$GameRoom;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v13

    .line 3922
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/GameView$GameRoom;->mImgSpace:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgRightX:I

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/findit/battle/Objects$FindImage;->animation(FII)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3924
    move-object/from16 v0, p0

    iget v9, v0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 3925
    .restart local v9    # "index":I
    const/4 v13, -0x1

    if-le v9, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v13, v13, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v13, v13, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v9, v13, :cond_d

    .line 3926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v13, v13, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v13, v13, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v13, v13, v9

    .line 3927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Lcom/findit/battle/Objects$Skills$Skill;->animationAction(F)V

    .line 3930
    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    const/16 v14, 0x28

    if-lt v13, v14, :cond_0

    .line 3931
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v13}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v13

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v13}, Lcom/findit/battle/CommonDialog;->getProgressDlg()Landroid/app/Dialog;

    move-result-object v6

    .line 3932
    .local v6, "dlg":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTempLeftNum:I

    if-lez v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    if-lez v13, :cond_f

    .line 3933
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    const/16 v14, 0x28

    if-ge v13, v14, :cond_f

    .line 3935
    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v13

    if-nez v13, :cond_0

    .line 3936
    new-instance v1, Lcom/findit/battle/GameView$ActionRunnable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {v1, v13, v6}, Lcom/findit/battle/GameView$ActionRunnable;-><init>(Lcom/findit/battle/GameView;Landroid/app/Dialog;)V

    .line 3937
    .local v1, "action":Lcom/findit/battle/GameView$ActionRunnable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v13, v1}, Lcom/findit/battle/GameView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 3941
    .end local v1    # "action":Lcom/findit/battle/GameView$ActionRunnable;
    :cond_f
    invoke-virtual {v6}, Landroid/app/Dialog;->cancel()V

    .line 3943
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3944
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    if-ge v13, v14, :cond_11

    const/16 v13, 0xa

    :goto_4
    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3946
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/findit/battle/GameView$GameRoom;->mResultPass:Z

    if-eqz v13, :cond_10

    .line 3947
    const/16 v13, 0xc

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3950
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    .line 3951
    move-object/from16 v0, p0

    iget v14, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    rsub-int/lit8 v14, v14, 0x5

    .line 3952
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    rsub-int/lit8 v15, v15, 0x5

    .line 3953
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    move/from16 v16, v0

    rsub-int/lit8 v16, v16, 0x28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$GameRoom;->mCombo:I

    move/from16 v17, v0

    .line 3950
    invoke-virtual/range {v13 .. v17}, Lcom/findit/battle/GameView$Result;->setGameResultData(IIII)V

    .line 3955
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    .line 3956
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3945
    :cond_11
    const/16 v13, 0xb

    goto :goto_4

    .line 3964
    .end local v6    # "dlg":Landroid/app/Dialog;
    .end local v9    # "index":I
    :pswitch_c
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_RESULT \uacb0\uacfc \uc54c\ub9bc mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3965
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 3966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    add-int/lit8 v14, v14, -0x7

    aget-object v10, v13, v14

    .line 3967
    .restart local v10    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    .line 3968
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 3967
    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 3970
    const/16 v13, 0xfa

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    .line 3971
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3973
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 3974
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3975
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3979
    .end local v10    # "rect":Landroid/graphics/Rect;
    :pswitch_d
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_13: //\ub298\ub9ac\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3980
    const/high16 v13, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 3982
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 3983
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 3985
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, 0x14

    .line 3986
    .restart local v2    # "alpha":I
    const/16 v13, 0x7f

    if-ge v2, v13, :cond_12

    .line 3987
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3991
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3992
    add-int/lit8 v15, v15, -0x7

    aget-object v14, v14, v15

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_0

    .line 3993
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3994
    add-int/lit8 v15, v15, -0x7

    aget-object v14, v14, v15

    .line 3993
    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3995
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3996
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 3989
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v14, 0x7f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5

    .line 4001
    .end local v2    # "alpha":I
    .end local v11    # "speed":I
    :pswitch_e
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_14: //\uc0ac\ub77c\uc9c0\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 4002
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 4003
    const/high16 v13, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 4005
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 4006
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 4007
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 4008
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v11

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 4010
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, 0x14

    .line 4011
    .restart local v2    # "alpha":I
    const/16 v13, 0x7f

    if-ge v2, v13, :cond_13

    .line 4012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4016
    :goto_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    const/high16 v14, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    sub-int v2, v13, v14

    .line 4018
    if-lez v2, :cond_14

    .line 4019
    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    goto/16 :goto_0

    .line 4014
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v14, 0x7f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    .line 4021
    :cond_14
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    .line 4024
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/16 v14, 0x7f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4026
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 4027
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 4034
    .end local v2    # "alpha":I
    .end local v11    # "speed":I
    :pswitch_f
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_15: \ud2c0\ub9b0 \uadf8\ub9bc \uc0ac\ub77c\uc9c0\uae30 //\uc548\ucabd\uc73c\ub85c \uc0b4\uc9dd \uc774\ub3d9\ud558\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4035
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4034
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 4036
    const/high16 v13, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 4038
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    add-int/2addr v15, v11

    aput v15, v13, v14

    .line 4039
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    aget v15, v13, v14

    sub-int/2addr v15, v11

    aput v15, v13, v14

    .line 4040
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$GameRoom;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v13

    neg-int v14, v11

    invoke-virtual {v13, v11, v14}, Lcom/findit/battle/Objects$FindImage;->moveRect(II)V

    .line 4042
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, -0x14

    .line 4043
    .restart local v2    # "alpha":I
    if-lez v2, :cond_15

    .line 4044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4048
    :goto_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 4049
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 4050
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 4046
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    .line 4055
    .end local v2    # "alpha":I
    .end local v11    # "speed":I
    :pswitch_10
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_16: //\ubc14\uae65\ucabd\uc73c\ub85c \uc0ac\ub77c\uc9c0\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4056
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4055
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 4057
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 4059
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    aget v15, v13, v14

    sub-int/2addr v15, v11

    aput v15, v13, v14

    .line 4060
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    aget v15, v13, v14

    add-int/2addr v15, v11

    aput v15, v13, v14

    .line 4061
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$GameRoom;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v13

    neg-int v14, v11

    invoke-virtual {v13, v14, v11}, Lcom/findit/battle/Objects$FindImage;->moveRect(II)V

    .line 4063
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    .line 4064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 4066
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, -0x14

    .line 4067
    .restart local v2    # "alpha":I
    if-lez v2, :cond_17

    .line 4068
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4072
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    if-le v13, v14, :cond_0

    .line 4073
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mLeftImgX:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    .line 4074
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    aput v15, v13, v14

    .line 4075
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 4076
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 4070
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_8

    .line 4082
    .end local v2    # "alpha":I
    .end local v11    # "speed":I
    :pswitch_11
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_17: \ubc14\ub2e5\ud310\ub12c \ub098\uac00\uae30 //\uc704\ucabd\uc73c\ub85c \uc0b4\uc9dd \uc774\ub3d9 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4083
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4082
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 4084
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v13, v13, Lcom/findit/battle/GameView;->mDrawrate:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 4086
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-int/2addr v13, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 4090
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, -0x14

    .line 4091
    .restart local v2    # "alpha":I
    if-lez v2, :cond_18

    .line 4092
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4096
    :goto_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    const/high16 v14, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v15, v15, Lcom/findit/battle/GameView;->mSpeedRate:F

    div-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    .line 4097
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 4098
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 4094
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    .line 4103
    .end local v2    # "alpha":I
    .end local v11    # "speed":I
    :pswitch_12
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "MTIME_GAME_18: //\uc544\ub798\ucabd\uc73c\ub85c \uc0ac\ub77c\uc9c0\uae30 mSpeedRate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 4103
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 4105
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget v14, v14, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 4107
    .restart local v11    # "speed":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v13, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 4111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    add-int/lit8 v2, v13, -0x14

    .line 4112
    .restart local v2    # "alpha":I
    if-lez v2, :cond_19

    .line 4113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4117
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    if-le v13, v14, :cond_0

    .line 4118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 4122
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$GameRoom;->recycleImageInGameRoom()V

    .line 4124
    const/16 v13, 0x2710

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mAIFindTime:I

    .line 4125
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/findit/battle/GameView$GameRoom;->mResultPass:Z

    if-eqz v13, :cond_1a

    .line 4127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x2

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 4128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x3

    invoke-static {v13, v14}, Lcom/findit/battle/GameView;->access$2(Lcom/findit/battle/GameView;I)V

    .line 4129
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/findit/battle/GameView$GameRoom;->mResultPass:Z

    .line 4141
    :goto_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 4142
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    goto/16 :goto_0

    .line 4115
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a

    .line 4133
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v14}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView$Result;->loadImage(Landroid/content/Context;)V

    .line 4134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    const/4 v14, 0x0

    iput v14, v13, Lcom/findit/battle/GameView$Result;->mTime:I

    .line 4135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v14, v13, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    const/16 v15, 0xa

    if-ne v13, v15, :cond_1b

    const/4 v13, 0x0

    :goto_c
    iput v13, v14, Lcom/findit/battle/GameView$Result;->mWinLoseImgnum:I

    .line 4137
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 4138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v14, 0x5

    invoke-static {v13, v14}, Lcom/findit/battle/GameView;->access$2(Lcom/findit/battle/GameView;I)V

    goto :goto_b

    .line 4136
    :cond_1b
    const/4 v13, 0x1

    goto :goto_c

    .line 3652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x5

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 4149
    invoke-virtual {p0}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4220
    :cond_0
    :goto_0
    return-void

    .line 4153
    :cond_1
    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    .line 4154
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4155
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4160
    :cond_2
    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    if-lez v0, :cond_0

    .line 4162
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v0, 0x3

    if-lt v6, v0, :cond_8

    .line 4169
    iget v7, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    .line 4170
    .local v7, "num":I
    if-le v7, v9, :cond_3

    if-gt v7, v5, :cond_3

    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    if-eqz v0, :cond_3

    .line 4171
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4172
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4175
    :cond_3
    iget v7, p0, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    .line 4176
    if-le v7, v9, :cond_4

    if-gt v7, v5, :cond_4

    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    if-eqz v0, :cond_4

    .line 4177
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mNumRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v10

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4178
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4182
    :cond_4
    invoke-virtual {p0}, Lcom/findit/battle/GameView$GameRoom;->getFindImage()Lcom/findit/battle/Objects$FindImage;

    move-result-object v0

    iget v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgSpace:I

    iget v3, p0, Lcom/findit/battle/GameView$GameRoom;->mImgRightX:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/findit/battle/Objects$FindImage;->doDraw(Landroid/graphics/Canvas;II)V

    .line 4188
    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mDimTime:I

    if-le v0, v9, :cond_5

    .line 4189
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    aget v0, v0, v8

    int-to-float v3, v0

    .line 4190
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    aget v0, v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 4189
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4192
    :cond_5
    iget v7, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 4193
    const/4 v0, 0x6

    if-lt v7, v0, :cond_6

    const/16 v0, 0xd

    if-ge v7, v0, :cond_6

    .line 4194
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    if-eqz v0, :cond_6

    .line 4196
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgX:[I

    aget v0, v0, v8

    int-to-float v3, v0

    .line 4197
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    aget v0, v0, v10

    int-to-float v4, v0

    iget-object v5, p0, Lcom/findit/battle/GameView$GameRoom;->mDimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 4196
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4200
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    if-eqz v0, :cond_6

    .line 4201
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4202
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 4203
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v0, v0, v7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4208
    :cond_6
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v0, v0, v8

    invoke-virtual {v0, p1}, Lcom/findit/battle/Objects$Character;->doDraw(Landroid/graphics/Canvas;)V

    .line 4210
    iget-boolean v0, p0, Lcom/findit/battle/GameView$GameRoom;->mResultPass:Z

    if-nez v0, :cond_7

    .line 4211
    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    if-le v0, v9, :cond_7

    .line 4212
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v0, v0, v1

    .line 4213
    invoke-virtual {v0, p1}, Lcom/findit/battle/Objects$Character;->doDraw(Landroid/graphics/Canvas;)V

    .line 4217
    :cond_7
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    .line 4218
    iget v2, p0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 4217
    invoke-virtual {v0, p1, v1, v2}, Lcom/findit/battle/Objects$Skills;->doActionDraw(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0

    .line 4163
    .end local v7    # "num":I
    :cond_8
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    if-eqz v0, :cond_9

    .line 4164
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpX:[I

    aget v2, v2, v6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpY:[I

    aget v3, v3, v6

    int-to-float v3, v3

    .line 4165
    const/4 v4, 0x0

    .line 4164
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4162
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method public exitGameRoom()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3126
    const-string v0, ">> exitGameRoom()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/findit/battle/GameView$GameRoom;->setExitGameRoom(Z)V

    .line 3128
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iput v1, v0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    .line 3129
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    .line 3130
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mTimeCount:I

    .line 3133
    invoke-virtual {p0}, Lcom/findit/battle/GameView$GameRoom;->recycleImageInGameRoom()V

    .line 3135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/findit/battle/GameView$GameRoom;->setExitGameRoom(Z)V

    .line 3136
    return-void
.end method

.method public getFindImage()Lcom/findit/battle/Objects$FindImage;
    .locals 2

    .prologue
    .line 3474
    iget-boolean v0, p0, Lcom/findit/battle/GameView$GameRoom;->mBaseImg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mImgIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 3475
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mImgIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLeftSkillNum()I
    .locals 2

    .prologue
    .line 3352
    const-string v0, ">> getLeftSkillNum()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3353
    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    :goto_0
    return v0

    .line 3354
    :cond_0
    iget v0, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    add-int/lit16 v0, v0, -0x2710

    goto :goto_0
.end method

.method public intiateData()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3411
    const-string v1, ">> intiateData()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3412
    invoke-virtual {p0}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3413
    const-string v1, "-- intiateData() exitGameRoom"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3471
    :goto_0
    return-void

    .line 3418
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v1, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    .line 3420
    .local v0, "objects":Lcom/findit/battle/Objects;
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->mSkillRate:Lcom/findit/battle/GameView$Rate;

    new-array v2, v8, [I

    const/16 v3, 0x64

    aput v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/findit/battle/GameView$Rate;->set([I)V

    .line 3422
    iget-object v1, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v1, v4}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 3424
    iget-object v1, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v1}, Lcom/findit/battle/Objects$Skills;->clearSetSkillIndexTable()V

    .line 3431
    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    if-ne v1, v8, :cond_2

    .line 3433
    iput-boolean v7, p0, Lcom/findit/battle/GameView$GameRoom;->mAI:Z

    .line 3434
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->mAISkillRate:Lcom/findit/battle/GameView$Rate;

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Lcom/findit/battle/GameView$Rate;->set([I)V

    .line 3435
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->mAISkillRate:Lcom/findit/battle/GameView$Rate;

    invoke-direct {p0, v1}, Lcom/findit/battle/GameView$GameRoom;->getAISetSkillIndexs(Lcom/findit/battle/GameView$Rate;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->mAISkillIndexs:[I

    .line 3436
    invoke-direct {p0}, Lcom/findit/battle/GameView$GameRoom;->getAIFindTime()I

    move-result v1

    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mAIFindTime:I

    .line 3442
    :goto_1
    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    .line 3443
    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mTempLeftNum:I

    .line 3444
    iput v6, p0, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    .line 3445
    iput v5, p0, Lcom/findit/battle/GameView$GameRoom;->mCombo:I

    .line 3446
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    .line 3447
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mNoticeImgnum:I

    .line 3449
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkillNum:I

    .line 3450
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 3451
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftSkilTimeCount:I

    .line 3452
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    .line 3453
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftPenNum:I

    .line 3454
    iput v4, p0, Lcom/findit/battle/GameView$GameRoom;->mRightPenNum:I

    .line 3456
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iput-boolean v5, v1, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    .line 3458
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iput-boolean v5, v1, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 3461
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/findit/battle/Objects;->setCharactersImgnum(I)V

    .line 3462
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, v1, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 3465
    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    if-lez v1, :cond_1

    .line 3466
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, v1, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget v2, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 3469
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->mBottomPanelY:[I

    aget v1, v1, v5

    invoke-direct {p0, v1}, Lcom/findit/battle/GameView$GameRoom;->setPanelY(I)V

    .line 3470
    iget-object v1, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v1}, Lcom/findit/battle/Objects$Skills;->initiateData()V

    goto/16 :goto_0

    .line 3439
    :cond_2
    iput-boolean v5, p0, Lcom/findit/battle/GameView$GameRoom;->mAI:Z

    goto :goto_1

    .line 3434
    :array_0
    .array-data 4
        0x3c
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public isExitGameRoom()Z
    .locals 1

    .prologue
    .line 3117
    iget-boolean v0, p0, Lcom/findit/battle/GameView$GameRoom;->mExitGameRoom:Z

    return v0
.end method

.method public loadFindedImage(Landroid/content/Context;IZ)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imgnum"    # I
    .param p3, "baseimg"    # Z

    .prologue
    .line 3274
    const-string v9, ">> loadFindedImage()"

    invoke-static {v9}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {p0}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3276
    const-string v9, "-- loadFindedImage() exitGameRoom"

    invoke-static {v9}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3349
    :goto_0
    return-void

    .line 3280
    :cond_0
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    const/4 v10, 0x1

    aget v8, v9, v10

    .line 3281
    .local v8, "width":I
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    const/4 v10, 0x1

    aget v2, v9, v10

    .line 3282
    .local v2, "height":I
    if-eqz p3, :cond_3

    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v9, v9, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v9, v9, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v4, v9, p2

    .line 3286
    .local v4, "image":Lcom/findit/battle/Objects$FindImage;
    :goto_1
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3287
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 3288
    const/4 v1, 0x0

    .line 3289
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v9, v4, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 3290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 3291
    iget v10, v4, Lcom/findit/battle/Objects$FindImage;->mImgId:I

    .line 3290
    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3295
    :goto_2
    if-nez v1, :cond_1

    .line 3297
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v9, v9, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v9, v9, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    iget-object v10, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v11, 0x0

    .line 3298
    iget-object v12, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v12, v12, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget v12, v12, Lcom/findit/battle/Objects;->mBaseImagesTotalnum:I

    add-int/lit8 v12, v12, -0x1

    .line 3297
    invoke-virtual {v10, v11, v12}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v10

    aget-object v4, v9, v10

    .line 3299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 3300
    iget v10, v4, Lcom/findit/battle/Objects$FindImage;->mImgId:I

    .line 3299
    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3303
    :cond_1
    if-eqz v1, :cond_2

    .line 3304
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    .line 3305
    const/4 v11, 0x1

    .line 3304
    invoke-static {v1, v8, v2, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    aput-object v11, v9, v10

    .line 3306
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3309
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgCanvas:Landroid/graphics/Canvas;

    .line 3310
    iget-object v10, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3314
    :cond_2
    invoke-virtual {v4}, Lcom/findit/battle/Objects$FindImage;->initiateRect()V

    .line 3315
    iget v9, v4, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    new-array v6, v9, [I

    .line 3316
    .local v6, "indexs":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    const/4 v9, 0x5

    if-lt v3, v9, :cond_5

    .line 3347
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v9, v9, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    move/from16 v0, p2

    iput v0, v9, Lcom/findit/battle/GameView$Result;->mAdImgnum:I

    .line 3348
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v9, v9, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    move/from16 v0, p3

    iput-boolean v0, v9, Lcom/findit/battle/GameView$Result;->mAdBaseimg:Z

    goto/16 :goto_0

    .line 3283
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "i":I
    .end local v4    # "image":Lcom/findit/battle/Objects$FindImage;
    .end local v6    # "indexs":[I
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v9, v9, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v9, v9, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v4, v9, p2

    goto :goto_1

    .line 3293
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "image":Lcom/findit/battle/Objects$FindImage;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    iget-object v9, v4, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 3317
    .restart local v3    # "i":I
    .restart local v6    # "indexs":[I
    :cond_5
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v10, 0x0

    iget v11, v4, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Lcom/findit/battle/GameView;->randomNumber(II)I

    move-result v5

    .line 3318
    .local v5, "index":I
    iget-object v9, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v9, v9, v5

    if-eqz v9, :cond_6

    .line 3319
    iget-object v9, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/findit/battle/Objects$FindRect;->mShow:Z

    if-eqz v9, :cond_7

    .line 3320
    add-int/lit8 v3, v3, -0x1

    .line 3316
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3322
    :cond_7
    invoke-virtual {v4, v5, v8, v2}, Lcom/findit/battle/Objects$FindImage;->setRect(III)V

    .line 3324
    iget-object v9, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/findit/battle/Objects$FindRect;->mImgPath:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 3326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 3327
    iget-object v10, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v10, v10, v5

    iget v10, v10, Lcom/findit/battle/Objects$FindRect;->mImgId:I

    .line 3325
    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3332
    :goto_5
    if-eqz v1, :cond_8

    .line 3334
    iget-object v9, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v9, v9, v5

    iget v9, v9, Lcom/findit/battle/Objects$FindRect;->mRateWidth:I

    .line 3335
    iget-object v10, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v10, v10, v5

    iget v10, v10, Lcom/findit/battle/Objects$FindRect;->mRateHeight:I

    const/4 v11, 0x1

    .line 3333
    invoke-static {v1, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3336
    iget-object v9, p0, Lcom/findit/battle/GameView$GameRoom;->mRightImgCanvas:Landroid/graphics/Canvas;

    .line 3337
    iget-object v10, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v10, v10, v5

    iget v10, v10, Lcom/findit/battle/Objects$FindRect;->mRateX:I

    int-to-float v10, v10

    .line 3338
    iget-object v11, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v11, v11, v5

    iget v11, v11, Lcom/findit/battle/Objects$FindRect;->mRateY:I

    int-to-float v11, v11

    const/4 v12, 0x0

    .line 3336
    invoke-virtual {v9, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3339
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3342
    :cond_8
    aput v5, v6, v3

    goto :goto_4

    .line 3330
    :cond_9
    iget-object v9, v4, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v9, v9, v5

    iget-object v9, v9, Lcom/findit/battle/Objects$FindRect;->mImgPath:Ljava/lang/String;

    .line 3329
    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_5
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3139
    const-string v18, ">> loadImage()"

    invoke-static/range {v18 .. v18}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3140
    invoke-virtual/range {p0 .. p0}, Lcom/findit/battle/GameView$GameRoom;->isExitGameRoom()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3141
    const-string v18, "-- loadImage() exitGameRoom"

    invoke-static/range {v18 .. v18}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3264
    :goto_0
    return-void

    .line 3145
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/findit/battle/GameView;->mWidthRate:F

    move/from16 v17, v0

    .line 3148
    .local v17, "widthrate":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v10, v18, v19

    .line 3149
    .local v10, "imgwidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v9, v18, v19

    .line 3150
    .local v9, "imgheight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    .line 3151
    sget-object v20, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 3150
    move-object/from16 v0, v20

    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mRightImgCanvas:Landroid/graphics/Canvas;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpWidth:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v5, v18, v19

    .line 3156
    .local v5, "bottomwidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmpHeight:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v4, v18, v19

    .line 3157
    .local v4, "bottomheight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    .line 3158
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3157
    move-object/from16 v0, v20

    invoke-static {v5, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3159
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 3160
    .local v6, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3163
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 3164
    const v19, 0x7f020160

    .line 3163
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3165
    .local v8, "img":Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3166
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020167

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3170
    const/high16 v18, 0x42960000    # 75.0f

    mul-float v18, v18, v17

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x432b0000    # 171.0f

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3172
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3174
    const v18, 0x4491a000    # 1165.0f

    mul-float v18, v18, v17

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    .line 3175
    const v20, 0x449da000    # 1261.0f

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 3174
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3176
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3179
    move-object/from16 v0, p0

    iget v14, v0, Lcom/findit/battle/GameView$GameRoom;->mSkillIconSize:I

    .line 3180
    .local v14, "size":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/GameView$GameRoom;->mSkillIconSpace:I

    .line 3181
    .local v15, "space":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$GameRoom;->mSkillWindowX:I

    move/from16 v18, v0

    add-int v11, v18, v15

    .line 3182
    .local v11, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$GameRoom;->mSkillWindowY:I

    move/from16 v16, v0

    .line 3198
    .local v16, "top":I
    add-int v3, v16, v14

    .line 3199
    .local v3, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02015f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v12, v0

    .line 3202
    .local v12, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-lt v7, v12, :cond_1

    .line 3238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 3239
    const v20, 0x7f020161

    .line 3238
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    .line 3241
    const v20, 0x7f020162

    .line 3240
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    .line 3243
    const v20, 0x7f020163

    .line 3242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    .line 3245
    const v20, 0x7f020164

    .line 3244
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    .line 3247
    const v20, 0x7f020165

    .line 3246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    .line 3249
    const v20, 0x7f020166

    .line 3248
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    .line 3251
    const v20, 0x7f020151

    .line 3250
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    .line 3253
    const v20, 0x7f020152

    .line 3252
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    .line 3255
    const v20, 0x7f020153

    .line 3254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    .line 3257
    const v20, 0x7f020150

    .line 3256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    .line 3259
    const v20, 0x7f020156

    .line 3258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    .line 3261
    const v20, 0x7f020155

    .line 3260
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    .line 3262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    .line 3263
    const v20, 0x7f020154

    .line 3262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/findit/battle/GameView$GameRoom;->getBitmapDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v20

    aput-object v20, v18, v19

    goto/16 :goto_0

    .line 3203
    :cond_1
    add-int v13, v11, v14

    .line 3205
    .local v13, "right":I
    move/from16 v0, v16

    invoke-virtual {v8, v11, v0, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3206
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3208
    add-int v11, v13, v15

    .line 3202
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1
.end method

.method public loadInventoryData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3358
    const-string v1, ">> loadInventoryData()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3359
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/findit/battle/DBAdapter;->fetchCharacters(J)Landroid/database/Cursor;

    move-result-object v0

    .line 3360
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 3370
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3372
    :cond_0
    return-void
.end method

.method public recycleImageInGameRoom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3375
    const-string v2, ">> recycleImageInGameRoom()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 3376
    const/4 v1, 0x0

    .line 3377
    .local v1, "length":I
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    array-length v1, v2

    .line 3378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 3387
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v1, v2

    .line 3388
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    .line 3398
    return-void

    .line 3379
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 3380
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++ recycleImageInGameRoom() mImgBmp["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3381
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3382
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3383
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aput-object v4, v2, v0

    .line 3378
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3389
    :cond_2
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3390
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "++ recycleImageInGameRoom() mImgPng["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3391
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3392
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3393
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3395
    :cond_3
    iget-object v2, p0, Lcom/findit/battle/GameView$GameRoom;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aput-object v4, v2, v0

    .line 3388
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public sendFindData(II)V
    .locals 10
    .param p1, "skillindex"    # I
    .param p2, "penindex"    # I

    .prologue
    const/16 v7, 0xa

    .line 3604
    const-string v5, ">> sendFindData()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3605
    iget-object v5, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v0, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 3606
    .local v0, "index":I
    const/4 v5, -0x1

    if-le v0, v5, :cond_0

    .line 3609
    if-gez p1, :cond_1

    .line 3610
    const-string v4, "99"

    .line 3618
    .local v4, "skill":Ljava/lang/String;
    :goto_0
    if-gez p2, :cond_3

    .line 3619
    const-string v2, "99"

    .line 3625
    .local v2, "pen":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "|106|"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3626
    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v6, v6, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/findit/battle/GameView$GameRoom;->mLeftNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3627
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3625
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3628
    .local v3, "sendmsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/findit/battle/GameView;->getLengthText(I)Ljava/lang/String;

    move-result-object v1

    .line 3632
    .local v1, "length":Ljava/lang/String;
    new-instance v5, Lcom/findit/battle/GameView$doSendSocketMsgTask;

    iget-object v6, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/findit/battle/GameView$doSendSocketMsgTask;-><init>(Lcom/findit/battle/GameView;Lcom/findit/battle/GameView$doSendSocketMsgTask;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/findit/battle/GameView$doSendSocketMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3636
    .end local v1    # "length":Ljava/lang/String;
    .end local v2    # "pen":Ljava/lang/String;
    .end local v3    # "sendmsg":Ljava/lang/String;
    .end local v4    # "skill":Ljava/lang/String;
    :cond_0
    return-void

    .line 3611
    :cond_1
    if-ge p1, v7, :cond_2

    .line 3612
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "skill":Ljava/lang/String;
    goto :goto_0

    .line 3614
    .end local v4    # "skill":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "skill":Ljava/lang/String;
    goto/16 :goto_0

    .line 3620
    :cond_3
    if-ge p2, v7, :cond_4

    .line 3621
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pen":Ljava/lang/String;
    goto/16 :goto_1

    .line 3623
    .end local v2    # "pen":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pen":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public setRightCharacter(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3479
    const-string v0, ">> setRightCharacter()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3480
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3481
    iput v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 3482
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v0, v0, v1

    iput-object p1, v0, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    .line 3488
    :goto_0
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iput-boolean v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 3489
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget v1, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v0, v0, v1

    .line 3490
    invoke-virtual {v0, v2}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 3491
    return-void

    .line 3484
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 3485
    iget-object v0, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v1, 0x4

    iput v1, v0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    goto :goto_0
.end method

.method public spendItem(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "quantity"    # I

    .prologue
    .line 3639
    const-string v1, ">> spendItem()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3640
    iget-object v1, p0, Lcom/findit/battle/GameView$GameRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v1, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 3641
    .local v0, "items":Lcom/findit/battle/Items;
    iget-object v1, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, p1

    iget v2, v1, Lcom/findit/battle/Items$Item;->mNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/findit/battle/Items$Item;->mNum:I

    const/4 v1, 0x1

    if-ge v2, v1, :cond_0

    .line 3642
    invoke-virtual {v0, p1}, Lcom/findit/battle/Items;->destroyItem(I)V

    .line 3643
    invoke-virtual {v0}, Lcom/findit/battle/Items;->setSetTable()V

    .line 3645
    :cond_0
    return-void
.end method
