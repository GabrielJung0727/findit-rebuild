.class Lcom/findit/battle/InventoryActivity_Google$26;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_Google;->createDeleteItemDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Google;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_Google;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$26;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 2351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$26;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_Google;->access$27(Lcom/findit/battle/InventoryActivity_Google;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 2355
    return-void
.end method
