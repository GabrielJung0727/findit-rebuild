.class public Lcom/findit/battle/FindItApplication;
.super Landroid/app/Application;
.source "FindItApplication.java"


# static fields
.field private static m_nDisplayScreenHeight:I

.field private static m_nDisplayScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x258

    .line 10
    sput v0, Lcom/findit/battle/FindItApplication;->m_nDisplayScreenWidth:I

    .line 11
    sput v0, Lcom/findit/battle/FindItApplication;->m_nDisplayScreenHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getDisplayScreenHeight()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/findit/battle/FindItApplication;->m_nDisplayScreenHeight:I

    return v0
.end method

.method public static getDisplayScreenWidth()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/findit/battle/FindItApplication;->m_nDisplayScreenWidth:I

    return v0
.end method

.method private setDisplayScreenHeight(I)V
    .locals 0
    .param p1, "nHeight"    # I

    .prologue
    .line 37
    sput p1, Lcom/findit/battle/FindItApplication;->m_nDisplayScreenHeight:I

    .line 38
    return-void
.end method

.method private setDisplayScreenWidth(I)V
    .locals 0
    .param p1, "nWidth"    # I

    .prologue
    .line 34
    sput p1, Lcom/findit/battle/FindItApplication;->m_nDisplayScreenWidth:I

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 18
    .local v0, "oDM":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/findit/battle/FindItApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 19
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v1}, Lcom/findit/battle/FindItApplication;->setDisplayScreenWidth(I)V

    .line 20
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v1}, Lcom/findit/battle/FindItApplication;->setDisplayScreenHeight(I)V

    .line 22
    return-void
.end method
