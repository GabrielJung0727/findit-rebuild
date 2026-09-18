.class Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;
.super Ljava/lang/Object;
.source "ConnectNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jargoandroid/connectnetwork/ConnectNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Data"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;


# direct methods
.method public constructor <init>(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->this$0:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    const-string v0, ">> Data()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 697
    iput-object p2, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mName:Ljava/lang/String;

    .line 698
    iput-object p3, p0, Lcom/jargoandroid/connectnetwork/ConnectNetwork$Data;->mValue:Ljava/lang/String;

    .line 699
    return-void
.end method
