.class public Lcom/sec/android/iap/sample/vo/PurchaseVO;
.super Lcom/sec/android/iap/sample/vo/BaseVO;
.source "PurchaseVO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPaymentId:Ljava/lang/String;

.field private mPurchaseDate:Ljava/lang/String;

.field private mPurchaseId:Ljava/lang/String;

.field private mVerifyUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/sec/android/iap/sample/vo/PurchaseVO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "_jsonString"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/iap/sample/vo/BaseVO;-><init>(Ljava/lang/String;)V

    .line 24
    :try_start_0
    invoke-static {p1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v2, "mPaymentId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->setPaymentId(Ljava/lang/String;)V

    .line 29
    const-string v2, "mPurchaseId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->setPurchaseId(Ljava/lang/String;)V

    .line 32
    const-string v2, "mPurchaseDate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->setPurchaseDate(Ljava/lang/String;)V

    .line 34
    const-string v2, "mVerifyUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->setVerifyUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "jObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "dump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "PaymentID    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getPaymentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    const-string v2, "PurchaseId   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getPurchaseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string v2, "PurchaseDate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getPurchaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    const-string v2, "VerifyUrl    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/PurchaseVO;->getVerifyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public getPaymentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mPaymentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mPurchaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mPurchaseId:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mVerifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setPaymentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "_paymentId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mPaymentId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPurchaseDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "_purchaseDate"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mPurchaseDate:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPurchaseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "_purchaseId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mPurchaseId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setVerifyUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "_verifyUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/PurchaseVO;->mVerifyUrl:Ljava/lang/String;

    .line 80
    return-void
.end method
