.class public Lcom/kt/olleh/inapp/InAppSettings;
.super Ljava/lang/Object;
.source "InAppSettings.java"


# static fields
.field static Authen:Ljava/lang/String; = null

.field static UserInfo:Ljava/lang/String; = null

.field static UserInfo2:Lcom/kt/olleh/inapp/userInfo; = null

.field static final authen_KPAD:Ljava/lang/String; = "03"

.field static final authen_OllehID:Ljava/lang/String; = "04"

.field static authen_SP:Ljava/lang/String; = null

.field static final authen_ShowID:Ljava/lang/String; = "03"

.field static final authen_SoIP:Ljava/lang/String; = "02"

.field static final loginCancelCode:Ljava/lang/String; = "I002"

.field static final loginCancelMsg:Ljava/lang/String; = "\uc0ac\uc6a9\uc790 \uc694\uccad(\ub85c\uadf8\uc778)\uc5d0 \uc758\ud55c \ucde8\uc18c"

.field static final payInternetPhone:Ljava/lang/String; = "\uc778\ud130\ub137\uc804\ud654 \uacb0\uc81c"

.field static final payMobile:Ljava/lang/String; = "\ud578\ub4dc\ud3f0 \uacb0\uc81c"

.field static final userCancelCode:Ljava/lang/String; = "I001"

.field static final userCancelMsg:Ljava/lang/String; = "\uc0ac\uc6a9\uc790 \uc694\uccad\uc5d0 \uc758\ud55c \ucde8\uc18c"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "01"

    sput-object v0, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;

    .line 7
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo2:Lcom/kt/olleh/inapp/userInfo;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/kt/olleh/inapp/userInfo;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/userInfo;-><init>()V

    sput-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo2:Lcom/kt/olleh/inapp/userInfo;

    .line 18
    :cond_0
    return-void
.end method

.method static getAuthen()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "#####"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### get:authen = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kt/olleh/inapp/userInfo;->Authen:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    sget-object v0, Lcom/kt/olleh/inapp/userInfo;->Authen:Ljava/lang/String;

    return-object v0
.end method

.method static getUserInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "#####"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### get:user_info = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kt/olleh/inapp/userInfo;->UserInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    sget-object v0, Lcom/kt/olleh/inapp/userInfo;->UserInfo:Ljava/lang/String;

    return-object v0
.end method

.method static setAuthen(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "#####"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### set:authen = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    sput-object p0, Lcom/kt/olleh/inapp/userInfo;->Authen:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static setUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "#####"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "##### set:user_info = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    sput-object p0, Lcom/kt/olleh/inapp/userInfo;->UserInfo:Ljava/lang/String;

    .line 29
    return-void
.end method
