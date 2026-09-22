.class Lcom/findit/battle/JoinActivity$6;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/JoinActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/JoinActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/JoinActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$6;->this$0:Lcom/findit/battle/JoinActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v2, p0, Lcom/findit/battle/JoinActivity$6;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v2}, Lcom/findit/battle/JoinActivity;->access$3(Lcom/findit/battle/JoinActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 222
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 224
    .local v0, "autologin":Z
    :goto_0
    iget-object v2, p0, Lcom/findit/battle/JoinActivity$6;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v2}, Lcom/findit/battle/JoinActivity;->access$3(Lcom/findit/battle/JoinActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v0, :cond_2

    const v2, 0x7f020180

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 225
    iget-object v2, p0, Lcom/findit/battle/JoinActivity$6;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v2}, Lcom/findit/battle/JoinActivity;->access$3(Lcom/findit/battle/JoinActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v0, :cond_3

    const-string v2, "on"

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 227
    .end local v0    # "autologin":Z
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    .restart local v0    # "autologin":Z
    :cond_2
    const v2, 0x7f02017f

    goto :goto_1

    .line 225
    :cond_3
    const-string v2, "off"

    goto :goto_2
.end method
