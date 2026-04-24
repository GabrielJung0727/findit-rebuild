.class Lcom/feelingk/iap/gui/parser/ParserXML$7;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$7;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 5353
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$7;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$31(Lcom/feelingk/iap/gui/parser/ParserXML;)[Z

    move-result-object v0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 5354
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$7;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$32(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;->onAutoPurchaseFormDialogButtonClick(Z)V

    .line 5358
    :goto_0
    return-void

    .line 5356
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$7;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$32(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;->onAutoPurchaseFormDialogButtonClick(Z)V

    goto :goto_0
.end method
