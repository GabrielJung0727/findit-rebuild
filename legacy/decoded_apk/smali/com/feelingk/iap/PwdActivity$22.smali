.class Lcom/feelingk/iap/PwdActivity$22;
.super Ljava/lang/Object;
.source "PwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/feelingk/iap/PwdActivity;->viewPortrait()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/iap/PwdActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/iap/PwdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1243
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ne v0, v5, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-lez v0, :cond_4

    .line 1248
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v1, v1, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v3, v3, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 1249
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ne v0, v5, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v1, v1, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1252
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1254
    :cond_1
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1255
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1257
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1258
    :cond_3
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1259
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1262
    :cond_4
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-nez v0, :cond_5

    .line 1263
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    invoke-virtual {v0}, Lcom/feelingk/iap/PwdActivity;->finish()V

    .line 1264
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/PwdActivity$22;->this$0:Lcom/feelingk/iap/PwdActivity;

    iget v1, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 1265
    return-void
.end method
