.class Lcom/feelingk/iap/gui/parser/ParserXML$18;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$18;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5687
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$18;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$27(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5688
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$18;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5689
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$18;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onEnterTstore()V

    .line 5699
    :goto_0
    return-void

    .line 5691
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onEnterTstore()V

    goto :goto_0

    .line 5694
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$18;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5695
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$18;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DLG_TSTORE_NOT_INSTALLED_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onTstoreLockError(Ljava/lang/String;)V

    goto :goto_0

    .line 5697
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DLG_TSTORE_NOT_INSTALLED_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onTstoreLockError(Ljava/lang/String;)V

    goto :goto_0
.end method
