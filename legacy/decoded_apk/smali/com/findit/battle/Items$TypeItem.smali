.class Lcom/findit/battle/Items$TypeItem;
.super Ljava/lang/Object;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeItem"
.end annotation


# static fields
.field public static final SUBITEM_TOTALNUM:I = 0x32


# instance fields
.field public mSubItem:[Lcom/findit/battle/Items$Item;

.field public mSubItemTotalnum:I

.field final synthetic this$0:Lcom/findit/battle/Items;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[I[I)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "typeno"    # [I
    .param p5, "imgids"    # [I
    .param p6, "textids"    # [I

    .prologue
    .line 180
    iput-object p1, p0, Lcom/findit/battle/Items$TypeItem;->this$0:Lcom/findit/battle/Items;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/16 v0, 0x32

    new-array v0, v0, [Lcom/findit/battle/Items$Item;

    iput-object v0, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    .line 182
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p5

    if-lt v6, v0, :cond_0

    .line 185
    return-void

    .line 183
    :cond_0
    aget v3, p4, v6

    aget v4, p5, v6

    aget v5, p6, v6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/Items$TypeItem;->create(Landroid/content/Context;IIII)V

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/findit/battle/Items;Landroid/content/Context;I[I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "typeno"    # [I
    .param p5, "imgpaths"    # [Ljava/lang/String;
    .param p6, "texts"    # [Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/findit/battle/Items$TypeItem;->this$0:Lcom/findit/battle/Items;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/16 v0, 0x32

    new-array v0, v0, [Lcom/findit/battle/Items$Item;

    iput-object v0, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    .line 189
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, p5

    if-lt v6, v0, :cond_0

    .line 192
    return-void

    .line 190
    :cond_0
    aget v3, p4, v6

    aget-object v4, p5, v6

    aget-object v5, p6, v6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/Items$TypeItem;->create(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public create(Landroid/content/Context;IIII)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "typeno"    # I
    .param p4, "imgids"    # I
    .param p5, "textids"    # I

    .prologue
    .line 195
    iget v0, p0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 196
    iget v4, p0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 197
    .local v4, "index":I
    iget-object v10, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    new-instance v0, Lcom/findit/battle/Items$Item;

    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->this$0:Lcom/findit/battle/Items;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/findit/battle/Items$Item;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;IIIILjava/lang/String;ILjava/lang/String;)V

    aput-object v0, v10, v4

    .line 199
    .end local v4    # "index":I
    :cond_0
    return-void
.end method

.method public create(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "typeno"    # I
    .param p4, "imgpaths"    # Ljava/lang/String;
    .param p5, "texts"    # Ljava/lang/String;

    .prologue
    .line 202
    iget v0, p0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 203
    iget v4, p0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/findit/battle/Items$TypeItem;->mSubItemTotalnum:I

    .line 204
    .local v4, "index":I
    iget-object v10, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    new-instance v0, Lcom/findit/battle/Items$Item;

    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->this$0:Lcom/findit/battle/Items;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v7, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/findit/battle/Items$Item;-><init>(Lcom/findit/battle/Items;Landroid/content/Context;IIIILjava/lang/String;ILjava/lang/String;)V

    aput-object v0, v10, v4

    .line 206
    .end local v4    # "index":I
    :cond_0
    return-void
.end method

.method public setContent([I[I[I)V
    .locals 3
    .param p1, "powers"    # [I
    .param p2, "prices"    # [I
    .param p3, "moneys"    # [I

    .prologue
    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 214
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    aget v2, p1, v0

    iput v2, v1, Lcom/findit/battle/Items$Item;->mPower:I

    .line 211
    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    aget v2, p2, v0

    iput v2, v1, Lcom/findit/battle/Items$Item;->mPrice:I

    .line 212
    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    aget v2, p3, v0

    iput v2, v1, Lcom/findit/battle/Items$Item;->mMoney:I

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setContent([I[I[I[I)V
    .locals 3
    .param p1, "powers"    # [I
    .param p2, "prices"    # [I
    .param p3, "moneys"    # [I
    .param p4, "nums"    # [I

    .prologue
    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 223
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    aget v2, p1, v0

    iput v2, v1, Lcom/findit/battle/Items$Item;->mPower:I

    .line 219
    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    aget v2, p2, v0

    iput v2, v1, Lcom/findit/battle/Items$Item;->mPrice:I

    .line 220
    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    aget v2, p3, v0

    iput v2, v1, Lcom/findit/battle/Items$Item;->mMoney:I

    .line 221
    iget-object v1, p0, Lcom/findit/battle/Items$TypeItem;->mSubItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, v0

    aget v2, p4, v0

    iput v2, v1, Lcom/findit/battle/Items$Item;->mNum:I

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
