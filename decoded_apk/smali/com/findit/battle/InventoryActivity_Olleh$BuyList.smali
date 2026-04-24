.class Lcom/findit/battle/InventoryActivity_Olleh$BuyList;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Olleh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuyList"
.end annotation


# instance fields
.field public mDate:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNum:Ljava/lang/String;

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Olleh;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_Olleh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;

    .prologue
    .line 3028
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3029
    const-string v0, ">> BuyList()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3030
    iput-object p2, p0, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;->mDate:Ljava/lang/String;

    .line 3031
    iput-object p3, p0, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;->mName:Ljava/lang/String;

    .line 3032
    iput-object p4, p0, Lcom/findit/battle/InventoryActivity_Olleh$BuyList;->mNum:Ljava/lang/String;

    .line 3033
    return-void
.end method
