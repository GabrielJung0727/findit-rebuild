.class public Lcom/findit/battle/JoinActivity;
.super Landroid/app/Activity;
.source "JoinActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/JoinActivity$ActionRunnable;,
        Lcom/findit/battle/JoinActivity$ScrollThread;
    }
.end annotation


# static fields
.field private static final AUTOLOGIN_OFF:Ljava/lang/String; = "off"

.field private static final AUTOLOGIN_ON:Ljava/lang/String; = "on"

.field public static final FACEBOOKID_PASSWORD:Ljava/lang/String; = "facebook"

.field private static final JSON_NAME_COUNT:Ljava/lang/String; = "count"

.field private static final JSON_NAME_IMAGES:Ljava/lang/String; = "images"

.field private static final JSON_NAME_RESULT:Ljava/lang/String; = "result"

.field private static final JSON_VALUE_RESULT_ALREADYID:Ljava/lang/String; = "910"

.field private static final JSON_VALUE_RESULT_OVERLAPID:Ljava/lang/String; = "901"

.field private static final JSON_VALUE_RESULT_PARAMETERERROR:Ljava/lang/String; = "999"

.field private static final JSON_VALUE_RESULT_PASS:Ljava/lang/String; = "000"

.field public static final KEY_DISPLAYHEIGHT:Ljava/lang/String; = "displayheight"

.field public static final KEY_DISPLAYWIDTH:Ljava/lang/String; = "displaywidth"

.field public static final KEY_USERID:Ljava/lang/String; = "userid"

.field private static final PARAMETER_CHARATER:Ljava/lang/String; = "userCharacter"

.field private static final PARAMETER_DEVICE:Ljava/lang/String; = "userDevice"

.field private static final PARAMETER_ID:Ljava/lang/String; = "userId"

.field private static final PARAMETER_NICKNAME:Ljava/lang/String; = "userNick"

.field private static final PARAMETER_PASSWORD:Ljava/lang/String; = "userPass"

.field private static final SERVER_DOMAIN:Ljava/lang/String; = "http://14.63.220.39/"

.field private static final SERVER_FILE_JOIN:Ljava/lang/String; = "app/member/join.json"


# instance fields
.field private mAutoLoginImageView:Landroid/widget/ImageView;

.field private mButtonClickSize:I

.field private mCharacterBgWidth:F

.field private mCharacterNum:I

.field private mCharacterOutlineImageViews:[Landroid/widget/ImageView;

.field private mCharacterTotalNum:I

.field private mCharacterWidth:I

.field private mCharactersScrollView:Landroid/widget/HorizontalScrollView;

.field public mCheckIdResultHandler:Landroid/os/Handler;

.field private mCommonDlg:Lcom/findit/battle/CommonDialog;

.field private mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

.field private mDbhelper:Lcom/findit/battle/DBAdapter;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mFacebookUserId:Ljava/lang/String;

.field private mIdentifyPasswordEditText:Landroid/widget/EditText;

.field public mJoinResultHandler:Landroid/os/Handler;

.field private mNicknameEditText:Landroid/widget/EditText;

.field private mPasswordEditText:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRun:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 459
    new-instance v0, Lcom/findit/battle/JoinActivity$1;

    invoke-direct {v0, p0}, Lcom/findit/battle/JoinActivity$1;-><init>(Lcom/findit/battle/JoinActivity;)V

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mJoinResultHandler:Landroid/os/Handler;

    .line 529
    new-instance v0, Lcom/findit/battle/JoinActivity$2;

    invoke-direct {v0, p0}, Lcom/findit/battle/JoinActivity$2;-><init>(Lcom/findit/battle/JoinActivity;)V

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mCheckIdResultHandler:Landroid/os/Handler;

    .line 695
    new-instance v0, Lcom/findit/battle/JoinActivity$3;

    invoke-direct {v0, p0}, Lcom/findit/battle/JoinActivity$3;-><init>(Lcom/findit/battle/JoinActivity;)V

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/CommonDialog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/JoinActivity;)Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    return-object v0
.end method

