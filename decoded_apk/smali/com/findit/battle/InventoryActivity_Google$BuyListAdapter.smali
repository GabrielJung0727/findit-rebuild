.class Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InventoryActivity_Google.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Google;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BuyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/findit/battle/InventoryActivity_Google$BuyList;",
        ">;"
    }
.end annotation


# instance fields
.field private mResource:I

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Google;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_Google;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/findit/battle/InventoryActivity_Google$BuyList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2750
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/findit/battle/InventoryActivity_Google$BuyList;>;"
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    .line 2751
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2752
    const-string v0, ">> BuyListAdapter()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2753
    iput p3, p0, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;->mResource:I

    .line 2754
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2758
    const-string v4, ">> getView()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2759
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2761
    .local v1, "itemview":Landroid/widget/LinearLayout;
    invoke-virtual {p0, p1}, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/findit/battle/InventoryActivity_Google$BuyList;

    .line 2763
    .local v0, "item":Lcom/findit/battle/InventoryActivity_Google$BuyList;
    invoke-virtual {p0}, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2764
    .local v3, "vi":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google$BuyListAdapter;->mResource:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2766
    const v4, 0x7f0b0002

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2767
    .local v2, "textview":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/findit/battle/InventoryActivity_Google$BuyList;->mDate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2769
    const v4, 0x7f0b0003

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textview":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 2770
    .restart local v2    # "textview":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/findit/battle/InventoryActivity_Google$BuyList;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2772
    const v4, 0x7f0b0004

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textview":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 2773
    .restart local v2    # "textview":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/findit/battle/InventoryActivity_Google$BuyList;->mNum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2775
    return-object v1
.end method
