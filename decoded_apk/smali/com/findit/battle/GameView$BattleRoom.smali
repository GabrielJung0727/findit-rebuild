.class Lcom/findit/battle/GameView$BattleRoom;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BattleRoom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/GameView$BattleRoom$UserAdapter;
    }
.end annotation


# static fields
.field public static final ANIM_NOT_NULL:I = -0x2

.field private static final IMAGETOTALNUM:I = 0x2

.field public static final IMAGE_SKILLWINDOW:I = 0x1

.field public static final IMAGE_TITLE:I = 0x0

.field public static final INACTIVE_ALPHA:I = 0x96

.field public static final MTIME_BATTLEROOM_1:I = 0x1

.field public static final MTIME_BATTLEROOM_3:I = 0x3

.field public static final MTIME_BATTLEROOM_5:I = 0x5

.field public static final MTIME_BATTLEROOM_ANIM_ENTER_MAINMENU:I = 0x6

.field public static final MTIME_BATTLEROOM_ANIM_START_APPEAR:I = 0x2

.field public static final MTIME_BATTLEROOM_ANIM_START_APPEAR_RIGHTUSER:I = 0x4

.field public static final MTIME_BATTLEROOM_ANIM_START_FADE:I = 0x0

.field public static final SINGLETIME:I = 0x64

.field private static final SKILLSETWINDOW_TOTALNUM:I = 0x5

.field public static final SKILLWINDOW_TOTALNUM:I = 0x8


# instance fields
.field private mAleadyRightUserReady:Z

.field public mExit:Z

.field public mFriendName:Ljava/lang/String;

.field public mGameStart:Z

