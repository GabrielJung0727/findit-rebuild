.class public Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;
.super Ljava/lang/Object;
.source "WebViewJavaScriptHandler.java"


# static fields
.field public static final CMD_PAY_WEBVIEW:Ljava/lang/String; = "callPaymentWebViewOpen"

.field public static final CMD_PAY_WEB_CLOSE:Ljava/lang/String; = "callPaymentWebViewClose"

.field public static final CONTENTS_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "## WebViewJavaScriptHandler"

.field public static callContentState:Ljava/lang/String;

.field public static cntInstall:I

.field public static getContentState:Ljava/lang/String;

.field public static strInstall_list:Ljava/lang/String;


# instance fields
.field CB_FAIL_CODE:Ljava/lang/String;

.field CB_SUCCESS_CODE:Ljava/lang/String;

.field private sb:Ljava/lang/StringBuilder;

.field private webScreen:Lcom/kt/olleh/inapp/dialog/DialogWebPay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->strInstall_list:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->cntInstall:I

    .line 46
    const-string v0, "content://com.kt.olleh.app.manager.contents/contents"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CONTENTS_URI:Landroid/net/Uri;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)V
    .locals 1
    .param p1, "wvAct"    # Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "00"

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_SUCCESS_CODE:Ljava/lang/String;

    .line 39
    const-string v0, "01"

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_FAIL_CODE:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->webScreen:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    .line 50
    return-void
.end method

.method private callNwScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->webScreen:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:nwDevice."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method private callSbScript(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->webScreen:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:sbDevice."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method

.method private processW2N_callPaymentWebViewClose(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "errcode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 232
    .local v0, "closeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 235
    .local v4, "param":Ljava/lang/String;
    const-string v6, "## WebViewJavaScriptHandler"

    const-string v7, "processW2N_callPaymentWebViewClose(%s, %s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "/"

    invoke-direct {v5, p2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 240
    .local v3, "nCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 252
    const-string v6, "## WebViewJavaScriptHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "closeType = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v6, "## WebViewJavaScriptHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "param = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-nez v4, :cond_0

    .line 256
    const-string v4, ""

    .line 259
    :cond_0
    if-eqz v0, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_FAIL_CODE:Ljava/lang/String;

    .line 265
    :goto_1
    const-string v6, "callPaymentWebViewClose"

    const-string v7, "nil"

    invoke-virtual {p0, p1, v6, v1, v7}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->notifyResult(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void

    .line 241
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 240
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :pswitch_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 244
    goto :goto_2

    .line 246
    :pswitch_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 262
    :cond_3
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->webScreen:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-virtual {v6, v0, v4}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->payWebClose(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_SUCCESS_CODE:Ljava/lang/String;

    goto :goto_1

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processW2N_callPaymentWebViewOpen(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x2f

    .line 171
    const-string v5, "## WebViewJavaScriptHandler"

    const-string v6, "processW2N_callPaymentWebViewOpen(%s, %s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v2, ""

    .line 175
    .local v2, "errCode":Ljava/lang/String;
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_FAIL_CODE:Ljava/lang/String;

    .line 177
    :goto_0
    const-string v0, ""

    .line 178
    .local v0, "encType":Ljava/lang/String;
    const-string v1, ""

    .line 179
    .local v1, "enckey":Ljava/lang/String;
    const-string v4, ""

    .line 181
    .local v4, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p2, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    const-string v5, "## WebViewJavaScriptHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encType = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v5, "## WebViewJavaScriptHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "enckey = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v5, "## WebViewJavaScriptHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v5, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_SUCCESS_CODE:Ljava/lang/String;

    if-ne v2, v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->webScreen:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-virtual {v5, v0, v1, v4}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->callPayWebView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    const-string v5, "callPaymentWebViewOpen"

    const-string v6, "nil"

    invoke-virtual {p0, p1, v5, v2, v6}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->notifyResult(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 175
    .end local v0    # "encType":Ljava/lang/String;
    .end local v1    # "enckey":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_SUCCESS_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method private process_exception(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 105
    instance-of v0, p3, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_FAIL_CODE:Ljava/lang/String;

    const-string v1, "check param"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->notifyResult(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->CB_FAIL_CODE:Ljava/lang/String;

    const-string v1, "Not found command"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->notifyResult(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public notifyResult(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "workCode"    # Ljava/lang/String;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p4, :cond_0

    const-string v1, "nil"

    .line 85
    .local v1, "message":Ljava/lang/String;
    :goto_0
    const-string v2, "callbackFromNative( \'%s\', \'%s\', \'%s\' )"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "func":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->callSbScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    return-void

    .end local v0    # "func":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    move-object v1, p4

    .line 84
    goto :goto_0
.end method

.method public processN2W_callPaymentComplete(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "func":Ljava/lang/String;
    :try_start_0
    const-string v2, "callPaymentComplete(\'%s\')"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->callNwScript(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "[processN2W_callInputText]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception e: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processW2N(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x0

    .line 54
    const-string v4, "mbf://"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "lUrl":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    :try_start_0
    const-class v4, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "processW2N_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/webkit/WebView;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 59
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 72
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0, p1, v0, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->process_exception(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 63
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0, p1, v0, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->process_exception(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p1, v0, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->process_exception(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 67
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-direct {p0, p1, p2, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->process_exception(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0, p1, v0, v1}, Lcom/kt/olleh/inapp/dialog/WebViewJavaScriptHandler;->process_exception(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
