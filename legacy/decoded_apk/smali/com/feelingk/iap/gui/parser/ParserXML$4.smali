.class Lcom/feelingk/iap/gui/parser/ParserXML$4;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$4;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 5323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5326
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$4;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$27(Lcom/feelingk/iap/gui/parser/ParserXML;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5327
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$4;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$28(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;->onJoinDialogOKButtonClick(Ljava/lang/String;)V

    .line 5331
    :goto_0
    return-void

    .line 5329
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$4;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$29(Lcom/feelingk/iap/gui/parser/ParserXML;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;->onYesNoDialogOKButtonClick()V

    goto :goto_0
.end method
