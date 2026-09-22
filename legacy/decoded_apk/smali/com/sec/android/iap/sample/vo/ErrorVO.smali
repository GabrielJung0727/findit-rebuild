.class public Lcom/sec/android/iap/sample/vo/ErrorVO;
.super Ljava/lang/Object;
.source "ErrorVO.java"


# instance fields
.field private mErrorCode:I

.field private mErrorString:Ljava/lang/String;

.field private mExtraString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mErrorCode:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mErrorString:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mExtraString:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    const-string v0, ""

    .line 43
    .local v0, "dump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ErrorCode    : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    const-string v2, "ErrorString  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    const-string v2, "ExtraString  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/iap/sample/vo/ErrorVO;->getExtraString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mErrorCode:I

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mExtraString:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "_errorCode"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mErrorCode:I

    .line 17
    return-void
.end method

.method public setErrorString(Ljava/lang/String;)V
    .locals 0
    .param p1, "_errorString"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mErrorString:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setExtraString(Ljava/lang/String;)V
    .locals 0
    .param p1, "_extraString"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sec/android/iap/sample/vo/ErrorVO;->mExtraString:Ljava/lang/String;

    .line 37
    return-void
.end method
