.class public Lcom/feelingk/iap/gui/data/SingletonCounter;
.super Ljava/lang/Object;
.source "SingletonCounter.java"


# static fields
.field private static singleton:Lcom/feelingk/iap/gui/data/SingletonCounter;


# instance fields
.field private mCultureBtnFlag:Z

.field private mCultureUse:I

.field private mDotoriBtnFlag:Z

.field private mDotoriUse:I

.field private mOCBBtnFlag:Z

.field private mOCBUse:I

.field private mPaymentTotal:I

.field private mPostPay:I

.field private mTCashUse:I

.field private mTCashUseFlag:Z

.field private mTotalBalance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/feelingk/iap/gui/data/SingletonCounter;->singleton:Lcom/feelingk/iap/gui/data/SingletonCounter;

    .line 3
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTotalBalance:I

    .line 7
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPostPay:I

    .line 8
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPaymentTotal:I

    .line 9
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBUse:I

    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriUse:I

    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureUse:I

    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUse:I

    .line 10
    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBBtnFlag:Z

    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriBtnFlag:Z

    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureBtnFlag:Z

    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUseFlag:Z

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/feelingk/iap/gui/data/SingletonCounter;->singleton:Lcom/feelingk/iap/gui/data/SingletonCounter;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/feelingk/iap/gui/data/SingletonCounter;

    invoke-direct {v0}, Lcom/feelingk/iap/gui/data/SingletonCounter;-><init>()V

    sput-object v0, Lcom/feelingk/iap/gui/data/SingletonCounter;->singleton:Lcom/feelingk/iap/gui/data/SingletonCounter;

    .line 20
    :cond_0
    sget-object v0, Lcom/feelingk/iap/gui/data/SingletonCounter;->singleton:Lcom/feelingk/iap/gui/data/SingletonCounter;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTotalBalance:I

    .line 25
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPostPay:I

    .line 26
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPaymentTotal:I

    .line 27
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBUse:I

    .line 28
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriUse:I

    .line 29
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureUse:I

    .line 30
    iput v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUse:I

    .line 32
    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBBtnFlag:Z

    .line 33
    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriBtnFlag:Z

    .line 34
    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureBtnFlag:Z

    .line 35
    iput-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUseFlag:Z

    .line 36
    return-void
.end method

.method public getmCultureUse()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureUse:I

    return v0
.end method

.method public getmDotoriUse()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriUse:I

    return v0
.end method

.method public getmOCBUse()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBUse:I

    return v0
.end method

.method public getmPaymentTotal()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPaymentTotal:I

    return v0
.end method

.method public getmPostPay()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPostPay:I

    return v0
.end method

.method public getmTCashUse()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUse:I

    return v0
.end method

.method public getmTotalBalance()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTotalBalance:I

    return v0
.end method

.method public ismCultureBtnFlag()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureBtnFlag:Z

    return v0
.end method

.method public ismDotoriBtnFlag()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriBtnFlag:Z

    return v0
.end method

.method public ismOCBBtnFlag()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBBtnFlag:Z

    return v0
.end method

.method public ismTCashUseFlag()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUseFlag:Z

    return v0
.end method

.method public setmCultureBtnFlag(Z)V
    .locals 0
    .param p1, "mCultureBtnFlag"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureBtnFlag:Z

    .line 134
    return-void
.end method

.method public setmCultureUse(I)V
    .locals 0
    .param p1, "mCultureUse"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mCultureUse:I

    .line 96
    return-void
.end method

.method public setmDotoriBtnFlag(Z)V
    .locals 0
    .param p1, "mDotoriBtnFlag"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriBtnFlag:Z

    .line 124
    return-void
.end method

.method public setmDotoriUse(I)V
    .locals 0
    .param p1, "mDotoriUse"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mDotoriUse:I

    .line 86
    return-void
.end method

.method public setmOCBBtnFlag(Z)V
    .locals 0
    .param p1, "mOCBBtnFlag"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBBtnFlag:Z

    .line 115
    return-void
.end method

.method public setmOCBUse(I)V
    .locals 0
    .param p1, "mOCBUse"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mOCBUse:I

    .line 76
    return-void
.end method

.method public setmPaymentTotal(I)V
    .locals 0
    .param p1, "mPaymentTotal"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPaymentTotal:I

    .line 66
    return-void
.end method

.method public setmPostPay(I)V
    .locals 0
    .param p1, "mPostPay"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mPostPay:I

    .line 56
    return-void
.end method

.method public setmTCashUse(I)V
    .locals 0
    .param p1, "mTCashUse"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUse:I

    .line 105
    return-void
.end method

.method public setmTCashUseFlag(Z)V
    .locals 0
    .param p1, "mTCashUseFlag"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTCashUseFlag:Z

    .line 144
    return-void
.end method

.method public setmTotalBalance(I)V
    .locals 0
    .param p1, "mTotalBalance"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/feelingk/iap/gui/data/SingletonCounter;->mTotalBalance:I

    .line 46
    return-void
.end method
