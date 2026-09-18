.class public Lcom/kt/olleh/inapp/net/ResCheckBalance;
.super Lcom/kt/olleh/inapp/net/Response;
.source "ResCheckBalance.java"


# instance fields
.field public mDay_balance:Ljava/lang/String;

.field public mMonth_balance:Ljava/lang/String;

.field public mTotal_balance:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcom/kt/olleh/inapp/net/Response;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mDay_balance:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mMonth_balance:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mTotal_balance:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mDay_balance:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mMonth_balance:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mTotal_balance:Ljava/lang/String;

    .line 37
    invoke-super {p0}, Lcom/kt/olleh/inapp/net/Response;->clear()V

    .line 38
    return-void
.end method

.method public getDayBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mDay_balance:Ljava/lang/String;

    return-object v0
.end method

.method public getMonthBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mMonth_balance:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mTotal_balance:Ljava/lang/String;

    return-object v0
.end method

.method protected searchValueTag(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    const-string v3, "day_balance"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResCheckBalance;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mDay_balance:Ljava/lang/String;

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    const-string v3, "month_balance"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResCheckBalance;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mMonth_balance:Ljava/lang/String;

    move v1, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    const-string v3, "total_balance"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-static {p1}, Lcom/kt/olleh/inapp/net/ResCheckBalance;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mTotal_balance:Ljava/lang/String;

    move v1, v2

    .line 62
    goto :goto_0
.end method

.method public setDayBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "dayBalance"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mDay_balance:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMonthBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "monthBalance"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mMonth_balance:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTotalBalance(Ljava/lang/String;)V
    .locals 0
    .param p1, "TotalBalance"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kt/olleh/inapp/net/ResCheckBalance;->mTotal_balance:Ljava/lang/String;

    .line 102
    return-void
.end method
