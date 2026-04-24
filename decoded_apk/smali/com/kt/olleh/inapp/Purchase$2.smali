.class Lcom/kt/olleh/inapp/Purchase$2;
.super Ljava/lang/Object;
.source "Purchase.java"

# interfaces
.implements Lcom/kt/olleh/inapp/OnInAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/olleh/inapp/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x3e8

    .line 1627
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$3(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1628
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v5, 0x3ec

    invoke-virtual {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1629
    :cond_0
    const-string v4, "B007"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "B009"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "B010"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1630
    :cond_1
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1631
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 1633
    :cond_2
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1634
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 1636
    :cond_3
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\uad6c\ub9e4 \uc2e4\ud328"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1637
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, p2}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1638
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, p1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1639
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1680
    :cond_4
    :goto_0
    return-void

    .line 1641
    :cond_5
    const-string v4, "B011"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1643
    const/4 v3, 0x1

    .line 1644
    .local v3, "isNum":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_6

    .line 1652
    :goto_2
    if-eqz v3, :cond_c

    .line 1653
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_9

    .line 1654
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1655
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\ubcf4\uc548\ubc88\ud638\uac00 \ud2c0\ub838\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624.(\uc624\ub958\ud69f\uc218:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1672
    :catch_0
    move-exception v1

    .line 1673
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1645
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :try_start_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1646
    .local v0, "check":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_7

    const/16 v4, 0x3a

    if-le v0, v4, :cond_8

    .line 1648
    :cond_7
    const/4 v3, 0x0

    .line 1649
    goto :goto_2

    .line 1644
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1656
    .end local v0    # "check":C
    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_b

    .line 1657
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1658
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 1660
    :cond_a
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ubcf4\uc548\ubc88\ud638 \uc624\ub958 \uc548\ub0b4"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1661
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ubcf4\uc548\ubc88\ud638 \uc785\ub825 5\ud68c \uc774\uc0c1 \uc624\ub958 \uc785\ub2c8\ub2e4.\n\ubcf4\uc548\ubc88\ud638\ub97c \ubd84\uc2e4\ud558\uc168\ub2e4\uba74\nolleh\ub9c8\ucf13> My> \ubcf4\uc548\ubc88\ud638\uc5d0\uc11c \ubcf4\uc548\ubc88\ud638\ub97c \ud574\uc81c \ub610\ub294 \ubcc0\uacbd\ud558\uc5ec \uc8fc\uc2ed\uc2dc\uc624."

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1662
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, p1}, Lcom/kt/olleh/inapp/Purchase;->access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1663
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_0

    .line 1665
    :cond_b
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1666
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    const-string v5, "\ubcf4\uc548\ubc88\ud638\uac00 \ud2c0\ub838\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    invoke-interface {v4, p1, v5}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1669
    :cond_c
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1670
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1677
    .end local v2    # "i":I
    .end local v3    # "isNum":Z
    :cond_d
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1678
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public OnResultAPI(Ljava/lang/String;Lcom/kt/olleh/inapp/net/Response;)V
    .locals 11
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/kt/olleh/inapp/net/Response;

    .prologue
    const/16 v10, 0x3f3

    const/16 v9, 0x3f0

    const/16 v8, 0x3ea

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1476
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$3(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "getDiDetail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1477
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v5, 0x3ec

    invoke-virtual {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1479
    :cond_0
    const-string v4, "getDiDetail"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, p2

    .line 1480
    check-cast v3, Lcom/kt/olleh/inapp/net/ResDIDetail;

    .line 1482
    .local v3, "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$5(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1483
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getDiTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1484
    const-string v2, "\ucc98\ub9ac\uc911"

    .line 1485
    .local v2, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v2}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1487
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\uacb0\uc81c"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1488
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ucde8\uc18c"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$9(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1489
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->access$10(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1491
    sget-object v4, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    sget-object v5, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1492
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getHpLmtPrice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$11(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1497
    :goto_0
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/Purchase;->CheckPin()V

    .line 1623
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    :cond_1
    :goto_1
    return-void

    .line 1494
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    :cond_2
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/net/ResDIDetail;->getCdLmtPrice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$11(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    goto :goto_0

    .line 1499
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "res":Lcom/kt/olleh/inapp/net/ResDIDetail;
    :cond_3
    const-string v4, "buyDi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v3, p2

    .line 1500
    check-cast v3, Lcom/kt/olleh/inapp/net/ResDIBuy;

    .line 1502
    .local v3, "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v5, v3, Lcom/kt/olleh/inapp/net/ResDIBuy;->mTr_id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1503
    const-string v4, "0"

    iget-object v5, p2, Lcom/kt/olleh/inapp/net/Response;->mCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1504
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ud655\uc778"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1505
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\uacb0\uc81c\uac00 \uc644\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1506
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v7}, Lcom/kt/olleh/inapp/Purchase;->access$10(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1507
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1508
    sget-boolean v4, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    if-nez v4, :cond_4

    .line 1509
    sput-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 1510
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kt/olleh/inapp/TimerService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1511
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1514
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1515
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 1517
    :cond_5
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v7}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1518
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1519
    const/16 v4, 0x3f5

    sput v4, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1520
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v8}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1522
    :cond_6
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1523
    const/16 v4, 0x3ff

    sput v4, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1524
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v9}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1528
    .end local v3    # "res":Lcom/kt/olleh/inapp/net/ResDIBuy;
    :cond_7
    const-string v4, "getBuyDiUrl"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v3, p2

    .line 1529
    check-cast v3, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;

    .line 1531
    .local v3, "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v5, v3, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mTr_id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$12(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1532
    const-string v4, "0"

    iget-object v5, p2, Lcom/kt/olleh/inapp/net/Response;->mCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1533
    const-string v4, "0"

    iget-object v5, v3, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mPayAmount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1534
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ud655\uc778"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1535
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\uacb0\uc81c\uac00 \uc644\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1536
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v7}, Lcom/kt/olleh/inapp/Purchase;->access$10(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1537
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1538
    sget-boolean v4, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    if-nez v4, :cond_8

    .line 1539
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/kt/olleh/inapp/TimerService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1540
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1543
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1544
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 1546
    :cond_9
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v7}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1547
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1548
    const/16 v4, 0x3f5

    sput v4, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1549
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v8}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1551
    :cond_a
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1552
    const/16 v4, 0x3ff

    sput v4, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1553
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v9}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1556
    :cond_b
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v5, v3, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mCo_id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$18(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1557
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->getmUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$19(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1558
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1559
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 1561
    :cond_c
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v5, 0x3eb

    invoke-virtual {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1562
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v5, v3}, Lcom/kt/olleh/inapp/Purchase;->access$20(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/net/ResBuyDIUrl;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$21(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1564
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v5, 0x3ec

    invoke-virtual {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1565
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v5, 0x3f4

    invoke-virtual {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1569
    .end local v3    # "res":Lcom/kt/olleh/inapp/net/ResBuyDIUrl;
    :cond_d
    const-string v4, "checkShowId"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v3, p2

    .line 1571
    check-cast v3, Lcom/kt/olleh/inapp/net/ResCheckShowId;

    .line 1577
    .local v3, "res":Lcom/kt/olleh/inapp/net/ResCheckShowId;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto/16 :goto_1

    .line 1578
    .end local v3    # "res":Lcom/kt/olleh/inapp/net/ResCheckShowId;
    :cond_e
    const-string v4, "CheckPin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v3, p2

    .line 1579
    check-cast v3, Lcom/kt/olleh/inapp/net/ResCheckPin;

    .line 1580
    .local v3, "res":Lcom/kt/olleh/inapp/net/ResCheckPin;
    invoke-virtual {v3}, Lcom/kt/olleh/inapp/net/ResCheckPin;->getmPin_set()Ljava/lang/String;

    move-result-object v1

    .line 1581
    .local v1, "isPin":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 1582
    const-string v4, "Y"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1583
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1590
    :goto_2
    const-string v2, "\ud574\ub2f9 \uc544\uc774\ud15c\uc744 \uad6c\ub9e4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    .line 1591
    .restart local v2    # "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v2}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1593
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$13(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1594
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1595
    sput v10, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1596
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v8}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1585
    .end local v2    # "msg":Ljava/lang/String;
    :cond_f
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v7}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;Z)V

    goto :goto_2

    .line 1588
    :cond_10
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v7}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;Z)V

    goto :goto_2

    .line 1598
    .restart local v2    # "msg":Ljava/lang/String;
    :cond_11
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$22(Lcom/kt/olleh/inapp/Purchase;)V

    .line 1599
    const/16 v4, 0x3fd

    sput v4, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1600
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4}, Lcom/kt/olleh/inapp/Purchase;->access$23(Lcom/kt/olleh/inapp/Purchase;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1601
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1602
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v9}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1604
    :cond_12
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$17(Lcom/kt/olleh/inapp/Purchase;I)V

    .line 1605
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const/16 v5, 0x3ef

    invoke-virtual {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1608
    .end local v1    # "isPin":Ljava/lang/String;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "res":Lcom/kt/olleh/inapp/net/ResCheckPin;
    :cond_13
    const-string v4, "SetPin"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, p2

    .line 1609
    check-cast v3, Lcom/kt/olleh/inapp/net/ResSetPin;

    .line 1611
    .local v3, "res":Lcom/kt/olleh/inapp/net/ResSetPin;
    const-string v4, "Y"

    invoke-virtual {v3}, Lcom/kt/olleh/inapp/net/ResSetPin;->getmPin_set_ret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1612
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815 \uc644\ub8cc"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1613
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815\uc774 \uc644\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1614
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v6}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1615
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v10}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1

    .line 1617
    :cond_14
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    const-string v5, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815 \uc2e4\ud328"

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$24(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1618
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iget-object v5, v3, Lcom/kt/olleh/inapp/net/ResSetPin;->mReason:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kt/olleh/inapp/Purchase;->access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V

    .line 1619
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v4, v7}, Lcom/kt/olleh/inapp/Purchase;->access$16(Lcom/kt/olleh/inapp/Purchase;Z)V

    .line 1620
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v4, v10}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto/16 :goto_1
.end method

.method public OnResultFileURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1692
    return-void
.end method

.method public OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$2;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnResultOLDAPI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    :cond_0
    return-void
.end method

.method public OnResultPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tr_id"    # Ljava/lang/String;
    .param p2, "app_id"    # Ljava/lang/String;
    .param p3, "di_id"    # Ljava/lang/String;

    .prologue
    .line 1472
    return-void
.end method
