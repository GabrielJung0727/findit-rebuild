.class Lcom/kt/olleh/inapp/dialog/ContentsDB;
.super Ljava/lang/Object;
.source "WebViewJavaScriptHandler.java"


# instance fields
.field private strAppId:Ljava/lang/String;

.field private strCid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_Cid"    # Ljava/lang/String;
    .param p2, "_AppID"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/ContentsDB;->strCid:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/ContentsDB;->strAppId:Ljava/lang/String;

    .line 18
    return-void
.end method
