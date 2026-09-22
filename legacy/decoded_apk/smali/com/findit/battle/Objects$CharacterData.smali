.class Lcom/findit/battle/Objects$CharacterData;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharacterData"
.end annotation


# instance fields
.field public mBodyImgIds:[I

.field public mBodyImgPaths:[Ljava/lang/String;

.field public mHeadImgIds:[I

.field public mHeadImgPaths:[Ljava/lang/String;

.field public mJoinImgIds:[I

.field public mJoinImgPaths:[Ljava/lang/String;

.field public mNormalActionImgIds:[I

.field public mNormalActionImgPaths:[Ljava/lang/String;

.field public mReadyActionImgIds:[I

.field public mReadyActionImgPaths:[Ljava/lang/String;

.field public mTotalnum:I

.field public mWinActionImgIds:[I

.field public mWinActionImgPaths:[Ljava/lang/String;

.field final synthetic this$0:Lcom/findit/battle/Objects;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects;II)V
    .locals 3
    .param p2, "size"    # I
    .param p3, "totalnum"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4385
    iput-object p1, p0, Lcom/findit/battle/Objects$CharacterData;->this$0:Lcom/findit/battle/Objects;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4386
    const-string v0, ">> CharacterData()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4387
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mJoinImgIds:[I

    .line 4388
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    .line 4389
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mHeadImgIds:[I

    .line 4390
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    .line 4391
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgIds:[I

    .line 4392
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgIds:[I

    .line 4394
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mJoinImgIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4395
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mBodyImgIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4396
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mHeadImgIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4397
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4398
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4399
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgIds:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4401
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mJoinImgPaths:[Ljava/lang/String;

    .line 4402
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    .line 4403
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mHeadImgPaths:[Ljava/lang/String;

    .line 4404
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgPaths:[Ljava/lang/String;

    .line 4405
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgPaths:[Ljava/lang/String;

    .line 4406
    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgPaths:[Ljava/lang/String;

    .line 4408
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mJoinImgPaths:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4409
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mBodyImgPaths:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4410
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mHeadImgPaths:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4411
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mNormalActionImgPaths:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4412
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mReadyActionImgPaths:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4413
    iget-object v0, p0, Lcom/findit/battle/Objects$CharacterData;->mWinActionImgPaths:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4415
    iput p3, p0, Lcom/findit/battle/Objects$CharacterData;->mTotalnum:I

    .line 4416
    return-void
.end method
