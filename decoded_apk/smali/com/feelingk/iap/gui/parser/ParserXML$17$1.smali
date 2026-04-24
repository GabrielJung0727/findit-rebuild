.class Lcom/feelingk/iap/gui/parser/ParserXML$17$1;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feelingk/iap/gui/parser/ParserXML$17;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML$17;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17$1;->this$1:Lcom/feelingk/iap/gui/parser/ParserXML$17;

    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17$1;->val$v:Landroid/view/View;

    .line 5651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$17$1;->val$v:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 5657
    return-void
.end method
