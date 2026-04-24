.class Lcom/findit/battle/GameActivity$20;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->createDownloadDlg()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 908
    const-string v0, ">> onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v0}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDownloadFileProgressBar max: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v0}, Lcom/findit/battle/GameActivity;->access$4(Lcom/findit/battle/GameActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v1}, Lcom/findit/battle/GameActivity;->access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 914
    iget-object v0, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v0, v0, Lcom/findit/battle/GameActivity;->mDownloadFileDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 917
    iget-object v0, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameActivity;->downloadImage(I)V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameActivity$20;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v0, v0, Lcom/findit/battle/GameActivity;->mDownloadDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 927
    return-void
.end method
