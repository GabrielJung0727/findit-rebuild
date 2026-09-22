.class Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;
.super Landroid/webkit/WebViewClient;
.source "DialogWebPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/olleh/inapp/dialog/DialogWebPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;


# direct methods
.method private constructor <init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;)V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;-><init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 252
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 297
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 266
    .local v1, "lUrl":Ljava/lang/String;
    :try_start_0
    const-string v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 271
    :goto_0
    const-string v3, "mbf://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 272
    const-string v3, "mbf://wn_closePayment/0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    const-string v3, "payNo="

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "&orderNo="

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "pay_no":Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v3, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->close()V

    .line 277
    iget-object v3, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-static {v3}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->access$0(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)Lcom/kt/olleh/inapp/Purchase;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kt/olleh/inapp/Purchase;->getBuyDi(Ljava/lang/String;)V

    .line 288
    .end local v2    # "pay_no":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v3

    :goto_2
    return v3

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v3, "mbf://wn_closePayment/1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->close()V

    .line 280
    iget-object v3, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$MyWebView;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-static {v3}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->access$0(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)Lcom/kt/olleh/inapp/Purchase;

    move-result-object v3

    const/16 v4, 0x3f1

    invoke-virtual {v3, v4}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_1

    .line 282
    :cond_2
    const-string v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    const/4 v3, 0x1

    goto :goto_2

    .line 285
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
