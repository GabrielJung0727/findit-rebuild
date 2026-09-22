.class public Lcom/kt/olleh/inapp/dialog/DialogPwdRet;
.super Landroid/app/Dialog;
.source "DialogPwdRet.java"


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    .line 21
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 30
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mContext:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    .line 33
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lez v0, :cond_0

    .line 35
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    .line 36
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 38
    :cond_0
    return-void
.end method

.method private checkLayout()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_0

    .line 106
    const-string v0, "/layout-hdpi/dialog_cancel.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setContentView(Landroid/view/View;)V

    .line 150
    :goto_0
    return-void

    .line 97
    :pswitch_0
    const-string v0, "/layout-mdpi/dialog_cancel.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 111
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_1

    .line 126
    const-string v0, "/layout-hdpi/dialog_cancel.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 117
    :pswitch_1
    const-string v0, "/layout-mdpi/dialog_cancel.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :cond_1
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_2

    .line 146
    const-string v0, "/layout-hdpi/dialog_cancel.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 137
    :pswitch_2
    const-string v0, "/layout-mdpi/dialog_cancel.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0xa0
        :pswitch_1
    .end packed-switch

    .line 131
    :pswitch_data_2
    .packed-switch 0xa0
        :pswitch_2
    .end packed-switch
.end method

.method private create()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 154
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->checkLayout()V

    .line 156
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 157
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v8, 0x3f333333    # 0.7f

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 158
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 159
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 162
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_Title"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 163
    .local v6, "titleLayout":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialogAlertTitleTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 164
    .local v7, "titleTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    :cond_1
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_MessageTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 172
    .local v5, "messageTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_2

    .line 173
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_2
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lez v8, :cond_4

    .line 178
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "Button_Layout"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 179
    .local v1, "ButtonLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    new-array v2, v8, [Landroid/widget/Button;

    .line 182
    .local v2, "DialogButton":[Landroid/widget/Button;
    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    .line 183
    .local v0, "ButtonID":[Ljava/lang/String;
    const-string v8, "Button_1"

    aput-object v8, v0, v10

    .line 185
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v2

    if-lt v3, v8, :cond_5

    .line 190
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 192
    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lt v3, v8, :cond_6

    .line 199
    :cond_3
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v8, :cond_4

    .line 201
    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lt v3, v8, :cond_7

    .line 207
    .end local v0    # "ButtonID":[Ljava/lang/String;
    .end local v1    # "ButtonLayout":Landroid/widget/LinearLayout;
    .end local v2    # "DialogButton":[Landroid/widget/Button;
    .end local v3    # "i":I
    :cond_4
    return-void

    .line 187
    .restart local v0    # "ButtonID":[Ljava/lang/String;
    .restart local v1    # "ButtonLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "DialogButton":[Landroid/widget/Button;
    .restart local v3    # "i":I
    :cond_5
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v2, v3

    .line 185
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_6
    aget-object v8, v2, v3

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 192
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    :cond_7
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 231
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 226
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 86
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 42
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->unBind()V

    .line 53
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setButtonText(ILjava/lang/String;)V

    .line 220
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 221
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    check-cast p1, Ljava/lang/String;

    .end local p1    # "title":Ljava/lang/CharSequence;
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->create()V

    .line 47
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 48
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 69
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    .line 72
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 74
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 77
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 79
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 67
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