.method static synthetic access$10(Lcom/findit/battle/JoinActivity;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/findit/battle/JoinActivity;->mRun:Z

    return v0
.end method

.method static synthetic access$11(Lcom/findit/battle/JoinActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/findit/battle/JoinActivity;->mCharacterWidth:I

    return v0
.end method

.method static synthetic access$12(Lcom/findit/battle/JoinActivity;I)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/findit/battle/JoinActivity;->setCharacterLoction(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mNicknameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mEmailEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$15(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/findit/battle/JoinActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mIdentifyPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/findit/battle/JoinActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/findit/battle/JoinActivity;->join(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/findit/battle/JoinActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/findit/battle/JoinActivity;->mButtonClickSize:I

    return v0
.end method

.method static synthetic access$19(Lcom/findit/battle/JoinActivity;Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 437
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/JoinActivity;->setMargin(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic access$2(Lcom/findit/battle/JoinActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mFacebookUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/findit/battle/JoinActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/findit/battle/JoinActivity;)Lcom/findit/battle/DBAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/findit/battle/JoinActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/findit/battle/JoinActivity;->mCharacterNum:I

    return v0
.end method

.method static synthetic access$6(Lcom/findit/battle/JoinActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/JoinActivity;->saveCharacter(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$7(Lcom/findit/battle/JoinActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    return v0
.end method

.method static synthetic access$8(Lcom/findit/battle/JoinActivity;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mCharacterOutlineImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/findit/battle/JoinActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mCharactersScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "charater"    # I
    .param p4, "nickname"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v1, ">> join()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 410
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/join.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 413
    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v1, "userPass"

    invoke-virtual {v0, v1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v1, "userCharacter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v1, "userDevice"

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v1, "userNick"

    invoke-virtual {v0, v1, p4}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", charater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nickname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/findit/battle/JoinActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 420
    const-string v1, "utf-8"

    const-string v2, "GET"

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/findit/battle/JoinActivity;->mJoinResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 422
    :cond_0
    return-void
.end method

.method private saveCharacter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    .line 383
    const-string v2, ">> saveCharacter()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x1

    aput p2, v0, v2

    .line 385
    .local v0, "intvalues":[I
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 387
    .local v1, "strvalues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/findit/battle/JoinActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/findit/battle/DBAdapter;->updateCharacters(J[I[Ljava/lang/String;)Z

    .line 389
    return-void
.end method

.method private setCharacterHorizontalListView([I[Ljava/lang/String;III)V
    .locals 17
    .param p1, "id"    # [I
    .param p2, "path"    # [Ljava/lang/String;
    .param p3, "pathtotalnum"    # I
    .param p4, "displaywidth"    # I
    .param p5, "displayheight"    # I

    .prologue
    .line 265
    const-string v15, ">> setCharacterHorizontalListView()"

    invoke-static {v15}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 266
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v11, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v15, 0x11

    iput v15, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 269
    move/from16 v0, p4

    int-to-float v15, v0

    const/high16 v16, 0x44a00000    # 1280.0f

    div-float v14, v15, v16

    .line 270
    .local v14, "widthrate":F
    move/from16 v0, p5

    int-to-float v15, v0

    const/high16 v16, 0x44480000    # 800.0f

    div-float v4, v15, v16

    .line 272
    .local v4, "heightrate":F
    const/high16 v15, 0x43480000    # 200.0f

    mul-float/2addr v15, v14

    float-to-int v13, v15

    .line 273
    .local v13, "width":I
    const/high16 v15, 0x439b0000    # 310.0f

    mul-float/2addr v15, v4

    float-to-int v3, v15

    .line 275
    .local v3, "height":I
    const v15, 0x7f0b0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 276
    .local v9, "layout":Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v8, "imgparams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iput v13, v0, Lcom/findit/battle/JoinActivity;->mCharacterWidth:I

    .line 279
    const/high16 v15, 0x44340000    # 720.0f

    mul-float/2addr v15, v14

    float-to-int v15, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterBgWidth:F

    .line 281
    move-object/from16 v0, p1

    array-length v15, v0

    add-int v15, v15, p3

    new-array v15, v15, [Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterOutlineImageViews:[Landroid/widget/ImageView;

    .line 282
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    .line 285
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v15, v13, 0x2

    invoke-direct {v2, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 286
    .local v2, "emptyparams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    move-object/from16 v0, p1

    array-length v10, v0

    .line 290
    .local v10, "length":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v10, :cond_0

    .line 324
    move v1, v10

    .line 325
    .local v1, "add":I
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p3

    if-lt v6, v0, :cond_1

    .line 359
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v15, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    const v15, 0x7f0b005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/HorizontalScrollView;

    .line 365
    .local v5, "horizontalscrollview":Landroid/widget/HorizontalScrollView;
    new-instance v15, Lcom/findit/battle/JoinActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/findit/battle/JoinActivity$9;-><init>(Lcom/findit/battle/JoinActivity;)V

    invoke-virtual {v5, v15}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/findit/battle/JoinActivity;->mCharactersScrollView:Landroid/widget/HorizontalScrollView;

    .line 379
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/findit/battle/JoinActivity;->setCharacterLoction(I)V

    .line 380
    return-void

    .line 291
    .end local v1    # "add":I
    .end local v5    # "horizontalscrollview":Landroid/widget/HorizontalScrollView;
    :cond_0
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 294
    .local v12, "sublayout":Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 295
    .local v7, "imageview":Landroid/widget/ImageView;
    const v15, 0x7f020172

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    invoke-virtual {v12, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterOutlineImageViews:[Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    move/from16 v16, v0

    aput-object v7, v15, v16

    .line 302
    new-instance v7, Landroid/widget/ImageView;

    .end local v7    # "imageview":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 303
    .restart local v7    # "imageview":Landroid/widget/ImageView;
    aget v15, p1, v6

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    invoke-virtual {v12, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 309
    new-instance v15, Lcom/findit/battle/JoinActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/findit/battle/JoinActivity$7;-><init>(Lcom/findit/battle/JoinActivity;)V

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {v9, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    .line 290
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 326
    .end local v7    # "imageview":Landroid/widget/ImageView;
    .end local v12    # "sublayout":Landroid/widget/RelativeLayout;
    .restart local v1    # "add":I
    :cond_1
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 329
    .restart local v12    # "sublayout":Landroid/widget/RelativeLayout;
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 330
    .restart local v7    # "imageview":Landroid/widget/ImageView;
    const v15, 0x7f020172

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    invoke-virtual {v12, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterOutlineImageViews:[Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    move/from16 v16, v0

    aput-object v7, v15, v16

    .line 337
    new-instance v7, Landroid/widget/ImageView;

    .end local v7    # "imageview":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 338
    .restart local v7    # "imageview":Landroid/widget/ImageView;
    aget-object v15, p2, v6

    invoke-static {v15}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {v12, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    add-int v16, v6, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 344
    new-instance v15, Lcom/findit/battle/JoinActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/findit/battle/JoinActivity$8;-><init>(Lcom/findit/battle/JoinActivity;)V

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-virtual {v9, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    move-object/from16 v0, p0

    iget v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/findit/battle/JoinActivity;->mCharacterTotalNum:I

    .line 325
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method private setCharacterLoction(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 392
    const-string v1, ">> setCharacterLoction()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 393
    iget v1, p0, Lcom/findit/battle/JoinActivity;->mCharacterWidth:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/findit/battle/JoinActivity;->mCharacterBgWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/findit/battle/JoinActivity;->mCharacterWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 394
    .local v0, "x":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCharacterLoction x: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/findit/battle/JoinActivity;->mCharacterOutlineImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    new-instance v2, Lcom/findit/battle/JoinActivity$ActionRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/findit/battle/JoinActivity$ActionRunnable;-><init>(Lcom/findit/battle/JoinActivity;II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 401
    iget-object v1, p0, Lcom/findit/battle/JoinActivity;->mCharactersScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/findit/battle/JoinActivity$ActionRunnable;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v0}, Lcom/findit/battle/JoinActivity$ActionRunnable;-><init>(Lcom/findit/battle/JoinActivity;II)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 403
    iput p1, p0, Lcom/findit/battle/JoinActivity;->mCharacterNum:I

    .line 404
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
    .line 438
    const-string v2, ">> setMargin()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 440
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 441
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 442
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 443
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 444
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 446
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 449
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 450
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 451
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 452
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 454
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    const/4 v11, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, ">> onCreate()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->requestWindowFeature(I)Z

    .line 86
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->setContentView(I)V

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->setVolumeControlStream(I)V

    .line 90
    new-instance v0, Lcom/findit/battle/CommonDialog;

    invoke-direct {v0, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 91
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mEmailEditText:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 93
    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mIdentifyPasswordEditText:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mNicknameEditText:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p0}, Lcom/findit/battle/JoinActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/findit/battle/JoinActivity;->mButtonClickSize:I

    .line 120
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 121
    .local v6, "button":Landroid/widget/Button;
    new-instance v0, Lcom/findit/battle/JoinActivity$4;

    invoke-direct {v0, p0}, Lcom/findit/battle/JoinActivity$4;-><init>(Lcom/findit/battle/JoinActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v0, Lcom/findit/battle/JoinActivity$5;

    invoke-direct {v0, p0}, Lcom/findit/battle/JoinActivity$5;-><init>(Lcom/findit/battle/JoinActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mFacebookUserId:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/findit/battle/JoinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 189
    .local v7, "extra":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    .line 190
    const-string v0, "userid"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "userid":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 192
    iput-object v10, p0, Lcom/findit/battle/JoinActivity;->mFacebookUserId:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mIdentifyPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 204
    :cond_0
    sget-object v0, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    aget-object v0, v0, v11

    iget-object v1, v0, Lcom/findit/battle/Objects$CharacterData;->mJoinImgIds:[I

    .line 205
    .local v1, "id":[I
    sget-object v0, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    aget-object v0, v0, v4

    iget-object v2, v0, Lcom/findit/battle/Objects$CharacterData;->mJoinImgPaths:[Ljava/lang/String;

    .line 206
    .local v2, "path":[Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 207
    sget-object v0, Lcom/findit/battle/Objects;->mCharacterDatas:[Lcom/findit/battle/Objects$CharacterData;

    aget-object v0, v0, v4

    iget v3, v0, Lcom/findit/battle/Objects$CharacterData;->mTotalnum:I

    const-string v0, "displaywidth"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "displayheight"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/findit/battle/JoinActivity;->setCharacterHorizontalListView([I[Ljava/lang/String;III)V

    .line 209
    .end local v1    # "id":[I
    .end local v2    # "path":[Ljava/lang/String;
    .end local v10    # "userid":Ljava/lang/String;
    :cond_1
    iput v11, p0, Lcom/findit/battle/JoinActivity;->mCharacterNum:I

    .line 211
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 212
    .local v8, "imageview":Landroid/widget/ImageView;
    const v0, 0x7f040006

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/findit/battle/JoinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 216
    .local v9, "layout":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/findit/battle/JoinActivity$6;

    invoke-direct {v0, p0}, Lcom/findit/battle/JoinActivity$6;-><init>(Lcom/findit/battle/JoinActivity;)V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    const-string v3, "on"

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 235
    new-instance v0, Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {v0, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 236
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 639
    const-string v0, ">> onKeyUp()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/findit/battle/JoinActivity;->finish()V

    .line 655
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/JoinActivity;->overridePendingTransition(II)V

    .line 657
    const/4 v0, 0x1

    .line 692
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
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 253
    const-string v0, ">> onPause()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/findit/battle/JoinActivity;->mRun:Z

    .line 258
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/findit/battle/JoinActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->close()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 262
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 241
    const-string v1, ">> onResume()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/findit/battle/JoinActivity;->mRun:Z

    .line 245
    new-instance v0, Lcom/findit/battle/DBAdapter;

    invoke-direct {v0, p0}, Lcom/findit/battle/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 246
    .local v0, "dbhelper":Lcom/findit/battle/DBAdapter;
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->open()Lcom/findit/battle/DBAdapter;

    .line 247
    iput-object v0, p0, Lcom/findit/battle/JoinActivity;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 248
    return-void
.end method
