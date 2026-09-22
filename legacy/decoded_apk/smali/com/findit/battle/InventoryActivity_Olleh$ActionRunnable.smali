.class public Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Olleh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionRunnable"
.end annotation


# instance fields
.field private mX:I

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Olleh;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_Olleh;I)V
    .locals 1
    .param p2, "x"    # I

    .prologue
    .line 3040
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3041
    const-string v0, ">> ActionRunnable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3042
    iput p2, p0, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;->mX:I

    .line 3043
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3047
    const-string v0, ">> ActionRunnable::run()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 3048
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$17(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/findit/battle/InventoryActivity_Olleh$ActionRunnable;->mX:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 3050
    return-void
.end method
