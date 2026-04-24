.class Lcom/findit/battle/GameView$BattleRoom$UserAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView$BattleRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mResource:I

.field final synthetic this$1:Lcom/findit/battle/GameView$BattleRoom;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView$BattleRoom;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2764
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;->this$1:Lcom/findit/battle/GameView$BattleRoom;

    .line 2765
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2766
    const-string v0, ">> UserAdapter()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2767
    iput p3, p0, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;->mResource:I

    .line 2768
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2772
    const-string v4, ">> getView()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2775
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2777
    .local v1, "itemview":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2778
    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2777
    check-cast v3, Landroid/view/LayoutInflater;

    .line 2779
    .local v3, "vi":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;->mResource:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2781
    invoke-virtual {p0, p1}, Lcom/findit/battle/GameView$BattleRoom$UserAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2784
    .local v0, "item":Ljava/lang/String;
    const v4, 0x7f0b0080

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2783
    check-cast v2, Landroid/widget/TextView;

    .line 2785
    .local v2, "textview":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2787
    return-object v1
.end method