.field private mImgBmp:[Landroid/graphics/Bitmap;

.field public mImgHeight:[I

.field public mImgWidth:[I

.field public mImgX:[I

.field public mImgY:[I

.field private mLeftNamePaint:Landroid/graphics/Paint;

.field public mLeftNameX:I

.field public mLeftReady:Z

.field private mLeftRect:Landroid/graphics/Rect;

.field public mLeftRightNameY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRightNamePaint:Landroid/graphics/Paint;

.field public mRightNameX:I

.field public mRightReady:Z

.field private mRightRect:Landroid/graphics/Rect;

.field public mSingleTimeCount:I

.field public mSkillIndex:I

.field public mSkillSetSlotY:I

.field public mSkillSlotSize:I

.field public mSkillSlotX:I

.field public mSkillSlotY:I

.field public mStandardX:[I

.field public mStandardY:[I

.field public mTime:I

.field public mTimeCount:I

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;II)V
    .locals 19
    .param p2, "displaywidth"    # I
    .param p3, "displayheight"    # I

    .prologue
    .line 1884
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1882
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mAleadyRightUserReady:Z

    .line 1885
    const-string v2, ">> BattleRoom()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1886
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    .line 1887
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgX:[I

    .line 1888
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    .line 1889
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgWidth:[I

    .line 1890
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgHeight:[I

    .line 1891
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mStandardX:[I

    .line 1892
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    .line 1893
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    .line 1894
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 1895
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    .line 1896
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillIndex:I

    .line 1897
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 1898
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    .line 1899
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 1900
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mGameStart:Z

    .line 1901
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mExit:Z

    .line 1904
    move-object/from16 v0, p1

    iget v0, v0, Lcom/findit/battle/GameView;->mWidthRate:F

    move/from16 v18, v0

    .line 1905
    .local v18, "widthrate":F
    move-object/from16 v0, p1

    iget v10, v0, Lcom/findit/battle/GameView;->mHeightRate:F

    .line 1907
    .local v10, "heightrate":F
    const/high16 v2, 0x41a80000    # 21.0f

    mul-float v2, v2, v18

    float-to-int v13, v2

    .line 1908
    .local v13, "space":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgWidth:[I

    const/4 v3, 0x0

    const v6, 0x442c4000    # 689.0f

    mul-float v6, v6, v18

    float-to-int v6, v6

    aput v6, v2, v3

    .line 1911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgHeight:[I

    const/4 v3, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    aput v6, v2, v3

    .line 1913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgX:[I

    const/4 v3, 0x0

    const/high16 v6, 0x41f00000    # 30.0f

    mul-float v6, v6, v18

    float-to-int v6, v6

    aput v6, v2, v3

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    const/4 v3, 0x0

    aput v13, v2, v3

    .line 1916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    const/4 v3, 0x0

    aput v13, v2, v3

    .line 1931
    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v10

    float-to-int v5, v2

    .line 1932
    .local v5, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgWidth:[I

    const/4 v3, 0x1

    aput p2, v2, v3

    .line 1933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgHeight:[I

    const/4 v3, 0x1

    const/high16 v6, 0x43960000    # 300.0f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    aput v6, v2, v3

    .line 1934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgX:[I

    const/4 v3, 0x1

    const/4 v6, 0x0

    aput v6, v2, v3

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    const/4 v3, 0x1

    aput v5, v2, v3

    .line 1936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    const/4 v3, 0x1

    aput v5, v2, v3

    .line 1938
    const/high16 v2, 0x433b0000    # 187.0f

    mul-float v2, v2, v18

    float-to-int v4, v2

    .line 1939
    .local v4, "x":I
    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotX:I

    .line 1940
    const/high16 v2, 0x42440000    # 49.0f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSetSlotY:I

    .line 1941
    const/high16 v2, 0x43320000    # 178.0f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotY:I

    .line 1942
    const/high16 v2, 0x42e00000    # 112.0f

    mul-float v2, v2, v18

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotSize:I

    .line 1963
    move-object/from16 v0, p0

    iget v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotY:I

    add-int/2addr v5, v2

    .line 1964
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1965
    const/4 v7, -0x1

    .line 1964
    invoke-virtual/range {v2 .. v7}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    .line 1966
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v2, v2, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1967
    const/4 v7, -0x1

    .line 1966
    invoke-virtual/range {v2 .. v7}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    .line 1982
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v2, v2, v18

    float-to-int v0, v2

    move/from16 v17, v0

    .line 1983
    .local v17, "width":I
    const/high16 v2, 0x43fa0000    # 500.0f

    mul-float/2addr v2, v10

    float-to-int v9, v2

    .line 1984
    .local v9, "height":I
    const/high16 v2, 0x42a60000    # 83.0f

    mul-float v2, v2, v18

    float-to-int v11, v2

    .line 1985
    .local v11, "left":I
    add-int v12, v11, v17

    .line 1986
    .local v12, "right":I
    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v2, v10

    float-to-int v15, v2

    .line 1987
    .local v15, "top":I
    add-int v8, v15, v9

    .line 1988
    .local v8, "bottom":I
    div-int/lit8 v16, v17, 0x2

    .line 1989
    .local v16, "widhthalf":I
    add-int v2, v11, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNameX:I

    .line 1990
    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v2, v10

    float-to-int v2, v2

    add-int/2addr v2, v15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftRightNameY:I

    .line 1991
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v11, v15, v12, v8}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 1993
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v15, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftRect:Landroid/graphics/Rect;

    .line 1995
    const v2, 0x44514000    # 837.0f

    mul-float v2, v2, v18

    float-to-int v11, v2

    .line 1996
    add-int v12, v11, v17

    .line 1997
    add-int v2, v11, v16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightNameX:I

    .line 1998
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v11, v15, v12, v8}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 2000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v11, v15, v12, v8}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 2002
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v15, v12, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightRect:Landroid/graphics/Rect;

    .line 2004
    const/high16 v2, 0x41700000    # 15.0f

    move-object/from16 v0, p1

    iget v3, v0, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float v14, v2, v3

    .line 2005
    .local v14, "textsize":F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    .line 2006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2010
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2014
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/GameView$BattleRoom;)V
    .locals 0

    .prologue
    .line 2286
    invoke-direct {p0}, Lcom/findit/battle/GameView$BattleRoom;->setSkillSlot()V

    return-void
.end method

.method static synthetic access$1(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4(Lcom/findit/battle/GameView$BattleRoom;I)V
    .locals 0

    .prologue
    .line 2338
    invoke-direct {p0, p1}, Lcom/findit/battle/GameView$BattleRoom;->setSkillWindowY(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6(Lcom/findit/battle/GameView$BattleRoom;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private setSkillSlot()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, -0x1

    .line 2287
    const-string v0, ">> setSkillSlot()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2288
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v10, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 2299
    .local v10, "skills":Lcom/findit/battle/Objects$Skills;
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgX:[I

    aget v0, v0, v11

    iget v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotX:I

    add-int v1, v0, v2

    .line 2300
    .local v1, "x":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, v10, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v7, v0, :cond_1

    .line 2314
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v9, v0, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 2315
    .local v9, "item":Lcom/findit/battle/Items;
    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lcom/findit/battle/Items;->getSetIndex(I)I

    move-result v8

    .line 2316
    .local v8, "index":I
    if-le v8, v3, :cond_3

    iget-object v0, v9, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v8

    iget v0, v0, Lcom/findit/battle/Items$Item;->mNum:I

    if-lez v0, :cond_3

    .line 2318
    iget-object v0, v9, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v0, v0, v8

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    iget-object v2, v9, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v8

    iget v2, v2, Lcom/findit/battle/Items$Item;->mPower:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 2321
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2322
    iget-object v2, v10, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    iget-object v4, v9, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v4, v4, v8

    iget v4, v4, Lcom/findit/battle/Items$Item;->mPower:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lcom/findit/battle/Objects$Skills$Skill;->set(Lcom/findit/battle/Objects$Skills$Skill;)V

    .line 2323
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    const/4 v2, 0x4

    iput v2, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2324
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    iput v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 2325
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    iput-boolean v11, v0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 2326
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v2, v2, v11

    .line 2327
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSetSlotY:I

    add-int/2addr v2, v4

    .line 2328
    iget v4, v10, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    iget v5, v10, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 2329
    iget v6, v10, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 2326
    invoke-virtual/range {v0 .. v6}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    .line 2335
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v0}, Lcom/findit/battle/Objects$Skills;->initiateShowData()V

    .line 2336
    return-void

    .line 2301
    .end local v8    # "index":I
    .end local v9    # "item":Lcom/findit/battle/Items;
    :cond_1
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v7

    iget v0, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-le v0, v3, :cond_2

    .line 2302
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v2, v2, v11

    .line 2303
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSetSlotY:I

    add-int/2addr v2, v4

    .line 2304
    iget v4, v10, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    iget v5, v10, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 2305
    iget v6, v10, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 2302
    invoke-virtual/range {v0 .. v6}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    .line 2300
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2307
    :cond_2
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v2, v2, v11

    .line 2308
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotY:I

    add-int/2addr v2, v4

    .line 2309
    iget v4, v10, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    iget v5, v10, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 2310
    iget v6, v10, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 2307
    invoke-virtual/range {v0 .. v6}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIIII)V

    goto :goto_2

    .line 2333
    .restart local v8    # "index":I
    .restart local v9    # "item":Lcom/findit/battle/Items;
    :cond_3
    iget-object v0, v10, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    iput v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    goto :goto_1
.end method

.method private setSkillWindowY(I)V
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 2339
    const-string v0, ">> setSkillWindowY()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2340
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 2341
    iget-object v0, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v0, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v1, p0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSetSlotY:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotY:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/Objects$Skills;->setY(II)V

    .line 2342
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/16 v7, 0xf5

    const/4 v8, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 2349
    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    packed-switch v5, :pswitch_data_0

    .line 2605
    :cond_0
    :goto_0
    return-void

    .line 2353
    :pswitch_0
    invoke-direct {p0}, Lcom/findit/battle/GameView$BattleRoom;->setSkillSlot()V

    .line 2354
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v6, v6, v10

    aput v6, v5, v10

    .line 2355
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v5, v5, v8

    invoke-direct {p0, v5}, Lcom/findit/battle/GameView$BattleRoom;->setSkillWindowY(I)V

    .line 2356
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2357
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v5, v7}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 2358
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v5, v7}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 2359
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    invoke-virtual {v5, v8}, Lcom/findit/battle/Objects;->setCharactersImgnum(I)V

    .line 2361
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2362
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v10

    invoke-virtual {v5, v7}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2364
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2365
    .local v2, "index":I
    if-le v2, v11, :cond_1

    .line 2366
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2367
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v7}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2370
    :cond_1
    iput v11, p0, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 2371
    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 2372
    iput v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    goto :goto_0

    .line 2377
    .end local v2    # "index":I
    :pswitch_1
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v5, v5, Lcom/findit/battle/GameView;->mDrawrate:F

    iget v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v6, v6, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 2378
    .local v4, "speed":I
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v6, v5, v10

    sub-int/2addr v6, v4

    aput v6, v5, v10

    .line 2379
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v5, v5, v8

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/findit/battle/GameView$BattleRoom;->setSkillWindowY(I)V

    .line 2381
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v5, v5, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v5, v5, v10

    iget-object v5, v5, Lcom/findit/battle/Objects$Button;->mPaint:Landroid/graphics/Paint;

    .line 2382
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    iget-object v7, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v7, v7, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2381
    sub-int v0, v5, v6

    .line 2384
    .local v0, "alpha":I
    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    if-ne v5, v9, :cond_2

    .line 2385
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 2387
    :cond_2
    if-lez v0, :cond_3

    .line 2388
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2389
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 2390
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 2392
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2393
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v10

    .line 2394
    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2396
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2397
    .restart local v2    # "index":I
    if-le v2, v11, :cond_0

    .line 2398
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2399
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    goto/16 :goto_0

    .line 2402
    .end local v2    # "index":I
    :cond_3
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2403
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 2404
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 2406
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2407
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v10

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2409
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2410
    .restart local v2    # "index":I
    if-le v2, v11, :cond_4

    .line 2411
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2412
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2416
    :cond_4
    iget-boolean v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mGameStart:Z

    if-eqz v5, :cond_5

    .line 2417
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/findit/battle/GameView;->access$2(Lcom/findit/battle/GameView;I)V

    .line 2423
    :goto_1
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v6}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/findit/battle/GameView$GameRoom;->loadImage(Landroid/content/Context;)V

    .line 2424
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iput v10, v5, Lcom/findit/battle/GameView$GameRoom;->mTime:I

    .line 2426
    iput v11, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 2427
    iput v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    goto/16 :goto_0

    .line 2419
    :cond_5
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v5, v10}, Lcom/findit/battle/GameView;->enterMainMenu(I)V

    goto :goto_1

    .line 2432
    .end local v0    # "alpha":I
    .end local v2    # "index":I
    .end local v4    # "speed":I
    :pswitch_2
    invoke-direct {p0}, Lcom/findit/battle/GameView$BattleRoom;->setSkillSlot()V

    .line 2433
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgHeight:[I

    aget v6, v6, v10

    neg-int v6, v6

    aput v6, v5, v10

    .line 2434
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v5}, Lcom/findit/battle/GameView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgHeight:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/findit/battle/GameView$BattleRoom;->setSkillWindowY(I)V

    .line 2435
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2436
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 2437
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 2438
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects;->setCharactersImgnum(I)V

    .line 2440
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2441
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v10

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2442
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftRect:Landroid/graphics/Rect;

    .line 2443
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v10

    .line 2444
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 2443
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 2446
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2447
    .restart local v2    # "index":I
    if-le v2, v11, :cond_6

    .line 2448
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2449
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2450
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightRect:Landroid/graphics/Rect;

    .line 2451
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 2452
    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 2451
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 2455
    :cond_6
    iput-boolean v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    .line 2456
    iput-boolean v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 2458
    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 2459
    iput v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    goto/16 :goto_0

    .line 2463
    .end local v2    # "index":I
    .end local v3    # "rect":Landroid/graphics/Rect;
    :pswitch_3
    const-string v5, "MTIME_BATTLEROOM_3"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2464
    const/4 v1, 0x1

    .line 2466
    .local v1, "end":Z
    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v6, v6, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v6, v6, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 2467
    .restart local v4    # "speed":I
    int-to-float v5, v4

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v6, v6, Lcom/findit/battle/GameView;->mDrawrate:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 2468
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v5, v5, Lcom/findit/battle/GameView;->mDrawrate:F

    float-to-int v4, v5

    .line 2470
    :cond_7
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v6, v5, v10

    add-int/2addr v6, v4

    aput v6, v5, v10

    .line 2471
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v5, v5, v8

    mul-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/findit/battle/GameView$BattleRoom;->setSkillWindowY(I)V

    .line 2473
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v5, v5, v10

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v6, v6, v10

    if-le v5, v6, :cond_d

    .line 2474
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v6, v6, v10

    aput v6, v5, v10

    .line 2478
    :goto_2
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v6, v6, v8

    if-ge v5, v6, :cond_e

    .line 2479
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mStandardY:[I

    aget v5, v5, v8

    invoke-direct {p0, v5}, Lcom/findit/battle/GameView$BattleRoom;->setSkillWindowY(I)V

    .line 2483
    :goto_3
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v5, v5, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v5, v5, v10

    iget-object v5, v5, Lcom/findit/battle/Objects$Button;->mPaint:Landroid/graphics/Paint;

    .line 2484
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    iget-object v7, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v7, v7, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2483
    add-int v0, v5, v6

    .line 2486
    .restart local v0    # "alpha":I
    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    if-ne v5, v9, :cond_8

    .line 2487
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 2489
    :cond_8
    const/16 v5, 0xfa

    if-ge v0, v5, :cond_a

    .line 2490
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2491
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 2492
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 2494
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2495
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v10

    .line 2496
    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2498
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2499
    .restart local v2    # "index":I
    if-le v2, v11, :cond_9

    .line 2500
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2501
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2504
    :cond_9
    const/4 v1, 0x0

    .line 2507
    .end local v2    # "index":I
    :cond_a
    if-eqz v1, :cond_0

    .line 2508
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2509
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v5, v11}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 2510
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v5, v11}, Lcom/findit/battle/Objects$Skills;->setAlpha(I)V

    .line 2512
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2513
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v10

    .line 2514
    invoke-virtual {v5, v11}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2516
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2517
    .restart local v2    # "index":I
    if-le v2, v11, :cond_f

    .line 2518
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2519
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v11}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2522
    if-eq v2, v9, :cond_b

    .line 2523
    invoke-virtual {p0}, Lcom/findit/battle/GameView$BattleRoom;->isAleadyRightUserReady()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2524
    :cond_b
    invoke-virtual {p0, v10}, Lcom/findit/battle/GameView$BattleRoom;->setAleadyRightUserReady(Z)V

    .line 2525
    iget-boolean v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    if-nez v5, :cond_c

    .line 2526
    iput-boolean v8, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 2527
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v6, v6, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v5, v5, v6

    .line 2528
    invoke-virtual {v5, v8}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 2530
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v5, v9}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 2548
    :cond_c
    :goto_4
    iput v11, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 2549
    iput v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    goto/16 :goto_0

    .line 2476
    .end local v0    # "alpha":I
    .end local v2    # "index":I
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 2481
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2535
    .restart local v0    # "alpha":I
    .restart local v2    # "index":I
    :cond_f
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iput v11, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2536
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v5}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2541
    iput v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 2542
    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    .line 2543
    iput v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mTimeCount:I

    goto :goto_4

    .line 2554
    .end local v0    # "alpha":I
    .end local v1    # "end":Z
    .end local v2    # "index":I
    .end local v4    # "speed":I
    :pswitch_4
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2555
    .restart local v2    # "index":I
    if-le v2, v11, :cond_10

    .line 2556
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2557
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v10}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2558
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightRect:Landroid/graphics/Rect;

    .line 2559
    .restart local v3    # "rect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 2560
    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 2559
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/findit/battle/Objects$Character;->setRect(IIII)V

    .line 2563
    .end local v3    # "rect":Landroid/graphics/Rect;
    :cond_10
    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    goto/16 :goto_0

    .line 2567
    .end local v2    # "index":I
    :pswitch_5
    const-string v5, "MTIME_BATTLEROOM_5"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2568
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v5, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2569
    .restart local v2    # "index":I
    if-le v2, v11, :cond_13

    .line 2570
    const/high16 v5, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v6, v6, Lcom/findit/battle/GameView;->mDrawrate:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v6, v6, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 2572
    .restart local v4    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/findit/battle/Objects$Character;->getAlpha()I

    move-result v5

    .line 2573
    const/high16 v6, 0x41200000    # 10.0f

    iget-object v7, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget v7, v7, Lcom/findit/battle/GameView;->mSpeedRate:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 2572
    add-int v0, v5, v6

    .line 2575
    .restart local v0    # "alpha":I
    const/16 v5, 0xfa

    if-ge v0, v5, :cond_11

    .line 2576
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2577
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    goto/16 :goto_0

    .line 2579
    :cond_11
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2580
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v5, v5, v2

    invoke-virtual {v5, v11}, Lcom/findit/battle/Objects$Character;->setAlpha(I)V

    .line 2583
    if-ne v2, v9, :cond_12

    .line 2584
    iget-boolean v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    if-nez v5, :cond_12

    .line 2585
    iput-boolean v8, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 2586
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v5, v5, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v6, v6, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v5, v5, v6

    .line 2587
    invoke-virtual {v5, v8}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 2589
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v5, v9}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 2593
    :cond_12
    iput v11, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    goto/16 :goto_0

    .line 2596
    .end local v0    # "alpha":I
    .end local v4    # "speed":I
    :cond_13
    iput v11, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    goto/16 :goto_0

    .line 2601
    .end local v2    # "index":I
    :pswitch_6
    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v5, v11}, Lcom/findit/battle/GameView;->enterMainMenu(I)V

    .line 2602
    iput v11, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    goto/16 :goto_0

    .line 2349
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
    .end packed-switch
.end method

.method public checkSkillWindow(III)I
    .locals 19
    .param p1, "windowy"    # I
    .param p2, "totalnum"    # I
    .param p3, "iconindex"    # I

    .prologue
    .line 2608
    const-string v14, ">> checkSkillWindow()"

    invoke-static {v14}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2613
    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotX:I

    .line 2615
    .local v13, "windowx":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotSize:I

    .line 2616
    .local v11, "windowwidth":I
    move v8, v11

    .line 2617
    .local v8, "windowheight":I
    div-int/lit8 v12, v11, 0x2

    .line 2618
    .local v12, "windowwidthhalf":I
    div-int/lit8 v9, v8, 0x2

    .line 2620
    .local v9, "windowheighthalf":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v14, v14, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget-object v14, v14, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v7, v14, p3

    .line 2621
    .local v7, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v14, v14, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v14, v14, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v3, v14, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    .line 2624
    .local v3, "iconsize":I
    const/4 v4, -0x1

    .line 2625
    .local v4, "index":I
    const v5, 0x47c35000    # 100000.0f

    .line 2627
    .local v5, "mindistance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p2

    if-lt v2, v0, :cond_0

    .line 2654
    return v4

    .line 2628
    :cond_0
    mul-int v14, v11, v2

    add-int v10, v13, v14

    .line 2640
    .local v10, "windowleft":I
    iget-object v14, v7, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    const/4 v15, 0x0

    aget-object v6, v14, v15

    .line 2641
    .local v6, "rect":Landroid/graphics/Rect;
    iget v14, v6, Landroid/graphics/Rect;->right:I

    if-ge v10, v14, :cond_1

    add-int v14, v10, v11

    iget v15, v6, Landroid/graphics/Rect;->left:I

    if-le v14, v15, :cond_1

    .line 2642
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v3

    move/from16 v0, p1

    if-ge v0, v14, :cond_1

    .line 2643
    add-int v14, p1, v8

    iget v15, v6, Landroid/graphics/Rect;->top:I

    if-le v14, v15, :cond_1

    .line 2644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v14, v14, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    .line 2645
    add-int v15, v10, v12

    add-int v16, p1, v9

    .line 2646
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v18

    .line 2644
    invoke-virtual/range {v14 .. v18}, Lcom/findit/battle/Objects;->getDistance(IIII)F

    move-result v1

    .line 2647
    .local v1, "distance":F
    cmpl-float v14, v5, v1

    if-lez v14, :cond_1

    .line 2648
    move v5, v1

    .line 2649
    move v4, v2

    .line 2627
    .end local v1    # "distance":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2659
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    .line 2661
    .local v3, "objects":Lcom/findit/battle/Objects;
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v4}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2662
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v4}, Lcom/findit/battle/GameView;->access$3(Lcom/findit/battle/GameView;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2666
    :cond_0
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    if-eq v4, v8, :cond_3

    .line 2668
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v4, v4, v7

    invoke-virtual {v4, p1}, Lcom/findit/battle/Objects$Character;->doDraw(Landroid/graphics/Canvas;)V

    .line 2670
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v4, v4, v7

    iget-object v2, v4, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    .line 2671
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2672
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNameX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftRightNameY:I

    int-to-float v5, v5

    .line 2673
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftNamePaint:Landroid/graphics/Paint;

    .line 2672
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2675
    :cond_1
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 2676
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v1, v4, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2677
    .local v1, "index":I
    const/4 v4, -0x1

    if-le v1, v4, :cond_2

    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 2678
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lcom/findit/battle/Objects$Character;->doDraw(Landroid/graphics/Canvas;)V

    .line 2680
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v4, v4, v1

    iget-object v2, v4, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    .line 2681
    if-eqz v2, :cond_2

    .line 2682
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNameX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftRightNameY:I

    int-to-float v5, v5

    .line 2683
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mRightNamePaint:Landroid/graphics/Paint;

    .line 2682
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2687
    .end local v1    # "index":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v8, :cond_4

    .line 2694
    iget-object v4, v3, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v4, p1}, Lcom/findit/battle/Objects$Buttons;->doDraw(Landroid/graphics/Canvas;)V

    .line 2697
    iget-object v4, v3, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    iget v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mSkillIndex:I

    invoke-virtual {v4, p1, v5}, Lcom/findit/battle/Objects$Skills;->doIconDraw(Landroid/graphics/Canvas;I)V

    .line 2699
    .end local v0    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    return-void

    .line 2688
    .restart local v0    # "i":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    if-eqz v4, :cond_5

    .line 2689
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgX:[I

    aget v5, v5, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgY:[I

    aget v6, v6, v0

    int-to-float v6, v6

    .line 2690
    iget-object v7, p0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    .line 2689
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2687
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public exitRoom()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    .line 2178
    const-string v6, ">> exitRoom()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2179
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v6}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 2180
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v6, v6, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    if-ne v6, v9, :cond_0

    .line 2181
    const-string v6, "-- exitRoom() CHARACTER_RIGHTUSER"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 2245
    :goto_0
    return-void

    .line 2185
    :cond_0
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v6}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v6

    iget-object v1, v6, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 2187
    .local v1, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2188
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v6}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 2189
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v6}, Lcom/findit/battle/GameView$GameRoom;->exitGameRoom()V

    .line 2192
    :cond_1
    iput-boolean v9, p0, Lcom/findit/battle/GameView$BattleRoom;->mExit:Z

    .line 2195
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v6, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    .line 2196
    .local v4, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v2, v6, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2197
    .local v2, "index":I
    if-ne v2, v9, :cond_2

    .line 2198
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v6, v6, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v7, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v7, v7, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v7, v7, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v6, v6, v7

    iget-object v4, v6, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    .line 2200
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "|102|"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2201
    iget-object v7, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v7, v7, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2200
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2202
    .local v5, "sendmsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/findit/battle/GameView;->getLengthText(I)Ljava/lang/String;

    move-result-object v3

    .line 2203
    .local v3, "length":Ljava/lang/String;
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v6}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v6}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2207
    new-instance v6, Lcom/findit/battle/GameView$doSendSocketMsgTask;

    iget-object v7, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/findit/battle/GameView$doSendSocketMsgTask;-><init>(Lcom/findit/battle/GameView;Lcom/findit/battle/GameView$doSendSocketMsgTask;)V

    new-array v7, v9, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Lcom/findit/battle/GameView$doSendSocketMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2243
    .end local v2    # "index":I
    .end local v3    # "length":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "sendmsg":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v6}, Lcom/findit/battle/GameView$BattleRoom;->recycleImageInBattleRoom()V

    goto/16 :goto_0

    .line 2222
    :cond_4
    iput-boolean v10, p0, Lcom/findit/battle/GameView$BattleRoom;->mGameStart:Z

    .line 2224
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v6}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    .line 2225
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    const/16 v7, 0xf

    iput v7, v6, Lcom/findit/battle/GameView$Result;->mTime:I

    .line 2226
    const-string v6, "exitRoom ---> Main Menu"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 2227
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenResult:Lcom/findit/battle/GameView$Result;

    invoke-virtual {v6}, Lcom/findit/battle/GameView$Result;->recycleImageInResultWindow()V

    .line 2231
    :goto_2
    const/4 v0, 0x0

    .line 2232
    .local v0, "bInGameRoom":Z
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v6}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 2233
    const/4 v0, 0x1

    .line 2235
    :cond_5
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v6, v9}, Lcom/findit/battle/GameView;->access$2(Lcom/findit/battle/GameView;I)V

    .line 2236
    const-string v6, "exitRoom ---> Main Menu"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 2237
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/findit/battle/GameView;->enterMainMenu(I)V

    .line 2239
    if-eqz v0, :cond_3

    .line 2240
    iget-object v6, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v6, v6, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    invoke-virtual {v6}, Lcom/findit/battle/GameView$GameRoom;->exitGameRoom()V

    goto :goto_1

    .line 2229
    .end local v0    # "bInGameRoom":Z
    :cond_6
    const/4 v6, 0x6

    iput v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    goto :goto_2
