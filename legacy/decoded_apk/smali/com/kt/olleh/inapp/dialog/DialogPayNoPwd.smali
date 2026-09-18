.class public Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
.super Landroid/app/Dialog;
.source "DialogPayNoPwd.java"


# static fields
.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private isBgChange:Z

.field private isPayInformation:Z

.field private lmtPrice:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private payMoney:Ljava/lang/String;

.field private payName1:Ljava/lang/String;

.field private payName2:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private purchaseEnd:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->config:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    .line 24
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payType:Ljava/lang/String;

    .line 33
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isBgChange:Z

    .line 36
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isPayInformation:Z

    .line 38
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 40
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->purchaseEnd:Z

    .line 42
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->lmtPrice:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    .line 56
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    if-lez v0, :cond_0

    .line 58
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 61
    :cond_0
    return-void
.end method

.method private checkLayout()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 119
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 134
    const-string v0, "/layout-port-hdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    .line 200
    :goto_0
    return-void

    .line 125
    :sswitch_0
    const-string v0, "/layout-port-mdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 131
    :sswitch_1
    const-string v0, "/layout-port-xhdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 139
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->purchaseEnd:Z

    if-eqz v0, :cond_1

    .line 140
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_1

    .line 155
    const-string v0, "/layout-port-hdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :sswitch_2
    const-string v0, "/layout-port-mdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 152
    :sswitch_3
    const-string v0, "/layout-port-xhdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 160
    :cond_1
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_2

    .line 175
    const-string v0, "/layout-land-hdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 166
    :sswitch_4
    const-string v0, "/layout-land-mdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 172
    :sswitch_5
    const-string v0, "/layout-land-xhdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 181
    :cond_2
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_3

    .line 196
    const-string v0, "/layout-port-hdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 187
    :sswitch_6
    const-string v0, "/layout-port-mdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 193
    :sswitch_7
    const-string v0, "/layout-port-xhdpi/dialog_pay_no_pwd.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0x140 -> :sswitch_1
    .end sparse-switch

    .line 140
    :sswitch_data_1
    .sparse-switch
        0xa0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch

    .line 160
    :sswitch_data_2
    .sparse-switch
        0xa0 -> :sswitch_4
        0x140 -> :sswitch_5
    .end sparse-switch

    .line 181
    :sswitch_data_3
    .sparse-switch
        0xa0 -> :sswitch_6
        0x140 -> :sswitch_7
    .end sparse-switch
.end method

