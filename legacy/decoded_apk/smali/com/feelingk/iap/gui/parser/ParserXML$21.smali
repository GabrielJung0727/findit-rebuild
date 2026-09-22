.class Lcom/feelingk/iap/gui/parser/ParserXML$21;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5721
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$21;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$38(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    move-result-object v0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_PURCHASE_INFONAME:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_FORM_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onAutoPurchaseInfoClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 5722
    return-void
.end method
