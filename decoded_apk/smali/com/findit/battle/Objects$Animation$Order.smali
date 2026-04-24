.class Lcom/findit/battle/Objects$Animation$Order;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects$Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Order"
.end annotation


# instance fields
.field public mData:[Lcom/findit/battle/Objects$OrderData;

.field final synthetic this$1:Lcom/findit/battle/Objects$Animation;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects$Animation;I)V
    .locals 1
    .param p2, "size"    # I

    .prologue
    .line 4236
    iput-object p1, p0, Lcom/findit/battle/Objects$Animation$Order;->this$1:Lcom/findit/battle/Objects$Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4237
    const-string v0, ">> Order()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4238
    new-array v0, p2, [Lcom/findit/battle/Objects$OrderData;

    iput-object v0, p0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    .line 4239
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/Objects$Animation;Lcom/findit/battle/Objects$Animation$Order;)V
    .locals 1
    .param p2, "order"    # Lcom/findit/battle/Objects$Animation$Order;

    .prologue
    .line 4241
    iput-object p1, p0, Lcom/findit/battle/Objects$Animation$Order;->this$1:Lcom/findit/battle/Objects$Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4242
    const-string v0, ">> Order()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4243
    iget-object v0, p2, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    array-length v0, v0

    new-array v0, v0, [Lcom/findit/battle/Objects$OrderData;

    iput-object v0, p0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    .line 4244
    invoke-virtual {p0, p2}, Lcom/findit/battle/Objects$Animation$Order;->set(Lcom/findit/battle/Objects$Animation$Order;)V

    .line 4245
    return-void
.end method


# virtual methods
.method public set(Lcom/findit/battle/Objects$Animation$Order;)V
    .locals 5
    .param p1, "order"    # Lcom/findit/battle/Objects$Animation$Order;

    .prologue
    .line 4248
    const-string v1, ">> Order()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 4249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 4251
    return-void

    .line 4250
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    new-instance v2, Lcom/findit/battle/Objects$OrderData;

    iget-object v3, p0, Lcom/findit/battle/Objects$Animation$Order;->this$1:Lcom/findit/battle/Objects$Animation;

    invoke-static {v3}, Lcom/findit/battle/Objects$Animation;->access$0(Lcom/findit/battle/Objects$Animation;)Lcom/findit/battle/Objects;

    move-result-object v3

    iget-object v4, p1, Lcom/findit/battle/Objects$Animation$Order;->mData:[Lcom/findit/battle/Objects$OrderData;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/findit/battle/Objects$OrderData;-><init>(Lcom/findit/battle/Objects;Lcom/findit/battle/Objects$OrderData;)V

    aput-object v2, v1, v0

    .line 4249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
