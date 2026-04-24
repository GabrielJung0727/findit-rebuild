.class public Lcom/feelingk/iap/PwdActivity;
.super Landroid/app/Activity;
.source "PwdActivity.java"


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field btn_pad_nor:Ljava/io/InputStream;

.field btn_pad_sel:Ljava/io/InputStream;

.field buttonHeight:I

.field buttonWidth:I

.field private decryptPwd:Ljava/lang/String;

.field delete:Landroid/widget/Button;

.field deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

.field eightDrawables:Landroid/graphics/drawable/StateListDrawable;

.field et1:Landroid/widget/EditText;

.field et2:Landroid/widget/EditText;

.field et3:Landroid/widget/EditText;

.field et4:Landroid/widget/EditText;

.field fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

.field fourDrawables:Landroid/graphics/drawable/StateListDrawable;

.field honeyCombFlag:Ljava/lang/Boolean;

.field hvga:Ljava/lang/Boolean;

.field inputNum:Ljava/lang/String;

.field isdelete:Ljava/io/InputStream;

.field iset:Landroid/graphics/drawable/Drawable;

.field iset1:Ljava/io/InputStream;

.field nineDrawables:Landroid/graphics/drawable/StateListDrawable;

.field noneDrawables:Landroid/graphics/drawable/StateListDrawable;

.field nor:Landroid/graphics/drawable/Drawable;

.field numCheck:I

.field oneDrawables:Landroid/graphics/drawable/StateListDrawable;

.field pwdText:Landroid/widget/TextView;

.field sel:Landroid/graphics/drawable/Drawable;

.field sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

.field sixDrawables:Landroid/graphics/drawable/StateListDrawable;

.field threeDrawables:Landroid/graphics/drawable/StateListDrawable;

.field twoDrawables:Landroid/graphics/drawable/StateListDrawable;

.field zeroDrawables:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string v0, "PwdActivity"

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "/res/"

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 48
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 50
    iput v2, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    .line 57
    iput v2, p0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    .line 61
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    .line 66
    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    .line 67
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 68
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 69
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 70
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 71
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 72
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 73
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 74
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 75
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 76
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 77
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 78
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    .line 35
    return-void
.end method


