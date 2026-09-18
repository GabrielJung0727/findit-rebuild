.class Lcom/findit/battle/NoticeActivity$1;
.super Landroid/webkit/WebViewClient;
.source "NoticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/NoticeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/NoticeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/NoticeActivity$1;->this$0:Lcom/findit/battle/NoticeActivity;

    .line 47
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 58
    iget-object v0, p0, Lcom/findit/battle/NoticeActivity$1;->this$0:Lcom/findit/battle/NoticeActivity;

    invoke-static {v0}, Lcom/findit/battle/NoticeActivity;->access$0(Lcom/findit/battle/NoticeActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 59
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/findit/battle/NoticeActivity$1;->this$0:Lcom/findit/battle/NoticeActivity;

    invoke-static {v0}, Lcom/findit/battle/NoticeActivity;->access$0(Lcom/findit/battle/NoticeActivity;)Lcom/findit/battle/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 52
    return-void
.end method
