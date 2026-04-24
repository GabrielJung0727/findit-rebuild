.class public Lcom/sec/android/iap/sample/vo/BaseVO;
.super Ljava/lang/Object;
.source "BaseVO.java"


# instance fields
.field private mCurrencyUnit:Ljava/lang/String;

.field private mItemDesc:Ljava/lang/String;

.field private mItemDownloadUrl:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;

.field private mItemImageUrl:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;

.field private mItemPrice:Ljava/lang/Double;

.field private mItemPriceString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "_jsonString"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v2, "mItemId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setItemId(Ljava/lang/String;)V

    .line 29
    const-string v2, "mItemName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setItemName(Ljava/lang/String;)V

    .line 30
    const-string v2, "mItemPrice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setItemPrice(Ljava/lang/Double;)V

    .line 31
    const-string v2, "mCurrencyUnit"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setCurrencyUnit(Ljava/lang/String;)V

    .line 32
    const-string v2, "mItemDesc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setItemDesc(Ljava/lang/String;)V

    .line 33
    const-string v2, "mItemImageUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setItemImageUrl(Ljava/lang/String;)V

    .line 34
    const-string v2, "mItemDownloadUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setItemDownloadUrl(Ljava/lang/String;)V

    .line 35
    const-string v2, "mItemPriceString"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/iap/sample/vo/BaseVO;->setItemPriceString(Ljava/lang/String;)V
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
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "dump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemId          : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    const-string v2, "ItemName        : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getItemName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    const-string v2, "ItemPrice       : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getItemPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    const-string v2, "ItemPriceString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getItemPriceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string v2, "CurrencyUnit    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string v2, "ItemDesc        : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getItemDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    const-string v2, "ItemImageUrl    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getItemImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    const-string v2, "ItemDownloadUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/BaseVO;->getItemDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method

.method public getCurrencyUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mCurrencyUnit:Ljava/lang/String;

    return-object v0
.end method

.method protected getDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "_strTimeMills"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v2, ""

    .line 142
    .local v2, "result":Ljava/lang/String;
    const-string v0, "yyyy.MM.dd hh:mm:ss"

    .line 144
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 149
    .local v3, "timeMills":J
    invoke-static {v0, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    .end local v3    # "timeMills":J
    :cond_0
    :goto_0
    return-object v2

    .line 151
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const-string v2, ""

    goto :goto_0
.end method

.method public getItemDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getItemDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getItemPriceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemPriceString:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrencyUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "_currencyUnit"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mCurrencyUnit:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setItemDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "_itemDesc"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemDesc:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setItemDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "_itemDownloadUrl"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemDownloadUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "_itemId"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setItemImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "_itemImageUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemImageUrl:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_itemName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setItemPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "_itemPrice"    # Ljava/lang/Double;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemPrice:Ljava/lang/Double;

    .line 71
    return-void
.end method

.method public setItemPriceString(Ljava/lang/String;)V
    .locals 0
    .param p1, "_itemPriceString"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/BaseVO;->mItemPriceString:Ljava/lang/String;

    .line 81
    return-void
.end method
