.class public Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
.super Landroid/app/Dialog;
.source "DialogNewPwd.java"


# static fields
.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private isBgChange:Z

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private payMoney:Ljava/lang/String;

.field private payName1:Ljava/lang/String;

.field private payName2:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private pwd1:Ljava/lang/String;

.field private pwd2:Ljava/lang/String;

.field private pwdEditText1:Landroid/widget/EditText;

.field private pwdEditText2:Landroid/widget/EditText;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->config:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    .line 22
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    .line 27
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd1:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd2:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName1:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName2:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payMoney:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payType:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->isBgChange:Z

    .line 41
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 54
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    .line 55
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    .line 57
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lez v0, :cond_0

    .line 59
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    .line 60
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 62
    :cond_0
    return-void
.end method

.method private checkLayout()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_0

    .line 130
    const-string v0, "/layout-port-hdpi/dialog_new_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    .line 174
    :goto_0
    return-void

    .line 121
    :pswitch_0
    const-string v0, "/layout-port-mdpi/dialog_new_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 135
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_1

    .line 150
    const-string v0, "/layout-land-hdpi/dialog_new_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v0, "/layout-land-mdpi/dialog_new_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 155
    :cond_1
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_2

    .line 170
    const-string v0, "/layout-port-hdpi/dialog_new_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 161
    :pswitch_2
    const-string v0, "/layout-port-mdpi/dialog_new_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
    .end packed-switch

    .line 135
    :pswitch_data_1
    .packed-switch 0xa0
        :pswitch_1
    .end packed-switch

    .line 155
    :pswitch_data_2
    .packed-switch 0xa0
        :pswitch_2
    .end packed-switch
.end method

.method private create()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 178
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->checkLayout()V

    .line 180
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    sput v8, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->config:I

    .line 182
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 183
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v8, 0x3f333333    # 0.7f

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 184
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 185
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 188
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_Title"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 189
    .local v6, "titleLayout":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialogAlertTitleTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 190
    .local v7, "titleTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 193
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :cond_1
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "pwdEditText"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    .line 197
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    new-instance v9, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v9}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 199
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd1:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "pwdEditText2"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    .line 202
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    new-instance v9, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v9}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 204
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_MessageTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 208
    .local v5, "messageTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_2

    .line 209
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_2
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lez v8, :cond_4

    .line 214
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "Button_Layout"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 215
    .local v1, "ButtonLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    new-array v2, v8, [Landroid/widget/Button;

    .line 218
    .local v2, "DialogButton":[Landroid/widget/Button;
    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    .line 219
    .local v0, "ButtonID":[Ljava/lang/String;
    const-string v8, "Button_1"

    aput-object v8, v0, v10

    .line 220
    const/4 v8, 0x1

    const-string v9, "Button_2"

    aput-object v9, v0, v8

    .line 223
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-lt v3, v8, :cond_5

    .line 228
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 230
    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lt v3, v8, :cond_6

    .line 237
    :cond_3
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v8, :cond_4

    .line 239
    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lt v3, v8, :cond_7

    .line 245
    .end local v0    # "ButtonID":[Ljava/lang/String;
    .end local v1    # "ButtonLayout":Landroid/widget/LinearLayout;
    .end local v2    # "DialogButton":[Landroid/widget/Button;
    .end local v3    # "i":I
    :cond_4
    return-void

    .line 225
    .restart local v0    # "ButtonID":[Ljava/lang/String;
    .restart local v1    # "ButtonLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "DialogButton":[Landroid/widget/Button;
    .restart local v3    # "i":I
    :cond_5
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v2, v3

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 232
    :cond_6
    aget-object v8, v2, v3

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    :cond_7
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 285
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 280
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 110
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 1
    .param p1, "config"    # I

    .prologue
    .line 44
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->config:I

    .line 45
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd1:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd2:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->close()V

    .line 48
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->show()V

    .line 49
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 66
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->unBind()V

    .line 77
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 78
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    return-void
.end method

.method public getPwdEditText1()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    return-object v0
.end method

.method public getPwdEditText2()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public setBgColor(Z)V
    .locals 0
    .param p1, "isBgChange"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->isBgChange:Z

    .line 309
    return-void
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButtonText(ILjava/lang/String;)V

    .line 274
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 275
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setPayMoneyMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payMoney:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setPayNameMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "itemname"    # Ljava/lang/String;

    .prologue
    .line 288
    packed-switch p1, :pswitch_data_0

    .line 297
    :goto_0
    return-void

    .line 291
    :pswitch_0
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName1:Ljava/lang/String;

    goto :goto_0

    .line 294
    :pswitch_1
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName2:Ljava/lang/String;

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPayTypeMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payType:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setPwdEditText1(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "pwdEditText1"    # Landroid/widget/EditText;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    .line 253
    return-void
.end method

.method public setPwdEditText2(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "pwdEditText2"    # Landroid/widget/EditText;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    .line 261
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 264
    check-cast p1, Ljava/lang/String;

    .end local p1    # "title":Ljava/lang/CharSequence;
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->create()V

    .line 71
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 72
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 93
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    .line 96
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 98
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 101
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 103
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 91
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
