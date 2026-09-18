.class public Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Google;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionRunnable"
.end annotation


# instance fields
.field private mX:I

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Google;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_Google;I)V
    .locals 1
    .param p2, "x"    # I

    .prologue
    .line 2794
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2795
    const-string v0, ">> ActionRunnable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2796
    iput p2, p0, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;->mX:I

    .line 2797
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2801
    const-string v0, ">> ActionRunnable::run()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$17(Lcom/findit/battle/InventoryActivity_Google;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/findit/battle/InventoryActivity_Google$ActionRunnable;->mX:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 2804
    return-void
.end method
