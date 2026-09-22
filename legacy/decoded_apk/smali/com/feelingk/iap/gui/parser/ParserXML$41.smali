.class Lcom/feelingk/iap/gui/parser/ParserXML$41;
.super Ljava/lang/Object;
.source "ParserXML.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/gui/parser/ParserXML;->createViewOtpPopup(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

.field private final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/gui/parser/ParserXML;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/gui/parser/ParserXML$41;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iput-object p2, p0, Lcom/feelingk/iap/gui/parser/ParserXML$41;->val$editText:Landroid/widget/EditText;

    .line 4620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4624
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$41;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    iget-boolean v0, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    if-eqz v0, :cond_0

    .line 4625
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$41;->val$editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 4627
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/gui/parser/ParserXML$41;->this$0:Lcom/feelingk/iap/gui/parser/ParserXML;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/feelingk/iap/gui/parser/ParserXML;->cursorFlag:Z

    .line 4629
    return-void
.end method
