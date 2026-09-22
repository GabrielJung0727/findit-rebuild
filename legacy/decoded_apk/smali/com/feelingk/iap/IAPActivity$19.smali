.class Lcom/feelingk/iap/IAPActivity$19;
.super Ljava/lang/Object;
.source "IAPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$19;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 2113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$19;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$46(Lcom/feelingk/iap/IAPActivity;)V

    .line 2118
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$19;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$12(Lcom/feelingk/iap/IAPActivity;)V

    .line 2119
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2121
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setLimitExcess(Z)V

    .line 2122
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$19;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity$19;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v1}, Lcom/feelingk/iap/IAPActivity;->access$48(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$19;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$4(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity$19;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v3}, Lcom/feelingk/iap/IAPActivity;->access$49(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/feelingk/iap/IAPLib;->resendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    return-void
.end method
