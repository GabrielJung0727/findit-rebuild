.class Lcom/findit/battle/RankActivity$rankListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/RankActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "rankListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/findit/battle/RankActivity$rankinfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mResource:I

.field final synthetic this$0:Lcom/findit/battle/RankActivity;


# direct methods
.method public constructor <init>(Lcom/findit/battle/RankActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/findit/battle/RankActivity$rankinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/findit/battle/RankActivity$rankinfo;>;"
    iput-object p1, p0, Lcom/findit/battle/RankActivity$rankListAdapter;->this$0:Lcom/findit/battle/RankActivity;

    .line 132
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 134
    iput p3, p0, Lcom/findit/battle/RankActivity$rankListAdapter;->mResource:I

    .line 135
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/findit/battle/RankActivity$rankListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 144
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030011

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, "itemview":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/findit/battle/RankActivity$rankListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/findit/battle/RankActivity$rankinfo;

    .line 147
    .local v1, "item":Lcom/findit/battle/RankActivity$rankinfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/findit/battle/RankActivity$rankinfo;->mRanking:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/findit/battle/RankActivity$rankinfo;->mSumpoint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/findit/battle/RankActivity$rankListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 151
    .local v4, "vi":Landroid/view/LayoutInflater;
    const v5, 0x7f0b0073

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 152
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/findit/battle/RankActivity$rankinfo;->mRanking:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v5, 0x7f0b0074

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 154
    .restart local v3    # "textView":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/findit/battle/RankActivity$rankinfo;->mUserid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v5, 0x7f0b0075

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 156
    .restart local v3    # "textView":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/findit/battle/RankActivity$rankinfo;->mSumpoint:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-object v2
.end method
