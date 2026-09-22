.class public Lcom/kt/olleh/inapp/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static DEFAULT_APP_VERSION:Ljava/lang/String;

.field static INSTALL:Ljava/lang/String;

.field static PRELOAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "com.kt.olleh.istore"

    sput-object v0, Lcom/kt/olleh/inapp/util/Util;->INSTALL:Ljava/lang/String;

    .line 25
    const-string v0, "com.kt.olleh.storefront"

    sput-object v0, Lcom/kt/olleh/inapp/util/Util;->PRELOAD:Ljava/lang/String;

    .line 26
    const-string v0, "01.00.00"

    sput-object v0, Lcom/kt/olleh/inapp/util/Util;->DEFAULT_APP_VERSION:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addString(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 1
    .param p0, "str"    # Ljava/lang/StringBuffer;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 57
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    return-void
.end method

.method public static addString(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 1
    .param p0, "str"    # Ljava/lang/StringBuffer;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    return-void
.end method

.method public static addString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/StringBuffer;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    return-void
.end method

.method public static addString(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "str"    # Ljava/lang/StringBuffer;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 49
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    return-void
.end method

.method public static addUrlString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "str"    # Ljava/lang/StringBuffer;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "next"    # Z

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    if-eqz p3, :cond_0

    .line 66
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    return-void
.end method

.method public static appVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 99
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/kt/olleh/inapp/util/Util;->checkMarket(Landroid/content/Context;)I

    move-result v3

    .line 100
    .local v3, "packageType":I
    const-string v2, ""

    .line 101
    .local v2, "packageName":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 102
    sget-object v2, Lcom/kt/olleh/inapp/util/Util;->INSTALL:Ljava/lang/String;

    .line 108
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 109
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Lcom/kt/olleh/inapp/util/Util;->appVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageType":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-object v5

    .line 103
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "packageType":I
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 104
    sget-object v2, Lcom/kt/olleh/inapp/util/Util;->PRELOAD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :cond_1
    const-string v5, "unknown"

    goto :goto_1

    .line 111
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "packageType":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/kt/olleh/inapp/util/Util;->DEFAULT_APP_VERSION:Ljava/lang/String;

    goto :goto_1
.end method

.method public static appVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 119
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    :cond_0
    sget-object p0, Lcom/kt/olleh/inapp/util/Util;->DEFAULT_APP_VERSION:Ljava/lang/String;

    .line 158
    .end local p0    # "versionName":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 123
    .restart local p0    # "versionName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x3

    .line 124
    .local v0, "MAX_SIZE":I
    const-string v6, "[.]+"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "split":[Ljava/lang/String;
    array-length v6, v4

    if-le v6, v3, :cond_2

    .line 127
    .local v3, "size":I
    :goto_1
    const-string p0, ""

    .line 128
    const/4 v5, 0x0

    .line 129
    .local v5, "tmp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v3, :cond_3

    .line 144
    const/4 v5, 0x0

    .line 146
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 148
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".00.00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    goto :goto_0

    .line 125
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_2
    array-length v3, v4

    goto :goto_1

    .line 130
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    .restart local v5    # "tmp":Ljava/lang/String;
    :cond_3
    if-lez v2, :cond_4

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 135
    :cond_4
    aget-object v6, v4, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_5

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 129
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 151
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 156
    .end local v0    # "MAX_SIZE":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    sget-object p0, Lcom/kt/olleh/inapp/util/Util;->DEFAULT_APP_VERSION:Ljava/lang/String;

    goto/16 :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkMarket(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v5, -0x1

    .line 71
    .local v5, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 73
    .local v4, "manager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x200

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 78
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_1

    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    move v6, v5

    .line 93
    .end local v5    # "result":I
    .local v6, "result":I
    :goto_1
    return v6

    .line 80
    .end local v6    # "result":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v5    # "result":I
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 81
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v7, Lcom/kt/olleh/inapp/util/Util;->INSTALL:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    const/4 v5, 0x1

    move v6, v5

    .line 84
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto :goto_1

    .line 86
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :cond_2
    sget-object v7, Lcom/kt/olleh/inapp/util/Util;->PRELOAD:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 88
    const/4 v5, 0x2

    move v6, v5

    .line 89
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto :goto_1

    .line 78
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
