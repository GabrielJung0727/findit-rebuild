.class public Lcom/findit/battle/SetupActivity;
.super Landroid/app/Activity;
.source "SetupActivity.java"


# static fields
.field public static final KEY_AUTOLOGIN:Ljava/lang/String; = "autologin"

.field public static final KEY_FACEBOOKAUTOLOGIN:Ljava/lang/String; = "facebookautologin"

.field public static final KEY_SOUNDON:Ljava/lang/String; = "soundon"

.field private static final OFF:Ljava/lang/String; = "off"

.field private static final ON:Ljava/lang/String; = "on"


# instance fields
.field private mAutoLoginImageView:Landroid/widget/ImageView;

.field private mButtonClickSize:I

.field private mCommonDialog:Lcom/findit/battle/CommonDialog;

.field private mDbhelper:Lcom/findit/battle/DBAdapter;

.field private mSoundonImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/SetupActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/findit/battle/SetupActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/SetupActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/findit/battle/SetupActivity;->mSoundonImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/findit/battle/SetupActivity;)Lcom/findit/battle/CommonDialog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/findit/battle/SetupActivity;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/findit/battle/SetupActivity;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/findit/battle/SetupActivity;->saveState()V

    return-void
.end method

.method static synthetic access$4(Lcom/findit/battle/SetupActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/SetupActivity;->touchButtonAction(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private loadState(J)V
    .locals 8
    .param p1, "rowid"    # J

    .prologue
    const v5, 0x7f020180

    const v6, 0x7f02017f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 175
    iget-object v7, p0, Lcom/findit/battle/SetupActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v7, p1, p2}, Lcom/findit/battle/DBAdapter;->fetchSetup(J)Landroid/database/Cursor;

    move-result-object v1

    .line 177
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 178
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 179
    const-string v7, "mAutoLogin"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_2

    move v0, v3

    .line 180
    .local v0, "autologin":Z
    :goto_0
    const-string v7, "mSoundon"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v3, :cond_3

    move v2, v3

    .line 182
    .local v2, "soundon":Z
    :goto_1
    iget-object v4, p0, Lcom/findit/battle/SetupActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move v3, v5

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    iget-object v4, p0, Lcom/findit/battle/SetupActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const-string v3, "on"

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 185
    iget-object v3, p0, Lcom/findit/battle/SetupActivity;->mSoundonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 186
    iget-object v4, p0, Lcom/findit/battle/SetupActivity;->mSoundonImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    const-string v3, "on"

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 189
    .end local v0    # "autologin":Z
    .end local v2    # "soundon":Z
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    return-void

    :cond_2
    move v0, v4

    .line 179
    goto :goto_0

    .restart local v0    # "autologin":Z
    :cond_3
    move v2, v4

    .line 180
    goto :goto_1

    .restart local v2    # "soundon":Z
    :cond_4
    move v3, v6

    .line 182
    goto :goto_2

    .line 183
    :cond_5
    const-string v3, "off"

    goto :goto_3

    :cond_6
    move v5, v6

    .line 185
    goto :goto_4

    .line 186
    :cond_7
    const-string v3, "off"

    goto :goto_5
.end method

.method private saveState()V
    .locals 7

    .prologue
    .line 195
    const-string v2, ">> saveState()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/findit/battle/SetupActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "atag":Ljava/lang/String;
    iget-object v2, p0, Lcom/findit/battle/SetupActivity;->mSoundonImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "stag":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/findit/battle/SetupActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    const-wide/16 v3, 0x0

    const-string v5, "on"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "on"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/findit/battle/DBAdapter;->updateSetting(JZZ)Z

    .line 202
    :cond_0
    return-void
.end method

.method private setMargin(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 205
    const-string v2, ">> setMargin()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 207
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 208
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 209
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 210
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 211
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 213
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 216
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 217
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 218
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 219
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 221
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private touchButtonAction(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 131
    const-string v0, ">> touchButtonAction()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 132
    iget v6, p0, Lcom/findit/battle/SetupActivity;->mButtonClickSize:I

    .line 133
    .local v6, "size":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return v3

    .line 135
    :pswitch_1
    neg-int v2, v6

    neg-int v4, v6

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/SetupActivity;->setMargin(Landroid/view/View;IIII)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v4, v6

    move v5, v3

    .line 139
    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/SetupActivity;->setMargin(Landroid/view/View;IIII)V

    goto :goto_0

    .line 143
    :pswitch_3
    neg-int v2, v6

    neg-int v4, v6

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/SetupActivity;->setMargin(Landroid/view/View;IIII)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v2, ">> onCreate()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->requestWindowFeature(I)Z

    .line 43
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/findit/battle/SetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/findit/battle/FindItApplication;->getDisplayScreenHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 48
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->setVolumeControlStream(I)V

    .line 50
    new-instance v2, Lcom/findit/battle/CommonDialog;

    invoke-direct {v2, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/findit/battle/SetupActivity;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    .line 51
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/findit/battle/SetupActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    .line 52
    const v2, 0x7f0b007b

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/findit/battle/SetupActivity;->mSoundonImageView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {p0}, Lcom/findit/battle/SetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/findit/battle/SetupActivity;->mButtonClickSize:I

    .line 65
    const v2, 0x7f0b0061

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 66
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/findit/battle/SetupActivity$1;

    invoke-direct {v2, p0}, Lcom/findit/battle/SetupActivity$1;-><init>(Lcom/findit/battle/SetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v2, 0x7f0b007a

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "layout":Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 87
    .restart local v1    # "layout":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/findit/battle/SetupActivity$2;

    invoke-direct {v2, p0}, Lcom/findit/battle/SetupActivity$2;-><init>(Lcom/findit/battle/SetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v2, 0x7f0b007d

    invoke-virtual {p0, v2}, Lcom/findit/battle/SetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    .local v0, "button":Landroid/widget/Button;
    new-instance v2, Lcom/findit/battle/SetupActivity$3;

    invoke-direct {v2, p0}, Lcom/findit/battle/SetupActivity$3;-><init>(Lcom/findit/battle/SetupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v2, Lcom/findit/battle/SetupActivity$4;

    invoke-direct {v2, p0}, Lcom/findit/battle/SetupActivity$4;-><init>(Lcom/findit/battle/SetupActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    const-string v0, ">> onKeyUp()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/findit/battle/SetupActivity;->finish()V

    .line 234
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/SetupActivity;->overridePendingTransition(II)V

    .line 236
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    const-string v0, ">> onPause()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/findit/battle/SetupActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/findit/battle/SetupActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->close()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/SetupActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/SetupActivity;->mCommonDialog:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v0}, Lcom/findit/battle/CommonDialog;->cancelLoadingDlg()V

    .line 172
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 153
    new-instance v0, Lcom/findit/battle/DBAdapter;

    invoke-direct {v0, p0}, Lcom/findit/battle/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "dbhelper":Lcom/findit/battle/DBAdapter;
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->open()Lcom/findit/battle/DBAdapter;

    .line 155
    iput-object v0, p0, Lcom/findit/battle/SetupActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 157
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/findit/battle/SetupActivity;->loadState(J)V

    .line 158
    return-void
.end method
