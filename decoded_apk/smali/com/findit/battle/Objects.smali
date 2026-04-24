.class public Lcom/findit/battle/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/Objects$AnimObject;,
        Lcom/findit/battle/Objects$Animation;,
        Lcom/findit/battle/Objects$Button;,
        Lcom/findit/battle/Objects$Buttons;,
        Lcom/findit/battle/Objects$Character;,
        Lcom/findit/battle/Objects$CharacterData;,
        Lcom/findit/battle/Objects$FindImage;,
        Lcom/findit/battle/Objects$FindRect;,
        Lcom/findit/battle/Objects$OrderData;,
        Lcom/findit/battle/Objects$Skills;
    }
.end annotation


# static fields
.field public static final AICHARACTERADDDATA_TOTALNUM:I = 0x14

.field public static final AICHARACTERDATA_TOTALNUM:I = 0x1

.field public static final BUTTON_BATTLEROOM_EXIT:I = 0x0

.field public static final BUTTON_BATTLEROOM_FRIEND:I = 0x2

.field public static final BUTTON_BATTLEROOM_READY:I = 0x1

.field public static final BUTTON_GAME_EXIT:I = 0x0

.field public static final BUTTON_MAINMENU_FACEBOOK:I = 0x5

.field public static final BUTTON_MAINMENU_GAMESTART:I = 0x0

.field public static final BUTTON_MAINMENU_INVENTORY:I = 0x1

.field public static final BUTTON_MAINMENU_NOTICE:I = 0x4

.field public static final BUTTON_MAINMENU_OPTION:I = 0x3

.field public static final BUTTON_MAINMENU_RANKING:I = 0x2

.field public static final BUTTON_RESULT_DOWNLOAD:I = 0x3

.field public static final BUTTON_RESULT_EXIT:I = 0x1

.field public static final BUTTON_RESULT_LINK:I = 0x2

.field public static final BUTTON_RESULT_ONEMORE:I = 0x0

.field public static final CHARACTERADDDATA_TOTALNUM:I = 0x14

.field public static final CHARACTERDATA_ADDAI:I = 0x3

.field public static final CHARACTERDATA_ADDUSER:I = 0x2

.field public static final CHARACTERDATA_AI:I = 0x1

.field public static final CHARACTERDATA_TOTALNUM:I = 0x3

.field public static final CHARACTERDATA_USER:I = 0x0

.field public static final CHARACTER_AI:I = 0x2

.field public static final CHARACTER_LFETUSER:I = 0x0

.field public static final CHARACTER_RIGHTUSER:I = 0x1

.field public static final CHARACTER_TOTALNUM:I = 0x3

.field public static final FINDIMAGE_TOTALNUM:I = 0x3e8

.field public static final FINDRECT_NUM:I = 0x5

.field public static final FINDRECT_TOTALNUM:I = 0xa

.field public static final IMAGE_CIRCLE:I = 0x0

.field public static final IMAGE_TOTALNUM:I = 0x1

.field public static final SKILL_TOTALNUM:I = 0x32

.field public static mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;


