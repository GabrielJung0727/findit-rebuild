.class Lcom/feelingk/iap/IAPActivity$36;
.super Landroid/telephony/PhoneStateListener;
.source "IAPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/IAPActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    .line 2652
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$73(Lcom/feelingk/iap/IAPActivity;I)V

    .line 2656
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ub9ac\uc2a4\ub108 \ub0b4\ubd80 m_phoneUSIMState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$74(Lcom/feelingk/iap/IAPActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    iget-boolean v0, v0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    if-eqz v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/IAPActivity;->goIAPLibProcess()V

    .line 2660
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$74(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    if-nez v0, :cond_3

    .line 2661
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$75(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    .line 2668
    :cond_1
    :goto_0
    const-string v0, "IAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAPActivity IAPLibUSIMStateCheck USIM_Check : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v2}, Lcom/feelingk/iap/IAPActivity;->access$76(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$77(Lcom/feelingk/iap/IAPActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2671
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$77(Lcom/feelingk/iap/IAPActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2673
    :cond_2
    return-void

    .line 2662
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$74(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2663
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_EMERGENCY_ONLY"

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$75(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2664
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$74(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2665
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_OUT_OF_SERVICE"

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$75(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2666
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    invoke-static {v0}, Lcom/feelingk/iap/IAPActivity;->access$74(Lcom/feelingk/iap/IAPActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2667
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity$36;->this$0:Lcom/feelingk/iap/IAPActivity;

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/feelingk/iap/IAPActivity;->access$75(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
