.class Lcom/feelingk/iap/gui/parser/ParserXML$34;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;->createView(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x41500000    # 13.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1596
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$69(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$70(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$69(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$70(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1598
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$69(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1602
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/data/SingletonCounter;->ismTCashUseFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$75(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->USE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$75(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1605
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$75(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1606
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmTCashUseFlag(Z)V

    .line 1608
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "TCASH"

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->del_payments_amount(Ljava/lang/String;)V

    .line 1619
    :goto_0
    return-void

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$75(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->USE_CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1613
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$75(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1614
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$75(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1615
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmTCashUseFlag(Z)V

    .line 1617
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$34;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "TCASH"

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->add_payments_amount(Ljava/lang/String;)V

    goto :goto_0
.end method
