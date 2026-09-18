.class Lcom/findit/battle/InventoryActivity_Google$MoveView;
.super Ljava/lang/Object;
.source "InventoryActivity_Google.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_Google;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveView"
.end annotation


# static fields
.field public static final RECT_LENGTH:I = 0xa


# instance fields
.field public mColumNum:I

.field public mHalfSize:I

.field public mImageView:Landroid/widget/ImageView;

.field public mIndex:I

.field public mRect:[Landroid/graphics/Rect;

.field public mRowNum:I

.field public mSize:I

.field public mWindowNum:I

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_Google;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_Google;Landroid/widget/ImageView;III)V
    .locals 2
    .param p2, "imageview"    # Landroid/widget/ImageView;
    .param p3, "size"    # I
    .param p4, "colum"    # I
    .param p5, "row"    # I

    .prologue
    .line 2096
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    const-string v0, ">> MoveView()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2098
    iput-object p2, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    .line 2099
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2100
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRect:[Landroid/graphics/Rect;

    .line 2102
    const/4 v0, -0x1

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    .line 2103
    iput p3, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mSize:I

    .line 2104
    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mHalfSize:I

    .line 2105
    iput p4, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mColumNum:I

    .line 2106
    iput p5, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRowNum:I

    .line 2107
    mul-int v0, p4, p5

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mWindowNum:I

    .line 2108
    return-void
.end method


# virtual methods
.method public appearView()V
    .locals 2

    .prologue
    .line 2129
    const-string v0, ">> appearView()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2130
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2131
    return-void
.end method

.method public clearImage()V
    .locals 2

    .prologue
    .line 2124
    const-string v0, ">> clearImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2126
    return-void
.end method

.method public fadeView()V
    .locals 2

    .prologue
    .line 2134
    const-string v0, ">> fadeView()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2135
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2136
    const/4 v0, -0x1

    iput v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mIndex:I

    .line 2137
    return-void
.end method

.method public getTileStandardX(I)I
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 2164
    const-string v0, ">> getTileStandardX()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2165
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mSize:I

    iget v1, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRowNum:I

    div-int v1, p1, v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getTileStandardY(I)I
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 2169
    const-string v0, ">> getTileStandardY()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2170
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mSize:I

    iget v1, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRowNum:I

    rem-int v1, p1, v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public move(IIII)V
    .locals 3
    .param p1, "tx"    # I
    .param p2, "ty"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I

    .prologue
    .line 2140
    const-string v2, ">> move()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2141
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mHalfSize:I

    .line 2143
    .local v0, "halfsize":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2144
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v2, p1, p3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2145
    add-int v2, p2, p4

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2147
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2148
    return-void
.end method

.method public setImage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2111
    const-string v1, ">> setImage()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2114
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->this$0:Lcom/findit/battle/InventoryActivity_Google;

    invoke-virtual {v1}, Lcom/findit/battle/InventoryActivity_Google;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2115
    .local v0, "img":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2116
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2119
    const-string v0, ">> setImage()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2120
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2121
    return-void
.end method

.method public touchRect(IIII)I
    .locals 3
    .param p1, "tx"    # I
    .param p2, "ty"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I

    .prologue
    .line 2174
    const-string v2, ">> touchRect()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2175
    add-int/2addr p1, p3

    .line 2176
    add-int/2addr p2, p4

    .line 2177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 2185
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 2178
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v2, v0

    .line 2179
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 2180
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, p1, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, p2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, p2, :cond_0

    .line 2177
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public touchTile(IIIII)I
    .locals 5
    .param p1, "tx"    # I
    .param p2, "ty"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I
    .param p5, "pagenum"    # I

    .prologue
    const/4 v3, -0x1

    .line 2151
    const-string v4, ">> touchTile()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2152
    iget v0, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mSize:I

    .line 2153
    .local v0, "slotsize":I
    add-int/2addr p1, p3

    .line 2154
    add-int/2addr p2, p4

    .line 2155
    div-int v1, p1, v0

    .line 2156
    .local v1, "x":I
    div-int v2, p2, v0

    .line 2157
    .local v2, "y":I
    if-le p1, v3, :cond_0

    if-le v1, v3, :cond_0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mColumNum:I

    if-ge v1, v4, :cond_0

    if-le v2, v3, :cond_0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRowNum:I

    if-ge v2, v4, :cond_0

    .line 2158
    iget v3, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mRowNum:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    iget v4, p0, Lcom/findit/battle/InventoryActivity_Google$MoveView;->mColumNum:I

    mul-int/2addr v4, p5

    add-int/2addr v3, v4

    .line 2160
    :cond_0
    return v3
.end method
