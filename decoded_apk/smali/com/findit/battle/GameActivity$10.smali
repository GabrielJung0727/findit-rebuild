.class Lcom/findit/battle/GameActivity$10;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/findit/battle/GameActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameActivity$10;->this$0:Lcom/findit/battle/GameActivity;

    iput-object p2, p0, Lcom/findit/battle/GameActivity$10;->val$savedInstanceState:Landroid/os/Bundle;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/findit/battle/GameActivity$10;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v1, p0, Lcom/findit/battle/GameActivity$10;->val$savedInstanceState:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/findit/battle/GameActivity;->access$10(Lcom/findit/battle/GameActivity;Landroid/os/Bundle;)V

    .line 196
    return-void
.end method
