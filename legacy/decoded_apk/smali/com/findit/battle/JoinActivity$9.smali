.class Lcom/findit/battle/JoinActivity$9;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/JoinActivity;->setCharacterHorizontalListView([I[Ljava/lang/String;III)V
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
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$9;->this$0:Lcom/findit/battle/JoinActivity;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 369
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 370
    new-instance v0, Lcom/findit/battle/JoinActivity$ScrollThread;

    iget-object v1, p0, Lcom/findit/battle/JoinActivity$9;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-direct {v0, v1}, Lcom/findit/battle/JoinActivity$ScrollThread;-><init>(Lcom/findit/battle/JoinActivity;)V

    .line 371
    .local v0, "thread":Lcom/findit/battle/JoinActivity$ScrollThread;
    invoke-virtual {v0}, Lcom/findit/battle/JoinActivity$ScrollThread;->start()V

    .line 374
    .end local v0    # "thread":Lcom/findit/battle/JoinActivity$ScrollThread;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
