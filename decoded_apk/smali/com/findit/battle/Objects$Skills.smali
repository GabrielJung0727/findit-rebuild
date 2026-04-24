.class Lcom/findit/battle/Objects$Skills;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Skills"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/Objects$Skills$Skill;
    }
.end annotation


# static fields
.field public static final ANIM_END:I = -0x1

.field public static final ANIM_START_ATTACK:I = 0x0

.field public static final ANIM_START_LEFT:I = 0x5

.field public static final ANIM_START_RIGHT:I = 0x7

.field public static final ANIM_START_UPDOWN:I = 0x0

.field public static final BERRYSKILL_INDEX:I = 0x2710

.field public static final IMAGETOTALNUM:I = 0xa

.field public static final SETSKILL_NULL:I = -0x2

.field public static final SETSKILL_TOTALNUM:I = 0x4


# instance fields
.field public mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

.field public mIconSize:I

.field public mIconSpace:I

.field public mImgBmpId:[I

.field public mImgBmpPath:[Ljava/lang/String;

.field public mImgBmpTotalnum:I

.field public mImgPngId:[I

.field public mImgPngPath:[Ljava/lang/String;

.field public mImgPngTotalnum:I

.field public mSetSkillActiveIndexTable:[Z

.field private mSetSkillIndexTable:[I

.field public mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

.field public mSkillTotalnum:I

.field public mSrcImgBmp:[Landroid/graphics/Bitmap;

.field public mSrcImgPng:[Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;Landroid/content/Context;IIII)V
    .locals 22
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "displaywidth"    # I
    .param p4, "displayheight"    # I
    .param p5, "size"    # I
    .param p6, "space"    # I

    .prologue
    .line 1490
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/Objects$Skills;->this$0:Lcom/findit/battle/Objects;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    const-string v3, ">> Skills()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1492
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    .line 1493
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    .line 1495
    const/16 v3, 0x32

    new-array v3, v3, [Lcom/findit/battle/Objects$Skills$Skill;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    .line 1496
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSetSkillIndexTable:[I

    .line 1498
    new-instance v3, Lcom/findit/battle/Objects$Skills$Skill;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 1501
    const/4 v3, 0x5

    new-array v0, v3, [Z

    move-object/from16 v19, v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v19, v3

    .line 1502
    .local v19, "setskillactiveindextable":[Z
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    .line 1505
    const/16 v3, 0xa

    new-array v3, v3, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    .line 1506
    const/16 v3, 0xa

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSrcImgPng:[Landroid/graphics/drawable/Drawable;

    .line 1507
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpPath:[Ljava/lang/String;

    .line 1508
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgPngPath:[Ljava/lang/String;

    .line 1509
    const/16 v3, 0xa

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    .line 1510
    const/16 v3, 0xa

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgPngId:[I

    .line 1512
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpPath:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgPngPath:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgPngId:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 1517
    const/16 v17, 0x0

    .line 1518
    .local v17, "num":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .local v18, "num":I
    const v4, 0x7f020146

    aput v4, v3, v17

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    const v4, 0x7f020147

    aput v4, v3, v18

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .restart local v18    # "num":I
    const v4, 0x7f020148

    aput v4, v3, v17

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    const v4, 0x7f020149

    aput v4, v3, v18

    .line 1522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .restart local v18    # "num":I
    const v4, 0x7f02014a

    aput v4, v3, v17

    .line 1523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    const v4, 0x7f02014b

    aput v4, v3, v18

    .line 1524
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .restart local v18    # "num":I
    const v4, 0x7f02014c

    aput v4, v3, v17

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    const v4, 0x7f02014d

    aput v4, v3, v18

    .line 1526
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$Skills;->mImgBmpTotalnum:I

    .line 1528
    const/16 v17, 0x0

    .line 1529
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$Skills;->mImgPngTotalnum:I

    .line 1539
    div-int/lit8 v3, p4, 0xa

    mul-int/lit8 v4, p6, 0x2

    sub-int v14, v3, v4

    .line 1540
    .local v14, "aisize":I
    sub-int v13, p3, p6

    .line 1541
    .local v13, "airight":I
    sub-int v12, v13, v14

    .line 1542
    .local v12, "aileft":I
    sub-int v11, p4, p6

    .line 1543
    .local v11, "aibottom":I
    sub-int v15, v11, v14

    .line 1548
    .local v15, "aitop":I
    const/16 v17, 0x0

    .line 1549
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    const v3, 0x7f0201bc

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1550
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0xd

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1552
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1554
    .local v16, "index":I
    const/16 v20, 0x0

    .line 1555
    .local v20, "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .local v21, "subnum":I
    const/4 v4, 0x0

    aput v4, v3, v20

    .line 1556
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1557
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/13,68/50,50/0/60|S/50,50/20,20/0.2&A/0,235/0.2"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1559
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1560
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1561
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x0

    aput v4, v3, v20

    .line 1562
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1563
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/28,78/50,50/0/60|D/0.2|S/50,50/20,20/0.2&A/0,235/0.2"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1565
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1566
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1567
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x0

    aput v4, v3, v20

    .line 1568
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1569
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/33,47/50,50/0/60|D/0.4|S/50,50/20,20/0.2&A/0,235/0.2"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1571
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1572
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1573
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x0

    aput v4, v3, v20

    .line 1574
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1575
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/54,54/50,50/0/60|D/0.6|S/50,50/20,20/0.2&A/0,235/0.2"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1577
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1578
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1579
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x0

    aput v4, v3, v20

    .line 1580
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1581
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/60,20/50,50/0/60|D/0.8|S/50,50/20,20/0.2&A/0,235/0.2"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1583
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1584
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1585
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x0

    aput v4, v3, v20

    .line 1586
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1587
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/81,30/50,50/0/60|D/1.0|S/50,50/20,20/0.2&A/0,235/0.2"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1589
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1590
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1591
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x0

    aput v4, v3, v20

    .line 1592
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1593
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/86,-4/50,50/0/60|D/1.2|S/50,50/20,20/0.2&A/0,235/0.2"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1595
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1596
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1597
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f020157

    aput v4, v3, v20

    .line 1598
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1599
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1601
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, -0x1

    const/4 v8, 0x1

    const v9, 0x7f09006b

    const v10, 0x7f090073

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .restart local v18    # "num":I
    aput-object v2, v3, v17

    .line 1605
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const v3, 0x7f0201bd

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1606
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0xe

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1608
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1611
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1612
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x1

    aput v4, v3, v20

    .line 1613
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1614
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/30,33/7,52/0/60|A/0,255/0.3|A/255,235/0.1"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1616
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1617
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1618
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x1

    aput v4, v3, v20

    .line 1619
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1620
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/53,56/6,41/0/120|D/0.4|A/0,255/0.3|A/255,235/0.1"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1622
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1623
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1624
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f020158

    aput v4, v3, v20

    .line 1625
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1626
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1628
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x7f09006c

    const v10, 0x7f090074

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    aput-object v2, v3, v18

    .line 1632
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const v3, 0x7f0201a1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1633
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0xf

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1635
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1636
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1637
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1638
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1639
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/10,10/0,0/0/0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/2.8|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/5.6|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1641
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1642
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1643
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1644
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1645
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/40,40/0,0/0/0|D/0.4|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/3.2|T/70,70/70,70/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/6.0|T/15,45/15,45/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1647
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1648
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1649
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1650
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1651
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/80,80/0,0/0/0|D/0.8|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/3.6|T/55,70/55,70/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/6.4|T/65,35/65,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1653
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1654
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1655
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1656
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1657
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/50,20/0,0/0/0|D/1.2|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/4.0|T/15,20/15,20/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/6.8|T/75,35/75,35/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1659
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1660
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1661
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1662
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1663
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/20,70/0,0/0/0|D/1.6|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/4.4|T/90,25/90,25/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/7.2|T/95,85/95,85/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1665
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1666
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1667
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1668
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1669
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/90,10/0,0/0/0|D/2.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/4.8|T/50,30/50,30/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/7.6|T/65,25/65,25/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1671
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1672
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1673
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1674
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1675
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/40,30/0,0/0/0|D/2.4|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/5.2|T/60,80/60,80/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/8.0|T/5,50/5,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1677
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1678
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1679
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1680
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1681
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/20,60/0,0/0/0|D/2.8|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/5.6|T/80,60/80,60/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/8.4|T/55,85/55,85/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1683
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1684
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1685
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1686
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1687
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/60,20/0,0/0/0|D/3.2|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/6.0|T/30,70/30,70/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4|D/8.8|T/75,60/75,60/0.0|S/0,0/10,10/0.4&A/0,235/0.4|D/0.4|S/10,10/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1689
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1690
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1691
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x2

    aput v4, v3, v20

    .line 1692
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1693
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/45,60/0,0/0/0|D/3.6|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/6.4|T/70,35/70,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4|D/9.2|T/30,35/30,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|D/0.4|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1695
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1696
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1697
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f020159

    aput v4, v3, v20

    .line 1698
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1699
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1701
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x7f09006d

    const v10, 0x7f090075

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .restart local v18    # "num":I
    aput-object v2, v3, v17

    .line 1705
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const v3, 0x7f0201a2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1706
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0x10

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1708
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1709
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1710
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x3

    aput v4, v3, v20

    .line 1711
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1712
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/70,50/4,5/0/0|S/4,5/12,14/0.5&A/0,220/0.5|S/12,14/10,12/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1714
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1715
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1716
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x3

    aput v4, v3, v20

    .line 1717
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1718
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/30,50/4,5/0/0|S/4,5/12,14/0.5&A/0,220/0.5|S/12,14/10,12/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1720
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1721
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1722
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f02015a

    aput v4, v3, v20

    .line 1723
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1724
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1726
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x7f09006e

    const v10, 0x7f090076

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    aput-object v2, v3, v18

    .line 1730
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const v3, 0x7f0201a3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1731
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0x13

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1733
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1734
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1735
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1736
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1737
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/-5,-5/5,5/220/0|T/-5,-5/50,105/3.0|D/0.1|T/0,-5/55,105/3.0|D/0.1|T/5,-5/60,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1739
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1740
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1741
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1742
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1743
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/50,-5/5,5/220/0|D/0.3|T/50,-5/90,105/3.0|D/0.1|T/45,-5/85,105/3.0|D/0.1|T/25,-5/65,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1745
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1746
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1747
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1748
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1749
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/5,-5/5,5/220/0|D/0.8|T/5,-5/60,105/3.0|D/0.1|T/10,-5/65,105/3.0|D/0.1|T/50,-5/90,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1751
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1752
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1753
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1754
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1755
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/-5,15/5,5/220/0|D/2.1|T/-5,15/40,105/3.0|D/0.1|T/-5,20/35,105/3.0|D/0.1|T/40,-5/80,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1757
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1758
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1759
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1760
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1761
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/30,-5/5,5/220/0|D/2.6|T/30,-5/70,105/3.0|D/0.1|T/80,-5/105,50/3.0|D/0.1|T/20,-5/60,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1763
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1764
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1765
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1766
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1767
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/60,-5/5,5/220/0|D/2.9|T/60,-5/100,105/3.0|D/0.1|T/50,-5/95,105/3.0|D/0.1|T/-5,20/35,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1769
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1770
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1771
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1772
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1773
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/-5,30/5,5/220/0|D/3.4|T/-5,30/20,105/3.0|D/0.1|T/-5,50/15,105/3.0|D/0.1|T/75,-5/100,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1775
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1776
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1777
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x4

    aput v4, v3, v20

    .line 1778
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1779
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/40,-5/5,5/220/0|D/3.7|T/40,-5/80,105/3.0|D/0.1|T/10,-5/40,105/3.0|D/0.1|T/-5,0/45,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1781
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1782
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1783
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f02015b

    aput v4, v3, v20

    .line 1784
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1785
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1787
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x7f09006f

    const v10, 0x7f090077

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .restart local v18    # "num":I
    aput-object v2, v3, v17

    .line 1791
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const v3, 0x7f0201a4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1792
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0x14

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1794
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1795
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1796
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1797
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1798
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/10,10/0,0/0/0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/2.8|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/5.6|T/50,50/50,50/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1800
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1801
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1802
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1803
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1804
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/40,40/0,0/0/0|D/0.4|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/3.2|T/70,70/70,70/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/6.0|T/15,45/15,45/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1806
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1807
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1808
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1809
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1810
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/80,80/0,0/0/0|D/0.8|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/3.6|T/55,70/55,70/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/6.4|T/65,35/65,35/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1812
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1813
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1814
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1815
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1816
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/50,20/0,0/0/0|D/1.2|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/4.0|T/15,20/15,20/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/6.8|T/75,35/75,35/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1818
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1819
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1820
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1821
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1822
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/20,70/0,0/0/0|D/1.6|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/4.4|T/90,25/90,25/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/7.2|T/95,85/95,85/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1824
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1825
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1826
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1827
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1828
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/90,10/0,0/0/0|D/2.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/4.8|T/50,30/50,30/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/7.6|T/65,25/65,25/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1830
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1831
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1832
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1833
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1834
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/40,30/0,0/0/0|D/2.4|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/5.2|T/60,80/60,80/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4|D/8.0|T/5,50/5,50/0.0|S/0,0/25,25/0.4&A/0,235/0.4|D/0.4|S/25,25/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1836
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1837
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1838
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1839
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1840
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/20,60/0,0/0/0|D/2.8|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/5.6|T/80,60/80,60/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/8.4|T/55,85/55,85/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1842
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1843
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1844
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1845
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1846
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/60,20/0,0/0/0|D/3.2|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/6.0|T/30,70/30,70/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4|D/8.8|T/75,60/75,60/0.0|S/0,0/20,20/0.4&A/0,235/0.4|D/0.4|S/20,20/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1848
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1849
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1850
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x5

    aput v4, v3, v20

    .line 1851
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1852
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/45,60/0,0/0/0|D/3.6|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/6.4|T/70,35/70,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4|D/9.2|T/30,35/30,35/0.0|S/0,0/15,15/0.4&A/0,235/0.4|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/13,13/0.1|S/13,13/15,15/0.1|S/15,15/0,0/0.4&A/235,0/0.4"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1854
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1855
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1856
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f02015c

    aput v4, v3, v20

    .line 1857
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1858
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1860
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x7f090070

    const v10, 0x7f090078

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    aput-object v2, v3, v18

    .line 1864
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const v3, 0x7f0201a5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1865
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0x15

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1867
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1868
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1869
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x6

    aput v4, v3, v20

    .line 1870
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1871
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/70,50/4,5/0/0|S/4,5/22,27/0.5&A/0,220/0.5|S/22,27/20,25/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1873
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1874
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1875
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x6

    aput v4, v3, v20

    .line 1876
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1877
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/30,50/4,5/0/0|S/4,5/22,27/0.5&A/0,220/0.5|S/22,27/20,25/0.2|D/0.5|R/0,10/+/0.5|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,10/+/1.0|R/10,350/-/1.0|R/350,0/+/0.5"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1879
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1880
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1881
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f02015d

    aput v4, v3, v20

    .line 1882
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1883
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1885
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x7f090071

    const v10, 0x7f090079

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v18, v17, 0x1

    .end local v17    # "num":I
    .restart local v18    # "num":I
    aput-object v2, v3, v17

    .line 1889
    new-instance v2, Lcom/findit/battle/Objects$Skills$Skill;

    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const v3, 0x7f0201a6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/findit/battle/Objects$Skills$Skill;-><init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V

    .line 1890
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/16 v3, 0x16

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 1892
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1893
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1894
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1895
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1896
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/-5,-5/5,5/220/0|T/-5,-5/50,110/3.0&S/5,5/10,10/3.0|D/0.1|T/0,-5/55,110/3.0&S/5,5/10,10/3.0|D/0.1|T/5,-5/60,110/3.0&S/5,5/10,10/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1898
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1899
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1900
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1901
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1902
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/50,-5/5,5/220/0|D/0.3|T/50,-5/90,105/3.0|D/0.1|T/45,-5/85,105/3.0|D/0.1|T/25,-5/65,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1904
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1905
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1906
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1907
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1908
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/5,-5/5,5/220/0|D/0.8|T/5,-5/60,110/3.0&S/5,5/10,10/3.0|D/0.1|T/10,-5/65,110/3.0&S/5,5/10,10/3.0|D/0.1|T/50,-5/90,110/3.0&S/5,5/10,10/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1910
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1911
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1912
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1913
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1914
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/-5,15/5,5/220/0|D/2.1|T/-5,15/40,110/3.0&S/5,5/10,10/3.0|D/0.1|T/-5,20/35,110/3.0&S/5,5/10,10/3.0|D/0.1|T/40,-5/80,110/3.0&S/5,5/10,10/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1916
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1917
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1918
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1919
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1920
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/30,-5/5,5/220/0|D/2.6|T/30,-5/70,108/3.0&S/5,5/8,8/3.0|D/0.1|T/80,-5/108,50/3.0&S/5,5/8,8/3.0|D/0.1|T/20,-5/60,108/3.0&S/5,5/8,8/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1922
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1923
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1924
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1925
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1926
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/60,-5/5,5/220/0|D/2.9|T/60,-5/100,105/3.0|D/0.1|T/50,-5/95,105/3.0|D/0.1|T/-5,20/35,105/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1928
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1929
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1930
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1931
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1932
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/-5,30/5,5/220/0|D/3.4|T/-5,30/20,110/3.0&S/5,5/10,10/3.0|D/0.1|T/-5,50/15,110/3.0&S/5,5/10,10/3.0|D/0.1|T/75,-5/100,110/3.0&S/5,5/10,10/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1934
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 1935
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1936
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mSrcImgBmpnum:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const/4 v4, 0x7

    aput v4, v3, v20

    .line 1937
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgBmpTotalnum:I

    .line 1938
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    const-string v4, "N/0/40,-5/5,5/220/0|D/3.7|T/40,-5/80,110/3.0&S/5,5/10,10/3.0|D/0.1|T/10,-5/40,110/3.0&S/5,5/10,10/3.0|D/0.1|T/-5,0/45,110/3.0&S/5,5/10,10/3.0"

    invoke-virtual {v3, v4}, Lcom/findit/battle/Objects$Animation;->set(Ljava/lang/String;)V

    .line 1940
    iget v0, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    move/from16 v16, v0

    .end local v16    # "index":I
    add-int/lit8 v3, v16, 0x1

    iput v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 1941
    .restart local v16    # "index":I
    const/16 v20, 0x0

    .line 1942
    .end local v21    # "subnum":I
    .restart local v20    # "subnum":I
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngId:[I

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "subnum":I
    .restart local v21    # "subnum":I
    const v4, 0x7f02015e

    aput v4, v3, v20

    .line 1943
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    move/from16 v0, v21

    iput v0, v3, Lcom/findit/battle/Objects$AnimObject;->mImgPngTotalnum:I

    .line 1944
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v3, v3, v16

    iget-object v3, v3, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v12, v15, v13, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1946
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x7f090072

    const v10, 0x7f09007a

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v10}, Lcom/findit/battle/Objects$Skills$Skill;->setContent(Landroid/content/Context;IIIIZII)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    add-int/lit8 v17, v18, 0x1

    .end local v18    # "num":I
    .restart local v17    # "num":I
    aput-object v2, v3, v18

    .line 1949
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    .line 1951
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/findit/battle/Objects$Skills;->loadImage(Landroid/content/Context;)V

    .line 1952
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->this$0:Lcom/findit/battle/Objects;

    return-object v0
.end method


# virtual methods
.method public animation(F)V
    .locals 3
    .param p1, "speedrate"    # F

    .prologue
    .line 2221
    const-string v2, ">> animation()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v0, v2, :cond_1

    .line 2229
    :cond_0
    return-void

    .line 2223
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v2, v0

    .line 2224
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_0

    .line 2227
    invoke-virtual {v1, p1}, Lcom/findit/battle/Objects$Skills$Skill;->animation(F)V

    .line 2222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public animation(FLcom/findit/battle/GameView;)V
    .locals 5
    .param p1, "speedrate"    # F
    .param p2, "gameview"    # Lcom/findit/battle/GameView;

    .prologue
    .line 2232
    const-string v3, ">> animation()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2234
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v1, v3, :cond_2

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2244
    .local v0, "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v0, :cond_1

    .line 2245
    iget v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 2246
    invoke-virtual {v0, p1, p2}, Lcom/findit/battle/Objects$Skills$Skill;->animation(FLcom/findit/battle/GameView;)V

    .line 2248
    :cond_1
    return-void

    .line 2235
    .end local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_2
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v3, v1

    .line 2236
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v2, :cond_0

    .line 2239
    invoke-virtual {v2, p1, p2}, Lcom/findit/battle/Objects$Skills$Skill;->animation(FLcom/findit/battle/GameView;)V

    .line 2234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clearSetSkillIndexTable()V
    .locals 2

    .prologue
    .line 2142
    const-string v0, ">> clearSetSkillIndexTable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mSetSkillIndexTable:[I

    const/4 v1, -0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2144
    return-void
.end method

.method public doActionDraw(Landroid/graphics/Canvas;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftindex"    # I
    .param p3, "rightindex"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 2437
    const-string v4, ">> doActionDraw()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2440
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2441
    .local v0, "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v0, :cond_0

    .line 2442
    iget v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-le v4, v7, :cond_0

    .line 2443
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 2444
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    iget-object v5, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2445
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    iget-object v5, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2446
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2452
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-lt v1, v4, :cond_3

    .line 2469
    if-le p2, v7, :cond_1

    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge p2, v4, :cond_1

    .line 2470
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v4, p2

    .line 2471
    .local v3, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_1

    .line 2472
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2473
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2474
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2479
    .end local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_1
    if-le p3, v7, :cond_2

    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge p3, v4, :cond_2

    .line 2480
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v4, p3

    .line 2481
    .restart local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_2

    .line 2482
    const/4 v1, 0x0

    :goto_1
    iget v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    if-lt v1, v4, :cond_5

    .line 2486
    .end local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_2
    return-void

    .line 2453
    :cond_3
    invoke-virtual {p0, v1}, Lcom/findit/battle/Objects$Skills;->getSetSkillIndex(I)I

    move-result v2

    .line 2454
    .local v2, "index":I
    if-le v2, v7, :cond_4

    .line 2455
    if-eq v2, p2, :cond_4

    .line 2456
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v4, v2

    .line 2457
    .restart local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_4

    .line 2460
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 2461
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2462
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mImgPng:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v4, v4, v6

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2452
    .end local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2483
    .end local v2    # "index":I
    .restart local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_5
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lcom/findit/battle/Objects$AnimObject;->doDraw(Landroid/graphics/Canvas;)V

    .line 2482
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public doIconDraw(Landroid/graphics/Canvas;I)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 2377
    const-string v3, ">> doIconDraw()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2380
    .local v0, "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v0, :cond_0

    .line 2381
    iget v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-le v3, v6, :cond_0

    .line 2382
    iget-object v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    .line 2383
    iget-boolean v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    if-eqz v3, :cond_0

    .line 2384
    iget-object v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2385
    iget-object v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2386
    iget-object v3, v0, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2393
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v1, v3, :cond_4

    .line 2416
    :cond_1
    if-le p2, v6, :cond_3

    iget v3, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge p2, v3, :cond_3

    .line 2417
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v3, p2

    .line 2418
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v2, :cond_3

    .line 2419
    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    if-eq v3, v7, :cond_3

    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    if-eq v3, v8, :cond_3

    .line 2420
    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    if-gt v3, v6, :cond_2

    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-le v3, v6, :cond_3

    .line 2423
    :cond_2
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_3

    .line 2424
    iget-boolean v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    if-eqz v3, :cond_3

    .line 2425
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    iget-object v4, v2, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2426
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    iget-object v4, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2427
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2434
    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_3
    return-void

    .line 2394
    :cond_4
    if-eq v1, p2, :cond_6

    .line 2395
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v3, v1

    .line 2396
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v2, :cond_1

    .line 2399
    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    if-eqz v3, :cond_6

    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    if-eq v3, v7, :cond_6

    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    if-eq v3, v8, :cond_6

    .line 2400
    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    if-gt v3, v6, :cond_5

    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-le v3, v6, :cond_6

    .line 2403
    :cond_5
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    if-eqz v3, :cond_6

    .line 2404
    iget-boolean v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    if-eqz v3, :cond_6

    .line 2405
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    iget-object v4, v2, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2406
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    iget-object v4, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2407
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v5

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2393
    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public getEmptySlotNum()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 2272
    const-string v4, ">> getEmptySlotNum()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2273
    const/16 v4, 0x8

    new-array v2, v4, [Z

    .line 2274
    .local v2, "table":[Z
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 2276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v0, v4, :cond_2

    .line 2285
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_4

    move v0, v3

    .line 2290
    .end local v0    # "i":I
    :cond_1
    return v0

    .line 2277
    .restart local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v4, v0

    .line 2278
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_0

    .line 2281
    iget v4, v1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    if-le v4, v3, :cond_3

    iget v4, v1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 2282
    iget v4, v1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 2276
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2286
    .end local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_4
    aget-boolean v4, v2, v0

    if-eqz v4, :cond_1

    .line 2285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 2294
    const-string v3, ">> getIndex()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2295
    iget v2, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    .line 2296
    .local v2, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 2303
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 2297
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v3, v0

    .line 2299
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_2

    iget v3, v1, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    if-eq v3, p1, :cond_0

    .line 2296
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSetSkillIndex(I)I
    .locals 6
    .param p1, "setnum"    # I

    .prologue
    const/4 v3, -0x1

    .line 2251
    const-string v4, ">> getSetSkillIndex()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2252
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills;->mSetSkillIndexTable:[I

    .line 2254
    .local v2, "table":[I
    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 2255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v0, v4, :cond_2

    .line 2265
    .end local v0    # "i":I
    :cond_0
    if-le p1, v3, :cond_1

    array-length v4, v2

    if-ge p1, v4, :cond_1

    .line 2266
    aget v3, v2, p1

    .line 2268
    :cond_1
    return v3

    .line 2256
    .restart local v0    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v4, v0

    .line 2257
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_0

    .line 2260
    iget v4, v1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-le v4, v3, :cond_3

    .line 2261
    iget v4, v1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    aput v0, v2, v4

    .line 2255
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initiateBuyData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2307
    const-string v4, ">> initiateBuyData()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2309
    iget v3, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    .line 2310
    .local v3, "totalnum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 2317
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2318
    .local v0, "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v0, :cond_0

    .line 2319
    iget v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 2320
    iput-boolean v6, v0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 2322
    :cond_0
    return-void

    .line 2311
    .end local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_1
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v4, v1

    .line 2313
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iput-boolean v6, v2, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 2310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public initiateData()V
    .locals 7

    .prologue
    const/16 v6, -0x3e8

    .line 2351
    const-string v4, ">> initiateData()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2353
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v1, v4, :cond_2

    .line 2365
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2366
    .local v0, "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v0, :cond_1

    .line 2367
    iget v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 2368
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    if-lt v2, v4, :cond_4

    .line 2374
    .end local v2    # "j":I
    :cond_1
    return-void

    .line 2354
    .end local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_2
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v4, v1

    .line 2355
    .local v3, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_0

    .line 2358
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    iget v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    if-lt v2, v4, :cond_3

    .line 2353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2359
    :cond_3
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2360
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    invoke-virtual {v4}, Lcom/findit/battle/Objects$Animation;->initiateData()V

    .line 2358
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2369
    .end local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .restart local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_4
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2370
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/findit/battle/Objects$AnimObject;->mAnim:Lcom/findit/battle/Objects$Animation;

    invoke-virtual {v4}, Lcom/findit/battle/Objects$Animation;->initiateData()V

    .line 2368
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public initiateShowData()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x1

    .line 2325
    const-string v4, ">>initiateShowData ()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2327
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v1, v4, :cond_2

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2340
    .local v0, "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v0, :cond_1

    .line 2341
    iget v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 2342
    const/4 v1, 0x0

    :goto_1
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    array-length v4, v4

    if-lt v1, v4, :cond_4

    .line 2345
    iput-boolean v6, v0, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    .line 2348
    :cond_1
    return-void

    .line 2328
    .end local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_2
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v4, v1

    .line 2329
    .local v3, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_0

    .line 2332
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 2335
    iput-boolean v6, v3, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    .line 2327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2333
    :cond_3
    iget-object v4, v3, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v7, v4, v2

    .line 2332
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2343
    .end local v2    # "j":I
    .end local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .restart local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_4
    iget-object v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v7, v4, v1

    .line 2342
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public loadImage(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 1955
    const-string v5, ">> loadImage()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 1959
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1960
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1961
    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mImgBmpTotalnum:I

    .line 1962
    .local v4, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 1973
    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mImgPngTotalnum:I

    .line 1974
    const/4 v0, 0x0

    :goto_1
    iget v5, p0, Lcom/findit/battle/Objects$Skills;->mImgPngTotalnum:I

    if-lt v0, v5, :cond_4

    .line 1985
    const/4 v0, 0x0

    :goto_2
    iget v5, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v0, v5, :cond_7

    .line 2017
    :cond_0
    return-void

    .line 1963
    :cond_1
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    if-nez v5, :cond_2

    .line 1964
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mImgBmpPath:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_3

    .line 1965
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    aget v5, v5, v0

    if-le v5, v9, :cond_2

    .line 1966
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/findit/battle/Objects$Skills;->mImgBmpId:[I

    aget v7, v7, v0

    invoke-static {v6, v7, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1962
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1969
    :cond_3
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills;->mImgBmpPath:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v6, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v0

    goto :goto_3

    .line 1975
    :cond_4
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    if-nez v5, :cond_5

    .line 1976
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mImgPngPath:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-nez v5, :cond_6

    .line 1977
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mImgPngId:[I

    aget v5, v5, v0

    if-le v5, v9, :cond_5

    .line 1978
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgPng:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/findit/battle/Objects$Skills;->mImgPngId:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1974
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1981
    :cond_6
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgPng:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills;->mImgPngPath:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v0

    goto :goto_4

    .line 1986
    :cond_7
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v5, v0

    .line 1987
    .local v3, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_0

    .line 2000
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    if-nez v5, :cond_8

    .line 2001
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    if-nez v5, :cond_9

    .line 2002
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v8

    .line 2008
    :cond_8
    :goto_5
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    const/16 v5, 0xa

    if-lt v1, v5, :cond_a

    .line 1985
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2004
    .end local v1    # "j":I
    :cond_9
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    iget-object v6, v3, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v8

    goto :goto_5

    .line 2010
    .restart local v1    # "j":I
    :cond_a
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgPng:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v7}, Lcom/findit/battle/Objects$AnimObject;->loadImage([Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)V

    .line 2011
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v1

    invoke-virtual {v5, p1}, Lcom/findit/battle/Objects$AnimObject;->loadImage(Landroid/content/Context;)V

    .line 2008
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public moveIcon(III)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "tx"    # I
    .param p3, "ty"    # I

    .prologue
    .line 2129
    const-string v4, ">> moveIcon()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2130
    iget v1, p0, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    .line 2131
    .local v1, "size":I
    div-int/lit8 v2, v1, 0x2

    .line 2136
    .local v2, "sizehalf":I
    sub-int v0, p2, v2

    .line 2137
    .local v0, "left":I
    sub-int v3, p3, v2

    .line 2138
    .local v3, "top":I
    iget-object v4, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    add-int v5, v0, v1

    add-int v6, v3, v1

    invoke-virtual {v4, v0, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2139
    return-void
.end method

.method public recycleImageInSkills()V
    .locals 7

    .prologue
    .line 2020
    const-string v5, ">> Skills::recycleImageInSkills()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2021
    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mImgBmpTotalnum:I

    .line 2022
    .local v4, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 2029
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    array-length v2, v5

    .line 2030
    .local v2, "length":I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_3

    .line 2051
    :cond_0
    return-void

    .line 2023
    .end local v2    # "length":I
    :cond_1
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    if-eqz v5, :cond_2

    .line 2024
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2025
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v6, v5, v0

    .line 2022
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2031
    .restart local v2    # "length":I
    :cond_3
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v5, v0

    .line 2032
    .local v3, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_0

    .line 2045
    const-string v5, "++ recycleImageInSkills() ANIMOBJECT_TOTALNUM: 10"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2046
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/16 v5, 0xa

    if-lt v1, v5, :cond_4

    .line 2030
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2047
    :cond_4
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/findit/battle/Objects$AnimObject;->recycleImageInAnimObject()V

    .line 2048
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/findit/battle/Objects$AnimObject;->recycleImageInAnimObject()V

    .line 2046
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    const/4 v4, 0x0

    .line 2054
    const-string v2, ">> setAlpha()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2055
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v0, v2, :cond_2

    .line 2065
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2066
    .local v1, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_1

    .line 2067
    iget v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 2068
    iget-object v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput p1, v2, v4

    .line 2069
    iget-object v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v2, v2, v4

    iput p1, v2, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 2072
    :cond_1
    return-void

    .line 2056
    .end local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_2
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v1, v2, v0

    .line 2057
    .restart local v1    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v1, :cond_0

    .line 2061
    iget-object v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput p1, v2, v4

    .line 2062
    iget-object v2, v1, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v2, v2, v4

    iput p1, v2, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 2055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSlots(IIIIIZ)Lcom/findit/battle/Objects$Skills$Skill;
    .locals 15
    .param p1, "index"    # I
    .param p2, "num"    # I
    .param p3, "windowx"    # I
    .param p4, "windowy"    # I
    .param p5, "totalnum"    # I
    .param p6, "set"    # Z

    .prologue
    .line 2147
    const-string v3, ">> setSlots()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2148
    if-eqz p6, :cond_1

    .line 2150
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSetSkillActiveIndexTable:[Z

    aget-boolean v3, v3, p2

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    move/from16 v0, p2

    if-le v0, v3, :cond_1

    .line 2151
    :cond_0
    const/4 v2, 0x0

    .line 2217
    :goto_0
    return-object v2

    .line 2154
    :cond_1
    if-eqz p6, :cond_3

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v10, v3, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2155
    .local v10, "prenum":I
    :goto_1
    move/from16 v0, p2

    if-le v0, v10, :cond_4

    const/4 v9, -0x1

    .line 2156
    .local v9, "move":I
    :goto_2
    move/from16 v0, p5

    new-array v11, v0, [I

    .line 2157
    .local v11, "slot":[I
    const/4 v3, -0x1

    invoke-static {v11, v3}, Ljava/util/Arrays;->fill([II)V

    .line 2159
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget v3, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v8, v3, :cond_5

    .line 2169
    :cond_2
    if-gez v10, :cond_9

    .line 2171
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v14, v3, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2172
    .local v14, "tempsetnum":I
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v13, v3, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 2174
    .local v13, "tempnum":I
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v3, p1

    const/4 v7, 0x0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v2 .. v7}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    .line 2176
    aget v3, v11, p2

    const/4 v4, -0x1

    if-le v3, v4, :cond_b

    aget v3, v11, p2

    iget v4, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-ge v3, v4, :cond_b

    .line 2177
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget v4, v11, p2

    aget-object v2, v3, v4

    .line 2178
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-nez v2, :cond_8

    .line 2179
    const/4 v2, 0x0

    goto :goto_0

    .line 2154
    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .end local v8    # "i":I
    .end local v9    # "move":I
    .end local v10    # "prenum":I
    .end local v11    # "slot":[I
    .end local v13    # "tempnum":I
    .end local v14    # "tempsetnum":I
    :cond_3
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v3, p1

    iget v10, v3, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    goto :goto_1

    .line 2155
    .restart local v10    # "prenum":I
    :cond_4
    const/4 v9, 0x1

    goto :goto_2

    .line 2160
    .restart local v8    # "i":I
    .restart local v9    # "move":I
    .restart local v11    # "slot":[I
    :cond_5
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v3, v8

    .line 2161
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v2, :cond_2

    .line 2164
    if-eqz p6, :cond_7

    iget v12, v2, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2165
    .local v12, "slotnum":I
    :goto_4
    const/4 v3, -0x1

    if-le v12, v3, :cond_6

    move/from16 v0, p5

    if-ge v12, v0, :cond_6

    .line 2166
    aput v8, v11, v12

    .line 2159
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2164
    .end local v12    # "slotnum":I
    :cond_7
    iget v12, v2, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    goto :goto_4

    .line 2181
    .restart local v13    # "tempnum":I
    .restart local v14    # "tempsetnum":I
    :cond_8
    iput v14, v2, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2182
    iput v13, v2, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    goto :goto_0

    .line 2188
    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .end local v13    # "tempnum":I
    .end local v14    # "tempsetnum":I
    :cond_9
    const/4 v7, 0x0

    .line 2189
    .local v7, "anim":I
    :cond_a
    const/4 v3, -0x1

    move/from16 v0, p1

    if-gt v0, v3, :cond_c

    .line 2217
    .end local v7    # "anim":I
    :cond_b
    :goto_5
    const/4 v2, 0x0

    goto :goto_0

    .line 2190
    .restart local v7    # "anim":I
    :cond_c
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v3, p1

    .line 2192
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    const/4 v3, -0x1

    move/from16 v0, p2

    if-le v0, v3, :cond_b

    move/from16 v0, p2

    move/from16 v1, p5

    if-ge v0, v1, :cond_b

    .line 2193
    aget p1, v11, p2

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    .line 2197
    invoke-virtual/range {v2 .. v7}, Lcom/findit/battle/Objects$Skills$Skill;->setSlot(IIIZI)V

    .line 2199
    if-lez v9, :cond_d

    .line 2200
    const/4 v7, 0x7

    .line 2204
    :goto_6
    add-int p2, p2, v9

    .line 2206
    if-gez v9, :cond_e

    .line 2207
    move/from16 v0, p2

    if-ge v0, v10, :cond_a

    goto :goto_5

    .line 2202
    :cond_d
    const/4 v7, 0x5

    goto :goto_6

    .line 2211
    :cond_e
    move/from16 v0, p2

    if-le v0, v10, :cond_a

    goto :goto_5
.end method

.method public setY(II)V
    .locals 6
    .param p1, "sy"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 2075
    const-string v3, ">> setY()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2076
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v1, v3, :cond_2

    .line 2092
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2093
    .local v2, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2094
    .local v0, "height":I
    if-eqz v2, :cond_1

    .line 2095
    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 2096
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iput p1, v3, Landroid/graphics/Rect;->top:I

    .line 2097
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    add-int v4, p1, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2100
    :cond_1
    return-void

    .line 2077
    .end local v0    # "height":I
    .end local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_2
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v2, v3, v1

    .line 2078
    .restart local v2    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v2, :cond_0

    .line 2081
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 2082
    .restart local v0    # "height":I
    iget v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-gez v3, :cond_3

    .line 2083
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iput p2, v3, Landroid/graphics/Rect;->top:I

    .line 2084
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    add-int v4, p2, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2076
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2087
    :cond_3
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    iput p1, v3, Landroid/graphics/Rect;->top:I

    .line 2088
    iget-object v3, v2, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v5

    add-int v4, p1, v0

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public touchIcon(II)I
    .locals 7
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 2103
    const-string v5, ">> touchIcon()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/findit/battle/Objects$Skills;->mSkillTotalnum:I

    if-lt v1, v5, :cond_2

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills;->mBerrySkill:Lcom/findit/battle/Objects$Skills$Skill;

    .line 2117
    .local v0, "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v0, :cond_4

    .line 2118
    iget v5, v0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    if-le v5, v4, :cond_4

    .line 2119
    iget-object v5, v0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v5, v6

    .line 2120
    .local v2, "rect":Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-ge v5, p1, :cond_4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-le v5, p1, :cond_4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-ge v5, p2, :cond_4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-le v5, p2, :cond_4

    .line 2121
    iget v4, v0, Lcom/findit/battle/Objects$Skills$Skill;->mIndex:I

    add-int/lit16 v1, v4, 0x2710

    .line 2125
    .end local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    .end local v1    # "i":I
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    return v1

    .line 2107
    .restart local v1    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills;->mSkill:[Lcom/findit/battle/Objects$Skills$Skill;

    aget-object v3, v5, v1

    .line 2108
    .local v3, "skill":Lcom/findit/battle/Objects$Skills$Skill;
    if-eqz v3, :cond_0

    .line 2111
    iget-object v5, v3, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v5, v6

    .line 2112
    .restart local v2    # "rect":Landroid/graphics/Rect;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-ge v5, p1, :cond_3

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-le v5, p1, :cond_3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-ge v5, p2, :cond_3

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v5, p2, :cond_1

    .line 2106
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "skill":Lcom/findit/battle/Objects$Skills$Skill;
    .restart local v0    # "berryskill":Lcom/findit/battle/Objects$Skills$Skill;
    :cond_4
    move v1, v4

    .line 2125
    goto :goto_1
.end method
