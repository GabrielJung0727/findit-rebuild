.class Lcom/findit/battle/Items$Item;
.super Ljava/lang/Object;
.source "Items.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field public mIconImgId:I

.field public mIconImgPath:Ljava/lang/String;

.field public mMoney:I

.field public mNum:I

.field public mPower:I

.field public mPrice:I

.field public mSeqs:Ljava/lang/String;

.field public mSet:Z

.field public mSlotnum:I

.field public mSubType:I

.field public mText:Ljava/lang/String;

.field public mType:I

.field public mTypeNo:I

.field final synthetic this$0:Lcom/findit/battle/Items;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Items;Landroid/content/Context;IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I
    .param p4, "subtype"    # I
    .param p5, "typeno"    # I
    .param p6, "iconimgid"    # I
    .param p7, "iconimgpath"    # Ljava/lang/String;
    .param p8, "textid"    # I
    .param p9, "text"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/findit/battle/Items$Item;->this$0:Lcom/findit/battle/Items;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput p6, p0, Lcom/findit/battle/Items$Item;->mIconImgId:I

    .line 320
    iput-object p7, p0, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 321
    if-nez p9, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p9

    .end local p9    # "text":Ljava/lang/String;
    :cond_0
    iput-object p9, p0, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 324
    iput p3, p0, Lcom/findit/battle/Items$Item;->mType:I

    .line 325
    iput p4, p0, Lcom/findit/battle/Items$Item;->mSubType:I

    .line 326
    iput p5, p0, Lcom/findit/battle/Items$Item;->mTypeNo:I

    .line 327
    const/4 v0, -0x1

    iput v0, p0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 329
    const/4 v0, 0x1

    iput v0, p0, Lcom/findit/battle/Items$Item;->mNum:I

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Items;Lcom/findit/battle/Items$Item;)V
    .locals 0
    .param p2, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/findit/battle/Items$Item;->this$0:Lcom/findit/battle/Items;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-virtual {p0, p2}, Lcom/findit/battle/Items$Item;->set(Lcom/findit/battle/Items$Item;)V

    .line 336
    return-void
.end method


# virtual methods
.method public set(Lcom/findit/battle/Items$Item;)V
    .locals 1
    .param p1, "item"    # Lcom/findit/battle/Items$Item;

    .prologue
    .line 339
    iget v0, p1, Lcom/findit/battle/Items$Item;->mIconImgId:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mIconImgId:I

    .line 340
    iget-object v0, p1, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Items$Item;->mIconImgPath:Ljava/lang/String;

    .line 341
    iget-object v0, p1, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Items$Item;->mText:Ljava/lang/String;

    .line 342
    iget-object v0, p1, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 344
    iget v0, p1, Lcom/findit/battle/Items$Item;->mType:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mType:I

    .line 345
    iget v0, p1, Lcom/findit/battle/Items$Item;->mSubType:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mSubType:I

    .line 346
    iget v0, p1, Lcom/findit/battle/Items$Item;->mTypeNo:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mTypeNo:I

    .line 347
    iget v0, p1, Lcom/findit/battle/Items$Item;->mSlotnum:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mSlotnum:I

    .line 348
    iget-boolean v0, p1, Lcom/findit/battle/Items$Item;->mSet:Z

    iput-boolean v0, p0, Lcom/findit/battle/Items$Item;->mSet:Z

    .line 349
    iget v0, p1, Lcom/findit/battle/Items$Item;->mNum:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mNum:I

    .line 351
    iget v0, p1, Lcom/findit/battle/Items$Item;->mPower:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mPower:I

    .line 352
    iget v0, p1, Lcom/findit/battle/Items$Item;->mPrice:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mPrice:I

    .line 353
    iget v0, p1, Lcom/findit/battle/Items$Item;->mMoney:I

    iput v0, p0, Lcom/findit/battle/Items$Item;->mMoney:I

    .line 354
    return-void
.end method
