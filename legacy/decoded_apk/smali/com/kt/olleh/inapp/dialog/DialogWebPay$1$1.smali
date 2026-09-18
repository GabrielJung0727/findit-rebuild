.class Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$1;
.super Ljava/lang/Object;
.source "DialogWebPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;

.field private final synthetic val$res:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$1;->this$1:Lcom/kt/olleh/inapp/dialog/DialogWebPay$1;

    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$1;->val$res:Landroid/webkit/JsResult;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogWebPay$1$1;->val$res:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 135
    return-void
.end method
