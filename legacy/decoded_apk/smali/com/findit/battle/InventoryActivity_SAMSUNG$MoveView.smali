.class Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;
.super Ljava/lang/Object;
.source "InventoryActivity_SAMSUNG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/InventoryActivity_SAMSUNG;
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

.field final synthetic this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;


# direct methods
.method public constructor <init>(Lcom/findit/battle/InventoryActivity_SAMSUNG;Landroid/widget/ImageView;III)V
    .locals 2
    .param p2, "imageview"    # Landroid/widget/ImageView;
    .param p3, "size"    # I
    .param p4, "colum"    # I
    .param p5, "row"    # I

    .prologue
    .line 2080
    iput-object p1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->this$0:Lcom/findit/battle/InventoryActivity_SAMSUNG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2081
    iput-object p2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    .line 2082
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2083
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRect:[Landroid/graphics/Rect;

    .line 2085
    const/4 v0, -0x1

    iput v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 2086
    iput p3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mSize:I

    .line 2087
    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mHalfSize:I

    .line 2088
    iput p4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mColumNum:I

    .line 2089
    iput p5, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRowNum:I

    .line 2090
    mul-int v0, p4, p5

    iput v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mWindowNum:I

    .line 2091
    return-void
.end method


# virtual methods
.method public appearView()V
    .locals 2

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2107
    return-void
.end method

.method public clearImage()V
    .locals 2

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2103
    return-void
.end method

.method public fadeView()V
    .locals 2

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2111
    const/4 v0, -0x1

    iput v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mIndex:I

    .line 2112
    return-void
.end method

.method public getTileStandardX(I)I
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 2139
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mSize:I

    iget v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRowNum:I

    div-int v1, p1, v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getTileStandardY(I)I
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 2143
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mSize:I

    iget v1, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRowNum:I

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
    .line 2115
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mHalfSize:I

    .line 2117
    .local v0, "halfsize":I
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2118
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v2, p1, p3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2119
    add-int v2, p2, p4

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2121
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2122
    return-void
.end method

.method public setImage(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2095
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2099
    return-void
.end method

.method public touchRect(IIII)I
    .locals 3
    .param p1, "tx"    # I
    .param p2, "ty"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I

    .prologue
    .line 2148
    add-int/2addr p1, p3

    .line 2149
    add-int/2addr p2, p4

    .line 2151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 2159
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 2152
    .restart local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v2, v0

    .line 2153
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_2

    .line 2154
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, p1, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, p2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, p2, :cond_0

    .line 2151
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public touchTile(IIIII)I
    .locals 6
    .param p1, "tx"    # I
    .param p2, "ty"    # I
    .param p3, "standardx"    # I
    .param p4, "standardy"    # I
    .param p5, "pagenum"    # I

    .prologue
    const/4 v3, -0x1

    .line 2125
    iget v0, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mSize:I

    .line 2126
    .local v0, "slotsize":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "touchTile (tx + standardx): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v5, p1, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (ty + standardy): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p2, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slotsize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2127
    add-int/2addr p1, p3

    .line 2128
    add-int/2addr p2, p4

    .line 2129
    div-int v1, p1, v0

    .line 2130
    .local v1, "x":I
    div-int v2, p2, v0

    .line 2131
    .local v2, "y":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "touchTile x: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 2132
    if-le p1, v3, :cond_0

    if-le v1, v3, :cond_0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mColumNum:I

    if-ge v1, v4, :cond_0

    if-le v2, v3, :cond_0

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRowNum:I

    if-ge v2, v4, :cond_0

    .line 2133
    iget v3, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mRowNum:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    iget v4, p0, Lcom/findit/battle/InventoryActivity_SAMSUNG$MoveView;->mColumNum:I

    mul-int/2addr v4, p5

    add-int/2addr v3, v4

    .line 2135
    :cond_0
    return v3
.end method
