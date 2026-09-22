.class Lcom/findit/battle/SetupActivity$4;
.super Ljava/lang/Object;
.source "SetupActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/SetupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/SetupActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/SetupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/SetupActivity$4;->this$0:Lcom/findit/battle/SetupActivity;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/findit/battle/SetupActivity$4;->this$0:Lcom/findit/battle/SetupActivity;

    invoke-static {v0, p1, p2}, Lcom/findit/battle/SetupActivity;->access$4(Lcom/findit/battle/SetupActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
