.class Lcom/findit/battle/GameActivity$8;
.super Landroid/os/Handler;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/findit/battle/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/findit/battle/GameActivity;


# direct methods
.method constructor <init>(Lcom/findit/battle/GameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    .line 1815
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1817
    monitor-enter p0

    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ">> handleMessage() msg,what: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1818
    const/4 v1, 0x0

    .line 1819
    .local v1, "cancelprogressdlg":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v4

    .line 1821
    .local v4, "gameview":Lcom/findit/battle/GameView;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    .line 1822
    const-string v14, "result"

    .line 1821
    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1823
    .local v12, "value":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 1824
    sget v13, Lcom/findit/battle/GameView;->mScreenMode:I

    packed-switch v13, :pswitch_data_0

    .line 1838
    :goto_0
    const/4 v1, 0x1

    .line 1839
    const-string v13, "mReceiveSocketMsgHandler: null"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2210
    :cond_0
    if-eqz v1, :cond_1

    .line 2211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v13}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    .line 2212
    const-string v13, "......................................... cancelprogressdlg"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    :cond_1
    monitor-exit p0

    return-void

    .line 1827
    :pswitch_0
    :try_start_1
    const-string v13, ""

    .line 1828
    const/4 v14, 0x2

    .line 1826
    invoke-virtual {v4, v13, v14}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 1829
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mInviteDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1817
    .end local v1    # "cancelprogressdlg":Z
    .end local v4    # "gameview":Lcom/findit/battle/GameView;
    .end local v12    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 1841
    .restart local v1    # "cancelprogressdlg":Z
    .restart local v4    # "gameview":Lcom/findit/battle/GameView;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mReceiveSocketMsgHandler: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1846
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mNetTextSize0: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v14}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1847
    const/4 v3, 0x0

    .line 1848
    .local v3, "finishtext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/findit/battle/GameActivity;->access$6(Lcom/findit/battle/GameActivity;Ljava/lang/String;)V

    .line 1850
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x4

    if-le v13, v14, :cond_0

    .line 1853
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    .line 1854
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 1855
    const/4 v15, 0x4

    .line 1854
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1856
    .local v7, "size":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    add-int/lit8 v14, v7, 0x4

    invoke-static {v13, v14}, Lcom/findit/battle/GameActivity;->access$7(Lcom/findit/battle/GameActivity;I)V

    .line 1859
    .end local v7    # "size":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v13

    if-lez v13, :cond_5

    .line 1860
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v14}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 1861
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v15}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1862
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    const-string v14, ""

    invoke-static {v13, v14}, Lcom/findit/battle/GameActivity;->access$6(Lcom/findit/battle/GameActivity;Ljava/lang/String;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/findit/battle/GameActivity;->access$7(Lcom/findit/battle/GameActivity;I)V

    .line 1871
    :cond_5
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mNetTextSize1: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v14}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1872
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mNetText: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v14}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1875
    if-eqz v3, :cond_0

    .line 1876
    const/4 v1, 0x1

    .line 1878
    move-object v12, v3

    .line 1879
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "value: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1882
    const-string v13, "|"

    .line 1881
    invoke-virtual {v4, v12, v13}, Lcom/findit/battle/GameView;->getSubTexts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1884
    .local v11, "textlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1885
    .local v10, "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1886
    const-string v13, "100"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1887
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x3

    if-le v13, v14, :cond_e

    .line 1888
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1889
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1891
    const-string v13, "\uc811\uc18d \uc544\uc774\ub514 \ub9ac\uc2a4\ud2b8 \ubdf0 \uc124\uc815"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1892
    sget v13, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_d

    .line 1893
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-object v13, v13, Lcom/findit/battle/GameView$BattleRoom;->mFriendName:Ljava/lang/String;

    if-nez v13, :cond_9

    .line 1895
    const-string v13, "\ub9ac\uc2a4\ud2b8 \ubc1b\uae30"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1896
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1897
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1898
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_8

    .line 1899
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1900
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 1901
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 1902
    invoke-virtual {v13, v10}, Lcom/findit/battle/GameView$BattleRoom;->fillData(Ljava/lang/String;)V

    .line 1903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mUserListDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 1937
    :cond_6
    :goto_3
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mFriendName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1864
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "textlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v14}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v14

    if-le v13, v14, :cond_5

    .line 1865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v15}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v14}, Lcom/findit/battle/GameActivity;->access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v15}, Lcom/findit/battle/GameActivity;->access$8(Lcom/findit/battle/GameActivity;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/findit/battle/GameActivity;->access$6(Lcom/findit/battle/GameActivity;Ljava/lang/String;)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/findit/battle/GameActivity;->access$7(Lcom/findit/battle/GameActivity;I)V

    goto/16 :goto_2

    .line 1906
    .restart local v10    # "text":Ljava/lang/String;
    .restart local v11    # "textlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 1907
    const v14, 0x7f090014

    invoke-virtual {v13, v14}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto :goto_3

    .line 1910
    :cond_9
    const-string v13, "\ucd08\ub300\ud558\uae30"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1911
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1912
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 1913
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_c

    .line 1914
    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1915
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 1916
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 1919
    const-string v14, ","

    .line 1920
    iget-object v15, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-object v15, v15, Lcom/findit/battle/GameView$BattleRoom;->mFriendName:Ljava/lang/String;

    .line 1917
    invoke-virtual {v13, v10, v14, v15}, Lcom/findit/battle/GameView$BattleRoom;->getUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1916
    if-nez v13, :cond_a

    .line 1921
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 1923
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v14, v14, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 1924
    iget-object v15, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-object v15, v15, Lcom/findit/battle/GameView$BattleRoom;->mFriendName:Ljava/lang/String;

    .line 1922
    invoke-virtual {v13, v14, v15}, Lcom/findit/battle/GameView$BattleRoom;->sendInviteMsg(Lcom/jargoandroid/connectnetwork/ConnectNetwork;Ljava/lang/String;)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mInviteDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_3

    .line 1927
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 1928
    const v14, 0x7f090013

    invoke-virtual {v13, v14}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_3

    .line 1930
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 1931
    const v14, 0x7f090013

    invoke-virtual {v13, v14}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_3

    .line 1933
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 1934
    const v14, 0x7f090013

    invoke-virtual {v13, v14}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_3

    .line 1940
    :cond_d
    const-string v13, "\ub300\uae30\uc790 \ub9ac\uc2a4\ud2b8"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1941
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    invoke-virtual {v13}, Lcom/findit/battle/WaitingRoom;->clearData()V

    .line 1945
    const/4 v13, 0x5

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1946
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1947
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_3

    .line 1948
    const/4 v13, 0x6

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1949
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1950
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    .line 1951
    invoke-virtual {v13, v10}, Lcom/findit/battle/WaitingRoom;->fillData(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1955
    :cond_e
    const-string v13, "101"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1957
    const-string v13, "\uac8c\uc784\ubc29(\ub300\uc804\ubc29) \ub9cc\ub4e4\uae30-101"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1958
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1959
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1961
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iput-object v13, v4, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    .line 1962
    iget-object v13, v4, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1963
    iget-object v13, v4, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    .line 1964
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1963
    iput-object v13, v4, Lcom/findit/battle/GameView;->mRoomName:Ljava/lang/String;

    .line 1966
    :cond_f
    const/4 v13, 0x0

    .line 1967
    const/4 v14, -0x2

    .line 1966
    invoke-virtual {v4, v13, v14}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v13

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 1969
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    iget-object v13, v13, Lcom/findit/battle/WaitingRoom;->mMainDlg:Landroid/app/Dialog;

    .line 1970
    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_1

    .line 1972
    :cond_10
    const-string v13, "102"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1974
    const-string v13, "\uac8c\uc784\ubc29(\ub300\uc804\ubc29) \ub098\uac00\uae30-102"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 1975
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1976
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1977
    sget v13, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v14, 0x2

    if-le v13, v14, :cond_3

    .line 1978
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-boolean v13, v13, Lcom/findit/battle/GameView$BattleRoom;->mExit:Z

    if-eqz v13, :cond_11

    .line 1980
    invoke-virtual {v4}, Lcom/findit/battle/GameView;->showWaitingRoom()V

    .line 1981
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mExit:Z

    .line 1982
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v13}, Lcom/findit/battle/CommonDialog;->cancelProgressDlg()V

    goto/16 :goto_1

    .line 1985
    :cond_11
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    .line 1986
    iget-object v13, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v13, v13, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    .line 1987
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 1989
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 1990
    iget-object v13, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v13, v13, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v14, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v14, v14, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v13, v13, v14

    .line 1991
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 1992
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v14, -0x1

    iput v14, v13, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    .line 1993
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v13

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 1994
    sget v13, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_12

    .line 2001
    const/4 v13, 0x0

    .line 2002
    const/4 v14, -0x2

    .line 2000
    invoke-virtual {v4, v13, v14}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 2003
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v13

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 2004
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    iget-object v13, v13, Lcom/findit/battle/WaitingRoom;->mMainDlg:Landroid/app/Dialog;

    .line 2005
    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_1

    .line 2007
    :cond_12
    sget v6, Lcom/findit/battle/GameView;->mScreenMode:I

    .line 2009
    .local v6, "screenmode":I
    const/4 v13, 0x0

    .line 2010
    const/4 v14, -0x2

    .line 2008
    invoke-virtual {v4, v13, v14}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v13

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 2014
    const/4 v13, 0x4

    if-eq v6, v13, :cond_13

    .line 2015
    const/4 v13, 0x5

    if-ne v6, v13, :cond_3

    .line 2016
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 2017
    const v14, 0x7f090012

    invoke-virtual {v13, v14}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_1

    .line 2022
    .end local v6    # "screenmode":I
    :cond_14
    const-string v13, "103"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 2024
    const-string v13, "\ub300\uc804\ubc29 \ub4e4\uc5b4\uac00\uae30 \ubc0f \uc0c1\ub300\ubc29 \ub4e4\uc5b4\uc624\uae30-103"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2025
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2026
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_18

    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 2028
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2029
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_15

    .line 2030
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "clientid: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2032
    sget v13, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_16

    .line 2034
    const-string v13, "\ub300\uc804\ubc29 \ub4e4\uc5b4\uc624\uae30"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2037
    const/4 v13, -0x2

    .line 2035
    invoke-virtual {v4, v10, v13}, Lcom/findit/battle/GameView;->enterBattleRoom(Ljava/lang/String;I)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-static {v13}, Lcom/findit/battle/GameActivity;->access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;

    move-result-object v13

    iget-object v13, v13, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x0

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 2039
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenWaitingRoom:Lcom/findit/battle/WaitingRoom;

    iget-object v13, v13, Lcom/findit/battle/WaitingRoom;->mMainDlg:Landroid/app/Dialog;

    .line 2040
    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V

    .line 2063
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mUserListDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V

    .line 2064
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mInviteDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V

    goto/16 :goto_1

    .line 2043
    :cond_16
    const-string v13, "\uc0c1\ub300\ubc29 \ub4e4\uc5b4\uc624\uae30"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2044
    sget v13, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_17

    .line 2045
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v13, v13, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_17

    .line 2047
    const-string v13, "\uc2f1\uae00\ud50c\ub808\uc774 \uc911\uc77c\ub54c"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2048
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/16 v14, 0x28

    iput v14, v13, Lcom/findit/battle/GameView$GameRoom;->mGameTime:I

    .line 2049
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    .line 2050
    invoke-virtual {v13, v10}, Lcom/findit/battle/GameView$GameRoom;->setRightCharacter(Ljava/lang/String;)V

    .line 2051
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/findit/battle/GameView$GameRoom;->mResultPass:Z

    goto :goto_4

    .line 2054
    :cond_17
    const-string v13, "\ub300\uc804\ubc29\uc77c\ub54c"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2055
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    .line 2056
    invoke-virtual {v13, v10}, Lcom/findit/battle/GameView$GameRoom;->setRightCharacter(Ljava/lang/String;)V

    .line 2057
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, -0x1

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mSingleTimeCount:I

    .line 2058
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x4

    iput v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mTime:I

    goto :goto_4

    .line 2066
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 2067
    const v14, 0x7f090018

    invoke-virtual {v13, v14}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(I)V

    goto/16 :goto_1

    .line 2068
    :cond_19
    const-string v13, "104"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 2070
    const-string v13, "\uc900\ube44\uc644\ub8cc-104"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2071
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2072
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eqz v13, :cond_3

    .line 2074
    const/4 v13, 0x3

    :try_start_3
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 2075
    if-eqz v10, :cond_3

    .line 2076
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v13, v13, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    const/4 v14, -0x1

    if-le v13, v14, :cond_3

    .line 2077
    iget-object v13, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v13, v13, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v14, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v14, v14, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/findit/battle/Objects$Character;->mName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2082
    invoke-virtual {v4}, Lcom/findit/battle/GameView;->getScreenMode()I

    move-result v13

    const/4 v14, 0x5

    .line 2081
    if-ne v13, v14, :cond_1a

    .line 2085
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    .line 2086
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/findit/battle/GameView$BattleRoom;->setAleadyRightUserReady(Z)V

    .line 2087
    const-string v13, "\uac8c\uc784 \uacb0\uacfc\uc5d0\uc11c \uc190\ub4e4\uae30 \ub4e4\uc5b4\uc634"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2101
    :catch_0
    move-exception v2

    .line 2103
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mLeftReady:Z

    .line 2104
    iget-object v13, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v13, v13, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    .line 2105
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2089
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1a
    :try_start_5
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    iget-boolean v13, v13, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    if-nez v13, :cond_3

    .line 2090
    const-string v13, "\uc190\ub4e4\uae30"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2091
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/findit/battle/GameView$BattleRoom;->mRightReady:Z

    .line 2092
    iget-object v13, v4, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v13, v13, Lcom/findit/battle/Objects;->mCharacter:[Lcom/findit/battle/Objects$Character;

    iget-object v14, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v14, v14, Lcom/findit/battle/GameView$GameRoom;->mRightCharacterIndex:I

    aget-object v13, v13, v14

    .line 2093
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/findit/battle/Objects$Character;->setImgnum(I)V

    .line 2095
    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Lcom/findit/battle/GameView;->playSound(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 2109
    :cond_1b
    :try_start_6
    const-string v13, "106"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 2111
    const-string v13, "\uac8c\uc784-106"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2112
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2113
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v13

    if-eqz v13, :cond_3

    .line 2115
    const/4 v13, 0x3

    :try_start_7
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 2116
    if-eqz v10, :cond_20

    .line 2119
    const-string v13, ","

    .line 2118
    invoke-virtual {v4, v10, v13}, Lcom/findit/battle/GameView;->getSubTexts(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 2121
    .local v9, "subtextlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 2122
    if-eqz v10, :cond_1c

    .line 2123
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    .line 2124
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 2123
    iput v14, v13, Lcom/findit/battle/GameView$GameRoom;->mRightNum:I

    .line 2127
    :cond_1c
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 2128
    if-eqz v10, :cond_1e

    .line 2130
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2131
    .local v8, "skillindex":I
    const/16 v13, 0x63

    if-ne v8, v13, :cond_1d

    .line 2132
    const/4 v8, -0x1

    .line 2134
    :cond_1d
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iput v8, v13, Lcom/findit/battle/GameView$GameRoom;->mRightSkillNum:I

    .line 2135
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    const/4 v14, 0x0

    iput v14, v13, Lcom/findit/battle/GameView$GameRoom;->mRightSkilTimeCount:I

    .line 2139
    .end local v8    # "skillindex":I
    :cond_1e
    const/4 v13, 0x2

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 2140
    if-eqz v10, :cond_20

    .line 2142
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2143
    .local v5, "itemindex":I
    const/16 v13, 0x63

    if-ne v5, v13, :cond_1f

    .line 2144
    const/4 v5, -0x1

    .line 2146
    :cond_1f
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iput v5, v13, Lcom/findit/battle/GameView$GameRoom;->mRightPenNum:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2155
    .end local v5    # "itemindex":I
    .end local v9    # "subtextlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20
    :goto_5
    :try_start_8
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "CODE_GAME: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2156
    iget-object v14, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v14, v14, Lcom/findit/battle/GameView$GameRoom;->mTempLeftNum:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2155
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2149
    :catch_1
    move-exception v2

    .line 2151
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v13, v4, Lcom/findit/battle/GameView;->mScreenGameRoom:Lcom/findit/battle/GameView$GameRoom;

    iget v14, v13, Lcom/findit/battle/GameView$GameRoom;->mTempLeftNum:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lcom/findit/battle/GameView$GameRoom;->mTempLeftNum:I

    goto :goto_5

    .line 2158
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_21
    const-string v13, "107"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2160
    const-string v13, "\ucd08\ub300-107"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2161
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2162
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 2163
    sget v13, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_22

    .line 2164
    const-string v13, "000"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2166
    const-string v13, "\ucd08\ub300\uc694\uccad \ubc1b\uc74c -000"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2167
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2168
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 2169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    invoke-virtual {v13, v10}, Lcom/findit/battle/GameActivity;->showInviteConsentDlg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2172
    :cond_22
    const-string v13, "900"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 2174
    const-string v13, "\ucd08\ub300 \ub300\uc0c1\uc790\uac00 \uac8c\uc784\uc744 \uc885\ub8cc\ud568-900"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2175
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2176
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 2177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 2179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    .line 2180
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2181
    const v16, 0x7f090016

    .line 2178
    invoke-virtual/range {v13 .. v16}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2183
    :cond_23
    const-string v13, "911"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2185
    const-string v13, "\ucd08\ub300 \ub300\uc0c1\uc790\uac00 \uac8c\uc784\uc911-911"

    invoke-static {v13}, Lcom/findit/battle/finals/LOG;->debug(Ljava/lang/String;)V

    .line 2186
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "text":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 2187
    .restart local v10    # "text":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 2188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    iget-object v13, v13, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 2190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/findit/battle/GameActivity$8;->this$0:Lcom/findit/battle/GameActivity;

    .line 2191
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2192
    const v16, 0x7f090017

    .line 2189
    invoke-virtual/range {v13 .. v16}, Lcom/findit/battle/CommonDialog;->showNoticeDlg(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
