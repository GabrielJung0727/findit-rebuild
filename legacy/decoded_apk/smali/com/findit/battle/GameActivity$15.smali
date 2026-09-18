.class Lcom/findit/battle/GameActivity$15;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->createLoginDlg()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameActivity$15;->this$0:Lcom/findit/battle/GameActivity;

    iput-object p2, p0, Lcom/findit/battle/GameActivity$15;->val$dialog:Landroid/app/Dialog;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 734
    const-string v0, ">> onClick()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 735
    packed-switch p2, :pswitch_data_0

    .line 744
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 740
    :pswitch_0
    const-string v0, "LoginDlg"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/findit/battle/GameActivity$15;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, p0, Lcom/findit/battle/GameActivity$15;->val$dialog:Landroid/app/Dialog;

    invoke-static {v0, v1}, Lcom/findit/battle/GameActivity;->access$11(Lcom/findit/battle/GameActivity;Landroid/app/Dialog;)V

    goto :goto_0

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
