.class public Lcom/findit/battle/InventoryActivity_T$ActionRunnable;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionRunnable"
.end annotation


# instance fields
.field private mX:I

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_T;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_T;I)V
    .locals 0
    .param p2, "x"    # I

    .prologue
    .line 2800
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2801
    iput p2, p0, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;->mX:I

    .line 2802
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$18(Lcom/findit/battle/InventoryActivity_T;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcom/findit/battle/InventoryActivity_T$ActionRunnable;->mX:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 2808
    return-void
.end method
