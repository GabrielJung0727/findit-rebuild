.class public Lcom/findit/battle/GameView$ActionRunnable;
.super Ljava/lang/Object;
.source "GameView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionRunnable"
.end annotation


# static fields
.field public static final ACTION_CONNECTSOCKET:I = 0x4

.field public static final ACTION_LOGIN:I = 0x2

.field public static final ACTION_SENDSPENDITEM:I = 0x6

.field public static final ACTION_SENDUPABILLITY:I = 0x5

.field public static final ACTION_SHOWDLG:I = 0x0

.field public static final ACTION_SHOWWAITINGROOM:I = 0x3

.field public static final ACTION_TOAST:I = 0x1


# instance fields
.field private mAction:I

.field private mDlg:Landroid/app/Dialog;

.field private mIntValue:[I

.field private mLongValue:[J

.field private mStrValue:[Ljava/lang/String;

.field final synthetic this$0:Lcom/findit/battle/GameView;


# direct methods
.method public constructor <init>(Lcom/findit/battle/GameView;I)V
    .locals 1
    .param p2, "action"    # I

    .prologue
    .line 5017
    iput-object p1, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5018
    const-string v0, ">> ActionRunnable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5019
    iput p2, p0, Lcom/findit/battle/GameView$ActionRunnable;->mAction:I

    .line 5020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->mDlg:Landroid/app/Dialog;

    .line 5021
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/GameView;I[I[J)V
    .locals 1
    .param p2, "action"    # I
    .param p3, "intvalue"    # [I
    .param p4, "longvalue"    # [J

    .prologue
    .line 5031
    iput-object p1, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5032
    const-string v0, ">> ActionRunnable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5033
    iput p2, p0, Lcom/findit/battle/GameView$ActionRunnable;->mAction:I

    .line 5034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->mDlg:Landroid/app/Dialog;

    .line 5036
    iput-object p3, p0, Lcom/findit/battle/GameView$ActionRunnable;->mIntValue:[I

    .line 5037
    iput-object p4, p0, Lcom/findit/battle/GameView$ActionRunnable;->mLongValue:[J

    .line 5038
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/GameView;I[Ljava/lang/String;)V
    .locals 1
    .param p2, "action"    # I
    .param p3, "strvalue"    # [Ljava/lang/String;

    .prologue
    .line 5023
    iput-object p1, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5024
    const-string v0, ">> ActionRunnable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5025
    iput p2, p0, Lcom/findit/battle/GameView$ActionRunnable;->mAction:I

    .line 5026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->mDlg:Landroid/app/Dialog;

    .line 5028
    iput-object p3, p0, Lcom/findit/battle/GameView$ActionRunnable;->mStrValue:[Ljava/lang/String;

    .line 5029
    return-void
.end method

.method public constructor <init>(Lcom/findit/battle/GameView;Landroid/app/Dialog;)V
    .locals 1
    .param p2, "dlg"    # Landroid/app/Dialog;

    .prologue
    .line 5011
    iput-object p1, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5012
    const-string v0, ">> ActionRunnable()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5013
    const/4 v0, 0x0

    iput v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->mAction:I

    .line 5014
    iput-object p2, p0, Lcom/findit/battle/GameView$ActionRunnable;->mDlg:Landroid/app/Dialog;

    .line 5015
    return-void
.end method


# virtual methods
.method public getDialogInstance()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 5041
    const-string v0, ">> getDialogInstance()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5042
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->mDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 5047
    const-string v0, ">> run()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 5049
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/findit/battle/GameActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5050
    :cond_0
    const-string v0, "-- run() mGameActivity is null or finish"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 5088
    :goto_0
    return-void

    .line 5054
    :cond_1
    iget v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->mAction:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5057
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->mDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5058
    :catch_0
    move-exception v0

    goto :goto_0

    .line 5064
    :pswitch_1
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$0(Lcom/findit/battle/GameView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameView$ActionRunnable;->mStrValue:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5065
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5069
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    iget-object v2, v2, Lcom/findit/battle/GameView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/GameActivity;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5073
    :pswitch_3
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-virtual {v0}, Lcom/findit/battle/GameView;->showWaitingRoom()V

    goto :goto_0

    .line 5077
    :pswitch_4
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameView$ActionRunnable;->mIntValue:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameActivity;->connectServer(I)V

    goto :goto_0

    .line 5081
    :pswitch_5
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/findit/battle/GameView$ActionRunnable;->mIntValue:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/findit/battle/GameView$ActionRunnable;->mLongValue:[J

    aget-wide v3, v3, v4

    .line 5082
    iget-object v5, p0, Lcom/findit/battle/GameView$ActionRunnable;->mIntValue:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/findit/battle/GameView$ActionRunnable;->mLongValue:[J

    aget-wide v6, v6, v7

    .line 5081
    invoke-virtual/range {v0 .. v7}, Lcom/findit/battle/GameActivity;->sendAddUp(Ljava/lang/String;IJIJ)V

    goto :goto_0

    .line 5086
    :pswitch_6
    iget-object v0, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    invoke-static {v0}, Lcom/findit/battle/GameView;->access$4(Lcom/findit/battle/GameView;)Lcom/findit/battle/GameActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/findit/battle/GameView$ActionRunnable;->this$0:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/findit/battle/GameView$ActionRunnable;->mIntValue:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/findit/battle/GameView$ActionRunnable;->mIntValue:[I

    aget v3, v3, v7

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/findit/battle/GameActivity;->sendSpendItem(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 5054
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
