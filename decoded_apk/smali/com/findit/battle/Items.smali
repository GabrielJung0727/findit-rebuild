.class public Lcom/findit/battle/Items;
.super Ljava/lang/Object;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/Items$Item;,
        Lcom/findit/battle/Items$TypeItem;
    }
.end annotation


# static fields
.field public static final SEQ_DEVIDER:Ljava/lang/String; = "|"

.field public static final TYPEITEM_TOTALNUM:I = 0x6

.field public static final TYPE_BERRY:I = 0x2

.field public static final TYPE_ETC:I = 0x5

.field public static final TYPE_GOLD:I = 0x4

.field public static final TYPE_PEN:I = 0x0

.field public static final TYPE_POTION:I = 0x3

.field public static final TYPE_RING:I = 0x1

.field public static final TYPE_S_BERRY:Ljava/lang/String; = "BERRY"

.field public static final TYPE_S_ETC:Ljava/lang/String; = "ETC"

.field public static final TYPE_S_GOLD:Ljava/lang/String; = "GOLD"

.field public static final TYPE_S_PEN:Ljava/lang/String; = "PEN"

.field public static final TYPE_S_POTION:Ljava/lang/String; = "POTION"

.field public static final TYPE_S_RING:Ljava/lang/String; = "RING"

.field public static final USERITEM_MAX:I = 0x63

.field public static final USERITEM_TOTALNUM:I = 0x64


