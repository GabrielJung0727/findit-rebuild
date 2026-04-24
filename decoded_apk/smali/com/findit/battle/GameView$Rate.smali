.class Lcom/findit/battle/GameView$Rate;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Rate"
.end annotation


# instance fields
.field public mTable:[I

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;)V
    .locals 1

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/findit/battle/GameView$Rate;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    const-string v0, ">> Rate()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1199
    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/findit/battle/GameView$Rate;->mTable:[I

    .line 1200
    return-void
.end method


# virtual methods
.method public set([I)V
    .locals 5
    .param p1, "rate"    # [I

    .prologue
    const/16 v4, 0x64

    .line 1203
    const-string v3, ">> set()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1204
    const/4 v2, 0x0

    .line 1205
    .local v2, "value":I
    const/4 v0, 0x0

    .line 1207
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    if-lt v0, v4, :cond_1

    .line 1217
    :cond_0
    return-void

    .line 1208
    :cond_1
    aget v3, p1, v1

    if-lez v3, :cond_3

    .line 1209
    aget v3, p1, v1

    add-int v0, v2, v3

    .line 1210
    if-le v0, v4, :cond_2

    .line 1211
    const/16 v0, 0x64

    .line 1213
    :cond_2
    iget-object v3, p0, Lcom/findit/battle/GameView$Rate;->mTable:[I

    invoke-static {v3, v2, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 1214
    aget v3, p1, v1

    add-int/2addr v2, v3

    .line 1207
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
