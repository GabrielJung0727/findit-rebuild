.class Lcom/feelingk/iap/gui/parser/ParserXML$24;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 5877
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 5878
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/feelingk/iap/gui/parser/ParserXML$24$1;

    invoke-direct {v1, p0, p1}, Lcom/feelingk/iap/gui/parser/ParserXML$24$1;-><init>(Lcom/feelingk/iap/gui/parser/ParserXML$24;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5888
    invoke-static {}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$46()Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;->onLguSmsAuthOK()V

    .line 5891
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$51(Ljava/lang/Boolean;)V

    .line 5892
    return-void
.end method