.end method

.method public fillData(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2753
    const-string v1, ">> fillData()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2754
    new-instance v0, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;

    iget-object v1, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v1

    .line 2755
    const v2, 0x7f030018

    .line 2756
    const-string v3, ","

    const/4 v4, 0x0

    .line 2755
    invoke-virtual {p0, p1, v3, v4}, Lcom/findit/battle/GameView$BattleRoom;->getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2754
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;-><init>(Lcom/findit/battle/GameView$BattleRoom;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2757
    .local v0, "adapter":Lcom/findit/battle/GameView$BattleRoom$UserAdapter;
    iget-object v1, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v1}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/findit/battle/GameActivity;->mUserListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2758
    return-void
.end method

.method public getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "devider"    # Ljava/lang/String;
    .param p3, "friendname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 2718
    const-string v5, ">> getUserData()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2719
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2721
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2722
    .local v1, "length":I
    const/4 v3, 0x0

    .line 2723
    .local v3, "startindex":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 2749
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v2

    .line 2727
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2728
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 2729
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2733
    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2735
    .local v4, "userid":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    .line 2737
    if-ne v3, v1, :cond_2

    .line 2738
    const-string v4, ""

    .line 2741
    :cond_2
    if-eqz p3, :cond_3

    .line 2742
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2743
    const/4 v2, 0x0

    goto :goto_1

    .line 2746
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isAleadyRightUserReady()Z
    .locals 1

    .prologue
    .line 2795
    iget-boolean v0, p0, Lcom/findit/battle/GameView$BattleRoom;->mAleadyRightUserReady:Z

    return v0
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2017
    const-string v21, ">> loadImage()"

    invoke-static/range {v21 .. v21}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2020
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0201d8

    .line 2019
    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2021
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgWidth:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgHeight:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    const/16 v25, 0x1

    .line 2021
    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v23

    aput-object v23, v21, v22

    .line 2023
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgWidth:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v20, v21, v22

    .line 2039
    .local v20, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgHeight:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v7, v21, v22

    .line 2040
    .local v7, "height":I
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2041
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    .line 2042
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2045
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 2046
    const v22, 0x7f02012a

    .line 2045
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 2047
    .local v11, "is":Ljava/io/InputStream;
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 2048
    .local v9, "img":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 2049
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2051
    if-eqz v11, :cond_0

    .line 2053
    :try_start_0
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotSize:I

    move/from16 v17, v0

    .line 2061
    .local v17, "size":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotX:I

    .line 2062
    .local v12, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSetSlotY:I

    move/from16 v19, v0

    .line 2063
    .local v19, "top":I
    add-int v4, v19, v17

    .line 2064
    .local v4, "bottom":I
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 2068
    .local v10, "imgid":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v21, 0x5

    move/from16 v0, v21

    if-lt v8, v0, :cond_1

    .line 2129
    move-object/from16 v0, p0

    iget v12, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotX:I

    .line 2130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mSkillSlotY:I

    move/from16 v19, v0

    .line 2131
    add-int v4, v19, v17

    .line 2132
    const/4 v8, 0x0

    :goto_2
    const/16 v21, 0x8

    move/from16 v0, v21

    if-lt v8, v0, :cond_6

    .line 2153
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aput-object v3, v21, v22

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/findit/battle/Objects$Buttons;->loadImage(Landroid/content/Context;)V

    .line 2159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Lcom/findit/battle/Objects$Buttons;->setAlpha(I)V

    .line 2161
    return-void

    .line 2054
    .end local v4    # "bottom":I
    .end local v8    # "i":I
    .end local v10    # "imgid":[I
    .end local v12    # "left":I
    .end local v17    # "size":I
    .end local v19    # "top":I
    :catch_0
    move-exception v6

    .line 2055
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 2069
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bottom":I
    .restart local v8    # "i":I
    .restart local v10    # "imgid":[I
    .restart local v12    # "left":I
    .restart local v17    # "size":I
    .restart local v19    # "top":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    aget v22, v10, v8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 2070
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 2072
    .restart local v9    # "img":Landroid/graphics/drawable/BitmapDrawable;
    add-int v16, v12, v17

    .line 2073
    .local v16, "right":I
    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v9, v12, v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    move-object/from16 v21, v0

    aget-boolean v21, v21, v8

    if-nez v21, :cond_4

    .line 2075
    const/16 v21, 0x96

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2076
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2079
    if-eqz v11, :cond_2

    .line 2081
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2086
    :cond_2
    :goto_3
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 2089
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 2090
    const v22, 0x7f02017b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 2091
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 2093
    .restart local v9    # "img":Landroid/graphics/drawable/BitmapDrawable;
    div-int/lit8 v15, v17, 0x3

    .line 2094
    .local v15, "locksize":I
    div-int/lit8 v18, v15, 0x6

    .line 2095
    .local v18, "space":I
    sub-int v14, v16, v18

    .line 2096
    .local v14, "lockright":I
    sub-int v13, v4, v18

    .line 2097
    .local v13, "lockbottom":I
    sub-int v21, v14, v15

    .line 2098
    int-to-float v0, v15

    move/from16 v22, v0

    const v23, 0x3f947ae1    # 1.16f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    sub-int v22, v13, v22

    .line 2097
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1, v14, v13}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 2100
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2102
    if-eqz v11, :cond_3

    .line 2104
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2109
    :cond_3
    :goto_4
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 2125
    .end local v13    # "lockbottom":I
    .end local v14    # "lockright":I
    .end local v15    # "locksize":I
    .end local v18    # "space":I
    :goto_5
    add-int v12, v12, v17

    .line 2068
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2082
    :catch_1
    move-exception v6

    .line 2083
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 2105
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v13    # "lockbottom":I
    .restart local v14    # "lockright":I
    .restart local v15    # "locksize":I
    .restart local v18    # "space":I
    :catch_2
    move-exception v6

    .line 2106
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 2112
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "lockbottom":I
    .end local v14    # "lockright":I
    .end local v15    # "locksize":I
    .end local v18    # "space":I
    :cond_4
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2114
    if-eqz v11, :cond_5

    .line 2116
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2121
    :cond_5
    :goto_6
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 2117
    :catch_3
    move-exception v6

    .line 2118
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 2133
    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "right":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0201b8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 2134
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    .end local v9    # "img":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 2136
    .restart local v9    # "img":Landroid/graphics/drawable/BitmapDrawable;
    add-int v21, v12, v17

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v9, v12, v0, v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 2137
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2140
    if-eqz v11, :cond_7

    .line 2142
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2147
    :cond_7
    :goto_7
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 2150
    add-int v12, v12, v17

    .line 2132
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 2143
    :catch_4
    move-exception v6

    .line 2144
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 2064
    nop

    :array_0
    .array-data 4
        0x7f0201bf
        0x7f0201c0
        0x7f0201c1
        0x7f0201c2
        0x7f0201c3
    .end array-data
