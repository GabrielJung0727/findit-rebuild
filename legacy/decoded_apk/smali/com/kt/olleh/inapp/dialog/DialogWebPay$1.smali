.class Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;
.super Landroid/webkit/WebChromeClient;
.source "DialogWebPay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/dialog/DialogWebPay;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    .line 113
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "currentQuota"    # J
    .param p5, "estimatedSize"    # J
    .param p7, "totalUsedQuota"    # J
    .param p9, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 123
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p5

    invoke-interface {p9, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 124
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 151
    move-object v0, p4

    .line 152
    .local v0, "res":Landroid/webkit/JsResult;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-static {v2}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->access$1(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 154
    const v2, 0x104000a

    new-instance v3, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$3;

    invoke-direct {v3, p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$3;-><init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 161
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 129
    move-object v0, p4

    .line 130
    .local v0, "res":Landroid/webkit/JsResult;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;->this$0:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-static {v2}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->access$1(Lcom/kt/olleh/inapp/dialog/DialogWebPay;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 132
    const v2, 0x104000a

    new-instance v3, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$1;

    invoke-direct {v3, p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$1;-><init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 137
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$2;

    invoke-direct {v3, p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$2;-><init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;Landroid/webkit/JsResult;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    const/4 v1, 0x1

    return v1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 118
    return-void
.end method
