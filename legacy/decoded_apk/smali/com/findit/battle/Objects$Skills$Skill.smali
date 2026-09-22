.class Lcom/findit/battle/Objects$Skills$Skill;
.super Ljava/lang/Object;
.source "Objects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/Objects$Skills;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Skill"
.end annotation


# static fields
.field public static final ANIMOBJECT_TOTALNUM:I = 0xa

.field public static final IMAGE_ICON:I = 0x0

.field public static final SKILL_IMAGE_TOTALNUM:I = 0x1


# instance fields
.field public mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

.field public mActionIconObjectsTotalnum:I

.field public mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

.field public mActionObjectsTotalnum:I

.field public mAlpha:[I

.field public mAnimOrder:Ljava/lang/String;

.field public mBuy:Z

.field public mDim:Z

.field public mIconImgId:I

.field public mIconImgPath:Ljava/lang/String;

.field public mId:I

.field public mImgPng:[Landroid/graphics/drawable/Drawable;

.field public mIndex:I

.field public mLevel:I

.field public mName:Ljava/lang/String;

.field public mNum:I

.field public mParent:I

.field public mPoint:I

.field public mRect:[Landroid/graphics/Rect;

.field public mSetNum:I

.field public mShow:Z

.field public mSustainmentTime:I

.field public mTempIconRect:Landroid/graphics/Rect;

.field public mText:Ljava/lang/String;

.field public mTime:I

.field public mTimeCount:I

.field public mUpgrade:I

.field public mUseNum:I

.field final synthetic this$1:Lcom/findit/battle/Objects$Skills;


# direct methods
.method public constructor <init>(Lcom/findit/battle/Objects$Skills;IILjava/lang/String;)V
    .locals 8
    .param p2, "index"    # I
    .param p3, "iconimgid"    # I
    .param p4, "iconimgpath"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2513
    iput-object p1, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2514
    const-string v1, ">> Skill()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2515
    iput p2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mIndex:I

    .line 2516
    new-array v1, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    .line 2517
    new-array v1, v7, [Lcom/findit/battle/Objects$AnimObject;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    .line 2518
    new-array v1, v7, [Lcom/findit/battle/Objects$AnimObject;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    .line 2520
    new-array v1, v5, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    .line 2521
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    .line 2522
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 2526
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    .line 2528
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v7, :cond_1

    .line 2535
    iput p3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    .line 2536
    iput-object p4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    .line 2537
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 2538
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2540
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    .line 2541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAnimOrder:Ljava/lang/String;

    .line 2542
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 2543
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 2544
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mUpgrade:I

    .line 2545
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mUseNum:I

    .line 2546
    iput-boolean v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mDim:Z

    .line 2547
    iput-boolean v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 2548
    iput-boolean v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    .line 2549
    return-void

    .line 2523
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 2524
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v6, v1, v0

    .line 2522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2529
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    new-instance v2, Lcom/findit/battle/Objects$AnimObject;

    invoke-static {p1}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/findit/battle/Objects$AnimObject;-><init>(Lcom/findit/battle/Objects;)V

    aput-object v2, v1, v0

    .line 2530
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    new-instance v2, Lcom/findit/battle/Objects$AnimObject;

    invoke-static {p1}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/findit/battle/Objects$AnimObject;-><init>(Lcom/findit/battle/Objects;)V

    aput-object v2, v1, v0

    .line 2528
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public animation(F)V
    .locals 9
    .param p1, "speedrate"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, -0x1

    const/16 v5, 0xfa

    const/4 v4, 0x0

    .line 2653
    const-string v2, ">> animation()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2656
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    packed-switch v2, :pswitch_data_0

    .line 2895
    :cond_0
    :goto_0
    return-void

    .line 2660
    :pswitch_0
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v4, v2, v4

    .line 2661
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2663
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2664
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto :goto_0

    .line 2668
    :pswitch_1
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v2}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2671
    .local v1, "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2672
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2673
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2674
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2683
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v2, v2, v4

    mul-float v3, v7, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 2685
    .local v0, "alpha":I
    if-ge v0, v5, :cond_1

    .line 2686
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v0, v2, v4

    .line 2690
    :goto_1
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v2, v2

    div-float v3, v8, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2691
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2692
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto :goto_0

    .line 2688
    :cond_1
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v5, v2, v4

    goto :goto_1

    .line 2697
    .end local v0    # "alpha":I
    .end local v1    # "speed":I
    :pswitch_2
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v2}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2700
    .restart local v1    # "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2701
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2702
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2703
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2713
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v2, v2, v4

    mul-float v3, v7, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 2715
    .restart local v0    # "alpha":I
    if-ge v0, v5, :cond_2

    .line 2716
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v0, v2, v4

    .line 2720
    :goto_2
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v3, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2721
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2722
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2718
    :cond_2
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v5, v2, v4

    goto :goto_2

    .line 2727
    .end local v0    # "alpha":I
    .end local v1    # "speed":I
    :pswitch_3
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v2}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2730
    .restart local v1    # "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2731
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2732
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2733
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2743
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v2, v2, v4

    mul-float v3, v7, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 2745
    .restart local v0    # "alpha":I
    if-ge v0, v5, :cond_3

    .line 2746
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v0, v2, v4

    .line 2750
    :goto_3
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v3, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2751
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2752
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2748
    :cond_3
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v5, v2, v4

    goto :goto_3

    .line 2757
    .end local v0    # "alpha":I
    .end local v1    # "speed":I
    :pswitch_4
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v2}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2760
    .restart local v1    # "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2761
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2762
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2763
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2773
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v2, v2, v4

    mul-float v3, v7, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 2775
    .restart local v0    # "alpha":I
    if-ge v0, v5, :cond_4

    .line 2776
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v0, v2, v4

    .line 2780
    :goto_4
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v2, v2

    div-float v3, v8, p1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2783
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2784
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v6, v2, v4

    .line 2786
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2787
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2778
    :cond_4
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v5, v2, v4

    goto :goto_4

    .line 2792
    .end local v0    # "alpha":I
    .end local v1    # "speed":I
    :pswitch_5
    const/high16 v2, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v3}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2795
    .restart local v1    # "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v4, v2, v4

    .line 2798
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2799
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2800
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2802
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2803
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2807
    .end local v1    # "speed":I
    :pswitch_6
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v2}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2812
    .restart local v1    # "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2813
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2814
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_5

    .line 2815
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2825
    :cond_5
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v2, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 2827
    .restart local v0    # "alpha":I
    if-ge v0, v5, :cond_6

    .line 2828
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v0, v2, v4

    .line 2832
    :goto_5
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    .line 2835
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2837
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v6, v2, v4

    .line 2839
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2840
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2830
    :cond_6
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v5, v2, v4

    goto :goto_5

    .line 2845
    .end local v0    # "alpha":I
    .end local v1    # "speed":I
    :pswitch_7
    const/high16 v2, 0x41700000    # 15.0f

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v3}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v3

    invoke-static {v3}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2849
    .restart local v1    # "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v4, v2, v4

    .line 2850
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2851
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2852
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2854
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2855
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2859
    .end local v1    # "speed":I
    :pswitch_8
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v2}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v2

    invoke-static {v2}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v2

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 2864
    .restart local v1    # "speed":I
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2865
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2866
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_7

    .line 2867
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2876
    :cond_7
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v2, v2, v4

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 2878
    .restart local v0    # "alpha":I
    if-ge v0, v5, :cond_8

    .line 2879
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v0, v2, v4

    .line 2883
    :goto_6
    iget v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    .line 2886
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2887
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v6, v2, v4

    .line 2889
    iput v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2890
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    .line 2891
    iput-boolean v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    goto/16 :goto_0

    .line 2881
    :cond_8
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aput v5, v2, v4

    goto :goto_6

    .line 2656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public animation(FLcom/findit/battle/GameView;)V
    .locals 10
    .param p1, "speedrate"    # F
    .param p2, "gameview"    # Lcom/findit/battle/GameView;

    .prologue
    const/16 v9, 0x96

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v8, 0x0

    .line 2898
    const-string v5, ">> animation()"

    invoke-static {v5}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2901
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    packed-switch v5, :pswitch_data_0

    .line 3060
    :cond_0
    :goto_0
    return-void

    .line 2903
    :pswitch_0
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2904
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2905
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    const/16 v6, 0xfa

    iput v6, v5, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 2907
    const/16 v5, 0x9

    invoke-virtual {p2, v5}, Lcom/findit/battle/GameView;->playSound(I)V

    .line 2908
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2909
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto :goto_0

    .line 2913
    :pswitch_1
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 2915
    .local v3, "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2916
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2917
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2918
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2920
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v5, v5

    div-float v6, v7, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 2921
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2922
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto :goto_0

    .line 2927
    .end local v3    # "speed":I
    :pswitch_2
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 2929
    .restart local v3    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2930
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2931
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2932
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2934
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v5, v5

    div-float v6, v7, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 2935
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2936
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2941
    .end local v3    # "speed":I
    :pswitch_3
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 2943
    .restart local v3    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2944
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2945
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2946
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2948
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v5, v5

    div-float v6, v7, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 2949
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2950
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2955
    .end local v3    # "speed":I
    :pswitch_4
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    div-int/lit8 v5, v5, 0x2

    rsub-int/lit8 v5, v5, 0x14

    int-to-float v5, v5

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v6}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v6

    invoke-static {v6}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 2956
    .restart local v3    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v2, v5

    .line 2957
    .local v2, "drawrate":I
    if-ge v3, v2, :cond_1

    .line 2958
    move v3, v2

    .line 2960
    :cond_1
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2961
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2963
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v6, p2, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v6, v6, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/findit/battle/Objects$Character;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 2964
    .local v1, "chracterx":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_3

    .line 2965
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_2

    .line 2966
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 2967
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2968
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2969
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2970
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2983
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    float-to-int v6, p1

    sub-int v0, v5, v6

    .line 2985
    .local v0, "alpha":I
    if-le v0, v9, :cond_4

    .line 2986
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iput v0, v5, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    .line 2990
    :goto_2
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 2991
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 2992
    .local v4, "widthhalf":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    sub-int v6, v1, v4

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2993
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    add-int v6, v1, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2995
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2996
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 2974
    .end local v0    # "alpha":I
    .end local v4    # "widthhalf":I
    :cond_3
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_2

    .line 2975
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 2976
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2977
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2978
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2979
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 2988
    .restart local v0    # "alpha":I
    :cond_4
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iput v9, v5, Lcom/findit/battle/Objects$AnimObject;->mAlpha:I

    goto/16 :goto_2

    .line 3001
    .end local v0    # "alpha":I
    .end local v1    # "chracterx":I
    .end local v2    # "drawrate":I
    .end local v3    # "speed":I
    :pswitch_5
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 3003
    .restart local v3    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3004
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3005
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3006
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3008
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v5, v5

    div-float v6, v7, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 3009
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 3010
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 3015
    .end local v3    # "speed":I
    :pswitch_6
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 3017
    .restart local v3    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3018
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3019
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3020
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3022
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v5, v5

    div-float v6, v7, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 3023
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 3024
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 3029
    .end local v3    # "speed":I
    :pswitch_7
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 3031
    .restart local v3    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3032
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3033
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3034
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3036
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    int-to-float v5, v5

    div-float v6, v7, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 3037
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 3038
    iget v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    goto/16 :goto_0

    .line 3043
    .end local v3    # "speed":I
    :pswitch_8
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    invoke-static {v5}, Lcom/findit/battle/Objects;->access$1(Lcom/findit/battle/Objects;)F

    move-result v5

    mul-float/2addr v5, p1

    float-to-int v3, v5

    .line 3045
    .restart local v3    # "speed":I
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3046
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3047
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3048
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3050
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 3052
    iget-object v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    invoke-static {v5}, Lcom/findit/battle/Objects$Skills;->access$0(Lcom/findit/battle/Objects$Skills;)Lcom/findit/battle/Objects;

    move-result-object v5

    iget-object v5, v5, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v6, p2, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v6, v6, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v5, v5, v6

    iput v8, v5, Lcom/findit/battle/Objects$Character;->mTime:I

    .line 3054
    iput v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 3055
    const/4 v5, -0x1

    iput v5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    .line 3056
    iput-boolean v8, p0, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    goto/16 :goto_0

    .line 2901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public animationAction(F)V
    .locals 5
    .param p1, "speedrate"    # F

    .prologue
    .line 3063
    const-string v2, ">> animationAction()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 3064
    iget v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 3065
    .local v1, "totalnum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 3067
    return-void

    .line 3066
    :cond_0
    iget-object v2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    iget-object v3, v3, Lcom/findit/battle/Objects$Skills;->mSrcImgBmp:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    iget-object v4, v4, Lcom/findit/battle/Objects$Skills;->mSrcImgPng:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1, v3, v4}, Lcom/findit/battle/Objects$AnimObject;->animation(F[Landroid/graphics/Bitmap;[Landroid/graphics/drawable/Drawable;)Z

    .line 3065
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(Lcom/findit/battle/Objects$Skills$Skill;)V
    .locals 3
    .param p1, "skill"    # Lcom/findit/battle/Objects$Skills$Skill;

    .prologue
    .line 2563
    const-string v1, ">> set()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2564
    iget-object v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mImgPng:[Landroid/graphics/drawable/Drawable;

    .line 2566
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2569
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 2572
    iget-object v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgPath:Ljava/lang/String;

    .line 2573
    iget-object v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mAnimOrder:Ljava/lang/String;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAnimOrder:Ljava/lang/String;

    .line 2574
    iget-object v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mName:Ljava/lang/String;

    .line 2575
    iget-object v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    iput-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    .line 2577
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 2580
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/findit/battle/Objects$Skills$Skill;->mTempIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2582
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mIconImgId:I

    .line 2584
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 2587
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 2588
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2589
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mId:I

    .line 2590
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mIndex:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mIndex:I

    .line 2591
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mLevel:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mLevel:I

    .line 2592
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    .line 2593
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mSustainmentTime:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mSustainmentTime:I

    .line 2594
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mParent:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mParent:I

    .line 2595
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mUpgrade:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mUpgrade:I

    .line 2596
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    .line 2597
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTimeCount:I

    .line 2598
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjectsTotalnum:I

    .line 2599
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjectsTotalnum:I

    .line 2600
    iget v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mUseNum:I

    iput v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mUseNum:I

    .line 2601
    iget-boolean v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mDim:Z

    iput-boolean v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mDim:Z

    .line 2602
    iget-boolean v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    iput-boolean v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    .line 2603
    iget-boolean v1, p1, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    iput-boolean v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mShow:Z

    .line 2604
    return-void

    .line 2567
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/findit/battle/Objects$Skills$Skill;->mActionObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/findit/battle/Objects$AnimObject;->set(Lcom/findit/battle/Objects$AnimObject;)V

    .line 2566
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2570
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/findit/battle/Objects$AnimObject;->set(Lcom/findit/battle/Objects$AnimObject;)V

    .line 2569
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2578
    :cond_2
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2577
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2585
    :cond_3
    iget-object v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    iget-object v2, p1, Lcom/findit/battle/Objects$Skills$Skill;->mAlpha:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 2584
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method public setActionIconSlot(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 2648
    const-string v0, ">> setActionIconSlot()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2649
    iget-object v0, p0, Lcom/findit/battle/Objects$Skills$Skill;->mActionIconObjects:[Lcom/findit/battle/Objects$AnimObject;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/findit/battle/Objects$AnimObject;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2650
    return-void
.end method

.method public setContent(Landroid/content/Context;IIIIZII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "point"    # I
    .param p4, "sustainmenttime"    # I
    .param p5, "parent"    # I
    .param p6, "dim"    # Z
    .param p7, "nameid"    # I
    .param p8, "textid"    # I

    .prologue
    .line 2552
    const-string v0, ">> setContent()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2553
    iput p2, p0, Lcom/findit/battle/Objects$Skills$Skill;->mLevel:I

    .line 2554
    iput p3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mPoint:I

    .line 2555
    iput p4, p0, Lcom/findit/battle/Objects$Skills$Skill;->mSustainmentTime:I

    .line 2556
    iput p5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mParent:I

    .line 2557
    iput-boolean p6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mDim:Z

    .line 2558
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/Objects$Skills$Skill;->mName:Ljava/lang/String;

    .line 2559
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/findit/battle/Objects$Skills$Skill;->mText:Ljava/lang/String;

    .line 2560
    return-void
.end method

.method public setSlot(IIIIII)V
    .locals 6
    .param p1, "windowx"    # I
    .param p2, "windowy"    # I
    .param p3, "time"    # I
    .param p4, "size"    # I
    .param p5, "spacex"    # I
    .param p6, "spacey"    # I

    .prologue
    .line 2630
    const-string v3, ">> setSlot()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2631
    iget-boolean v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v3, :cond_1

    .line 2632
    iget v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2633
    .local v1, "num":I
    if-gez v1, :cond_0

    .line 2634
    iget v1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 2639
    :cond_0
    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, p5

    add-int/2addr v3, p1

    mul-int v4, p4, v1

    add-int v0, v3, v4

    .line 2640
    .local v0, "left":I
    add-int v2, p2, p6

    .line 2641
    .local v2, "top":I
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int v4, v0, p4

    add-int v5, v2, p4

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2643
    iput p3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    .line 2645
    .end local v0    # "left":I
    .end local v1    # "num":I
    .end local v2    # "top":I
    :cond_1
    return-void
.end method

.method public setSlot(IIIZI)V
    .locals 7
    .param p1, "num"    # I
    .param p2, "windowx"    # I
    .param p3, "windowy"    # I
    .param p4, "set"    # Z
    .param p5, "time"    # I

    .prologue
    const/4 v6, -0x1

    .line 2607
    const-string v3, ">> setSlot()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verboseFromObjectsClass(Ljava/lang/String;)V

    .line 2608
    iget-boolean v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mBuy:Z

    if-eqz v3, :cond_0

    .line 2609
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    iget v1, v3, Lcom/findit/battle/Objects$Skills;->mIconSize:I

    .line 2612
    .local v1, "size":I
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    iget v3, v3, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v3, p2

    mul-int v4, v1, p1

    add-int v0, v3, v4

    .line 2613
    .local v0, "left":I
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->this$1:Lcom/findit/battle/Objects$Skills;

    iget v3, v3, Lcom/findit/battle/Objects$Skills;->mIconSpace:I

    add-int v2, p3, v3

    .line 2614
    .local v2, "top":I
    iget-object v3, p0, Lcom/findit/battle/Objects$Skills$Skill;->mRect:[Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    add-int v4, v0, v1

    add-int v5, v2, v1

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2616
    if-eqz p4, :cond_1

    .line 2617
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 2618
    iput p1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    .line 2625
    :goto_0
    iput p5, p0, Lcom/findit/battle/Objects$Skills$Skill;->mTime:I

    .line 2627
    .end local v0    # "left":I
    .end local v1    # "size":I
    .end local v2    # "top":I
    :cond_0
    return-void

    .line 2621
    .restart local v0    # "left":I
    .restart local v1    # "size":I
    .restart local v2    # "top":I
    :cond_1
    iput p1, p0, Lcom/findit/battle/Objects$Skills$Skill;->mNum:I

    .line 2622
    iput v6, p0, Lcom/findit/battle/Objects$Skills$Skill;->mSetNum:I

    goto :goto_0
.end method
