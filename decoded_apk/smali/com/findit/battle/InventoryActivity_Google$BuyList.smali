.class Lcom/findit/battle/InventoryActivity_Google$BuyList;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Google;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuyList"
.end annotation


# instance fields
.field public mDate:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNum:Ljava/lang/String;

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Google;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_Google;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;

    .prologue
    .line 2782
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$BuyList;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2783
    const-string v0, ">> BuyList()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2784
    iput-object p2, p0, Lcom/findit/battle/InventoryActivity_Google$BuyList;->mDate:Ljava/lang/String;

    .line 2785
    iput-object p3, p0, Lcom/findit/battle/InventoryActivity_Google$BuyList;->mName:Ljava/lang/String;

    .line 2786
    iput-object p4, p0, Lcom/findit/battle/InventoryActivity_Google$BuyList;->mNum:Ljava/lang/String;

    .line 2787
    return-void
.end method
