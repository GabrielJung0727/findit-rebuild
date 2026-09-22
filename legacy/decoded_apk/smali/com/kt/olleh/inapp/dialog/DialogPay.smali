.class public Lcom/kt/olleh/inapp/dialog/DialogPay;
.super Landroid/app/Dialog;
.source "DialogPay.java"


# static fields
.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private isBgChange:Z

.field private isPayInformation:Z

.field private isPayMessage:Z

.field private isPayNameTitle:Z

.field private isPwdOn:Z

.field private lmtPrice:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private mXML:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private modifyTextView:Landroid/widget/TextView;

.field private payMoney:Ljava/lang/String;

.field private payName1:Ljava/lang/String;

.field private payName2:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private purchase:Lcom/kt/olleh/inapp/Purchase;

.field private purchaseEnd:Z

.field private pwdEditText:Landroid/widget/EditText;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/kt/olleh/inapp/Purchase;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonCount"    # I
    .param p3, "config"    # I
    .param p4, "purchase"    # Lcom/kt/olleh/inapp/Purchase;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    .line 28
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 33
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayNameTitle:Z

    .line 34
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payType:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayInformation:Z

    .line 40
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayMessage:Z

    .line 42
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isBgChange:Z

    .line 46
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 48
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPwdOn:Z

    .line 49
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    .line 52
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchaseEnd:Z

    .line 54
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->lmtPrice:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    .line 70
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    .line 71
    sput p3, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 72
    iput-object p4, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    .line 74
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    if-lez v0, :cond_0

    .line 76
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    .line 77
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 79
    :cond_0
    return-void
.end method

.method private checkLayout()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 136
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 151
    const-string v0, "/layout-port-hdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    .line 217
    :goto_0
    return-void

    .line 142
    :sswitch_0
    const-string v0, "/layout-port-mdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :sswitch_1
    const-string v0, "/layout-port-xhdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 156
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchaseEnd:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    if-eqz v0, :cond_2

    .line 157
    :cond_1
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_1

    .line 172
    const-string v0, "/layout-port-hdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 163
    :sswitch_2
    const-string v0, "/layout-port-mdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :sswitch_3
    const-string v0, "/layout-port-xhdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 177
    :cond_2
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_2

    .line 192
    const-string v0, "/layout-land-hdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 183
    :sswitch_4
    const-string v0, "/layout-land-mdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 189
    :sswitch_5
    const-string v0, "/layout-land-xhdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 198
    :cond_3
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_3

    .line 213
    const-string v0, "/layout-port-hdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 204
    :sswitch_6
    const-string v0, "/layout-port-mdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 210
    :sswitch_7
    const-string v0, "/layout-port-xhdpi/dialog_pay.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 136
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0x140 -> :sswitch_1
    .end sparse-switch

    .line 157
    :sswitch_data_1
    .sparse-switch
        0xa0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch

    .line 177
    :sswitch_data_2
    .sparse-switch
        0xa0 -> :sswitch_4
        0x140 -> :sswitch_5
    .end sparse-switch

    .line 198
    :sswitch_data_3
    .sparse-switch
        0xa0 -> :sswitch_6
        0x140 -> :sswitch_7
    .end sparse-switch
.end method