.method private create()V
    .locals 24

    .prologue
    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->checkLayout()V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    sput v22, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->config:I

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 209
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    const v22, 0x3f333333    # 0.7f

    move/from16 v0, v22

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->addFlags(I)V

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->purchaseEnd:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 214
    sget v22, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    packed-switch v22, :pswitch_data_0

    .line 226
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "dialog_Title"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 227
    .local v20, "titleLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "dialogAlertTitleTextView"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 228
    .local v21, "titleTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 231
    :cond_1
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "dialog_MessageTextView"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 236
    .local v13, "messageTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "Button_Layout"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 243
    .local v3, "ButtonLayout":Landroid/widget/LinearLayout;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v4, v0, [Landroid/widget/Button;

    .line 246
    .local v4, "DialogButton":[Landroid/widget/Button;
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v2, v0, [Ljava/lang/String;

    .line 247
    .local v2, "ButtonID":[Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "Button_1"

    aput-object v23, v2, v22

    .line 248
    const/16 v22, 0x1

    const-string v23, "Button_2"

    aput-object v23, v2, v22

    .line 249
    const/16 v22, 0x2

    const-string v23, "Button_3"

    aput-object v23, v2, v22

    .line 251
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_9

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 258
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_a

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 267
    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_b

    .line 274
    .end local v2    # "ButtonID":[Ljava/lang/String;
    .end local v3    # "ButtonLayout":Landroid/widget/LinearLayout;
    .end local v4    # "DialogButton":[Landroid/widget/Button;
    .end local v8    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "dialog_PayNameTitle"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 275
    .local v6, "dialog_PayNameTitleTextView":Landroid/widget/TextView;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 280
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 281
    .local v18, "str":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 282
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .end local v18    # "str":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    .line 295
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    .line 296
    .restart local v18    # "str":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 297
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .end local v18    # "str":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "dialog_PayMoney"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 306
    .local v5, "dialog_PayMoneyTextView1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "dialog_PayType"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 316
    .local v7, "dialog_PayTypeTextView1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "payType"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 317
    .local v17, "payTypeTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "payDesc"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 323
    .local v14, "payDesc":Landroid/widget/TextView;
    sget-object v22, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    sget-object v23, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 325
    const-string v22, "\uacb0\uc81c\ubc29\uc2dd:\ud734\ub300\uc804\ud654"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const-string v22, "\ud734\ub300\uc804\ud654"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const-string v22, "* \ud734\ub300\uc804\ud654 \uacb0\uc81c\ub294 \ub2e4\uc74c \ub2ec \uc694\uae08 \uace0\uc9c0\uc11c\uc5d0 \ud569\uc0b0\ub418\uc5b4 \uccad\uad6c\ub429\ub2c8\ub2e4.(\uccad\uad6c\ud56d\ubaa9:olleh\ub9c8\ucf13)"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->purchaseEnd:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "layout_payType1"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 339
    .local v15, "payType1":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "layout_payType2"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 340
    .local v16, "payType2":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "text1"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 342
    .local v19, "text1":Landroid/widget/TextView;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    const/16 v22, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    const/16 v22, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    .end local v15    # "payType1":Landroid/widget/LinearLayout;
    .end local v16    # "payType2":Landroid/widget/LinearLayout;
    .end local v19    # "text1":Landroid/widget/TextView;
    :cond_8
    return-void

    .line 217
    .end local v5    # "dialog_PayMoneyTextView1":Landroid/widget/TextView;
    .end local v6    # "dialog_PayNameTitleTextView":Landroid/widget/TextView;
    .end local v7    # "dialog_PayTypeTextView1":Landroid/widget/TextView;
    .end local v13    # "messageTextView":Landroid/widget/TextView;
    .end local v14    # "payDesc":Landroid/widget/TextView;
    .end local v17    # "payTypeTextView":Landroid/widget/TextView;
    .end local v20    # "titleLayout":Landroid/widget/LinearLayout;
    .end local v21    # "titleTextView":Landroid/widget/TextView;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    const-string v23, "mainLayout"

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 218
    .local v12, "mainLayout":Landroid/widget/LinearLayout;
    const-string v9, "@drawable/inapp_popup_07"

    .line 219
    .local v9, "image":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/kt/olleh/inapp/util/UIParser;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 220
    .local v10, "is":Ljava/io/InputStream;
    invoke-static {v10, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 253
    .end local v9    # "image":Ljava/lang/String;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "mainLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "ButtonID":[Ljava/lang/String;
    .restart local v3    # "ButtonLayout":Landroid/widget/LinearLayout;
    .restart local v4    # "DialogButton":[Landroid/widget/Button;
    .restart local v8    # "i":I
    .restart local v13    # "messageTextView":Landroid/widget/TextView;
    .restart local v20    # "titleLayout":Landroid/widget/LinearLayout;
    .restart local v21    # "titleTextView":Landroid/widget/TextView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v22, v0

    aget-object v23, v2, v8

    invoke-virtual/range {v22 .. v23}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    aput-object v22, v4, v8

    .line 251
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 260
    :cond_a
    aget-object v22, v4, v8

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    aget-object v22, v4, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 269
    :cond_b
    aget-object v22, v4, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 312
    .end local v2    # "ButtonID":[Ljava/lang/String;
    .end local v3    # "ButtonLayout":Landroid/widget/LinearLayout;
    .end local v4    # "DialogButton":[Landroid/widget/Button;
    .end local v8    # "i":I
    .restart local v5    # "dialog_PayMoneyTextView1":Landroid/widget/TextView;
    .restart local v6    # "dialog_PayNameTitleTextView":Landroid/widget/TextView;
    :cond_c
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 331
    .restart local v7    # "dialog_PayTypeTextView1":Landroid/widget/TextView;
    .restart local v14    # "payDesc":Landroid/widget/TextView;
    .restart local v17    # "payTypeTextView":Landroid/widget/TextView;
    :cond_d
    const-string v22, "\uacb0\uc81c\ubc29\uc2dd:\uc18c\uc561\uacb0\uc81c"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const-string v22, "\uc18c\uc561\uacb0\uc81c"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const-string v22, "* \uc18c\uc561\uacb0\uc81c\ub294 100\uc6d0 \uc774\uc0c1 30\ub9cc\uc6d0 \uc774\ub0b4\uc5d0\uc11c \uac00\ub2a5\ud558\uba70, \uc18c\uc561\uacb0\uc81c \uae08\uc561\uc740 \ub2e4\uc74c\ub2ec \uc694\uae08 \uace0\uc9c0\uc11c\uc5d0 \ud569\uc0b0\ub418\uc5b4 \uccad\uad6c\ub429\ub2c8\ub2e4.\n* \uacb0\uc81c \ucde8\uc18c \uac00\ub2a5 \uae30\uac04\n - \uc18c\uc561\uacb0\uc81c : \uacb0\uc81c \uc2b9\uc778 \ub2f9\uc6d4\ub9cc \uac00\ub2a5"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
    .end packed-switch
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 383
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 378
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 114
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 0
    .param p1, "config"    # I

    .prologue
    .line 45
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->config:I

    .line 46
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 47
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->show()V

    .line 48
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->unBind()V

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->purchaseEnd:Z

    .line 82
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 83
    return-void
.end method

.method public getLmtPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->lmtPrice:Ljava/lang/String;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public purchaseEnd(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->purchaseEnd:Z

    .line 65
    return-void
.end method

.method public setBgColor(Z)V
    .locals 0
    .param p1, "isBgChange"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isBgChange:Z

    .line 407
    return-void
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButtonText(ILjava/lang/String;)V

    .line 372
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 373
    return-void
.end method

.method public setIsPayInformation(Z)V
    .locals 0
    .param p1, "isPayInformation"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isPayInformation:Z

    .line 411
    return-void
.end method

.method public setLmtPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "lmtPrice"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->lmtPrice:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setPayMoneyMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setPayNameMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "itemname"    # Ljava/lang/String;

    .prologue
    .line 386
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 389
    :pswitch_0
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    goto :goto_0

    .line 392
    :pswitch_1
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    goto :goto_0

    .line 386
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
    .line 402
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payType:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 362
    check-cast p1, Ljava/lang/String;

    .end local p1    # "title":Ljava/lang/CharSequence;
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->create()V

    .line 74
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 75
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 97
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    .line 100
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 105
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 107
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 95
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