.end method

.method public ready()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2248
    const-string v3, ">> ready()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2249
    iget-boolean v3, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    if-eqz v3, :cond_0

    .line 2250
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 2284
    :goto_0
    return-void

    .line 2252
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v3, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v0, v3, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 2254
    .local v0, "index":I
    if-ne v0, v6, :cond_2

    .line 2256
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-virtual {v3}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2257
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v3

    .line 2258
    const-string v4, "Network disconnected, try again..."

    .line 2257
    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 2259
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2260
    invoke-virtual {p0}, Lcom/findit/battle/GameView$BattleRoom;->exitRoom()V

    goto :goto_0

    .line 2263
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "|104|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2264
    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v4, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v4, v4, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2265
    .local v2, "sendmsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/findit/battle/GameView;->getLengthText(I)Ljava/lang/String;

    move-result-object v1

    .line 2266
    .local v1, "length":Ljava/lang/String;
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v3}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 2270
    new-instance v3, Lcom/findit/battle/GameView$doSendSocketMsgTask;

    iget-object v4, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/findit/battle/GameView$doSendSocketMsgTask;-><init>(Lcom/findit/battle/GameView;Lcom/findit/battle/GameView$doSendSocketMsgTask;)V

    new-array v4, v6, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/findit/battle/GameView$doSendSocketMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2282
    .end local v1    # "length":Ljava/lang/String;
    .end local v2    # "sendmsg":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v3, v8}, Lcom/findit/battle/GameView;->playSound(I)V

    goto :goto_0

    .line 2273
    :cond_2
    if-ne v0, v8, :cond_3

    .line 2274
    iput-boolean v6, p0, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    .line 2275
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v3, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v3, v3, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v3, v3, v7

    .line 2276
    invoke-virtual {v3, v6}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    goto :goto_1

    .line 2278
    :cond_3
    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v3}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Wait..."

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 2279
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public recycleImageInBattleRoom()V
    .locals 4

    .prologue
    .line 2164
    const-string v2, ">> recycleImageInBattleRoom()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2165
    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    array-length v1, v2

    .line 2166
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 2174
    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v2, v2, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v2}, Lcom/findit/battle/Objects$Buttons;->recycleImageInButton()V

    .line 2175
    return-void

    .line 2167
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 2168
    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2169
    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->mImgBmp:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public sendInviteMsg(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;)V
    .locals 7
    .param p1, "connectnetwork"    # Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .param p2, "userid"    # Ljava/lang/String;

    .prologue
    .line 2702
    const-string v2, ">> sendInviteMsg()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2703
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|107|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2704
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    iget-object v3, v3, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2703
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2705
    .local v1, "sendmsg":Ljava/lang/String;
    iget-object v2, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/findit/battle/GameView;->getLengthText(I)Ljava/lang/String;

    move-result-object v0

    .line 2709
    .local v0, "length":Ljava/lang/String;
    new-instance v2, Lcom/findit/battle/GameView$doSendSocketMsgTask;

    iget-object v3, p0, Lcom/findit/battle/GameView$BattleRoom;->this$0:Lcom/findit/battle/GameView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/findit/battle/GameView$doSendSocketMsgTask;-><init>(Lcom/findit/battle/GameView;Lcom/findit/battle/GameView$doSendSocketMsgTask;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/findit/battle/GameView$doSendSocketMsgTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2714
    return-void
.end method

.method public setAleadyRightUserReady(Z)V
    .locals 0
    .param p1, "bReady"    # Z

    .prologue
    .line 2803
    iput-boolean p1, p0, Lcom/findit/battle/GameView$BattleRoom;->mAleadyRightUserReady:Z

    .line 2804
    return-void
.end method
