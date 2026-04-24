.class public Lcom/findit/battle/JoinActivity$ActionRunnable;
.super Ljava/lang/Object;
.source "JoinActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/JoinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionRunnable"
.end annotation


# static fields
.field public static final ACTION_CHARACTERLOCTION:I = 0x1

.field public static final ACTION_CHARACTEROUTLINE:I


# instance fields
.field private mAction:I

.field private mX:I

.field final synthetic this$0:Lcom/findit/battle/JoinActivity;


# direct methods
.method public constructor <init>(Lcom/findit/battle/JoinActivity;II)V
    .locals 1
    .param p2, "action"    # I
    .param p3, "x"    # I

    .prologue
    .line 570
    iput-object p1, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const-string v0, ">> ActionRunnable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 572
    iput p2, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->mAction:I

    .line 573
    iput p3, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->mX:I

    .line 574
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 578
    const-string v4, ">> run()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 579
    iget v4, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->mAction:I

    packed-switch v4, :pswitch_data_0

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 581
    :pswitch_0
    iget v3, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->mX:I

    .line 584
    .local v3, "num":I
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$7(Lcom/findit/battle/JoinActivity;)I

    move-result v1

    .line 585
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 586
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$8(Lcom/findit/battle/JoinActivity;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v2, v4, v0

    .line 588
    .local v2, "lmageview":Landroid/widget/ImageView;
    if-ne v0, v3, :cond_1

    .line 589
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 591
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 597
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "lmageview":Landroid/widget/ImageView;
    .end local v3    # "num":I
    :pswitch_1
    iget-object v4, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->this$0:Lcom/findit/battle/JoinActivity;

    invoke-static {v4}, Lcom/findit/battle/JoinActivity;->access$9(Lcom/findit/battle/JoinActivity;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    iget v5, p0, Lcom/findit/battle/JoinActivity$ActionRunnable;->mX:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
