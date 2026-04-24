.class Lcom/findit/battle/JoinActivity$ScrollThread;
.super Ljava/lang/Thread;
.source "JoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/JoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/JoinActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/JoinActivity;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 606
    const-string v4, ">> run()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 607
    const/16 v3, -0x3e8

    .line 609
    .local v3, "x":I
    :goto_0
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$10(Lcom/findit/battle/JoinActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 634
    :goto_1
    return-void

    .line 610
    :cond_0
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$9(Lcom/findit/battle/JoinActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    .line 612
    .local v1, "nowx":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ScrollThread x:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nowx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 614
    const/16 v4, -0x3e8

    if-le v3, v4, :cond_3

    sub-int v4, v3, v1

    if-nez v4, :cond_3

    .line 615
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$11(Lcom/findit/battle/JoinActivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v5}, Lcom/findit/battle/JoinActivity;->access$11(Lcom/findit/battle/JoinActivity;)I

    move-result v5

    div-int v2, v4, v5

    .line 616
    .local v2, "num":I
    if-gez v2, :cond_2

    .line 617
    const/4 v2, 0x0

    .line 621
    :cond_1
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "nowx / mCharacterWidth:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 622
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4, v2}, Lcom/findit/battle/JoinActivity;->access$12(Lcom/findit/battle/JoinActivity;I)V

    goto :goto_1

    .line 618
    :cond_2
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$7(Lcom/findit/battle/JoinActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v2, v4, :cond_1

    .line 619
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ScrollThread;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$7(Lcom/findit/battle/JoinActivity;)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    goto :goto_2

    .line 626
    .end local v2    # "num":I
    :cond_3
    move v3, v1

    .line 629
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