# virtual methods
.method public checkDot()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1270
    iget v3, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-eqz v3, :cond_0

    .line 1271
    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "keypad_back.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1274
    .local v0, "back":Ljava/io/InputStream;
    const-string v3, "none"

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1277
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :goto_0
    const/16 v3, 0x1e

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1280
    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1282
    .end local v0    # "back":Ljava/io/InputStream;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget v3, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1283
    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1294
    :cond_1
    :goto_1
    return-void

    .line 1277
    .restart local v0    # "back":Ljava/io/InputStream;
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1285
    .end local v0    # "back":Ljava/io/InputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v3, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    if-ne v3, v7, :cond_3

    .line 1286
    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1288
    :cond_3
    iget v3, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1289
    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1291
    :cond_4
    iget v3, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1292
    iget-object v3, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public checkInputNum()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1296
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v2, "checkInputNum \ub4e4\uc5b4\uc634"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1299
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v2, "\ube44\ubc00\ubc88\ud638 \uc77c\uce58"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1301
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/feelingk/iap/IAPActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1302
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "result"

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/feelingk/iap/PwdActivity;->setResult(ILandroid/content/Intent;)V

    .line 1305
    .end local v0    # "intent2":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->finish()V

    .line 1322
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v2, "\ud328\uc2a4\uc6cc\ub4dc \uc5d0\ub7ec"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->RETRY_ENTER_PASSWORD:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    const/4 v1, 0x0

    iput v1, p0, Lcom/feelingk/iap/PwdActivity;->numCheck:I

    .line 1311
    const-string v1, ""

    iput-object v1, p0, Lcom/feelingk/iap/PwdActivity;->inputNum:Ljava/lang/String;

    .line 1312
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1313
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1314
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1315
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1317
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1318
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    iget-object v2, p0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    iget-object v1, p0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 86
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "pwd"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->decryptPwd:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "btn_pad_sel.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "btn_pad_nor.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    .line 91
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    const-string v9, "btn_pad_sel"

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    const-string v9, "btn_pad_nor"

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "inputbox_pw_dot.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    .line 96
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    const-string v9, "inputbox_pw_dot"

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset:Landroid/graphics/drawable/Drawable;

    .line 99
    :try_start_0
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 100
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 101
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_sel:Ljava/io/InputStream;

    .line 107
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->btn_pad_nor:Ljava/io/InputStream;

    .line 108
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->iset1:Ljava/io/InputStream;

    .line 110
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 112
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    .local v1, "deviceWidth":I
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 115
    .local v0, "deviceHeight":I
    div-int/lit8 v8, v1, 0x4

    iput v8, p0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    .line 116
    div-int/lit8 v8, v0, 0x4

    iput v8, p0, Lcom/feelingk/iap/PwdActivity;->buttonHeight:I

    .line 118
    const/16 v8, 0x140

    if-ne v1, v8, :cond_0

    const/16 v8, 0x1e0

    if-eq v0, v8, :cond_1

    :cond_0
    const/16 v8, 0x1e0

    if-ne v1, v8, :cond_2

    const/16 v8, 0x140

    if-ne v0, v8, :cond_2

    .line 119
    :cond_1
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    .line 121
    :cond_2
    if-le v1, v0, :cond_3

    .line 122
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    .line 127
    :goto_1
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/PwdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 128
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 130
    .local v2, "disp":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v6

    .line 131
    .local v6, "rotation":I
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "rotation : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    packed-switch v6, :pswitch_data_0

    .line 174
    :goto_2
    return-void

    .line 102
    .end local v0    # "deviceHeight":I
    .end local v1    # "deviceWidth":I
    .end local v2    # "disp":Landroid/view/Display;
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "rotation":I
    .end local v7    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "deviceHeight":I
    .restart local v1    # "deviceWidth":I
    .restart local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_3
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    goto :goto_1

    .line 135
    .restart local v2    # "disp":Landroid/view/Display;
    .restart local v6    # "rotation":I
    .restart local v7    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Portrait : 0"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 139
    :cond_4
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 144
    :pswitch_1
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Landscape : 90"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_5

    .line 146
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 153
    :pswitch_2
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Portrait : 180"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 157
    :cond_6
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 162
    :pswitch_3
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    const-string v9, "Landscape : 270"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v8, p0, Lcom/feelingk/iap/PwdActivity;->honeyCombFlag:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewPortrait()V

    goto :goto_2

    .line 166
    :cond_7
    invoke-virtual {p0}, Lcom/feelingk/iap/PwdActivity;->viewLandscape()V

    goto :goto_2

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public viewLandscape()V
    .locals 51

    .prologue
    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "viewLandscape"

    invoke-static/range {v47 .. v48}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v39, Landroid/widget/LinearLayout;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .local v39, "root":Landroid/widget/LinearLayout;
    new-instance v47, Landroid/view/ViewGroup$LayoutParams;

    const/16 v48, -0x1

    const/16 v49, -0x1

    invoke-direct/range {v47 .. v49}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v39

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    const/16 v47, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 180
    const/16 v47, 0x11

    move-object/from16 v0, v39

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 183
    .local v26, "left":Landroid/widget/LinearLayout;
    const/16 v47, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 185
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, 0x0

    const/16 v48, -0x1

    const/high16 v49, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 186
    .local v27, "leftLLParams":Landroid/widget/LinearLayout$LayoutParams;
    const-string v5, "#3C3C3C"

    .line 187
    .local v5, "bgColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v26

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 188
    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    const/16 v47, 0x11

    move-object/from16 v0, v26

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 190
    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 194
    .local v22, "iv":Landroid/widget/ImageView;
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, 0x6e

    const/16 v48, 0x28

    move-object/from16 v0, v23

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v23, "ivParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x0

    const/16 v48, 0x19

    const/16 v49, 0x0

    const/16 v50, 0x14

    move-object/from16 v0, v23

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 196
    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "logo_pw.png"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 198
    .local v21, "is":Ljava/io/InputStream;
    const-string v47, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v47

    move-object/from16 v0, v22

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    const/16 v21, 0x0

    .line 204
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    new-instance v47, Landroid/widget/TextView;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v47, v0

    new-instance v48, Landroid/view/ViewGroup$LayoutParams;

    const/16 v49, -0x1

    .line 208
    const/16 v50, -0x2

    invoke-direct/range {v48 .. v50}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 207
    invoke-virtual/range {v47 .. v48}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v47, v0

    const/16 v48, 0x11

    invoke-virtual/range {v47 .. v48}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    const/high16 v49, 0x41700000    # 15.0f

    invoke-virtual/range {v47 .. v49}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    const-string v44, "#ffffff"

    .line 213
    .local v44, "titleColor":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v47, v0

    sget-object v48, Lcom/feelingk/iap/util/CommonString$Index;->T_STORE_INPUT_PASSWORD:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v48 .. v48}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v47, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 219
    .local v28, "line":Landroid/widget/LinearLayout;
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, -0x1

    .line 220
    const/16 v48, -0x2

    .line 219
    move-object/from16 v0, v29

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v29, "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x0

    const/16 v48, 0xf

    const/16 v49, 0x0

    const/16 v50, 0x14

    move-object/from16 v0, v29

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 222
    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "bg_line.png"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 224
    const-string v47, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v47

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :goto_1
    const/16 v21, 0x0

    .line 230
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 234
    .local v35, "pwd":Landroid/widget/LinearLayout;
    const/16 v47, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 236
    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, -0x1

    .line 237
    const/16 v48, -0x2

    .line 236
    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v36, "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x5

    const/16 v48, 0x0

    const/16 v49, 0x5

    const/16 v50, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    const/16 v47, 0x11

    move-object/from16 v0, v35

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 240
    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    const/16 v20, 0x0

    .line 244
    .local v20, "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v47

    if-eqz v47, :cond_0

    .line 246
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, 0x32

    const/16 v48, 0x28

    move-object/from16 v0, v19

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 249
    .local v19, "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    .end local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x32

    const/16 v48, 0x28

    move-object/from16 v0, v20

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 251
    .restart local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0xf

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 268
    :goto_2
    const/16 v47, 0xa

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .local v15, "inputBox1":Landroid/widget/LinearLayout;
    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 272
    const/16 v47, 0x1

    move/from16 v0, v47

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 273
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "inputbox_pw.png"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 275
    const-string v47, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 279
    :goto_3
    const/16 v21, 0x0

    .line 281
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance v47, Landroid/widget/EditText;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/high16 v48, 0x10000000

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x11

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setGravity(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v47, v0

    new-instance v48, Landroid/view/ViewGroup$LayoutParams;

    const/16 v49, 0x14

    const/16 v50, 0x14

    invoke-direct/range {v48 .. v50}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 294
    .local v16, "inputBox2":Landroid/widget/LinearLayout;
    const/16 v47, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 295
    const/16 v47, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 296
    const/16 v47, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "inputbox_pw.png"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 298
    const-string v47, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v47

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 302
    :goto_4
    const/16 v21, 0x0

    .line 304
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    new-instance v47, Landroid/widget/EditText;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/high16 v48, 0x10000000

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x11

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setGravity(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v47, v0

    new-instance v48, Landroid/view/ViewGroup$LayoutParams;

    const/16 v49, 0x14

    const/16 v50, 0x14

    invoke-direct/range {v48 .. v50}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v47, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 318
    .local v17, "inputBox3":Landroid/widget/LinearLayout;
    const/16 v47, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 319
    const/16 v47, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 320
    const/16 v47, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "inputbox_pw.png"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 322
    const-string v47, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v47

    move-object/from16 v0, v17

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 325
    :goto_5
    const/16 v21, 0x0

    .line 327
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    new-instance v47, Landroid/widget/EditText;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/high16 v48, 0x10000000

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x11

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setGravity(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v47, v0

    new-instance v48, Landroid/view/ViewGroup$LayoutParams;

    const/16 v49, 0x14

    const/16 v50, 0x14

    invoke-direct/range {v48 .. v50}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v47, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 338
    .local v18, "inputBox4":Landroid/widget/LinearLayout;
    const/16 v47, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 339
    const/16 v47, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 340
    const/16 v47, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v49, "inputbox_pw.png"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 342
    const-string v47, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v47

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 346
    :goto_6
    const/16 v21, 0x0

    .line 348
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    new-instance v47, Landroid/widget/EditText;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/high16 v48, 0x10000000

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x11

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setGravity(I)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v47, v0

    new-instance v48, Landroid/view/ViewGroup$LayoutParams;

    const/16 v49, 0x14

    const/16 v50, 0x14

    invoke-direct/range {v48 .. v50}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v47, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 361
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 362
    .local v37, "right":Landroid/widget/LinearLayout;
    const/16 v47, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 364
    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, 0x0

    const/16 v48, -0x1

    const/high16 v49, 0x3f800000    # 1.0f

    move-object/from16 v0, v38

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 365
    .local v38, "rightLLParams":Landroid/widget/LinearLayout$LayoutParams;
    const-string v47, "#212121"

    invoke-static/range {v47 .. v47}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 366
    const/16 v47, 0x2

    const/16 v48, 0x0

    const/16 v49, 0x2

    const/16 v50, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 367
    invoke-virtual/range {v37 .. v38}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    const/16 v47, 0x11

    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 369
    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    const v42, 0x10100a7

    .line 375
    .local v42, "statePressed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x0

    aput v42, v48, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v49, v0

    invoke-virtual/range {v47 .. v49}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 411
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 412
    .local v24, "keyPad":Landroid/widget/LinearLayout;
    const/16 v47, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 414
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, -0x1

    .line 415
    const/16 v48, -0x1

    .line 414
    move-object/from16 v0, v25

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 416
    .local v25, "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 417
    const-string v47, "#212121"

    invoke-static/range {v47 .. v47}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v24

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 418
    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 422
    .local v6, "buttonRow1":Landroid/widget/LinearLayout;
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 424
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, -0x1

    .line 425
    const/16 v48, -0x2

    const/high16 v49, 0x3f800000    # 1.0f

    .line 424
    move/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 426
    .local v10, "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x5

    move/from16 v0, v47

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 427
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 428
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, -0x14

    const/high16 v49, 0x3f800000    # 1.0f

    move-object/from16 v0, v33

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 433
    .local v33, "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 436
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v48, v0

    add-int/lit8 v48, v48, -0x14

    const/high16 v49, 0x3f800000    # 1.0f

    move-object/from16 v0, v32

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 437
    .local v32, "numParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, v32

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 439
    new-instance v34, Landroid/widget/Button;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 440
    .local v34, "one":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    const/16 v47, 0x11

    move-object/from16 v0, v34

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 442
    const-string v47, "1"

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move-object/from16 v0, v34

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 445
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v34

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 446
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    new-instance v45, Landroid/widget/Button;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 450
    .local v45, "two":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 451
    const/16 v47, 0x11

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 452
    const-string v47, "2"

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move-object/from16 v0, v45

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 454
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v45

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 455
    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    new-instance v43, Landroid/widget/Button;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 459
    .local v43, "three":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    const/16 v47, 0x11

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 461
    const-string v47, "3"

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move-object/from16 v0, v43

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 463
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v43

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 464
    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 468
    .local v7, "buttonRow2":Landroid/widget/LinearLayout;
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 469
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 470
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    new-instance v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 474
    .local v14, "four":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 476
    const-string v47, "4"

    move-object/from16 v0, v47

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v14, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 478
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 479
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    new-instance v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 483
    .local v13, "five":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 485
    const-string v47, "5"

    move-object/from16 v0, v47

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v13, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 487
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 488
    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    new-instance v41, Landroid/widget/Button;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 492
    .local v41, "six":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    const/16 v47, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 494
    const-string v47, "6"

    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 495
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move-object/from16 v0, v41

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 496
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 497
    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    move-object/from16 v0, v41

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 501
    .local v8, "buttonRow3":Landroid/widget/LinearLayout;
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 502
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 503
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    new-instance v40, Landroid/widget/Button;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 507
    .local v40, "seven":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    const/16 v47, 0x11

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 509
    const-string v47, "7"

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move-object/from16 v0, v40

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 511
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 512
    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 516
    .local v12, "eight":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 518
    const-string v47, "8"

    move-object/from16 v0, v47

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 519
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move/from16 v0, v47

    move/from16 v1, v48

    invoke-virtual {v12, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 520
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 521
    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 524
    new-instance v30, Landroid/widget/Button;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 525
    .local v30, "nine":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    const/16 v47, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 527
    const-string v47, "9"

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 528
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    move-object/from16 v0, v30

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 529
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v30

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 530
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 534
    .local v9, "buttonRow4":Landroid/widget/LinearLayout;
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 535
    const/16 v47, 0x11

    move/from16 v0, v47

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 536
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 539
    new-instance v31, Landroid/widget/Button;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 540
    .local v31, "none":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    invoke-virtual/range {v31 .. v32}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 544
    new-instance v46, Landroid/widget/Button;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 545
    .local v46, "zero":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    const/16 v47, 0x11

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setGravity(I)V

    .line 547
    const-string v47, "0"

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    const/16 v47, 0x1

    const/high16 v48, 0x41f00000    # 30.0f

    invoke-virtual/range {v46 .. v48}, Landroid/widget/Button;->setTextSize(IF)V

    .line 549
    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setTextColor(I)V

    .line 550
    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    new-instance v47, Landroid/widget/Button;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    const/16 v48, 0x11

    invoke-virtual/range {v47 .. v48}, Landroid/widget/Button;->setGravity(I)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    sget-object v48, Lcom/feelingk/iap/util/CommonString$Index;->CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v48 .. v48}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    const/high16 v49, 0x41a00000    # 20.0f

    invoke-virtual/range {v47 .. v49}, Landroid/widget/Button;->setTextSize(IF)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    invoke-static/range {v44 .. v44}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Landroid/widget/Button;->setTextColor(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 562
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/PwdActivity;->setContentView(Landroid/view/View;)V

    .line 564
    new-instance v47, Lcom/feelingk/iap/PwdActivity$1;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$1;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    new-instance v47, Lcom/feelingk/iap/PwdActivity$2;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$2;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    new-instance v47, Lcom/feelingk/iap/PwdActivity$3;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$3;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    new-instance v47, Lcom/feelingk/iap/PwdActivity$4;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$4;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v47

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    new-instance v47, Lcom/feelingk/iap/PwdActivity$5;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$5;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v47

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    new-instance v47, Lcom/feelingk/iap/PwdActivity$6;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$6;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    new-instance v47, Lcom/feelingk/iap/PwdActivity$7;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$7;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    new-instance v47, Lcom/feelingk/iap/PwdActivity$8;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$8;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v47

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    new-instance v47, Lcom/feelingk/iap/PwdActivity$9;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$9;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    new-instance v47, Lcom/feelingk/iap/PwdActivity$10;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$10;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v46 .. v47}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v47, v0

    new-instance v48, Lcom/feelingk/iap/PwdActivity$11;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$11;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v47 .. v48}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    return-void

    .line 201
    .end local v6    # "buttonRow1":Landroid/widget/LinearLayout;
    .end local v7    # "buttonRow2":Landroid/widget/LinearLayout;
    .end local v8    # "buttonRow3":Landroid/widget/LinearLayout;
    .end local v9    # "buttonRow4":Landroid/widget/LinearLayout;
    .end local v10    # "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "eight":Landroid/widget/Button;
    .end local v13    # "five":Landroid/widget/Button;
    .end local v14    # "four":Landroid/widget/Button;
    .end local v15    # "inputBox1":Landroid/widget/LinearLayout;
    .end local v16    # "inputBox2":Landroid/widget/LinearLayout;
    .end local v17    # "inputBox3":Landroid/widget/LinearLayout;
    .end local v18    # "inputBox4":Landroid/widget/LinearLayout;
    .end local v19    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "keyPad":Landroid/widget/LinearLayout;
    .end local v25    # "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "line":Landroid/widget/LinearLayout;
    .end local v29    # "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "nine":Landroid/widget/Button;
    .end local v31    # "none":Landroid/widget/Button;
    .end local v32    # "numParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v33    # "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v34    # "one":Landroid/widget/Button;
    .end local v35    # "pwd":Landroid/widget/LinearLayout;
    .end local v36    # "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v37    # "right":Landroid/widget/LinearLayout;
    .end local v38    # "rightLLParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v40    # "seven":Landroid/widget/Button;
    .end local v41    # "six":Landroid/widget/Button;
    .end local v42    # "statePressed":I
    .end local v43    # "three":Landroid/widget/Button;
    .end local v44    # "titleColor":Ljava/lang/String;
    .end local v45    # "two":Landroid/widget/Button;
    .end local v46    # "zero":Landroid/widget/Button;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 227
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v28    # "line":Landroid/widget/LinearLayout;
    .restart local v29    # "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v44    # "titleColor":Ljava/lang/String;
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 255
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v35    # "pwd":Landroid/widget/LinearLayout;
    .restart local v36    # "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v47, 0x37

    const/16 v48, 0x37

    move-object/from16 v0, v19

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 258
    .restart local v19    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    .end local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0x37

    const/16 v48, 0x37

    move-object/from16 v0, v20

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    .restart local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v47, 0xf

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    move/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 278
    .restart local v15    # "inputBox1":Landroid/widget/LinearLayout;
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 301
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v16    # "inputBox2":Landroid/widget/LinearLayout;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 324
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v17    # "inputBox3":Landroid/widget/LinearLayout;
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 345
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v18    # "inputBox4":Landroid/widget/LinearLayout;
    :catch_5
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public viewPortrait()V
    .locals 49

    .prologue
    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->TAG:Ljava/lang/String;

    move-object/from16 v45, v0

    const-string v46, "viewPortrait"

    invoke-static/range {v45 .. v46}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 735
    .local v35, "root":Landroid/widget/LinearLayout;
    new-instance v45, Landroid/view/ViewGroup$LayoutParams;

    const/16 v46, -0x1

    const/16 v47, -0x1

    invoke-direct/range {v45 .. v47}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    const/16 v45, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 737
    const-string v5, "#3C3C3C"

    .line 738
    .local v5, "bgColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v35

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 739
    const/16 v45, 0x11

    move-object/from16 v0, v35

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 741
    new-instance v41, Landroid/widget/LinearLayout;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 743
    .local v41, "top":Landroid/widget/LinearLayout;
    new-instance v42, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, -0x1

    .line 744
    const/16 v46, 0x0

    const/high16 v47, 0x3f800000    # 1.0f

    .line 743
    move-object/from16 v0, v42

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 745
    .local v42, "topParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    const/16 v45, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 747
    const/16 v45, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 748
    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 750
    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 752
    .local v22, "iv":Landroid/widget/ImageView;
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, 0x6e

    const/16 v46, 0x28

    move-object/from16 v0, v23

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 753
    .local v23, "ivParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x0

    const/16 v46, 0x19

    const/16 v47, 0x0

    const/16 v48, 0x14

    move-object/from16 v0, v23

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 754
    const/16 v45, 0x11

    move/from16 v0, v45

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 755
    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "logo_pw.png"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 757
    .local v21, "is":Ljava/io/InputStream;
    const-string v45, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    :try_start_0
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_0
    const/16 v21, 0x0

    .line 763
    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 765
    new-instance v45, Landroid/widget/TextView;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v45, v0

    new-instance v46, Landroid/view/ViewGroup$LayoutParams;

    const/16 v47, -0x1

    .line 767
    const/16 v48, -0x2

    invoke-direct/range {v46 .. v48}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 766
    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v45, v0

    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setGravity(I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/high16 v47, 0x41700000    # 15.0f

    invoke-virtual/range {v45 .. v47}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 770
    const-string v40, "#ffffff"

    .line 771
    .local v40, "titleColor":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v45, v0

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setTextColor(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v45, v0

    sget-object v46, Lcom/feelingk/iap/util/CommonString$Index;->T_STORE_INPUT_PASSWORD:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v46 .. v46}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->pwdText:Landroid/widget/TextView;

    move-object/from16 v45, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 775
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 777
    .local v26, "line":Landroid/widget/LinearLayout;
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, -0x1

    .line 778
    const/16 v46, -0x2

    .line 777
    move-object/from16 v0, v27

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 779
    .local v27, "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x0

    const/16 v46, 0xf

    const/16 v47, 0x0

    const/16 v48, 0x14

    move-object/from16 v0, v27

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 780
    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "bg_line.png"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 783
    const-string v45, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    move-object/from16 v0, v26

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 787
    :goto_1
    const/16 v21, 0x0

    .line 788
    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 791
    new-instance v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 792
    .local v33, "pwd":Landroid/widget/LinearLayout;
    const/16 v45, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 794
    new-instance v34, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, -0x1

    .line 795
    const/16 v46, -0x2

    .line 794
    move-object/from16 v0, v34

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 796
    .local v34, "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0xf

    move-object/from16 v0, v34

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 797
    const/16 v45, 0x11

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 798
    invoke-virtual/range {v33 .. v34}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    const/16 v20, 0x0

    .line 802
    .local v20, "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->hvga:Ljava/lang/Boolean;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v45

    if-eqz v45, :cond_0

    .line 804
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, 0x32

    const/16 v46, 0x28

    move-object/from16 v0, v19

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 807
    .local v19, "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    .end local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x32

    const/16 v46, 0x28

    move-object/from16 v0, v20

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 809
    .restart local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0xf

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 822
    :goto_2
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 823
    .local v15, "inputBox1":Landroid/widget/LinearLayout;
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 824
    const/16 v45, 0x1

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 825
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "inputbox_pw.png"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 827
    const-string v45, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 830
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 831
    :goto_3
    const/16 v21, 0x0

    .line 833
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 834
    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 836
    new-instance v45, Landroid/widget/EditText;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/high16 v46, 0x10000000

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setGravity(I)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v45, v0

    new-instance v46, Landroid/view/ViewGroup$LayoutParams;

    const/16 v47, 0x14

    const/16 v48, 0x14

    invoke-direct/range {v46 .. v48}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et1:Landroid/widget/EditText;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 843
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 844
    .local v16, "inputBox2":Landroid/widget/LinearLayout;
    const/16 v45, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 845
    const/16 v45, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 846
    const/16 v45, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 847
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "inputbox_pw.png"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 848
    const-string v45, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 851
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 852
    :goto_4
    const/16 v21, 0x0

    .line 854
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 858
    new-instance v45, Landroid/widget/EditText;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/high16 v46, 0x10000000

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setGravity(I)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v45, v0

    new-instance v46, Landroid/view/ViewGroup$LayoutParams;

    const/16 v47, 0x14

    const/16 v48, 0x14

    invoke-direct/range {v46 .. v48}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et2:Landroid/widget/EditText;

    move-object/from16 v45, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 865
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 866
    .local v17, "inputBox3":Landroid/widget/LinearLayout;
    const/16 v45, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 867
    const/16 v45, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 868
    const/16 v45, 0x11

    move-object/from16 v0, v17

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 869
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "inputbox_pw.png"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 870
    const-string v45, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 873
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 874
    :goto_5
    const/16 v21, 0x0

    .line 876
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 879
    new-instance v45, Landroid/widget/EditText;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/high16 v46, 0x10000000

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setGravity(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v45, v0

    new-instance v46, Landroid/view/ViewGroup$LayoutParams;

    const/16 v47, 0x14

    const/16 v48, 0x14

    invoke-direct/range {v46 .. v48}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et3:Landroid/widget/EditText;

    move-object/from16 v45, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 886
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 887
    .local v18, "inputBox4":Landroid/widget/LinearLayout;
    const/16 v45, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 888
    const/16 v45, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 889
    const/16 v45, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    new-instance v46, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "inputbox_pw.png"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 891
    const-string v45, "none"

    move-object/from16 v0, v21

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 894
    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 895
    :goto_6
    const/16 v21, 0x0

    .line 897
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 900
    new-instance v45, Landroid/widget/EditText;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/high16 v46, 0x10000000

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setGravity(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v45, v0

    new-instance v46, Landroid/view/ViewGroup$LayoutParams;

    const/16 v47, 0x14

    const/16 v48, 0x14

    invoke-direct/range {v46 .. v48}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->et4:Landroid/widget/EditText;

    move-object/from16 v45, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 912
    const v38, 0x10100a7

    .line 914
    .local v38, "statePressed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput v38, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sel:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nor:Landroid/graphics/drawable/Drawable;

    move-object/from16 v47, v0

    invoke-virtual/range {v45 .. v47}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 950
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 951
    .local v24, "keyPad":Landroid/widget/LinearLayout;
    const/16 v45, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 953
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, -0x1

    .line 954
    const/16 v46, 0x0

    const/high16 v47, 0x3f800000    # 1.0f

    .line 953
    move-object/from16 v0, v25

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 955
    .local v25, "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 956
    const-string v45, "#212121"

    invoke-static/range {v45 .. v45}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v24

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 957
    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 960
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 961
    .local v6, "buttonRow1":Landroid/widget/LinearLayout;
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 963
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, -0x1

    .line 964
    const/16 v46, 0x0

    const/high16 v47, 0x3f800000    # 1.0f

    .line 963
    move/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 965
    .local v10, "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x5

    move/from16 v0, v45

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 966
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 967
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 971
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x14

    const/high16 v47, 0x3f800000    # 1.0f

    move-object/from16 v0, v31

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 972
    .local v31, "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v31

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 975
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/iap/PwdActivity;->buttonWidth:I

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x14

    const/high16 v47, 0x3f800000    # 1.0f

    move-object/from16 v0, v30

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 976
    .local v30, "numParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x1

    move/from16 v0, v45

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 977
    new-instance v32, Landroid/widget/Button;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 978
    .local v32, "one":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->oneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 979
    const/16 v45, 0x11

    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 980
    const-string v45, "1"

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move-object/from16 v0, v32

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 982
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 983
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 984
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 986
    new-instance v43, Landroid/widget/Button;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 987
    .local v43, "two":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->twoDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    const/16 v45, 0x11

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 989
    const-string v45, "2"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 990
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move-object/from16 v0, v43

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 991
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v43

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 992
    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 993
    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 995
    new-instance v39, Landroid/widget/Button;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 996
    .local v39, "three":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->threeDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 997
    const/16 v45, 0x11

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 998
    const-string v45, "3"

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 999
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move-object/from16 v0, v39

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1000
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1001
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1004
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1005
    .local v7, "buttonRow2":Landroid/widget/LinearLayout;
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1006
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1007
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1010
    new-instance v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1011
    .local v14, "four":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fourDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 1013
    const-string v45, "4"

    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v14, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1015
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move/from16 v0, v45

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1016
    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1019
    new-instance v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1020
    .local v13, "five":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->fiveDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1021
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 1022
    const-string v45, "5"

    move-object/from16 v0, v45

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v13, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1024
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move/from16 v0, v45

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1025
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1028
    new-instance v37, Landroid/widget/Button;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1029
    .local v37, "six":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sixDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1030
    const/16 v45, 0x11

    move-object/from16 v0, v37

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 1031
    const-string v45, "6"

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move-object/from16 v0, v37

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1033
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v37

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1034
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1037
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1038
    .local v8, "buttonRow3":Landroid/widget/LinearLayout;
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1039
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1040
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1043
    new-instance v36, Landroid/widget/Button;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1044
    .local v36, "seven":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->sevenDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    const/16 v45, 0x11

    move-object/from16 v0, v36

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 1046
    const-string v45, "7"

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1047
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move-object/from16 v0, v36

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1048
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v36

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1049
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1052
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1053
    .local v12, "eight":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->eightDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 1055
    const-string v45, "8"

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1057
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1058
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1059
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1061
    new-instance v28, Landroid/widget/Button;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1062
    .local v28, "nine":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->nineDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1063
    const/16 v45, 0x11

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 1064
    const-string v45, "9"

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    move-object/from16 v0, v28

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1066
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1067
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1070
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1071
    .local v9, "buttonRow4":Landroid/widget/LinearLayout;
    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1072
    const/16 v45, 0x11

    move/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1073
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1076
    new-instance v29, Landroid/widget/Button;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1077
    .local v29, "none":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->noneDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1078
    invoke-virtual/range {v29 .. v30}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1081
    new-instance v44, Landroid/widget/Button;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 1082
    .local v44, "zero":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->zeroDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1083
    const/16 v45, 0x11

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setGravity(I)V

    .line 1084
    const-string v45, "0"

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    const/16 v45, 0x1

    const/high16 v46, 0x41f00000    # 30.0f

    invoke-virtual/range {v44 .. v46}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1086
    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setTextColor(I)V

    .line 1087
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1090
    new-instance v45, Landroid/widget/Button;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->deleteDrawables:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    const/16 v46, 0x11

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setGravity(I)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    sget-object v46, Lcom/feelingk/iap/util/CommonString$Index;->CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static/range {v46 .. v46}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    const/high16 v47, 0x41a00000    # 20.0f

    invoke-virtual/range {v45 .. v47}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setTextColor(I)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1099
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/PwdActivity;->setContentView(Landroid/view/View;)V

    .line 1101
    new-instance v45, Lcom/feelingk/iap/PwdActivity$12;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$12;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    new-instance v45, Lcom/feelingk/iap/PwdActivity$13;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$13;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    new-instance v45, Lcom/feelingk/iap/PwdActivity$14;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$14;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    new-instance v45, Lcom/feelingk/iap/PwdActivity$15;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$15;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v45

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    new-instance v45, Lcom/feelingk/iap/PwdActivity$16;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$16;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v45

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    new-instance v45, Lcom/feelingk/iap/PwdActivity$17;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$17;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1185
    new-instance v45, Lcom/feelingk/iap/PwdActivity$18;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$18;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    new-instance v45, Lcom/feelingk/iap/PwdActivity$19;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$19;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v45

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    new-instance v45, Lcom/feelingk/iap/PwdActivity$20;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$20;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1227
    new-instance v45, Lcom/feelingk/iap/PwdActivity$21;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$21;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/PwdActivity;->delete:Landroid/widget/Button;

    move-object/from16 v45, v0

    new-instance v46, Lcom/feelingk/iap/PwdActivity$22;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/feelingk/iap/PwdActivity$22;-><init>(Lcom/feelingk/iap/PwdActivity;)V

    invoke-virtual/range {v45 .. v46}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1267
    return-void

    .line 760
    .end local v6    # "buttonRow1":Landroid/widget/LinearLayout;
    .end local v7    # "buttonRow2":Landroid/widget/LinearLayout;
    .end local v8    # "buttonRow3":Landroid/widget/LinearLayout;
    .end local v9    # "buttonRow4":Landroid/widget/LinearLayout;
    .end local v10    # "buttonRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "eight":Landroid/widget/Button;
    .end local v13    # "five":Landroid/widget/Button;
    .end local v14    # "four":Landroid/widget/Button;
    .end local v15    # "inputBox1":Landroid/widget/LinearLayout;
    .end local v16    # "inputBox2":Landroid/widget/LinearLayout;
    .end local v17    # "inputBox3":Landroid/widget/LinearLayout;
    .end local v18    # "inputBox4":Landroid/widget/LinearLayout;
    .end local v19    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "keyPad":Landroid/widget/LinearLayout;
    .end local v25    # "keyPadParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v26    # "line":Landroid/widget/LinearLayout;
    .end local v27    # "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v28    # "nine":Landroid/widget/Button;
    .end local v29    # "none":Landroid/widget/Button;
    .end local v30    # "numParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v31    # "numTopParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "one":Landroid/widget/Button;
    .end local v33    # "pwd":Landroid/widget/LinearLayout;
    .end local v34    # "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v36    # "seven":Landroid/widget/Button;
    .end local v37    # "six":Landroid/widget/Button;
    .end local v38    # "statePressed":I
    .end local v39    # "three":Landroid/widget/Button;
    .end local v40    # "titleColor":Ljava/lang/String;
    .end local v43    # "two":Landroid/widget/Button;
    .end local v44    # "zero":Landroid/widget/Button;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 786
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v26    # "line":Landroid/widget/LinearLayout;
    .restart local v27    # "lineParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v40    # "titleColor":Ljava/lang/String;
    :catch_1
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 813
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v33    # "pwd":Landroid/widget/LinearLayout;
    .restart local v34    # "pwdParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v45, 0x3c

    const/16 v46, 0x37

    move-object/from16 v0, v19

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 816
    .restart local v19    # "inputBoxParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    .end local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0x3c

    const/16 v46, 0x37

    move-object/from16 v0, v20

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 818
    .restart local v20    # "inputBoxParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v45, 0xf

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 830
    .restart local v15    # "inputBox1":Landroid/widget/LinearLayout;
    :catch_2
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 851
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v16    # "inputBox2":Landroid/widget/LinearLayout;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 873
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v17    # "inputBox3":Landroid/widget/LinearLayout;
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 894
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v18    # "inputBox4":Landroid/widget/LinearLayout;
    :catch_5
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6
.end method
