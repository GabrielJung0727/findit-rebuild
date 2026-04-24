.class Lcom/findit/battle/WaitingRoom$RoomAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WaitingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/WaitingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoomAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/findit/battle/WaitingRoom$RoomData;",
        ">;"
    }
.end annotation


# instance fields
.field private mResource:I

.field final synthetic this$0:Lcom/findit/battle/WaitingRoom;


# direct methods
.method public constructor <init>(Lcom/findit/battle/WaitingRoom;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Lcom/findit/battle/WaitingRoom$RoomData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/findit/battle/WaitingRoom$RoomData;>;"
    iput-object p1, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter;->this$0:Lcom/findit/battle/WaitingRoom;

    .line 455
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 456
    const-string v0, ">> RoomAdapter()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 457
    iput p3, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter;->mResource:I

    .line 458
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/WaitingRoom$RoomAdapter;)Lcom/findit/battle/WaitingRoom;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter;->this$0:Lcom/findit/battle/WaitingRoom;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    .line 462
    const-string v6, ">> getView()"

    invoke-static {v6}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 465
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 467
    .local v3, "itemview":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 468
    .local v5, "vi":Landroid/view/LayoutInflater;
    iget v6, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter;->mResource:I

    invoke-virtual {v5, v6, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 470
    invoke-virtual {p0, p1}, Lcom/findit/battle/WaitingRoom$RoomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/findit/battle/WaitingRoom$RoomData;

    .line 472
    .local v2, "item":Lcom/findit/battle/WaitingRoom$RoomData;
    const v6, 0x7f0b000e

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 473
    .local v1, "imageview":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/findit/battle/WaitingRoom$RoomAdapter;->this$0:Lcom/findit/battle/WaitingRoom;

    invoke-static {v6}, Lcom/findit/battle/WaitingRoom;->access$2(Lcom/findit/battle/WaitingRoom;)Lcom/findit/battle/GameView;

    move-result-object v6

    iget-object v6, v6, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v6, v6, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/findit/battle/Objects$Character;->mImgPng:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    const v6, 0x7f0b0080

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 476
    .local v4, "textview":Landroid/widget/TextView;
    iget-object v6, v2, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    const v6, 0x7f0b007f

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 479
    .local v0, "button":Landroid/widget/Button;
    iget-object v6, v2, Lcom/findit/battle/WaitingRoom$RoomData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 480
    new-instance v6, Lcom/findit/battle/WaitingRoom$RoomAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/findit/battle/WaitingRoom$RoomAdapter$1;-><init>(Lcom/findit/battle/WaitingRoom$RoomAdapter;Lcom/findit/battle/WaitingRoom$RoomData;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    new-instance v6, Lcom/findit/battle/WaitingRoom$RoomAdapter$2;

    invoke-direct {v6, p0}, Lcom/findit/battle/WaitingRoom$RoomAdapter$2;-><init>(Lcom/findit/battle/WaitingRoom$RoomAdapter;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 519
    iget v6, v2, Lcom/findit/battle/WaitingRoom$RoomData;->mUserNum:I

    if-le v6, v8, :cond_0

    .line 520
    const v6, 0x7f02017a

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 524
    :goto_0
    return-object v3

    .line 522
    :cond_0
    const v6, 0x7f020179

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
