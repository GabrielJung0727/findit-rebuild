.class Lcom/findit/battle/InventoryActivity_Olleh$26;
.super Ljava/lang/Object;
.source "InventoryActivity_Olleh.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Olleh;->createDeleteItemDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Olleh;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_Olleh;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Olleh$26;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    .line 2575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Olleh$26;->this$0:Lcom/findit/battle/InventoryActivity_Olleh;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Olleh;->access$27(Lcom/findit/battle/InventoryActivity_Olleh;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2579
    return-void
.end method
