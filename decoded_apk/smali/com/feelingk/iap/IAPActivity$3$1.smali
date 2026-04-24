.class Lcom/feelingk/iap/IAPActivity$3$1;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/IAPActivity$3;->onAuthDialogOKButtonClick(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/feelingk/iap/IAPActivity$3;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$3$1;->this$1:Lcom/feelingk/iap/IAPActivity$3;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$3$1;->this$1:Lcom/feelingk/iap/IAPActivity$3;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity$3;->access$0(Lcom/feelingk/iap/IAPActivity$3;)Lcom/feelingk/iap/IAPActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$8(Lcom/feelingk/iap/IAPActivity;)V

    .line 1031
    return-void
.end method
