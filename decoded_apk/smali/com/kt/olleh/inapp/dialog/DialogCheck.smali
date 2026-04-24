.class public Lcom/kt/olleh/inapp/dialog/DialogCheck;
.super Landroid/app/Dialog;
.source "DialogCheck.java"


# static fields
.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private message2:Ljava/lang/String;

.field private message3:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    .line 25
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message2:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 43
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    .line 46
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lez v0, :cond_0

    .line 48
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 51
    :cond_0
    return-void
.end method

.method private checkLayout()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 104
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_0

    .line 119
    const-string v0, "/layout-port-hdpi/dialog_check.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    .line 163
    :goto_0
    return-void

    .line 110
    :pswitch_0
    const-string v0, "/layout-port-mdpi/dialog_check.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 124
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_1

    .line 139
    const-string v0, "/layout-land-hdpi/dialog_check.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 130
    :pswitch_1
    const-string v0, "/layout-land-mdpi/dialog_check.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :cond_1
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v0, :pswitch_data_2

    .line 159
    const-string v0, "/layout-port-hdpi/dialog_check.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :pswitch_2
    const-string v0, "/layout-port-mdpi/dialog_check.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
    .end packed-switch

    .line 124
    :pswitch_data_1
    .packed-switch 0xa0
        :pswitch_1
    .end packed-switch

    .line 144
    :pswitch_data_2
    .packed-switch 0xa0
        :pswitch_2
    .end packed-switch
.end method

.method private create()V
    .locals 13

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->checkLayout()V

    .line 169
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    sput v11, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    .line 171
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 172
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v11, 0x3f333333    # 0.7f

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 173
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 174
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 177
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_Title"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 178
    .local v9, "titleLayout":Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialogCheckTitleTextView"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 179
    .local v10, "titleTextView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 182
    :cond_0
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    :cond_1
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_MessageTextView"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 188
    .local v5, "messageTextView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    const-string v12, ""

    if-eq v11, v12, :cond_2

    .line 189
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_2
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_MessageTextView2"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 193
    .local v6, "messageTextView2":Landroid/widget/TextView;
    sget v11, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 195
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message2:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_MessageTextView3"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 202
    .local v7, "messageTextView3":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    const-string v12, ""

    if-eq v11, v12, :cond_3

    .line 203
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_3
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lez v11, :cond_5

    .line 208
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "Button_Layout"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 209
    .local v1, "ButtonLayout":Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    new-array v2, v11, [Landroid/widget/Button;

    .line 212
    .local v2, "DialogButton":[Landroid/widget/Button;
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    .line 213
    .local v0, "ButtonID":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "Button_1"

    aput-object v12, v0, v11

    .line 214
    const/4 v11, 0x1

    const-string v12, "Button_2"

    aput-object v12, v0, v11

    .line 215
    const/4 v11, 0x2

    const-string v12, "Button_3"

    aput-object v12, v0, v11

    .line 217
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v2

    if-lt v3, v11, :cond_7

    .line 222
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 224
    const/4 v3, 0x0

    :goto_2
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lt v3, v11, :cond_8

    .line 231
    :cond_4
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v11, :cond_5

    .line 233
    const/4 v3, 0x0

    :goto_3
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lt v3, v11, :cond_9

    .line 239
    .end local v0    # "ButtonID":[Ljava/lang/String;
    .end local v1    # "ButtonLayout":Landroid/widget/LinearLayout;
    .end local v2    # "DialogButton":[Landroid/widget/Button;
    .end local v3    # "i":I
    :cond_5
    return-void

    .line 197
    .end local v7    # "messageTextView3":Landroid/widget/TextView;
    :cond_6
    const-string v8, "olleh \ub9c8\ucf13\uc5d0\uc11c\ub294 \uc548\uc804\ud55c \uc720\ub8cc \uc544\uc774\ud15c \uacb0\uc81c\ub97c \uc704\ud574\n\ubcf4\uc548\ubc88\ud638 \uc124\uc815\uc744 \uad8c\uc7a5\ud569\ub2c8\ub2e4."

    .line 198
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    .end local v8    # "str":Ljava/lang/String;
    .restart local v0    # "ButtonID":[Ljava/lang/String;
    .restart local v1    # "ButtonLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "DialogButton":[Landroid/widget/Button;
    .restart local v3    # "i":I
    .restart local v7    # "messageTextView3":Landroid/widget/TextView;
    :cond_7
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    aput-object v11, v2, v3

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    :cond_8
    aget-object v11, v2, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    aget-object v11, v2, v3

    iget-object v12, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 235
    :cond_9
    aget-object v11, v2, v3

    iget-object v12, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 271
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 266
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 99
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 0
    .param p1, "config"    # I

    .prologue
    .line 35
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    .line 36
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->close()V

    .line 37
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->show()V

    .line 38
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->unBind()V

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 67
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButtonText(ILjava/lang/String;)V

    .line 260
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 261
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setMessage2(Ljava/lang/String;)V
    .locals 0
    .param p1, "message2"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message2:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setMessage3(Ljava/lang/String;)V
    .locals 0
    .param p1, "message3"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    check-cast p1, Ljava/lang/String;

    .end local p1    # "title":Ljava/lang/CharSequence;
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->create()V

    .line 60
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 61
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 82
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    .line 85
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 87
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 90
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 92
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 80
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
