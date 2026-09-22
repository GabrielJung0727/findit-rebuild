.class public Lcom/sec/android/iap/sample/vo/ItemVO;
.super Lcom/sec/android/iap/sample/vo/BaseVO;
.source "ItemVO.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSubscriptionDurationMultiplier:Ljava/lang/String;

.field private mSubscriptionDurationUnit:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/sec/android/iap/sample/vo/ItemVO;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iap/sample/vo/ItemVO;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "_jsonString"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/iap/sample/vo/BaseVO;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 27
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v2, "mType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/ItemVO;->setType(Ljava/lang/String;)V

    .line 32
    const-string v2, "mSubscriptionDurationUnit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/ItemVO;->setSubscriptionDurationUnit(Ljava/lang/String;)V

    .line 35
    const-string v2, "mSubscriptionDurationMultiplier"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/ItemVO;->setSubscriptionDurationMultiplier(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "jObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
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

    .line 78
    .local v0, "dump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/ItemVO;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string v2, "SubscriptionDurationUnit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/ItemVO;->getSubscriptionDurationUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    const-string v2, "SubscriptionDurationMultiplier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/ItemVO;->getSubscriptionDurationMultiplier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public getSubscriptionDurationMultiplier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/ItemVO;->mSubscriptionDurationMultiplier:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionDurationUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/ItemVO;->mSubscriptionDurationUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/ItemVO;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setSubscriptionDurationMultiplier(Ljava/lang/String;)V
    .locals 0
    .param p1, "_subscriptionDurationMultiplier"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/ItemVO;->mSubscriptionDurationMultiplier:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSubscriptionDurationUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "_subscriptionDurationUnit"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/ItemVO;->mSubscriptionDurationUnit:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "_type"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/ItemVO;->mType:Ljava/lang/String;

    .line 51
    return-void
.end method