# instance fields
.field public mItem:[Lcom/findit/battle/Items$Item;

.field public mItemTotalnum:I

.field private mSetTable:[I

.field public mTypeItem:[Lcom/findit/battle/Items$TypeItem;

.field public mTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 65
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v4, 0x6

    new-array v4, v4, [Lcom/findit/battle/Items$TypeItem;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    .line 42
    const/4 v4, 0x3

    new-array v9, v4, [I

    fill-array-data v9, :array_0

    .line 43
    .local v9, "penimgid":[I
    const/4 v4, 0x3

    new-array v10, v4, [I

    fill-array-data v10, :array_1

    .line 44
    .local v10, "pentextid":[I
    const/4 v4, 0x3

    new-array v8, v4, [I

    fill-array-data v8, :array_2

    .line 45
    .local v8, "pentypeno":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v56, v0

    fill-array-data v56, :array_3

    .line 46
    .local v56, "penpower":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v57, v0

    fill-array-data v57, :array_4

    .line 47
    .local v57, "penprice":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v55, v0

    .line 49
    .local v55, "penmoney":[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v12, 0x0

    new-instance v4, Lcom/findit/battle/Items$TypeItem;

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/findit/battle/Items$TypeItem;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[I[I)V

    aput-object v4, v11, v12

    .line 50
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v55

    invoke-virtual {v4, v0, v1, v2}, Lcom/findit/battle/Items$TypeItem;->setContent([I[I[I)V

    .line 53
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_5

    .line 54
    .local v16, "ringimgid":[I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_6

    .line 55
    .local v17, "ringtextid":[I
    const/4 v4, 0x2

    new-array v15, v4, [I

    fill-array-data v15, :array_7

    .line 56
    .local v15, "ringtypeno":[I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v63, v0

    fill-array-data v63, :array_8

    .line 57
    .local v63, "ringpower":[I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v64, v0

    fill-array-data v64, :array_9

    .line 58
    .local v64, "ringprice":[I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v62, v0

    .line 60
    .local v62, "ringmoney":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x1

    new-instance v11, Lcom/findit/battle/Items$TypeItem;

    const/4 v14, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v11 .. v17}, Lcom/findit/battle/Items$TypeItem;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[I[I)V

    aput-object v11, v4, v5

    .line 61
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v62

    invoke-virtual {v4, v0, v1, v2}, Lcom/findit/battle/Items$TypeItem;->setContent([I[I[I)V

    .line 64
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v23, v0

    fill-array-data v23, :array_a

    .line 65
    .local v23, "berryimgid":[I
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v24, v0

    fill-array-data v24, :array_b

    .line 66
    .local v24, "berrytextid":[I
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_c

    .line 67
    .local v22, "berrytypeno":[I
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v47, v0

    fill-array-data v47, :array_d

    .line 68
    .local v47, "berrypower":[I
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v48, v0

    fill-array-data v48, :array_e

    .line 69
    .local v48, "berryprice":[I
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v46, v0

    .line 71
    .local v46, "berrymoney":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x2

    new-instance v18, Lcom/findit/battle/Items$TypeItem;

    const/16 v21, 0x2

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    invoke-direct/range {v18 .. v24}, Lcom/findit/battle/Items$TypeItem;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[I[I)V

    aput-object v18, v4, v5

    .line 72
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v46

    invoke-virtual {v4, v0, v1, v2}, Lcom/findit/battle/Items$TypeItem;->setContent([I[I[I)V

    .line 75
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v30, v0

    fill-array-data v30, :array_f

    .line 76
    .local v30, "potionimgid":[I
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v31, v0

    fill-array-data v31, :array_10

    .line 77
    .local v31, "potiontextid":[I
    const/4 v4, 0x6

    new-array v0, v4, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_11

    .line 78
    .local v29, "potiontypeno":[I
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v60, v0

    fill-array-data v60, :array_12

    .line 79
    .local v60, "potionpower":[I
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v61, v0

    fill-array-data v61, :array_13

    .line 80
    .local v61, "potionprice":[I
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v58, v0

    .line 81
    .local v58, "potionmoney":[I
    const/4 v4, 0x5

    new-array v0, v4, [I

    move-object/from16 v59, v0

    fill-array-data v59, :array_14

    .line 83
    .local v59, "potionnum":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x3

    new-instance v25, Lcom/findit/battle/Items$TypeItem;

    const/16 v28, 0x3

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    invoke-direct/range {v25 .. v31}, Lcom/findit/battle/Items$TypeItem;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[I[I)V

    aput-object v25, v4, v5

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    move-object/from16 v0, v60

    move-object/from16 v1, v61

    move-object/from16 v2, v58

    move-object/from16 v3, v59

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/findit/battle/Items$TypeItem;->setContent([I[I[I[I)V

    .line 87
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v37, v0

    fill-array-data v37, :array_15

    .line 88
    .local v37, "goldimgid":[I
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v38, v0

    fill-array-data v38, :array_16

    .line 89
    .local v38, "goldtextid":[I
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v36, v0

    fill-array-data v36, :array_17

    .line 90
    .local v36, "goldtypeno":[I
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_18

    .line 91
    .local v53, "goldpower":[I
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v54, v0

    .line 93
    .local v54, "goldprice":[I
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v52, v0

    fill-array-data v52, :array_19

    .line 95
    .local v52, "goldmoney":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x4

    new-instance v32, Lcom/findit/battle/Items$TypeItem;

    const/16 v35, 0x4

    move-object/from16 v33, p0

    move-object/from16 v34, p1

    invoke-direct/range {v32 .. v38}, Lcom/findit/battle/Items$TypeItem;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[I[I)V

    aput-object v32, v4, v5

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v52

    invoke-virtual {v4, v0, v1, v2}, Lcom/findit/battle/Items$TypeItem;->setContent([I[I[I)V

    .line 99
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v44, v0

    fill-array-data v44, :array_1a

    .line 100
    .local v44, "etcimgid":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1b

    .line 101
    .local v45, "etctextid":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v43, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput v5, v43, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aput v5, v43, v4

    .line 102
    .local v43, "etctypeno":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v50, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    aput v5, v50, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aput v5, v50, v4

    .line 103
    .local v50, "etcpower":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v51, v0

    fill-array-data v51, :array_1c

    .line 104
    .local v51, "etcprice":[I
    const/4 v4, 0x3

    new-array v0, v4, [I

    move-object/from16 v49, v0

    .line 106
    .local v49, "etcmoney":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x5

    new-instance v39, Lcom/findit/battle/Items$TypeItem;

    const/16 v42, 0x5

    move-object/from16 v40, p0

    move-object/from16 v41, p1

    invoke-direct/range {v39 .. v45}, Lcom/findit/battle/Items$TypeItem;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[I[I)V

    aput-object v39, v4, v5

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v49

    invoke-virtual {v4, v0, v1, v2}, Lcom/findit/battle/Items$TypeItem;->setContent([I[I[I)V

    .line 110
    const/16 v4, 0x64

    new-array v4, v4, [Lcom/findit/battle/Items$Item;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    .line 111
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 113
    const/4 v4, 0x6

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Items;->mSetTable:[I

    .line 115
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    .line 116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    const-string v5, "PEN"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    const-string v5, "RING"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    const-string v5, "BERRY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    const-string v5, "POTION"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    const-string v5, "GOLD"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    const-string v5, "ETC"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/findit/battle/Items;->createItems()V

    .line 124
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x7f0201ab
        0x7f0201ac
        0x7f0201ad
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x7f090053
        0x7f090054
        0x7f090055
    .end array-data

    .line 44
    :array_2
    .array-data 4
        0x26
        0x27
        0x28
    .end array-data

    .line 45
    :array_3
    .array-data 4
        0x4
        0x8
        0xe
    .end array-data

    .line 46
    :array_4
    .array-data 4
        0x64
        0x12c
        0x3e8
    .end array-data

    .line 53
    :array_5
    .array-data 4
        0x7f0201b3
        0x7f0201b4
    .end array-data

    .line 54
    :array_6
    .array-data 4
        0x7f090056
        0x7f090057
    .end array-data

    .line 55
    :array_7
    .array-data 4
        0x29
        0x2a
    .end array-data

    .line 56
    :array_8
    .array-data 4
        0x2
        0xa
    .end array-data

    .line 57
    :array_9
    .array-data 4
        0xc8
        0x1f4
    .end array-data

    .line 64
    :array_a
    .array-data 4
        0x7f0201a1
        0x7f0201a2
        0x7f0201a3
        0x7f0201a4
        0x7f0201a5
        0x7f0201a6
    .end array-data

    .line 65
    :array_b
    .array-data 4
        0x7f090059
        0x7f09005a
        0x7f09005b
        0x7f09005c
        0x7f09005d
        0x7f09005e
    .end array-data

    .line 66
    :array_c
    .array-data 4
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
    .end array-data

    .line 67
    :array_d
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 68
    :array_e
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 75
    :array_f
    .array-data 4
        0x7f0201ae
        0x7f0201af
        0x7f0201b0
        0x7f0201b1
        0x7f0201b2
    .end array-data

    .line 76
    :array_10
    .array-data 4
        0x7f09005f
        0x7f090060
        0x7f090061
        0x7f090062
        0x7f090063
    .end array-data

    .line 77
    :array_11
    .array-data 4
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
    .end array-data

    .line 78
    :array_12
    .array-data 4
        0x4
        0x8
        0x10
        0x8
        0x10
    .end array-data

    .line 79
    :array_13
    .array-data 4
        0x5
        0xa
        0x32
        0x64
        0x12c
    .end array-data

    .line 81
    :array_14
    .array-data 4
        0x63
        0x63
        0x63
        0x1
        0x1
    .end array-data

    .line 87
    :array_15
    .array-data 4
        0x7f0201a7
        0x7f0201a8
        0x7f0201a9
        0x7f0201aa
    .end array-data

    .line 88
    :array_16
    .array-data 4
        0x7f090067
        0x7f090068
        0x7f090069
        0x7f09006a
    .end array-data

    .line 89
    :array_17
    .array-data 4
        0x37
        0x38
        0x39
        0x3a
    .end array-data

    .line 90
    :array_18
    .array-data 4
        0x3e8
        0x9c4
        0x157c
        0x2134
    .end array-data

    .line 93
    :array_19
    .array-data 4
        0x3e8
        0x5dc
        0x9c4
        0xdac
    .end array-data

    .line 99
    :array_1a
    .array-data 4
        0x7f0201b5
        0x7f0201b6
        0x7f0201b7
    .end array-data

    .line 100
    :array_1b
    .array-data 4
        0x7f090064
        0x7f090065
        0x7f090066
    .end array-data

    .line 103
    :array_1c
    .array-data 4
        0x190
        0xc8
        0x64
    .end array-data
.end method

.method private createItems()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0, v0}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 160
    invoke-virtual {p0, v0, v2}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 162
    invoke-virtual {p0, v1, v0}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 163
    invoke-virtual {p0, v1, v1}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 165
    invoke-virtual {p0, v2, v2}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 167
    invoke-virtual {p0, v3, v0}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 168
    invoke-virtual {p0, v3, v2}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    .line 170
    invoke-virtual {p0}, Lcom/findit/battle/Items;->setSetTable()V

    .line 171
    return-void
.end method


# virtual methods
.method public checkOverlap(II)Lcom/findit/battle/Items$Item;
    .locals 4
    .param p1, "type"    # I
    .param p2, "subtype"    # I

    .prologue
    .line 227
    iget v2, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 228
    .local v2, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 234
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 229
    :cond_1
    iget-object v3, p0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v3, v0

    .line 230
    .local v1, "item":Lcom/findit/battle/Items$Item;
    iget v3, v1, Lcom/findit/battle/Items$Item;->mType:I

    if-ne v3, p1, :cond_2

    iget v3, v1, Lcom/findit/battle/Items$Item;->mSubType:I

    if-eq v3, p2, :cond_0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createItem(II)Lcom/findit/battle/Items$Item;
    .locals 4
    .param p1, "type"    # I
    .param p2, "subtype"    # I

    .prologue
    .line 238
    iget v1, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 239
    iget v0, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 243
    .local v0, "index":I
    iget-object v1, p0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    new-instance v2, Lcom/findit/battle/Items$Item;

    iget-object v3, p0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, p2

    invoke-direct {v2, p0, v3}, Lcom/findit/battle/Items$Item;-><init>(Lcom/findit/battle/Items;Lcom/findit/battle/Items$Item;)V

    aput-object v2, v1, v0

    .line 245
    iget-object v1, p0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    .line 248
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public destroyItem(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 252
    iget v2, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 255
    .local v1, "totalnum":I
    if-ge p1, v1, :cond_0

    .line 257
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 260
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 258
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/findit/battle/Items$Item;->set(Lcom/findit/battle/Items$Item;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndex(I)I
    .locals 3
    .param p1, "slotnum"    # I

    .prologue
    .line 263
    iget v1, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 264
    .local v1, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 269
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 265
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/findit/battle/Items$Item;->mSlotnum:I

    if-eq v2, p1, :cond_0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSetIndex(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/findit/battle/Items;->mSetTable:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubType(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "typeno"    # I

    .prologue
    .line 293
    iget-object v3, p0, Lcom/findit/battle/Items;->mTypeItem:[Lcom/findit/battle/Items$TypeItem;

    aget-object v2, v3, p1

    .line 294
    .local v2, "typeitem":Lcom/findit/battle/Items$TypeItem;
    iget v1, v2, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 295
    .local v1, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 300
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 296
    .restart local v0    # "i":I
    :cond_1
    iget-object v3, v2, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/findit/battle/Items$Item;->mTypeNo:I

    if-eq v3, p2, :cond_0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSetTable()V
    .locals 5

    .prologue
    .line 277
    iget-object v3, p0, Lcom/findit/battle/Items;->mSetTable:[I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 279
    iget v2, p0, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 280
    .local v2, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 286
    return-void

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v3, v0

    .line 283
    .local v1, "item":Lcom/findit/battle/Items$Item;
    iget-boolean v3, v1, Lcom/findit/battle/Items$Item;->mSet:Z

    if-eqz v3, :cond_1

    .line 284
    iget-object v3, p0, Lcom/findit/battle/Items;->mSetTable:[I

    iget v4, v1, Lcom/findit/battle/Items$Item;->mType:I

    aput v0, v3, v4

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSetTable(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/findit/battle/Items;->mSetTable:[I

    aput p2, v0, p1

    .line 290
    return-void
.end method