.method private create()V
    .locals 28

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->checkLayout()V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v26, v0

    sput v26, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getWindow()Landroid/view/Window;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 226
    .local v13, "lp":Landroid/view/WindowManager$LayoutParams;
    const v26, 0x3f333333    # 0.7f

    move/from16 v0, v26

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getWindow()Landroid/view/Window;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getWindow()Landroid/view/Window;

    move-result-object v26

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Landroid/view/Window;->addFlags(I)V

    .line 230
    sget-boolean v26, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    if-eqz v26, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "mainLayout"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 240
    .local v14, "mainLayout":Landroid/widget/LinearLayout;
    const-string v11, "@drawable/inapp_popup_03"

    .line 241
    .local v11, "image":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/kt/olleh/inapp/util/UIParser;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 242
    .local v12, "is":Ljava/io/InputStream;
    invoke-static {v12, v11}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    .end local v11    # "image":Ljava/lang/String;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchaseEnd:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "mainLayout"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 247
    .restart local v14    # "mainLayout":Landroid/widget/LinearLayout;
    const-string v11, "@drawable/inapp_popup_04"

    .line 248
    .restart local v11    # "image":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/kt/olleh/inapp/util/UIParser;->openFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 249
    .restart local v12    # "is":Ljava/io/InputStream;
    invoke-static {v12, v11}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    .end local v11    # "image":Ljava/lang/String;
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "mainLayout":Landroid/widget/LinearLayout;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_Title"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 262
    .local v24, "titleLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialogAlertTitleTextView"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 263
    .local v25, "titleTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 266
    :cond_2
    const/16 v26, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_MessageTextView"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 271
    .local v15, "messageTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_4

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :cond_4
    sget-boolean v26, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    if-eqz v26, :cond_5

    sget-object v26, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    if-eqz v26, :cond_5

    const-string v26, ""

    sget-object v27, Lcom/kt/olleh/inapp/Config/Config;->mPin:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 277
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_ModifyTextView"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const-string v27, "<u>\ubcf4\uc548\ubc88\ud638 \ud574\uc81c/\ubcc0\uacbd</u>"

    invoke-static/range {v27 .. v27}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "pwdLayout1"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 282
    .local v20, "pwdLayout":Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "pwdLayout2"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 284
    .local v21, "pwdLayout2":Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    new-instance v5, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v5}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 286
    .local v5, "PassWtm":Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_pwdEditText"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    const-string v26, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/kt/olleh/inapp/Purchase;->setModifyText()V

    .line 299
    .end local v5    # "PassWtm":Landroid/text/method/PasswordTransformationMethod;
    .end local v20    # "pwdLayout":Landroid/widget/LinearLayout;
    .end local v21    # "pwdLayout2":Landroid/widget/LinearLayout;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v26, v0

    if-lez v26, :cond_9

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "Button_Layout"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 302
    .local v3, "ButtonLayout":Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v4, v0, [Landroid/widget/Button;

    .line 305
    .local v4, "DialogButton":[Landroid/widget/Button;
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v2, v0, [Ljava/lang/String;

    .line 306
    .local v2, "ButtonID":[Ljava/lang/String;
    const/16 v26, 0x0

    const-string v27, "Button_1"

    aput-object v27, v2, v26

    .line 307
    const/16 v26, 0x1

    const-string v27, "Button_2"

    aput-object v27, v2, v26

    .line 308
    const/16 v26, 0x2

    const-string v27, "Button_3"

    aput-object v27, v2, v26

    .line 310
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v10, v0, :cond_d

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    .line 317
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v10, v0, :cond_e

    .line 324
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 326
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v10, v0, :cond_f

    .line 333
    .end local v2    # "ButtonID":[Ljava/lang/String;
    .end local v3    # "ButtonLayout":Landroid/widget/LinearLayout;
    .end local v4    # "DialogButton":[Landroid/widget/Button;
    .end local v10    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayMessage:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_PayNameTitle"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 336
    .local v8, "dialog_PayNameTitleTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayNameTitle:Z

    move/from16 v26, v0

    if-nez v26, :cond_10

    .line 338
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 348
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .line 349
    .local v22, "str":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 350
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    .end local v22    # "str":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 363
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    .line 364
    .restart local v22    # "str":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 365
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .end local v22    # "str":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_PayMoney"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 374
    .local v7, "dialog_PayMoneyTextView1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_11

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_PayType"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 384
    .local v9, "dialog_PayTypeTextView1":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "payType"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 385
    .local v19, "payTypeTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "payDesc"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 390
    .local v16, "payDesc":Landroid/widget/TextView;
    sget-object v26, Lcom/kt/olleh/inapp/Config/Config;->tCCodeKT:Ljava/lang/String;

    sget-object v27, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 392
    const-string v26, "\uacb0\uc81c\ubc29\uc2dd:\ud734\ub300\uc804\ud654"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const-string v26, "\ud734\ub300\uc804\ud654"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const-string v26, "* \ud734\ub300\uc804\ud654 \uacb0\uc81c\ub294 \ub2e4\uc74c \ub2ec \uc694\uae08 \uace0\uc9c0\uc11c\uc5d0 \ud569\uc0b0\ub418\uc5b4 \uccad\uad6c\ub429\ub2c8\ub2e4.(\uccad\uad6c\ud56d\ubaa9:olleh\ub9c8\ucf13)"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchaseEnd:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "layout_payType1"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 406
    .local v17, "payType1":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "layout_payType2"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 407
    .local v18, "payType2":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "text1"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 409
    .local v23, "text1":Landroid/widget/TextView;
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    const/16 v26, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    const/16 v26, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    const/16 v26, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    .end local v17    # "payType1":Landroid/widget/LinearLayout;
    .end local v18    # "payType2":Landroid/widget/LinearLayout;
    .end local v23    # "text1":Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_PayMessage"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 416
    .local v6, "dialog_PayInformation":Landroid/widget/LinearLayout;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    .end local v7    # "dialog_PayMoneyTextView1":Landroid/widget/TextView;
    .end local v8    # "dialog_PayNameTitleTextView":Landroid/widget/TextView;
    .end local v9    # "dialog_PayTypeTextView1":Landroid/widget/TextView;
    .end local v16    # "payDesc":Landroid/widget/TextView;
    .end local v19    # "payTypeTextView":Landroid/widget/TextView;
    :goto_6
    return-void

    .line 312
    .end local v6    # "dialog_PayInformation":Landroid/widget/LinearLayout;
    .restart local v2    # "ButtonID":[Ljava/lang/String;
    .restart local v3    # "ButtonLayout":Landroid/widget/LinearLayout;
    .restart local v4    # "DialogButton":[Landroid/widget/Button;
    .restart local v10    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    aget-object v27, v2, v10

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    aput-object v26, v4, v10

    .line 310
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 319
    :cond_e
    aget-object v26, v4, v10

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    aget-object v26, v4, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    move-object/from16 v27, v0

    aget-object v27, v27, v10

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 317
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 328
    :cond_f
    aget-object v26, v4, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    move-object/from16 v27, v0

    aget-object v27, v27, v10

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 342
    .end local v2    # "ButtonID":[Ljava/lang/String;
    .end local v3    # "ButtonLayout":Landroid/widget/LinearLayout;
    .end local v4    # "DialogButton":[Landroid/widget/Button;
    .end local v10    # "i":I
    .restart local v8    # "dialog_PayNameTitleTextView":Landroid/widget/TextView;
    :cond_10
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 380
    .restart local v7    # "dialog_PayMoneyTextView1":Landroid/widget/TextView;
    :cond_11
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 398
    .restart local v9    # "dialog_PayTypeTextView1":Landroid/widget/TextView;
    .restart local v16    # "payDesc":Landroid/widget/TextView;
    .restart local v19    # "payTypeTextView":Landroid/widget/TextView;
    :cond_12
    const-string v26, "\uacb0\uc81c\ubc29\uc2dd:\uc18c\uc561\uacb0\uc81c"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const-string v26, "\uc18c\uc561\uacb0\uc81c"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    const-string v26, "* \uc18c\uc561\uacb0\uc81c\ub294 100\uc6d0 \uc774\uc0c1 30\ub9cc\uc6d0 \uc774\ub0b4\uc5d0\uc11c \uac00\ub2a5\ud558\uba70, \uc18c\uc561\uacb0\uc81c \uae08\uc561\uc740 \ub2e4\uc74c\ub2ec \uc694\uae08 \uace0\uc9c0\uc11c\uc5d0 \ud569\uc0b0\ub418\uc5b4 \uccad\uad6c\ub429\ub2c8\ub2e4.\n* \uacb0\uc81c \ucde8\uc18c \uac00\ub2a5 \uae30\uac04\n - \uc18c\uc561\uacb0\uc81c : \uacb0\uc81c \uc2b9\uc778 \ub2f9\uc6d4\ub9cc \uac00\ub2a5"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 429
    .end local v7    # "dialog_PayMoneyTextView1":Landroid/widget/TextView;
    .end local v8    # "dialog_PayNameTitleTextView":Landroid/widget/TextView;
    .end local v9    # "dialog_PayTypeTextView1":Landroid/widget/TextView;
    .end local v16    # "payDesc":Landroid/widget/TextView;
    .end local v19    # "payTypeTextView":Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v26, v0

    const-string v27, "dialog_PayMessage"

    invoke-virtual/range {v26 .. v27}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 430
    .restart local v6    # "dialog_PayInformation":Landroid/widget/LinearLayout;
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 467
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 462
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 131
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 1
    .param p1, "config"    # I

    .prologue
    .line 57
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 58
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 62
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->show()V

    .line 63
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 87
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->unBind()V

    .line 98
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 100
    return-void
.end method

.method public getLmtPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->lmtPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getModifyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public purchaseEnd(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchaseEnd:Z

    .line 83
    return-void
.end method

.method public setBgColor(Z)V
    .locals 0
    .param p1, "isBgChange"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isBgChange:Z

    .line 503
    return-void
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "buttonText"    # Ljava/lang/String;
    .param p3, "buttonOCL"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 455
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButtonText(ILjava/lang/String;)V

    .line 456
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 457
    return-void
.end method

.method public setLmtPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "lmtPrice"    # Ljava/lang/String;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->lmtPrice:Ljava/lang/String;

    .line 528
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setPayInformation(Z)V
    .locals 0
    .param p1, "isPayInformation"    # Z

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayInformation:Z

    .line 495
    return-void
.end method

.method public setPayMessage(Z)V
    .locals 0
    .param p1, "isPayMessage"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayMessage:Z

    .line 499
    return-void
.end method

.method public setPayMoneyMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public setPayNameMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "itemname"    # Ljava/lang/String;

    .prologue
    .line 470
    packed-switch p1, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 473
    :pswitch_0
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    goto :goto_0

    .line 476
    :pswitch_1
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPayNameTitle(Z)V
    .locals 0
    .param p1, "isPayNameTitle"    # Z

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayNameTitle:Z

    .line 491
    return-void
.end method

.method public setPayTypeMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payType:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setPwdOn(Z)V
    .locals 0
    .param p1, "isPwdOn"    # Z

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPwdOn:Z

    .line 507
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 446
    check-cast p1, Ljava/lang/String;

    .end local p1    # "title":Ljava/lang/CharSequence;
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->create()V

    .line 92
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 93
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 114
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    .line 117
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 119
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 122
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 124
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 112
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
