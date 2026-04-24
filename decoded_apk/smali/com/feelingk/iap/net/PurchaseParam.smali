.class public Lcom/feelingk/iap/net/PurchaseParam;
.super Ljava/lang/Object;
.source "PurchaseParam.java"


# instance fields
.field private pBPInfo:Ljava/lang/String;

.field private pId:Ljava/lang/String;

.field private pName:Ljava/lang/String;

.field private pTid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pId"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pTid"    # Ljava/lang/String;
    .param p4, "pBPInfo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pId:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pTid:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pBPInfo:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/feelingk/iap/net/PurchaseParam;->pId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/feelingk/iap/net/PurchaseParam;->pName:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/feelingk/iap/net/PurchaseParam;->pTid:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/feelingk/iap/net/PurchaseParam;->pBPInfo:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getpBPInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pBPInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pId:Ljava/lang/String;

    return-object v0
.end method

.method public getpName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pName:Ljava/lang/String;

    return-object v0
.end method

.method public getpTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/feelingk/iap/net/PurchaseParam;->pTid:Ljava/lang/String;

    return-object v0
.end method

.method public setpBPInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "pBPInfo"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/feelingk/iap/net/PurchaseParam;->pBPInfo:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/feelingk/iap/net/PurchaseParam;->pId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setpName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/feelingk/iap/net/PurchaseParam;->pName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setpTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pTid"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/feelingk/iap/net/PurchaseParam;->pTid:Ljava/lang/String;

    .line 46
    return-void
.end method
