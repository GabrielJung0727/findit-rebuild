.class Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth$1;
.super Ljava/lang/Object;
.source "PopupDotoriSmsAuth.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->InflateView(ILandroid/view/View$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth$1;->this$0:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth$1;->this$0:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    invoke-static {v0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->access$0(Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;->onDotoriSmsAuthCancelButtonClick()V

    .line 54
    return-void
.end method
