.class Lcom/feelingk/iap/gui/parser/ParserXML$32;
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
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    .line 1515
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

    .line 1520
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$69(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$70(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$69(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$70(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1522
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$69(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1526
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/data/SingletonCounter;->ismCultureBtnFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$74(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->USE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1528
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$74(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1529
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$74(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1530
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmCultureBtnFlag(Z)V

    .line 1531
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "CULTURE"

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->del_payments_amount(Ljava/lang/String;)V

    .line 1543
    :goto_0
    return-void

    .line 1536
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$74(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->USE_CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1537
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$74(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1538
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    invoke-static {v0}, Lcom/feelingk/iap/gui/parser/ParserXML;->access$74(Lcom/feelingk/iap/gui/parser/ParserXML;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 1539
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/feelingk/iap/gui/data/SingletonCounter;->setmCultureBtnFlag(Z)V

    .line 1540
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$32;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const-string v1, "CULTURE"

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/gui/parser/ParserXML;->add_payments_amount(Ljava/lang/String;)V

    goto :goto_0
.end method
