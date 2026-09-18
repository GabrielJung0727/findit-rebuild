.class Lcom/findit/battle/InventoryActivity_SAMSUNG$26;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;->createDeleteItemDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$26;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    .line 2409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$26;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_SAMSUNG;->access$28(Lcom/findit/battle/InventoryActivity_SAMSUNG;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2413
    return-void
.end method
