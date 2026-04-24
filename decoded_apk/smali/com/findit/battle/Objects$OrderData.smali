.class Lcom/findit/battle/Objects$OrderData;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OrderData"
.end annotation


# instance fields
.field public mAlpha:I

.field public mDirect:Z

.field public mFrom:I

.field public mFromX:F

.field public mFromY:F

.field public mHeight:F

.field public mImgnum:I

.field public mNext:Z

.field public mNum:I

.field public mRotate:I

.field public mStep:I

.field public mStepCount:I

.field public mTime:F

.field public mTo:I

.field public mToX:F

.field public mToY:F

.field public mType:Ljava/lang/String;

.field public mWidth:F

.field public mX:F

.field public mY:F

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;)V
    .locals 1

    .prologue
    .line 4267
    iput-object p1, p0, Lcom/findit/battle/Objects$OrderData;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4268
    const-string v0, ">> OrderData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4270
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Objects;Lcom/findit/battle/Objects$OrderData;)V
    .locals 1
    .param p2, "orderdata"    # Lcom/findit/battle/Objects$OrderData;

    .prologue
    .line 4272
    iput-object p1, p0, Lcom/findit/battle/Objects$OrderData;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4273
    const-string v0, ">> OrderData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4274
    invoke-virtual {p0, p2}, Lcom/findit/battle/Objects$OrderData;->set(Lcom/findit/battle/Objects$OrderData;)V

    .line 4275
    return-void
.end method


# virtual methods
.method public set(Lcom/findit/battle/Objects$OrderData;)V
    .locals 1
    .param p1, "orderdata"    # Lcom/findit/battle/Objects$OrderData;

    .prologue
    .line 4278
    const-string v0, ">> set()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4279
    iget-object v0, p1, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$OrderData;->mType:Ljava/lang/String;

    .line 4280
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mImgnum:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mImgnum:I

    .line 4281
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mAlpha:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mAlpha:I

    .line 4282
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mRotate:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mRotate:I

    .line 4283
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mX:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mX:F

    .line 4284
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mY:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mY:F

    .line 4285
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mWidth:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mWidth:F

    .line 4286
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mHeight:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mHeight:F

    .line 4287
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mFromX:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mFromX:F

    .line 4288
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mFromY:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mFromY:F

    .line 4289
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mToX:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mToX:F

    .line 4290
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mToY:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mToY:F

    .line 4291
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mFrom:I

    .line 4292
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mTo:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mTo:I

    .line 4293
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mNum:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mNum:I

    .line 4294
    iget-boolean v0, p1, Lcom/findit/battle/Objects$OrderData;->mDirect:Z

    iput-boolean v0, p0, Lcom/findit/battle/Objects$OrderData;->mDirect:Z

    .line 4295
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mTime:F

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mTime:F

    .line 4297
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mStep:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mStep:I

    .line 4298
    iget v0, p1, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    iput v0, p0, Lcom/findit/battle/Objects$OrderData;->mStepCount:I

    .line 4299
    iget-boolean v0, p1, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    iput-boolean v0, p0, Lcom/findit/battle/Objects$OrderData;->mNext:Z

    .line 4300
    return-void
.end method
