.class public Lcom/kt/olleh/inapp/dialog/DialogLogin;
.super Landroid/app/Dialog;
.source "DialogLogin.java"


# static fields
.field public static config:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private radioBtn1:Landroid/widget/RadioButton;

.field private radioBtn2:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->config:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 24
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    .line 25
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;

    .line 33
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 35
    return-void
.end method

.method private checkLayout()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    .line 95
    const-string v0, "/layout-hdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    .line 137
    :goto_0
    return-void

    .line 83
    :sswitch_0
    const-string v0, "/layout-ldpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 86
    :sswitch_1
    const-string v0, "/layout-mdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 89
    :sswitch_2
    const-string v0, "/layout-hdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 92
    :sswitch_3
    const-string v0, "/layout-xhdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 99
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_1

    .line 114
    const-string v0, "/layout-hdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 102
    :sswitch_4
    const-string v0, "/layout-ldpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 105
    :sswitch_5
    const-string v0, "/layout-mdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 108
    :sswitch_6
    const-string v0, "/layout-hdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 111
    :sswitch_7
    const-string v0, "/layout-xhdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 118
    :cond_1
    sget v0, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    sparse-switch v0, :sswitch_data_2

    .line 133
    const-string v0, "/layout-hdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 121
    :sswitch_8
    const-string v0, "/layout-ldpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 124
    :sswitch_9
    const-string v0, "/layout-mdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 127
    :sswitch_a
    const-string v0, "/layout-hdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 130
    :sswitch_b
    const-string v0, "/layout-xhdpi/dialog_login.xml"

    invoke-direct {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch

    .line 99
    :sswitch_data_1
    .sparse-switch
        0x78 -> :sswitch_4
        0xa0 -> :sswitch_5
        0xf0 -> :sswitch_6
        0x140 -> :sswitch_7
    .end sparse-switch

    .line 118
    :sswitch_data_2
    .sparse-switch
        0x78 -> :sswitch_8
        0xa0 -> :sswitch_9
        0xf0 -> :sswitch_a
        0x140 -> :sswitch_b
    .end sparse-switch
.end method

.method private create()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 143
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->checkLayout()V

    .line 145
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    sput v6, Lcom/kt/olleh/inapp/dialog/DialogLogin;->config:I

    .line 147
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 148
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3f333333    # 0.7f

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 149
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    .line 153
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v7, "login_id"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 154
    .local v3, "idEdit":Landroid/widget/EditText;
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v7, "login_password"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 157
    .local v5, "passEdit":Landroid/widget/EditText;
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 187
    new-array v1, v8, [Landroid/widget/Button;

    .line 188
    .local v1, "DialogButton":[Landroid/widget/Button;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 189
    .local v0, "ButtonID":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "Button_1"

    aput-object v7, v0, v6

    .line 190
    const/4 v6, 0x1

    const-string v7, "Button_2"

    aput-object v7, v0, v6

    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 197
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v6, :cond_0

    .line 199
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v6, v6

    if-lt v2, v6, :cond_2

    .line 204
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v1, v2

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_2
    aget-object v6, v1, v2

    iget-object v7, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 75
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->unBind()V

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 51
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 52
    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v2, "login_id"

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 231
    .local v0, "idEdit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIdType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    const-string v0, ""

    .line 208
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v0, "01"

    .line 213
    :goto_0
    return-object v0

    .line 211
    :cond_0
    const-string v0, "02"

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v2, "login_password"

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 236
    .local v0, "pwEdit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRadioBtn1()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getRadioBtn2()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setButton(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "listener"    # Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 227
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->create()V

    .line 44
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 45
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 66
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 68
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 64
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