# instance fields
.field public mBaseImages:[Lcom/findit/battle/Objects$FindImage;

.field public mBaseImagesTotalnum:I

.field public mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

.field public mBodyFaceImgIds:[I

.field public mBodyFaceImgPaths:[Ljava/lang/String;

.field public mCharacter:[Lcom/findit/battle/Objects$Character;

.field private mCircleSpace:I

.field public mCreateFindImagesRun:Z

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDrawrate:F

.field public mHeadFaceImgIds:[I

.field public mHeadFaceImgPaths:[Ljava/lang/String;

.field public mImages:[Lcom/findit/battle/Objects$FindImage;

.field public mImagesTotalnum:I

.field public mImgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mImgPng:[Landroid/graphics/drawable/Drawable;

.field public mItems:Lcom/findit/battle/Items;

.field public mLastCreateFindImageFile:Z

.field public mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

.field public mResultButtons:Lcom/findit/battle/Objects$Buttons;

.field public mSkills:Lcom/findit/battle/Objects$Skills;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displaywidth"    # I
    .param p3, "displayheight"    # I
    .param p4, "drawrate"    # F

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v4, ">> Objects()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 96
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects;->mDrawrate:F

    .line 97
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects;->mDisplayWidth:I

    .line 98
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects;->mDisplayHeight:I

    .line 99
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 100
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02014f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    .line 103
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects;->mImagesTotalnum:I

    .line 142
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 147
    .local v28, "upimgid":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    if-nez v4, :cond_1

    .line 148
    new-instance v4, Lcom/findit/battle/Objects$Buttons;

    move-object/from16 v0, v28

    array-length v5, v0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/findit/battle/Objects$Buttons;-><init>(Lcom/findit/battle/Objects;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    .line 150
    :cond_1
    move/from16 v0, p2

    int-to-float v4, v0

    const/high16 v5, 0x44a00000    # 1280.0f

    div-float v30, v4, v5

    .line 151
    .local v30, "widthrate":F
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v5, 0x44480000    # 800.0f

    div-float v18, v4, v5

    .line 152
    .local v18, "heightrate":F
    const/high16 v4, 0x43370000    # 183.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v20, v0

    .line 153
    .local v20, "left":I
    const/high16 v4, 0x43670000    # 231.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 154
    .local v23, "top":I
    const/high16 v4, 0x43e10000    # 450.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v29, v0

    .line 155
    .local v29, "width":I
    const/high16 v4, 0x43100000    # 144.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v17, v0

    .line 156
    .local v17, "height":I
    const/high16 v4, 0x41600000    # 14.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v22, v0

    .line 172
    .local v22, "space":I
    const/16 v32, 0x0

    .local v32, "y":I
    :goto_0
    const/4 v4, 0x3

    move/from16 v0, v32

    if-lt v0, v4, :cond_11

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    if-nez v4, :cond_2

    .line 190
    new-instance v4, Lcom/findit/battle/Objects$Buttons;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/findit/battle/Objects$Buttons;-><init>(Lcom/findit/battle/Objects;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    .line 208
    :cond_2
    const/high16 v4, 0x43520000    # 210.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v29, v0

    .line 209
    const/high16 v4, 0x42b40000    # 90.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v17, v0

    .line 210
    const v4, 0x4483e000    # 1055.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v20, v0

    .line 211
    add-int v21, v20, v29

    .line 212
    .local v21, "right":I
    const/high16 v4, 0x41a80000    # 21.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 213
    add-int v13, v23, v17

    .line 214
    .local v13, "bottom":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v4, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v0, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    new-instance v4, Lcom/findit/battle/Objects$Button;

    const v7, 0x7f0201ca

    const/4 v8, -0x1

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v5, v20, v22

    sub-int v6, v21, v22

    move/from16 v0, v23

    invoke-direct {v10, v5, v0, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Button;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    aput-object v4, v33, v34

    .line 217
    :cond_3
    div-int/lit8 v14, p2, 0x2

    .line 218
    .local v14, "centerx":I
    const/high16 v4, 0x43500000    # 208.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v29, v0

    .line 219
    const/high16 v4, 0x43050000    # 133.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v17, v0

    .line 220
    div-int/lit8 v4, v29, 0x2

    sub-int v20, v14, v4

    .line 221
    add-int v21, v20, v29

    .line 222
    const v4, 0x43988000    # 305.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 223
    add-int v13, v23, v17

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v4, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v0, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    new-instance v4, Lcom/findit/battle/Objects$Button;

    const v7, 0x7f02012c

    const/4 v8, -0x1

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v5, v23, v22

    sub-int v6, v13, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v0, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Button;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    aput-object v4, v33, v34

    .line 234
    :cond_4
    add-int v4, p2, p3

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const v5, 0x3d7c0fc1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Objects;->mCircleSpace:I

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    if-nez v4, :cond_5

    .line 239
    new-instance v4, Lcom/findit/battle/Objects$Buttons;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/findit/battle/Objects$Buttons;-><init>(Lcom/findit/battle/Objects;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    .line 241
    :cond_5
    const/high16 v4, 0x41a00000    # 20.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v22, v0

    .line 242
    const/high16 v4, 0x41900000    # 18.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v20, v0

    .line 243
    const v4, 0x442dc000    # 695.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 244
    const/high16 v4, 0x42b00000    # 88.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v21, v0

    .line 245
    const v4, 0x443f4000    # 765.0f

    mul-float v4, v4, v18

    float-to-int v13, v4

    .line 248
    const/high16 v4, 0x41700000    # 15.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v20, v0

    .line 249
    const/high16 v4, 0x41a80000    # 21.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 250
    const v4, 0x438c8000    # 281.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v21, v0

    .line 251
    const/high16 v4, 0x42de0000    # 111.0f

    mul-float v4, v4, v18

    float-to-int v13, v4

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v4, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-nez v4, :cond_6

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v0, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    new-instance v4, Lcom/findit/battle/Objects$Button;

    const v7, 0x7f0201cb

    const/4 v8, -0x1

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    add-int v5, v20, v22

    add-int v6, v21, v22

    move/from16 v0, v23

    invoke-direct {v10, v5, v0, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Button;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    aput-object v4, v33, v34

    .line 255
    :cond_6
    const v4, 0x4483e000    # 1055.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v20, v0

    .line 256
    const/high16 v4, 0x41a80000    # 21.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 257
    const v4, 0x449e2000    # 1265.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v21, v0

    .line 258
    const/high16 v4, 0x42de0000    # 111.0f

    mul-float v4, v4, v18

    float-to-int v13, v4

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v4, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_7

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v0, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    new-instance v4, Lcom/findit/battle/Objects$Button;

    const v7, 0x7f0201ca

    const/4 v8, -0x1

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v5, v20, v22

    sub-int v6, v21, v22

    move/from16 v0, v23

    invoke-direct {v10, v5, v0, v6, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Button;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    aput-object v4, v33, v34

    .line 262
    :cond_7
    const v4, 0x4467c000    # 927.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v20, v0

    .line 263
    const/high16 v4, 0x436f0000    # 239.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 264
    const v4, 0x44952000    # 1193.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v21, v0

    .line 265
    const v4, 0x43ae8000    # 349.0f

    mul-float v4, v4, v18

    float-to-int v13, v4

    .line 266
    const v4, 0x462abc00    # 10927.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v20, v0

    .line 267
    const v4, 0x462ee400    # 11193.0f

    mul-float v4, v4, v30

    float-to-int v0, v4

    move/from16 v21, v0

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v4, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    if-nez v4, :cond_8

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v0, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v33, v0

    const/16 v34, 0x2

    new-instance v4, Lcom/findit/battle/Objects$Button;

    const v7, 0x7f020126

    const/4 v8, -0x1

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v5, v23, v22

    sub-int v6, v13, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v0, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Button;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    aput-object v4, v33, v34

    .line 272
    :cond_8
    const v4, 0x43c28000    # 389.0f

    mul-float v4, v4, v18

    float-to-int v0, v4

    move/from16 v23, v0

    .line 273
    const v4, 0x43f98000    # 499.0f

    mul-float v4, v4, v18

    float-to-int v13, v4

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v4, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    if-nez v4, :cond_9

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v0, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v33, v0

    const/16 v34, 0x3

    new-instance v4, Lcom/findit/battle/Objects$Button;

    const v7, 0x7f020125

    const/4 v8, -0x1

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v5, v23, v22

    sub-int v6, v13, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v10, v0, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Button;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    aput-object v4, v33, v34

    .line 278
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/Objects;->createBaseFindImages()V

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    if-nez v4, :cond_a

    .line 285
    new-instance v4, Lcom/findit/battle/Objects$Skills;

    const/high16 v5, 0x42e00000    # 112.0f

    mul-float v5, v5, v30

    float-to-int v9, v5

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Skills;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    .line 295
    :cond_a
    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    const v5, 0x7f020142

    aput v5, v11, v4

    .line 296
    .local v11, "bodyfaceimgids":[I
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/findit/battle/Objects;->mBodyFaceImgIds:[I

    .line 298
    const/4 v4, 0x1

    new-array v15, v4, [I

    const/4 v4, 0x0

    const v5, 0x7f020132

    aput v5, v15, v4

    .line 299
    .local v15, "headfaceimgids":[I
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/findit/battle/Objects;->mHeadFaceImgIds:[I

    .line 301
    const/4 v4, 0x0

    new-array v12, v4, [Ljava/lang/String;

    .line 302
    .local v12, "bodyfaceimgpaths":[Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/findit/battle/Objects;->mBodyFaceImgPaths:[Ljava/lang/String;

    .line 304
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 305
    .local v16, "headfaceimgpaths":[Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/Objects;->mHeadFaceImgPaths:[Ljava/lang/String;

    .line 307
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/Objects;->createCharacterData()V

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    if-nez v4, :cond_b

    .line 310
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/findit/battle/Objects$Character;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    .line 311
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    if-nez v4, :cond_c

    .line 312
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/16 v33, 0x0

    new-instance v4, Lcom/findit/battle/Objects$Character;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/findit/battle/Objects$Character;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;III)V

    aput-object v4, v10, v33

    .line 313
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_d

    .line 314
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/16 v33, 0x1

    new-instance v4, Lcom/findit/battle/Objects$Character;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/findit/battle/Objects$Character;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;III)V

    aput-object v4, v10, v33

    .line 315
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    if-nez v4, :cond_e

    .line 316
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/16 v33, 0x2

    new-instance v4, Lcom/findit/battle/Objects$Character;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/findit/battle/Objects$Character;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;III)V

    aput-object v4, v10, v33

    .line 319
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    if-nez v4, :cond_f

    .line 320
    new-instance v4, Lcom/findit/battle/Items;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/findit/battle/Items;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    .line 321
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mImgNumMap:Ljava/util/HashMap;

    if-nez v4, :cond_10

    .line 322
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Objects;->mImgNumMap:Ljava/util/HashMap;

    .line 323
    :cond_10
    return-void

    .line 173
    .end local v11    # "bodyfaceimgids":[I
    .end local v12    # "bodyfaceimgpaths":[Ljava/lang/String;
    .end local v13    # "bottom":I
    .end local v14    # "centerx":I
    .end local v15    # "headfaceimgids":[I
    .end local v16    # "headfaceimgpaths":[Ljava/lang/String;
    .end local v21    # "right":I
    :cond_11
    mul-int v4, v32, v17

    add-int v27, v23, v4

    .line 174
    .local v27, "unittop":I
    add-int v24, v27, v17

    .line 176
    .local v24, "unitbottom":I
    const/16 v31, 0x0

    .local v31, "x":I
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, v31

    if-lt v0, v4, :cond_12

    .line 172
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_0

    .line 177
    :cond_12
    mul-int v4, v31, v29

    add-int v4, v4, v20

    mul-int v5, v31, v22

    add-int v25, v4, v5

    .line 178
    .local v25, "unitleft":I
    add-int v26, v25, v29

    .line 180
    .local v26, "unitright":I
    mul-int/lit8 v4, v32, 0x2

    add-int v19, v31, v4

    .line 181
    .local v19, "index":I
    move-object/from16 v0, v28

    array-length v4, v0

    move/from16 v0, v19

    if-le v4, v0, :cond_13

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v4, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    aget-object v4, v4, v19

    if-nez v4, :cond_13

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    iget-object v0, v4, Lcom/findit/battle/Objects$Buttons;->mButton:[Lcom/findit/battle/Objects$Button;

    move-object/from16 v33, v0

    new-instance v4, Lcom/findit/battle/Objects$Button;

    aget v7, v28, v19

    const/4 v8, -0x1

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v5, v27, v22

    sub-int v6, v24, v22

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v10, v0, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Objects$Button;-><init>(Lcom/findit/battle/Objects;Landroid/content/Context;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    aput-object v4, v33, v19

    .line 176
    :cond_13
    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    .line 142
    nop

    :array_0
    .array-data 4
        0x7f020185
        0x7f020186
        0x7f020187
        0x7f020188
        0x7f020189
        0x7f02018a
    .end array-data
.end method

.method static synthetic access$0(Lcom/findit/battle/Objects;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/findit/battle/Objects;->mCircleSpace:I

    return v0
.end method

.method static synthetic access$1(Lcom/findit/battle/Objects;)F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/findit/battle/Objects;->mDrawrate:F

    return v0
.end method

.method static synthetic access$2(Lcom/findit/battle/Objects;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/findit/battle/Objects;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$3(Lcom/findit/battle/Objects;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/findit/battle/Objects;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$4(Lcom/findit/battle/Objects;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/Objects;->getSubTexts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private createBaseFindImages()V
    .locals 12

    .prologue
    .line 572
    const-string v0, ">> createBaseFindImages()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 573
    const/16 v0, 0x3e8

    new-array v0, v0, [Lcom/findit/battle/Objects$FindImage;

    iput-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    .line 575
    const/4 v7, 0x0

    .local v7, "num":I
    const/4 v9, 0x0

    .line 576
    .local v9, "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const/high16 v4, 0x7f020000

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 577
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .local v10, "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xbb

    const/16 v3, 0x154

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020001

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 578
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd8

    const/16 v3, 0x1bc

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020002

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 579
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x33

    const/16 v3, 0x24e

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020003

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 580
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020004

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 581
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x19a

    const/16 v3, 0x130

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020005

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 582
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1f8

    const/16 v3, 0x44

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020006

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 583
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1fe

    const/16 v3, 0x19c

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020007

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 584
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .local v8, "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 586
    const/4 v9, 0x0

    .line 587
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020008

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 588
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x2d

    const/16 v3, 0x24f

    const/16 v4, 0x82

    const/16 v5, 0x64

    const v6, 0x7f020009

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 589
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x206

    const/16 v4, 0x50

    const/16 v5, 0x82

    const v6, 0x7f02000a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 590
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x8e

    const/16 v3, 0x1b5

    const/16 v4, 0x50

    const/16 v5, 0xa0

    const v6, 0x7f02000b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 591
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x34

    const/16 v3, 0x1bb

    const/16 v4, 0x5a

    const/16 v5, 0x8c

    const v6, 0x7f02000c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 592
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xcf

    const/16 v3, 0x178

    const/16 v4, 0x64

    const/16 v5, 0x5a

    const v6, 0x7f02000d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 593
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x203

    const/16 v3, 0x182

    const/16 v4, 0x5a

    const/16 v5, 0x5a

    const v6, 0x7f02000e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 594
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1ca

    const/16 v3, 0x1b8

    const/16 v4, 0x50

    const/16 v5, 0x8c

    const v6, 0x7f02000f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 595
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1b1

    const/16 v3, 0x22e

    const/16 v4, 0x64

    const/16 v5, 0x50

    const v6, 0x7f020010

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 596
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x125

    const/16 v3, 0x21b

    const/16 v4, 0x50

    const/16 v5, 0x64

    const v6, 0x7f020011

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 597
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x230

    const/16 v3, 0x1da

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020012

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 598
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 600
    const/4 v9, 0x0

    .line 601
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020013

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 602
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x213

    const/16 v3, 0xad

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020014

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 603
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21b

    const/16 v3, 0x26b

    const/16 v4, 0x65

    const/16 v5, 0x65

    const v6, 0x7f020015

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 604
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x140

    const/16 v3, 0x97

    const/16 v4, 0xa0

    const/16 v5, 0xa0

    const v6, 0x7f020016

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 605
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x16

    const/16 v3, 0x26c

    const/16 v4, 0x82

    const/16 v5, 0x64

    const v6, 0x7f020017

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 606
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xc8

    const/16 v3, 0x8f

    const/16 v4, 0x50

    const/16 v5, 0xa0

    const v6, 0x7f020018

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 607
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1fe

    const/16 v3, 0x1be

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020019

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 608
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x208

    const/4 v3, 0x0

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f02001a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 609
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x5a

    const/16 v5, 0x82

    const v6, 0x7f02001b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 610
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 612
    const/4 v9, 0x0

    .line 613
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f02001c

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 614
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x14f

    const/16 v3, 0x1aa

    const/16 v4, 0x5a

    const/16 v5, 0x5a

    const v6, 0x7f02001d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 615
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xbf

    const/16 v3, 0x3f

    const/16 v4, 0x50

    const/16 v5, 0x6e

    const v6, 0x7f02001e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 616
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x230

    const/16 v3, 0xa8

    const/16 v4, 0x50

    const/16 v5, 0x51

    const v6, 0x7f02001f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 617
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xe9

    const/16 v3, 0x119

    const/16 v4, 0x51

    const/16 v5, 0x51

    const v6, 0x7f020020

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 618
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x7b

    const/16 v3, 0x171

    const/16 v4, 0x79

    const/16 v5, 0x79

    const v6, 0x7f020021

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 619
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x130

    const/16 v3, 0x280

    const/16 v4, 0xa0

    const/16 v5, 0x50

    const v6, 0x7f020022

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 620
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1dc

    const/16 v3, 0x1aa

    const/16 v4, 0xa0

    const/16 v5, 0x5a

    const v6, 0x7f020023

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 621
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x11e

    const/16 v3, 0x4e

    const/16 v4, 0x50

    const/16 v5, 0x64

    const v6, 0x7f020024

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 622
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x2a

    const/16 v3, 0x34

    const/16 v4, 0x5a

    const/16 v5, 0x6e

    const v6, 0x7f020025

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 623
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 625
    const/4 v9, 0x0

    .line 626
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020026

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 627
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1c9

    const/16 v3, 0x152

    const/16 v4, 0x96

    const/16 v5, 0x96

    const v6, 0x7f020027

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 628
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x50

    const/16 v3, 0x134

    const/16 v4, 0x96

    const/16 v5, 0x96

    const v6, 0x7f020028

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 629
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x31

    const/16 v3, 0x70

    const/16 v4, 0x96

    const/16 v5, 0x96

    const v6, 0x7f020029

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 630
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1df

    const/16 v3, 0x232

    const/16 v4, 0xa0

    const/16 v5, 0x9e

    const v6, 0x7f02002a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 631
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x184

    const/16 v3, 0xc4

    const/16 v4, 0x8c

    const/16 v5, 0x8c

    const v6, 0x7f02002b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 632
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x115

    const/16 v3, 0x142

    const/16 v4, 0x8c

    const/16 v5, 0x8c

    const v6, 0x7f02002c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 633
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xdb

    const/16 v3, 0xc4

    const/16 v4, 0x65

    const/16 v5, 0x65

    const v6, 0x7f02002d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 634
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 636
    const/4 v9, 0x0

    .line 637
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f02002e

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 638
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xed

    const/16 v3, 0xfb

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02002f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 639
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x4a

    const/16 v3, 0x20a

    const/16 v4, 0x6f

    const/16 v5, 0x6f

    const v6, 0x7f020030

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 640
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x152

    const/16 v3, 0x1f6

    const/16 v4, 0xa0

    const/16 v5, 0x51

    const v6, 0x7f020031

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 641
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd6

    const/4 v3, 0x0

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020032

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 642
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1db

    const/16 v3, 0xe2

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020033

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 643
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x210

    const/16 v3, 0x12d

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020034

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 644
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1fc

    const/16 v3, 0x8a

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020035

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 645
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0xc1

    const/16 v4, 0xa0

    const/16 v5, 0x51

    const v6, 0x7f020036

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 646
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 648
    const/4 v9, 0x0

    .line 649
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020037

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 650
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x6e

    const/16 v3, 0xe9

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020038

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 651
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0xcc

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020039

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 652
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x95

    const/16 v3, 0x193

    const/16 v4, 0x82

    const/16 v5, 0x3c

    const v6, 0x7f02003a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 653
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x140

    const/16 v3, 0x1f5

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02003b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 654
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1b6

    const/16 v3, 0x194

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02003c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 655
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x136

    const/4 v3, 0x0

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02003d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 656
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x123

    const/16 v4, 0x78

    const/16 v5, 0x50

    const v6, 0x7f02003e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 657
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xee

    const/16 v3, 0x58

    const/16 v4, 0x78

    const/16 v5, 0x50

    const v6, 0x7f02003f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 658
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 660
    const/4 v9, 0x0

    .line 661
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020040

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 662
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1c

    const/16 v3, 0x276

    const/16 v4, 0x78

    const/16 v5, 0x5a

    const v6, 0x7f020041

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 663
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x4

    const/16 v3, 0x152

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020042

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 664
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xf4

    const/16 v3, 0x1ca

    const/16 v4, 0xa0

    const/16 v5, 0xa0

    const v6, 0x7f020043

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 665
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xc5

    const/16 v3, 0x24e

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020044

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 666
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1f4

    const/16 v3, 0x3a

    const/16 v4, 0x8c

    const/16 v5, 0x78

    const v6, 0x7f020045

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 667
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x9f

    const/4 v3, 0x0

    const/16 v4, 0x8c

    const/16 v5, 0x78

    const v6, 0x7f020046

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 668
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x152

    const/16 v3, 0x9c

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f020047

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 669
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x17f

    const/16 v3, 0x1d9

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f020048

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 670
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 672
    const/4 v9, 0x0

    .line 673
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020049

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 674
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x54

    const/16 v3, 0x244

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f02004a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 675
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xed

    const/16 v3, 0x191

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02004b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 676
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x147

    const/16 v3, 0x1d4

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02004c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 677
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xc3

    const/16 v3, 0x2b

    const/16 v4, 0x78

    const/16 v5, 0xa0

    const v6, 0x7f02004d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 678
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x201

    const/4 v3, 0x0

    const/16 v4, 0x6e

    const/16 v5, 0xa0

    const v6, 0x7f02004e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 679
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x15d

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const v6, 0x7f02004f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 680
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x208

    const/16 v3, 0x242

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f020050

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 681
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1d5

    const/16 v3, 0xb1

    const/16 v4, 0x50

    const/16 v5, 0x6e

    const v6, 0x7f020051

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 682
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x8a

    const/16 v3, 0x1e8

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020052

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 683
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 685
    const/4 v9, 0x0

    .line 686
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020053

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 687
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x34

    const/16 v3, 0x115

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020054

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 688
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x17c

    const/16 v3, 0x112

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020055

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 689
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x115

    const/16 v3, 0x175

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f020056

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 690
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1e3

    const/16 v3, 0x1c2

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020057

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 691
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xb4

    const/16 v3, 0x185

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020058

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 692
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x5e

    const/16 v3, 0x195

    const/16 v4, 0x5a

    const/16 v5, 0x5a

    const v6, 0x7f020059

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 693
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x8

    const/16 v3, 0x1a4

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02005a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 694
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xbd

    const/16 v3, 0x1ea

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02005b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 695
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xe1

    const/16 v3, 0xdd

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02005c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 696
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x9e

    const/4 v3, 0x0

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02005d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 697
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 699
    const/4 v9, 0x0

    .line 700
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f02005e

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 701
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xe8

    const/16 v3, 0xc4

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02005f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 702
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x152

    const/16 v3, 0x201

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020060

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 703
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xa0

    const/16 v3, 0x1e0

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020061

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 704
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x230

    const/16 v3, 0x1a3

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020062

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 705
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x16b

    const/16 v3, 0x11d

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020063

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 706
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x44

    const/16 v3, 0xb8

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020064

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 707
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1a2

    const/16 v3, 0xc5

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020065

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 708
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x13

    const/16 v3, 0x19a

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020066

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 709
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1f6

    const/16 v3, 0xc3

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020067

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 710
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x168

    const/16 v3, 0x1be

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020068

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 711
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 713
    const/4 v9, 0x0

    .line 714
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020069

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 715
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x120

    const/16 v3, 0x10d

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02006a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 716
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x116

    const/16 v3, 0x15b

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f02006b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 717
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x163

    const/16 v3, 0x254

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02006c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 718
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x9

    const/16 v3, 0x24b

    const/16 v4, 0x64

    const/16 v5, 0x50

    const v6, 0x7f02006d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 719
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x191

    const/16 v3, 0x1df

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02006e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 720
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x122

    const/16 v3, 0x34

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02006f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 721
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x8a

    const/16 v3, 0x25

    const/16 v4, 0x5a

    const/16 v5, 0xa0

    const v6, 0x7f020070

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 722
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1a5

    const/16 v3, 0xbb

    const/16 v4, 0x78

    const/16 v5, 0x50

    const v6, 0x7f020071

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 723
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 725
    const/4 v9, 0x0

    .line 726
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020072

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 727
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1fe

    const/16 v3, 0x23a

    const/16 v4, 0x82

    const/16 v5, 0x96

    const v6, 0x7f020073

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 728
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x212

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020074

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 729
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x178

    const/16 v3, 0x7f

    const/16 v4, 0x82

    const/16 v5, 0x50

    const v6, 0x7f020075

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 730
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd1

    const/16 v3, 0x72

    const/16 v4, 0x8c

    const/16 v5, 0x50

    const v6, 0x7f020076

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 731
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd4

    const/16 v3, 0x132

    const/16 v4, 0x96

    const/16 v5, 0xa0

    const v6, 0x7f020077

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 732
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x186

    const/16 v3, 0x185

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020078

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 733
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020079

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 734
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x230

    const/16 v3, 0x120

    const/16 v4, 0x50

    const/16 v5, 0x96

    const v6, 0x7f02007a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 735
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 737
    const/4 v9, 0x0

    .line 738
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f02007b

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 739
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x7a

    const/16 v3, 0x53

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02007c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 740
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x2e

    const/16 v3, 0xd5

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02007d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 741
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x193

    const/16 v3, 0x1b9

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02007e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 742
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd

    const/16 v3, 0x180

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02007f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 743
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x90

    const/16 v3, 0x21d

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020080

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 744
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1a7

    const/16 v3, 0x23e

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020081

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 745
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1f5

    const/16 v3, 0xea

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020082

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 746
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xcc

    const/16 v3, 0x111

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020083

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 747
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/16 v4, 0xa1

    const/16 v5, 0x50

    const v6, 0x7f020084

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 748
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xf1

    const/16 v3, 0x1b

    const/16 v4, 0x64

    const/16 v5, 0x79

    const v6, 0x7f020085

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 749
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 751
    const/4 v9, 0x0

    .line 752
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020086

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 753
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x46

    const/16 v4, 0x64

    const/16 v5, 0x82

    const v6, 0x7f020087

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 754
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x81

    const/16 v4, 0x8c

    const/16 v5, 0x50

    const v6, 0x7f020088

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 755
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x18a

    const/16 v3, 0x55

    const/16 v4, 0x87

    const/16 v5, 0x82

    const v6, 0x7f020089

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 756
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1e7

    const/16 v3, 0x102

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f02008a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 757
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x174

    const/16 v3, 0x230

    const/16 v4, 0x96

    const/16 v5, 0xa0

    const v6, 0x7f02008b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 758
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1b6

    const/16 v3, 0x19d

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02008c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 759
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xe0

    const/16 v3, 0xae

    const/16 v4, 0x78

    const/16 v5, 0xa0

    const v6, 0x7f02008d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 760
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 762
    const/4 v9, 0x0

    .line 763
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f02008e

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 764
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x9e

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02008f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 765
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1e

    const/16 v3, 0x15d

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020090

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 766
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1a7

    const/16 v3, 0x172

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020091

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 767
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x113

    const/16 v3, 0x1a9

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f020092

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 768
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x14c

    const/16 v3, 0x24b

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const v6, 0x7f020093

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 769
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x230

    const/16 v3, 0x114

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020094

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 770
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x124

    const/16 v3, 0xb7

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020095

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 771
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x4c

    const/16 v3, 0x105

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020096

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 772
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x125

    const/16 v3, 0x25

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020097

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 773
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1fd

    const/16 v3, 0xd1

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020098

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 774
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 776
    const/4 v9, 0x0

    .line 777
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020099

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 778
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1b9

    const/16 v3, 0xb5

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02009a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 779
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x196

    const/16 v3, 0x239

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02009b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 780
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x91

    const/16 v3, 0x1c1

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f02009c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 781
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x9

    const/16 v3, 0xd6

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02009d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 782
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x9c

    const/16 v3, 0x48

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02009e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 783
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1ff

    const/16 v3, 0x12a

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const v6, 0x7f02009f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 784
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x12d

    const/16 v3, 0xbb

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200a0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 785
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x158

    const/16 v3, 0x199

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200a1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 786
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1c1

    const/16 v3, 0x2a

    const/16 v4, 0x78

    const/16 v5, 0x64

    const v6, 0x7f0200a2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 787
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 789
    const/4 v9, 0x0

    .line 790
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200a3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 791
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x155

    const/16 v3, 0x12e

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200a4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 792
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x13d

    const/16 v3, 0x262

    const/16 v4, 0x50

    const/16 v5, 0x6e

    const v6, 0x7f0200a5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 793
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1a9

    const/16 v3, 0x24e

    const/16 v4, 0x6e

    const/16 v5, 0x82

    const v6, 0x7f0200a6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 794
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x142

    const/16 v3, 0x3d

    const/16 v4, 0x82

    const/16 v5, 0x96

    const v6, 0x7f0200a7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 795
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x6e

    const/16 v3, 0x150

    const/16 v4, 0x78

    const/16 v5, 0x5a

    const v6, 0x7f0200a8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 796
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x8e

    const/16 v3, 0xad

    const/16 v4, 0xa0

    const/16 v5, 0x64

    const v6, 0x7f0200a9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 797
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x207

    const/16 v4, 0x50

    const/16 v5, 0xa0

    const v6, 0x7f0200aa

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 798
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x204

    const/16 v3, 0x1a3

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200ab

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 799
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 801
    const/4 v9, 0x0

    .line 802
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200ac

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 803
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x10e

    const/16 v3, 0x1ca

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200ad

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 804
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x121

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200ae

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 805
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x216

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200af

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 806
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x243

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200b0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 807
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x17a

    const/16 v3, 0x99

    const/16 v4, 0x78

    const/16 v5, 0x82

    const v6, 0x7f0200b1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 808
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xe9

    const/16 v3, 0x132

    const/16 v4, 0x8d

    const/16 v5, 0x8d

    const v6, 0x7f0200b2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 809
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x101

    const/16 v4, 0x64

    const/16 v5, 0x82

    const v6, 0x7f0200b3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 810
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x23b

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f0200b4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 811
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x7e

    const/4 v3, 0x0

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f0200b5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 812
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 814
    const/4 v9, 0x0

    .line 815
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200b6

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 816
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x124

    const/16 v3, 0x1c6

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200b7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 817
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x21c

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200b8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 818
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x161

    const/16 v3, 0x10f

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200b9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 819
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xab

    const/16 v3, 0x19

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200ba

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 820
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x151

    const/16 v3, 0xa9

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200bb

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 821
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x224

    const/16 v3, 0xa0

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200bc

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 822
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x212

    const/16 v3, 0x1a4

    const/16 v4, 0x6e

    const/16 v5, 0x8c

    const v6, 0x7f0200bd

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 823
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1b0

    const/16 v3, 0x262

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const v6, 0x7f0200be

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 824
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0xe7

    const/16 v4, 0x82

    const/16 v5, 0x96

    const v6, 0x7f0200bf

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 825
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 828
    const/4 v9, 0x0

    .line 829
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200c0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 830
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x48

    const/16 v3, 0x10d

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200c1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 831
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xc9

    const/16 v3, 0x69

    const/16 v4, 0x50

    const/16 v5, 0x5a

    const v6, 0x7f0200c2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 832
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1a1

    const/16 v3, 0xfc

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200c3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 833
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x75

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200c4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 834
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x58

    const/4 v3, 0x2

    const/16 v4, 0x64

    const/16 v5, 0x96

    const v6, 0x7f0200c5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 835
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x10f

    const/16 v3, 0xcb

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200c6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 836
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x18b

    const/16 v3, 0x1b1

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200c7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 837
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x99

    const/16 v3, 0x175

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200c8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 838
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 840
    const/4 v9, 0x0

    .line 841
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200c9

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 842
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1d6

    const/16 v3, 0x1bf

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f0200ca

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 843
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x4

    const/16 v3, 0x19e

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200cb

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 844
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x98

    const/16 v3, 0x17e

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200cc

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 845
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x15b

    const/16 v3, 0x199

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200cd

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 846
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x11

    const/16 v3, 0xef

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200ce

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 847
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x25

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200cf

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 848
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x19d

    const/16 v3, 0xd6

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200d0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 849
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200d1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 850
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 852
    const/4 v9, 0x0

    .line 853
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200d2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 854
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x81

    const/16 v3, 0x193

    const/16 v4, 0x50

    const/16 v5, 0x82

    const v6, 0x7f0200d3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 855
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1ab

    const/16 v3, 0x1a4

    const/16 v4, 0x50

    const/16 v5, 0x6e

    const v6, 0x7f0200d4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 856
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x6c

    const/16 v3, 0x13b

    const/16 v4, 0x8c

    const/16 v5, 0x5a

    const v6, 0x7f0200d5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 857
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1b3

    const/16 v3, 0x145

    const/16 v4, 0x82

    const/16 v5, 0x50

    const v6, 0x7f0200d6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 858
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x11f

    const/16 v3, 0x13a

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200d7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 859
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1e0

    const/16 v3, 0x23

    const/16 v4, 0xa0

    const/16 v5, 0x82

    const v6, 0x7f0200d8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 860
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x40

    const/16 v3, 0x50

    const/16 v4, 0x6e

    const/16 v5, 0x64

    const v6, 0x7f0200d9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 861
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x134

    const/16 v3, 0xac

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200da

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 862
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xdb

    const/4 v3, 0x0

    const/16 v4, 0x96

    const/16 v5, 0x64

    const v6, 0x7f0200db

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 863
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 865
    const/4 v9, 0x0

    .line 866
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200dc

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 867
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x7b

    const/16 v3, 0x264

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200dd

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 868
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x195

    const/16 v3, 0xc4

    const/16 v4, 0x82

    const/16 v5, 0x78

    const v6, 0x7f0200de

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 869
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x10a

    const/4 v3, 0x0

    const/16 v4, 0x50

    const/16 v5, 0x64

    const v6, 0x7f0200df

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 870
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1f5

    const/16 v3, 0x208

    const/16 v4, 0x78

    const/16 v5, 0x64

    const v6, 0x7f0200e0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 871
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x161

    const/16 v3, 0x23f

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200e1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 872
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xe

    const/16 v3, 0x15c

    const/16 v4, 0x64

    const/16 v5, 0x50

    const v6, 0x7f0200e2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 873
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x90

    const/16 v3, 0x85

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200e3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 874
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xf9

    const/16 v3, 0x19a

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200e4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 875
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x108

    const/16 v3, 0x10c

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200e5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 876
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 878
    const/4 v9, 0x0

    .line 879
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200e6

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 880
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x44

    const/16 v3, 0xb9

    const/16 v4, 0x82

    const/16 v5, 0x50

    const v6, 0x7f0200e7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 881
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x2b

    const/16 v3, 0x115

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 882
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xb6

    const/16 v3, 0x19d

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200e9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 883
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x258

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200ea

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 884
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1cc

    const/16 v3, 0x1ad

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200eb

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 885
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1f8

    const/16 v3, 0x106

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200ec

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 886
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x193

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x8c

    const v6, 0x7f0200ed

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 887
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x141

    const/16 v3, 0x23a

    const/16 v4, 0xa0

    const/16 v5, 0x96

    const v6, 0x7f0200ee

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 888
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x230

    const/16 v3, 0x37

    const/16 v4, 0x50

    const/16 v5, 0x6e

    const v6, 0x7f0200ef

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 889
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x27

    const/16 v3, 0x1a9

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f0200f0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 890
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 892
    const/4 v9, 0x0

    .line 893
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200f1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 894
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xa9

    const/16 v3, 0x276

    const/16 v4, 0xa0

    const/16 v5, 0x5a

    const v6, 0x7f0200f2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 895
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x177

    const/16 v3, 0x196

    const/16 v4, 0x50

    const/16 v5, 0x82

    const v6, 0x7f0200f3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 896
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x4

    const/16 v3, 0x177

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200f4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 897
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x1f8

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200f5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 898
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x31

    const/16 v3, 0x1f7

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200f6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 899
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x21

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f0200f7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 900
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x19d

    const/16 v3, 0xbe

    const/16 v4, 0x8c

    const/16 v5, 0x78

    const v6, 0x7f0200f8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 901
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xe9

    const/16 v3, 0x10f

    const/16 v4, 0x79

    const/16 v5, 0x64

    const v6, 0x7f0200f9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 902
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd1

    const/16 v3, 0x82

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200fa

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 903
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1c0

    const/16 v3, 0x43

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200fb

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 904
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 906
    const/4 v9, 0x0

    .line 907
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f0200fc

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 908
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x9

    const/16 v3, 0x28

    const/16 v4, 0x78

    const/16 v5, 0x64

    const v6, 0x7f0200fd

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 909
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1cc

    const/16 v3, 0x6a

    const/16 v4, 0x96

    const/16 v5, 0x64

    const v6, 0x7f0200fe

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 910
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x203

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f0200ff

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 911
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1b4

    const/16 v3, 0x196

    const/16 v4, 0x78

    const/16 v5, 0x64

    const v6, 0x7f020100

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 912
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x212

    const/16 v3, 0x24b

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const v6, 0x7f020101

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 913
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x166

    const/16 v3, 0xe

    const/16 v4, 0x8c

    const/16 v5, 0x50

    const v6, 0x7f020102

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 914
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x162

    const/16 v3, 0x276

    const/16 v4, 0xa0

    const/16 v5, 0x5a

    const v6, 0x7f020103

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 915
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x80

    const/16 v3, 0x1ab

    const/16 v4, 0x82

    const/16 v5, 0x64

    const v6, 0x7f020104

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 916
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0xc5

    const/16 v4, 0xa0

    const/16 v5, 0xa0

    const v6, 0x7f020105

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 917
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 919
    const/4 v9, 0x0

    .line 920
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020106

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 921
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020107

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 922
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x280

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020108

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 923
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x16b

    const/16 v3, 0x112

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020109

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 924
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0x1a2

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02010a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 925
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xaa

    const/16 v3, 0x199

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02010b

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 926
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x0

    const/16 v3, 0xd6

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02010c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 927
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1fe

    const/16 v3, 0x240

    const/16 v4, 0x82

    const/16 v5, 0x82

    const v6, 0x7f02010d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 928
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x230

    const/16 v3, 0x142

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f02010e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 929
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x141

    const/16 v3, 0x224

    const/16 v4, 0x4f

    const/16 v5, 0x9e

    const v6, 0x7f02010f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 930
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v10, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 932
    const/4 v9, 0x0

    .line 933
    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f020110

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v7

    .line 934
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x68

    const/16 v4, 0x64

    const/16 v5, 0x65

    const v6, 0x7f020111

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 935
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x1bf

    const/16 v4, 0x64

    const/16 v5, 0x51

    const v6, 0x7f020112

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 936
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x2

    const/16 v3, 0x36

    const/16 v4, 0x51

    const/16 v5, 0x51

    const v6, 0x7f020113

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 937
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x14e

    const/16 v3, 0x237

    const/16 v4, 0x51

    const/16 v5, 0x51

    const v6, 0x7f020114

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 938
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1fe

    const/16 v3, 0x239

    const/16 v4, 0x82

    const/16 v5, 0x96

    const v6, 0x7f020115

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 939
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x1

    const/16 v3, 0x22f

    const/16 v4, 0xa0

    const/16 v5, 0xa0

    const v6, 0x7f020116

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 940
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x127

    const/16 v3, 0x102

    const/16 v4, 0x51

    const/16 v5, 0x51

    const v6, 0x7f020117

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 941
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/4 v2, 0x1

    const/16 v3, 0xca

    const/16 v4, 0x78

    const/16 v5, 0x83

    const v6, 0x7f020118

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 942
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x157

    const/16 v3, 0x1ab

    const/16 v4, 0x83

    const/16 v5, 0x83

    const v6, 0x7f020119

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 943
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v7

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd1

    const/16 v3, 0x48

    const/16 v4, 0x51

    const/16 v5, 0x51

    const v6, 0x7f02011a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 944
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "num":I
    .restart local v8    # "num":I
    aget-object v0, v0, v7

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 946
    const/4 v9, 0x0

    .line 947
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v1, Lcom/findit/battle/Objects$FindImage;

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    const v4, 0x7f02011b

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;III)V

    aput-object v1, v0, v8

    .line 948
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1bc

    const/16 v3, 0x23a

    const/16 v4, 0x82

    const/16 v5, 0x96

    const v6, 0x7f02011c

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 949
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x9c

    const/16 v3, 0x26c

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02011d

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 950
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x28

    const/16 v3, 0x1dc

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f02011e

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 951
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x2c

    const/4 v3, 0x4

    const/16 v4, 0x6e

    const/16 v5, 0x6e

    const v6, 0x7f02011f

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 952
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0xd2

    const/16 v3, 0xc3

    const/16 v4, 0x78

    const/16 v5, 0x78

    const v6, 0x7f020120

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 953
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x21c

    const/16 v3, 0x14a

    const/16 v4, 0x64

    const/16 v5, 0x64

    const v6, 0x7f020121

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 954
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "rectnum":I
    .restart local v10    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x1c3

    const/16 v3, 0x3e

    const/16 v4, 0x82

    const/16 v5, 0x6e

    const v6, 0x7f020122

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v9

    .line 955
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v0, v0, v8

    iget-object v11, v0, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "rectnum":I
    .restart local v9    # "rectnum":I
    new-instance v0, Lcom/findit/battle/Objects$FindRect;

    const/16 v2, 0x188

    const/16 v3, 0x18a

    const/16 v4, 0x50

    const/16 v5, 0x50

    const v6, 0x7f020123

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;IIIII)V

    aput-object v0, v11, v10

    .line 956
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    aget-object v0, v0, v8

    iput v9, v0, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 958
    iput v7, p0, Lcom/findit/battle/Objects;->mBaseImagesTotalnum:I

    .line 959
    return-void
.end method

.method private createCharacterData()V
    .locals 15

    .prologue
    .line 4343
    const-string v10, ">> createCharacterData()"

    invoke-static {v10}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4344
    const/4 v10, 0x4

    new-array v10, v10, [Lcom/findit/battle/Objects$CharacterData;

    sput-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    .line 4345
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x0

    new-instance v12, Lcom/findit/battle/Objects$CharacterData;

    const/4 v13, 0x3

    const/4 v14, 0x3

    invoke-direct {v12, p0, v13, v14}, Lcom/findit/battle/Objects$CharacterData;-><init>(Lcom/findit/battle/Objects;II)V

    aput-object v12, v10, v11

    .line 4347
    const/4 v10, 0x3

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    .line 4348
    .local v6, "joinimgids":[I
    const/4 v10, 0x3

    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 4349
    .local v4, "bodyimgids":[I
    const/4 v10, 0x3

    new-array v5, v10, [I

    fill-array-data v5, :array_2

    .line 4350
    .local v5, "headimgids":[I
    const/4 v10, 0x3

    new-array v7, v10, [I

    fill-array-data v7, :array_3

    .line 4351
    .local v7, "normalactionimgids":[I
    const/4 v10, 0x3

    new-array v8, v10, [I

    fill-array-data v8, :array_4

    .line 4352
    .local v8, "readyactionimgids":[I
    const/4 v10, 0x3

    new-array v9, v10, [I

    fill-array-data v9, :array_5

    .line 4354
    .local v9, "winactionimgids":[I
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v6, v10, Lcom/findit/battle/Objects$CharacterData;->mJoinImgIds:[I

    .line 4355
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v4, v10, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    .line 4356
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v5, v10, Lcom/findit/battle/Objects$CharacterData;->mHeadImgIds:[I

    .line 4357
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v7, v10, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    .line 4358
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v8, v10, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgIds:[I

    .line 4359
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iput-object v9, v10, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgIds:[I

    .line 4361
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x1

    new-instance v12, Lcom/findit/battle/Objects$CharacterData;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, p0, v13, v14}, Lcom/findit/battle/Objects$CharacterData;-><init>(Lcom/findit/battle/Objects;II)V

    aput-object v12, v10, v11

    .line 4362
    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f020133

    aput v11, v0, v10

    .line 4363
    .local v0, "aibodyimgids":[I
    const/4 v10, 0x1

    new-array v1, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f02012e

    aput v11, v1, v10

    .line 4364
    .local v1, "aiheadimgids":[I
    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f020134

    aput v11, v2, v10

    .line 4365
    .local v2, "ainormalactionimgids":[I
    const/4 v10, 0x1

    new-array v3, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f020135

    aput v11, v3, v10

    .line 4367
    .local v3, "aireadyactionimgids":[I
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v0, v10, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    .line 4368
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v1, v10, Lcom/findit/battle/Objects$CharacterData;->mHeadImgIds:[I

    .line 4369
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v2, v10, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    .line 4370
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x1

    aget-object v10, v10, v11

    iput-object v3, v10, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgIds:[I

    .line 4372
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x2

    new-instance v12, Lcom/findit/battle/Objects$CharacterData;

    const/16 v13, 0x14

    const/4 v14, 0x0

    invoke-direct {v12, p0, v13, v14}, Lcom/findit/battle/Objects$CharacterData;-><init>(Lcom/findit/battle/Objects;II)V

    aput-object v12, v10, v11

    .line 4373
    sget-object v10, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    const/4 v11, 0x3

    new-instance v12, Lcom/findit/battle/Objects$CharacterData;

    const/16 v13, 0x14

    const/4 v14, 0x0

    invoke-direct {v12, p0, v13, v14}, Lcom/findit/battle/Objects$CharacterData;-><init>(Lcom/findit/battle/Objects;II)V

    aput-object v12, v10, v11

    .line 4374
    return-void

    .line 4347
    nop

    :array_0
    .array-data 4
        0x7f02016d
        0x7f02016e
        0x7f02016f
    .end array-data

    .line 4348
    :array_1
    .array-data 4
        0x7f020136
        0x7f02013a
        0x7f02013e
    .end array-data

    .line 4349
    :array_2
    .array-data 4
        0x7f02012f
        0x7f020130
        0x7f020131
    .end array-data

    .line 4350
    :array_3
    .array-data 4
        0x7f020137
        0x7f02013b
        0x7f02013f
    .end array-data

    .line 4351
    :array_4
    .array-data 4
        0x7f020138
        0x7f02013c
        0x7f020140
    .end array-data

    .line 4352
    :array_5
    .array-data 4
        0x7f020139
        0x7f02013d
        0x7f020141
    .end array-data
.end method

.method private getSubTexts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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
    .line 343
    const-string v4, ">> getSubTexts()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 344
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v3, "subtexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 347
    .local v1, "length":I
    const/4 v2, 0x0

    .line 348
    .local v2, "startindex":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 360
    :goto_1
    return-object v3

    .line 349
    :cond_0
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 350
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 351
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v2, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkFindImages(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "run"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x0

    .line 1045
    const-string v6, ">> checkFindImages()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1047
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v2, "jsonarray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1049
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 1062
    :cond_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .end local v1    # "i":I
    .end local v2    # "jsonarray":Lorg/json/JSONArray;
    .end local v4    # "length":I
    :goto_1
    return-object v6

    .line 1050
    .restart local v1    # "i":I
    .restart local v2    # "jsonarray":Lorg/json/JSONArray;
    .restart local v4    # "length":I
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1051
    .local v5, "subjsonobject":Lorg/json/JSONObject;
    const-string v6, "imgId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1052
    .local v3, "jsontext":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1053
    iget-object v6, p0, Lcom/findit/battle/Objects;->mImgNumMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1054
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 1049
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    .end local v1    # "i":I
    .end local v2    # "jsonarray":Lorg/json/JSONArray;
    .end local v3    # "jsontext":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "subjsonobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1
.end method

.method public createFindImages(Landroid/content/Context;Lcom/findit/battle/DBAdapter;Z)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbhelper"    # Lcom/findit/battle/DBAdapter;
    .param p3, "run"    # Z

    .prologue
    .line 962
    const-string v12, ">> createFindImages()"

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 963
    const/16 v12, 0x3e8

    new-array v12, v12, [Lcom/findit/battle/Objects$FindImage;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    .line 965
    invoke-virtual/range {p2 .. p2}, Lcom/findit/battle/DBAdapter;->fetchImages()Landroid/database/Cursor;

    move-result-object v2

    .line 966
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 967
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_1

    .line 969
    :try_start_0
    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 971
    .local v5, "file":Ljava/io/File;
    :cond_0
    if-nez p3, :cond_3

    .line 1036
    .end local v5    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1039
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "download mImagesTotalnum: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/findit/battle/Objects;->mImagesTotalnum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 1041
    const/4 v12, 0x1

    :goto_1
    return v12

    .line 972
    .restart local v5    # "file":Ljava/io/File;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/findit/battle/Objects;->mImagesTotalnum:I

    add-int/lit8 v12, v7, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/findit/battle/Objects;->mImagesTotalnum:I

    .line 973
    .local v7, "index":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    new-instance v13, Lcom/findit/battle/Objects$FindImage;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/findit/battle/Objects$FindImage;-><init>(Lcom/findit/battle/Objects;)V

    aput-object v13, v12, v7

    .line 975
    const-string v12, "ImagesDatas"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, "datas":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 979
    .local v9, "jsonobject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "imgId"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/findit/battle/Objects$FindImage;->mImgNum:J

    .line 980
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v13, v12, v7

    const-string v12, "imgType"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "NM_IMG"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    :goto_2
    iput v12, v13, Lcom/findit/battle/Objects$FindImage;->mType:I

    .line 981
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "xSize"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mWidth:I

    .line 982
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "ySize"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mHeight:I

    .line 983
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const/4 v13, -0x1

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mImgId:I

    .line 984
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const/4 v13, -0x1

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mSoundId:I

    .line 985
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const/4 v13, -0x1

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mSoundEventId:I

    .line 986
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const/4 v13, 0x0

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "img"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "http://14.63.220.39/"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mImgPath:Ljava/lang/String;

    .line 988
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mSoundPath:Ljava/lang/String;

    .line 989
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mSoundEventPath:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 994
    :try_start_2
    const-string v12, "adImage"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 995
    .local v1, "adjsonobject":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 996
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "adId"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/findit/battle/Objects$FindImage;->mAdNum:J

    .line 997
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "viewCount"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/findit/battle/Objects$FindImage;->mAdCount:J

    .line 998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "view"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/findit/battle/Objects$FindImage;->mAdView:J

    .line 999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "adName"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mAdText:Ljava/lang/String;

    .line 1000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const/4 v13, -0x1

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mAdImgId:I

    .line 1001
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "img"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mAdImgPath:Ljava/lang/String;

    .line 1002
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "regDate"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mRegDate:Ljava/lang/String;

    .line 1003
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "expireDate"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mExpireDate:Ljava/lang/String;

    .line 1004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "urlDownload"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mDownloadUrl:Ljava/lang/String;

    .line 1005
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "urlVideo"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mVideoUrl:Ljava/lang/String;

    .line 1006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    const-string v13, "urlDetail"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindImage;->mDetailUrl:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1012
    .end local v1    # "adjsonobject":Lorg/json/JSONObject;
    :cond_4
    :goto_3
    :try_start_3
    const-string v12, "imageCut"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1013
    .local v8, "jsonarray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 1014
    .local v10, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-lt v6, v10, :cond_6

    .line 1027
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_0

    .line 980
    .end local v6    # "i":I
    .end local v8    # "jsonarray":Lorg/json/JSONArray;
    .end local v10    # "length":I
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 1015
    .restart local v6    # "i":I
    .restart local v8    # "jsonarray":Lorg/json/JSONArray;
    .restart local v10    # "length":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    iget v13, v12, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/findit/battle/Objects$FindImage;->mFindRectTotalnum:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    iget-object v12, v12, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    new-instance v13, Lcom/findit/battle/Objects$FindRect;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/findit/battle/Objects$FindRect;-><init>(Lcom/findit/battle/Objects;)V

    aput-object v13, v12, v6

    .line 1018
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1020
    .local v11, "subjsonobject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    iget-object v12, v12, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v12, v12, v6

    const-string v13, "x"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/findit/battle/Objects$FindRect;->mX:I

    .line 1021
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    iget-object v12, v12, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v12, v12, v6

    const-string v13, "y"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/findit/battle/Objects$FindRect;->mY:I

    .line 1022
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    iget-object v12, v12, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v12, v12, v6

    const-string v13, "xSize"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/findit/battle/Objects$FindRect;->mWidth:I

    .line 1023
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    iget-object v12, v12, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v12, v12, v6

    const-string v13, "ySize"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/findit/battle/Objects$FindRect;->mHeight:I

    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    aget-object v12, v12, v7

    iget-object v12, v12, Lcom/findit/battle/Objects$FindImage;->mFindRect:[Lcom/findit/battle/Objects$FindRect;

    aget-object v12, v12, v6

    const-string v13, "img"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "http://14.63.220.39/"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/findit/battle/Objects$FindRect;->mImgPath:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1014
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 1031
    .end local v3    # "datas":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "jsonarray":Lorg/json/JSONArray;
    .end local v9    # "jsonobject":Lorg/json/JSONObject;
    .end local v10    # "length":I
    .end local v11    # "subjsonobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 1032
    .local v4, "e":Lorg/json/JSONException;
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1008
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v3    # "datas":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "index":I
    .restart local v9    # "jsonobject":Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    goto/16 :goto_3
.end method

.method public getDistance(IIII)F
    .locals 4
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 335
    const-string v2, ">> getDistance()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 336
    sub-int v0, p3, p1

    .line 337
    .local v0, "x":I
    sub-int v1, p4, p2

    .line 339
    .local v1, "y":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public getFindImageForAdNum(JZ)Lcom/findit/battle/Objects$FindImage;
    .locals 5
    .param p1, "adnum"    # J
    .param p3, "base"    # Z

    .prologue
    .line 1066
    const-string v3, ">> getFindImageForAdNum()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1070
    if-eqz p3, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBaseImages:[Lcom/findit/battle/Objects$FindImage;

    .line 1072
    .local v0, "findimage":[Lcom/findit/battle/Objects$FindImage;
    iget v2, p0, Lcom/findit/battle/Objects;->mBaseImagesTotalnum:I

    .line 1079
    .local v2, "totalnum":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 1084
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 1075
    .end local v0    # "findimage":[Lcom/findit/battle/Objects$FindImage;
    .end local v1    # "i":I
    .end local v2    # "totalnum":I
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/Objects;->mImages:[Lcom/findit/battle/Objects$FindImage;

    .line 1076
    .restart local v0    # "findimage":[Lcom/findit/battle/Objects$FindImage;
    iget v2, p0, Lcom/findit/battle/Objects;->mImagesTotalnum:I

    .restart local v2    # "totalnum":I
    goto :goto_0

    .line 1080
    .restart local v1    # "i":I
    :cond_1
    aget-object v3, v0, v1

    iget-wide v3, v3, Lcom/findit/battle/Objects$FindImage;->mAdNum:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 1081
    aget-object v3, v0, v1

    goto :goto_2

    .line 1079
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public loadCharactersImage(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4329
    const-string v2, ">> loadCharactersImage()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4330
    iget-object v2, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    array-length v1, v2

    .line 4331
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4333
    return-void

    .line 4332
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/findit/battle/Objects$Character;->loadImage(Landroid/content/Context;)V

    .line 4331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadChracters(Lcom/findit/battle/DBAdapter;)V
    .locals 4
    .param p1, "dbadapter"    # Lcom/findit/battle/DBAdapter;

    .prologue
    const/4 v3, 0x0

    .line 4312
    const-string v1, ">> loadChracters()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4313
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/findit/battle/DBAdapter;->fetchCharacters(J)Landroid/database/Cursor;

    move-result-object v0

    .line 4315
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 4316
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4317
    iget-object v1, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v1, v3

    const-string v2, "mObjects_mCharacter_mName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    .line 4318
    iget-object v1, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v1, v3

    const-string v2, "mObjects_mCharacter_mBodyType"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/findit/battle/Objects$Character;->mBodyType:I

    .line 4319
    iget-object v1, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v1, v3

    const-string v2, "mObjects_mCharacter_mBodyNum"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    .line 4320
    iget-object v1, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v1, v3

    const-string v2, "mObjects_mCharacter_mFaceImgnum"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/findit/battle/Objects$Character;->mFaceImgnum:I

    .line 4321
    iget-object v1, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v1, v1, v3

    const-string v2, "mObjects_mCharacter_mFaceImgPath"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/findit/battle/Objects$Character;->mFaceImgPath:Ljava/lang/String;

    .line 4324
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4326
    :cond_1
    return-void
.end method

.method public recycleResources()V
    .locals 1

    .prologue
    .line 326
    const-string v0, ">> recycleResources()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/findit/battle/Objects;->mMainMenuButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0}, Lcom/findit/battle/Objects$Buttons;->recycleImageInButton()V

    .line 328
    iget-object v0, p0, Lcom/findit/battle/Objects;->mBattleRoomButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0}, Lcom/findit/battle/Objects$Buttons;->recycleImageInButton()V

    .line 330
    iget-object v0, p0, Lcom/findit/battle/Objects;->mResultButtons:Lcom/findit/battle/Objects$Buttons;

    invoke-virtual {v0}, Lcom/findit/battle/Objects$Buttons;->recycleImageInButton()V

    .line 331
    iget-object v0, p0, Lcom/findit/battle/Objects;->mSkills:Lcom/findit/battle/Objects$Skills;

    invoke-virtual {v0}, Lcom/findit/battle/Objects$Skills;->recycleImageInSkills()V

    .line 332
    return-void
.end method

.method public saveChracters(Lcom/findit/battle/DBAdapter;Ljava/lang/String;)V
    .locals 5
    .param p1, "dbadapter"    # Lcom/findit/battle/DBAdapter;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4304
    const-string v2, ">> saveChracters()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4305
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/findit/battle/Objects$Character;->mBodyNum:I

    aput v3, v0, v2

    .line 4306
    .local v0, "intvalues":[I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    .line 4308
    .local v1, "strvalues":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/findit/battle/DBAdapter;->updateCharacters(J[I[Ljava/lang/String;)Z

    .line 4309
    return-void
.end method

.method public setCharactersImgnum(I)V
    .locals 3
    .param p1, "imgnum"    # I

    .prologue
    .line 4336
    const-string v2, ">> setCharactersImgnum()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4337
    iget-object v2, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    array-length v1, v2

    .line 4338
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 4340
    return-void

    .line 4339
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 4338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
