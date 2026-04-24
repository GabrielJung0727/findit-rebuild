.class public Lcom/kt/olleh/inapp/dialog/DialogWebPay;
.super Landroid/app/Dialog;
.source "DialogWebPay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field final encoding:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private postData:Ljava/lang/String;

.field private purchase:Lcom/kt/olleh/inapp/Purchase;

.field private url:Ljava/lang/String;

.field private webJsContext:Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kt/olleh/inapp/Purchase;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "purchase"    # Lcom/kt/olleh/inapp/Purchase;

    .prologue
    const/4 v1, 0x0

    .line 48
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 36
    const-string v0, "EUC-KR"

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->encoding:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->url:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->postData:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    .line 44
    const-string v0, "Purchase"

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->TAG:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)Lcom/kt/olleh/inapp/Purchase;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private create()V
    .locals 5

    .prologue
    .line 96
    const-string v1, "/layout-hdpi/web_pay.xml"

    invoke-direct {p0, v1}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->setContentView(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 99
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 100
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 101
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 103
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v2, "webView"

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    .line 108
    const-string v1, "Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URL = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->postData:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 110
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;-><init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 113
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;

    invoke-direct {v2, p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;-><init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 164
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 91
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private webViewInit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 167
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mContext:Landroid/content/Context;

    const-string v3, "database"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "databasePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "appCachePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 171
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 172
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 173
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 175
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 176
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "EUC-KR"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 178
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-wide/32 v3, 0xa00000

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 179
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 181
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 182
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 183
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 184
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 186
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webJsContext:Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;

    invoke-direct {v2, p0}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;-><init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)V

    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webJsContext:Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public callPayWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "encType"    # Ljava/lang/String;
    .param p2, "enckey"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 328
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->unBind()V

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 67
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    return-void
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->postData:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->close()V

    .line 233
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 234
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public payWebClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "closeType"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->dismiss()V

    .line 347
    return-void
.end method

.method public setButton(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "listener"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 224
    :cond_0
    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->postData:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->url:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->webView:Landroid/webkit/WebView;

    .line 307
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->create()V

    .line 60
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 61
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 82
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 84
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 80
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
