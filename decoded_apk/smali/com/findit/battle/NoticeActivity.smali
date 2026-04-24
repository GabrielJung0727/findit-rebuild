.class public Lcom/findit/battle/NoticeActivity;
.super Landroid/app/Activity;
.source "NoticeActivity.java"


# static fields
.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final SERVER_URL_FACEBOOK:Ljava/lang/String; = "http://www.facebook.com/finditbattle"

.field public static final SERVER_URL_NOTICE:Ljava/lang/String; = "http://14.63.220.39/app/member/notice.json"

.field public static mgameView:Lcom/findit/battle/GameView;


# instance fields
.field private mCommonDialog:Lcom/findit/battle/CommonDialog;

.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/NoticeActivity;)Lcom/findit/battle/CommonDialog;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/findit/battle/NoticeActivity;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v4}, Lcom/findit/battle/NoticeActivity;->requestWindowFeature(I)Z

    .line 27
    const v1, 0x7f03000d

    invoke-virtual {p0, v1}, Lcom/findit/battle/NoticeActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/findit/battle/NoticeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 32
    new-instance v1, Lcom/findit/battle/CommonDialog;

    invoke-direct {v1, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/findit/battle/NoticeActivity;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    .line 34
    invoke-virtual {p0}, Lcom/findit/battle/NoticeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "extra":Landroid/os/Bundle;
    const v1, 0x7f0b006e

    invoke-virtual {p0, v1}, Lcom/findit/battle/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    .line 39
    iget-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 40
    iget-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    iget-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 42
    iget-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 44
    iget-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 46
    iget-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/findit/battle/NoticeActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/findit/battle/NoticeActivity$1;

    invoke-direct {v2, p0}, Lcom/findit/battle/NoticeActivity$1;-><init>(Lcom/findit/battle/NoticeActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 62
    return-void
.end method
