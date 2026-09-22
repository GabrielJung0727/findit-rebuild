.class public final Lcom/feelingk/iap/util/CommonString;
.super Ljava/lang/Object;
.source "CommonString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/iap/util/CommonString$Index;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # Lcom/feelingk/iap/util/CommonString$Index;

    .prologue
    .line 8
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonStringKorean;->getCommonString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
