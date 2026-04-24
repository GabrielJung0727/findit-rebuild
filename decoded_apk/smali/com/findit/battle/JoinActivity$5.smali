.class Lcom/findit/battle/JoinActivity$5;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$5;->this$0:Lcom/findit/battle/JoinActivity;

    .line 164
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

    .line 168
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$5;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v0}, Lcom/findit/battle/JoinActivity;->access$18(Lcom/findit/battle/JoinActivity;)I

    move-result v6

    .line 169
    .local v6, "size":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    :pswitch_0
    return v3

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$5;->this$0:Lcom/findit/battle/JoinActivity;

    neg-int v2, v6

    neg-int v4, v6

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/JoinActivity;->access$19(Lcom/findit/battle/JoinActivity;Landroid/view/View;IIII)V

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$5;->this$0:Lcom/findit/battle/JoinActivity;

    move-object v1, p1

    move v2, v6

    move v4, v6

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/JoinActivity;->access$19(Lcom/findit/battle/JoinActivity;Landroid/view/View;IIII)V

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/findit/battle/JoinActivity$5;->this$0:Lcom/findit/battle/JoinActivity;

    neg-int v2, v6

    neg-int v4, v6

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/findit/battle/JoinActivity;->access$19(Lcom/findit/battle/JoinActivity;Landroid/view/View;IIII)V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
