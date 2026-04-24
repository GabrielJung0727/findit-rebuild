.class Lcom/findit/battle/GameActivity$33;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->setButtonTouchListener(Landroid/widget/Button;)V
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
    iput-object p1, p0, Lcom/findit/battle/GameActivity$33;->this$0:Lcom/findit/battle/GameActivity;

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1165
    const-string v0, ">> onTouch()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/findit/battle/GameActivity$33;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v0}, Lcom/findit/battle/GameActivity;->access$14(Lcom/findit/battle/GameActivity;)I

    move-result v6

    .line 1167
    .local v6, "size":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1180
    :goto_0
    :pswitch_0
    return v3

    .line 1169
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/GameActivity$33;->this$0:Lcom/findit/battle/GameActivity;

    neg-int v2, v6

    neg-int v4, v6

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/GameActivity;->access$15(Lcom/findit/battle/GameActivity;Landroid/view/View;IIII)V

    goto :goto_0

    .line 1173
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/GameActivity$33;->this$0:Lcom/findit/battle/GameActivity;

    move-object v1, p1

    move v2, v6

    move v4, v6

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/GameActivity;->access$15(Lcom/findit/battle/GameActivity;Landroid/view/View;IIII)V

    goto :goto_0

    .line 1177
    :pswitch_3
    iget-object v0, p0, Lcom/findit/battle/GameActivity$33;->this$0:Lcom/findit/battle/GameActivity;

    neg-int v2, v6

    neg-int v4, v6

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/GameActivity;->access$15(Lcom/findit/battle/GameActivity;Landroid/view/View;IIII)V

    goto :goto_0

    .line 1167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
