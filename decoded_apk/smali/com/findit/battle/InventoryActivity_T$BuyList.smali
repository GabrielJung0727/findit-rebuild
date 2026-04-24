.class Lcom/findit/battle/InventoryActivity_T$BuyList;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuyList"
.end annotation


# instance fields
.field public mDate:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNum:Ljava/lang/String;

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_T;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_T;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "num"    # Ljava/lang/String;

    .prologue
    .line 2789
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$BuyList;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2790
    iput-object p2, p0, Lcom/findit/battle/InventoryActivity_T$BuyList;->mDate:Ljava/lang/String;

    .line 2791
    iput-object p3, p0, Lcom/findit/battle/InventoryActivity_T$BuyList;->mName:Ljava/lang/String;

    .line 2792
    iput-object p4, p0, Lcom/findit/battle/InventoryActivity_T$BuyList;->mNum:Ljava/lang/String;

    .line 2793
    return-void
.end method
