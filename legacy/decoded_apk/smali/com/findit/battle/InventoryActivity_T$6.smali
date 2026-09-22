.class Lcom/findit/battle/InventoryActivity_T$6;
.super Ljava/lang/Object;
.source "InventoryActivity_T.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/InventoryActivity_T;->setTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_T;


# direct methods
.method constructor <init>(Lcom/findit/battle/InventoryActivity_T;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_T$6;->this$0:Lcom/findit/battle/InventoryActivity_T;

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_T$6;->this$0:Lcom/findit/battle/InventoryActivity_T;

    invoke-static {v0}, Lcom/findit/battle/InventoryActivity_T;->access$20(Lcom/findit/battle/InventoryActivity_T;)V

    .line 944
    return-void
.end method
