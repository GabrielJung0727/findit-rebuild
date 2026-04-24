.class public Lcom/findit/battle/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/findit/battle/GameActivity$ActionRunnable;
    }
.end annotation


# static fields
.field public static final ANSWER_PASS:Ljava/lang/String; = "000"

.field private static final AUTOLOGIN_OFF:Ljava/lang/String; = "off"

.field private static final AUTOLOGIN_ON:Ljava/lang/String; = "on"

.field public static final CODE_CREATEBATTLEROOM:Ljava/lang/String; = "101"

.field public static final CODE_ENTERBATTLEROOM:Ljava/lang/String; = "103"

.field public static final CODE_EXITBATTLEROOM:Ljava/lang/String; = "102"

.field public static final CODE_GAME:Ljava/lang/String; = "106"

.field public static final CODE_INVITE:Ljava/lang/String; = "107"

.field public static final CODE_READY:Ljava/lang/String; = "104"

.field public static final CODE_USERLIST:Ljava/lang/String; = "100"

.field public static final CONNECTSOCKET_CLOSEWAITINGROOM:I = 0x1

.field public static final CONNECTSOCKET_SHOWWAITINGROOM:I = 0x0

.field public static final FORDER_IMAGE:Ljava/lang/String; = "/image/"

.field public static final FORDER_SOUND:Ljava/lang/String; = "/sound/"

.field private static final JSON_NAME_CHARACTER:Ljava/lang/String; = "userCharacter"

.field private static final JSON_NAME_COIN:Ljava/lang/String; = "coin"

.field private static final JSON_NAME_COUNT:Ljava/lang/String; = "count"

.field private static final JSON_NAME_IMAGES:Ljava/lang/String; = "images"

.field public static final JSON_NAME_IMAGES_ADID:Ljava/lang/String; = "adId"

.field public static final JSON_NAME_IMAGES_ADIMAGE:Ljava/lang/String; = "adImage"

.field public static final JSON_NAME_IMAGES_ADNAME:Ljava/lang/String; = "adName"

.field public static final JSON_NAME_IMAGES_EXPIREDATE:Ljava/lang/String; = "expireDate"

.field public static final JSON_NAME_IMAGES_HEIGHT:Ljava/lang/String; = "ySize"

.field public static final JSON_NAME_IMAGES_IMG:Ljava/lang/String; = "img"

.field public static final JSON_NAME_IMAGES_IMGCUT:Ljava/lang/String; = "imageCut"

.field public static final JSON_NAME_IMAGES_IMGID:Ljava/lang/String; = "imgId"

.field public static final JSON_NAME_IMAGES_LIST:Ljava/lang/String; = "list"

.field public static final JSON_NAME_IMAGES_REGDATE:Ljava/lang/String; = "regDate"

.field public static final JSON_NAME_IMAGES_TYPE:Ljava/lang/String; = "imgType"

.field public static final JSON_NAME_IMAGES_URLDETAIL:Ljava/lang/String; = "urlDetail"

.field public static final JSON_NAME_IMAGES_URLDOWNLOAD:Ljava/lang/String; = "urlDownload"

.field public static final JSON_NAME_IMAGES_URLVIDEO:Ljava/lang/String; = "urlVideo"

.field public static final JSON_NAME_IMAGES_VIEW:Ljava/lang/String; = "view"

.field public static final JSON_NAME_IMAGES_VIEWCOUNT:Ljava/lang/String; = "viewCount"

.field public static final JSON_NAME_IMAGES_WIDTH:Ljava/lang/String; = "xSize"

.field public static final JSON_NAME_IMAGES_X:Ljava/lang/String; = "x"

.field public static final JSON_NAME_IMAGES_Y:Ljava/lang/String; = "y"

.field private static final JSON_NAME_ITEM:Ljava/lang/String; = "item"

.field private static final JSON_NAME_ITEMNO:Ljava/lang/String; = "itemNo"

.field private static final JSON_NAME_ITEMSEQ:Ljava/lang/String; = "itemSeq"

.field private static final JSON_NAME_ITEMTYPE:Ljava/lang/String; = "itemType"

.field private static final JSON_NAME_LEVEL:Ljava/lang/String; = "level"

.field private static final JSON_NAME_POINT:Ljava/lang/String; = "point"

.field private static final JSON_NAME_QUANTITY:Ljava/lang/String; = "quantity"

.field private static final JSON_NAME_RESULT:Ljava/lang/String; = "result"

.field private static final JSON_NAME_SCORE:Ljava/lang/String; = "score"

.field private static final JSON_NAME_SKILL:Ljava/lang/String; = "skill"

.field private static final JSON_NAME_SKILLID:Ljava/lang/String; = "skillId"

.field private static final JSON_NAME_USER:Ljava/lang/String; = "user"

.field private static final JSON_NAME_USERID:Ljava/lang/String; = "userId"

.field private static final JSON_NAME_USERNICK:Ljava/lang/String; = "userNick"

.field public static final JSON_VALUE_IMAGES_NULL:Ljava/lang/String; = "null"

.field private static final JSON_VALUE_RESULT_ALREADYEXIT:Ljava/lang/String; = "900"

.field private static final JSON_VALUE_RESULT_ALREADYGAME:Ljava/lang/String; = "911"

.field private static final JSON_VALUE_RESULT_NOID:Ljava/lang/String; = "999"

.field private static final JSON_VALUE_RESULT_NOPASSWORD:Ljava/lang/String; = "901"

.field private static final JSON_VALUE_RESULT_PASS:Ljava/lang/String; = "000"

.field public static final MSG_DEVIDER:Ljava/lang/String; = "|"

.field public static final MSG_SUBDEVIDER:Ljava/lang/String; = ","

.field private static final NETTEXTSIZE_SIZE:I = 0x4

.field private static final PARAMETER_ADID:Ljava/lang/String; = "adId"

.field public static final PARAMETER_COIN:Ljava/lang/String; = "coin"

.field private static final PARAMETER_DEVICE:Ljava/lang/String; = "userDevice"

.field private static final PARAMETER_ID:Ljava/lang/String; = "userId"

.field private static final PARAMETER_IMAGEID:Ljava/lang/String; = "imgId"

.field private static final PARAMETER_ITEMNO:Ljava/lang/String; = "itemNo"

.field public static final PARAMETER_LEVEL:Ljava/lang/String; = "level"

.field private static final PARAMETER_PASSWORD:Ljava/lang/String; = "userPass"

.field public static final PARAMETER_POINT:Ljava/lang/String; = "point"

.field private static final PARAMETER_QUANTITY:Ljava/lang/String; = "quantity"

.field public static final PARAMETER_SCORE:Ljava/lang/String; = "score"

.field public static final REQUEST_CHARACTER:I = 0x0

.field public static final REQUEST_NOTICE:I = 0x2

.field public static final REQUEST_PICKFRIENDS:I = 0x1

.field public static final REQUEST_RANK:I = 0x3

.field public static final RESTORE_KEY:Ljava/lang/String; = "restore"

.field public static final SERVER_DOMAIN:Ljava/lang/String; = "http://14.63.220.39/"

.field public static final SERVER_FILE_ADDUP:Ljava/lang/String; = "app/member/mutiAddUp.json"

.field private static final SERVER_FILE_HITVIEWCOUNT:Ljava/lang/String; = "app/member/hitViewCount.json"

.field private static final SERVER_FILE_IMAGELIST:Ljava/lang/String; = "app/member/newImageList.json"

.field private static final SERVER_FILE_LOGIN:Ljava/lang/String; = "app/member/login.json"

.field private static final SERVER_FILE_NEWADIMAGELIST:Ljava/lang/String; = "app/member/newAdImageList.json"

.field private static final SERVER_FILE_SPENDITEM:Ljava/lang/String; = "app/member/spendMyItem.json"

.field public static final SERVER_IP:Ljava/lang/String; = "14.63.220.39"

.field public static final SERVER_PORT:I = 0x5673


# instance fields
.field public mAdViewCountResultHandler:Landroid/os/Handler;

.field public mAddUpResultHandler:Landroid/os/Handler;

.field private mAutoLoginImageView:Landroid/widget/ImageView;

.field private mButtonClickSize:I

.field public mCommonDlg:Lcom/findit/battle/CommonDialog;

.field public mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

.field public mConnectSocketHandler:Landroid/os/Handler;

.field public mDownloadDlg:Landroid/app/Dialog;

.field public mDownloadFileDlg:Landroid/app/Dialog;

.field private mDownloadFileProgressBar:Landroid/widget/ProgressBar;

.field private mDownloadFileTextView:Landroid/widget/TextView;

.field public mDownloadImageResultHandler:Landroid/os/Handler;

.field private mDownloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFramentBaseArea:Landroid/view/View;

.field private mGameView:Lcom/findit/battle/GameView;

.field public mGuestDlg:Landroid/app/Dialog;

.field public mGuestLoginDlg:Landroid/app/Dialog;

.field public mImageListResultHandler:Landroid/os/Handler;

.field private mImgDownloadData:Ljava/lang/String;

.field public mInviteConsentDlg:Landroid/app/Dialog;

.field private mInviteConsentMsg:Ljava/lang/String;

.field private mInviteConsentMsgTextView:Landroid/widget/TextView;

.field public mInviteDlg:Landroid/app/Dialog;

.field private mInviteEditText:Landroid/widget/EditText;

.field public mLoginDlg:Landroid/app/Dialog;

.field public mLoginResultHandler:Landroid/os/Handler;

.field private mNetText:Ljava/lang/String;

.field private mNetTextSize:I

.field public mReceiveSocketMsgHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field public mSave:Z

.field public mSpendItemResultHandler:Landroid/os/Handler;

.field public mUserListDlg:Landroid/app/Dialog;

.field public mUserListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 1290
    new-instance v0, Lcom/findit/battle/GameActivity$1;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$1;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mLoginResultHandler:Landroid/os/Handler;

    .line 1498
    new-instance v0, Lcom/findit/battle/GameActivity$2;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$2;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mDownloadImageResultHandler:Landroid/os/Handler;

    .line 1551
    new-instance v0, Lcom/findit/battle/GameActivity$3;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$3;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mAddUpResultHandler:Landroid/os/Handler;

    .line 1603
    new-instance v0, Lcom/findit/battle/GameActivity$4;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$4;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mSpendItemResultHandler:Landroid/os/Handler;

    .line 1641
    new-instance v0, Lcom/findit/battle/GameActivity$5;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$5;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mImageListResultHandler:Landroid/os/Handler;

    .line 1721
    new-instance v0, Lcom/findit/battle/GameActivity$6;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$6;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mAdViewCountResultHandler:Landroid/os/Handler;

    .line 1760
    new-instance v0, Lcom/findit/battle/GameActivity$7;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$7;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectSocketHandler:Landroid/os/Handler;

    .line 1815
    new-instance v0, Lcom/findit/battle/GameActivity$8;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$8;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mReceiveSocketMsgHandler:Landroid/os/Handler;

    .line 2236
    new-instance v0, Lcom/findit/battle/GameActivity$9;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$9;-><init>(Lcom/findit/battle/GameActivity;)V

    iput-object v0, p0, Lcom/findit/battle/GameActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/findit/battle/GameActivity;)Lcom/findit/battle/GameView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/findit/battle/GameActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/findit/battle/GameActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/findit/battle/GameActivity;->init(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$11(Lcom/findit/battle/GameActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/findit/battle/GameActivity;->finishFromDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$12(Lcom/findit/battle/GameActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mInviteEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/findit/battle/GameActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mInviteConsentMsgTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/findit/battle/GameActivity;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/findit/battle/GameActivity;->mButtonClickSize:I

    return v0
.end method

.method static synthetic access$15(Lcom/findit/battle/GameActivity;Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1185
    invoke-direct/range {p0 .. p5}, Lcom/findit/battle/GameActivity;->setMargin(Landroid/view/View;IIII)V

    return-void
.end method

.method static synthetic access$2(Lcom/findit/battle/GameActivity;Lcom/findit/battle/Items;Lorg/json/JSONArray;)Lcom/findit/battle/Items;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1249
    invoke-direct {p0, p1, p2}, Lcom/findit/battle/GameActivity;->setItemsData(Lcom/findit/battle/Items;Lorg/json/JSONArray;)Lcom/findit/battle/Items;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/findit/battle/GameActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mDownloadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/findit/battle/GameActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mDownloadFileProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/findit/battle/GameActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/findit/battle/GameActivity;->mDownloadList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$6(Lcom/findit/battle/GameActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/findit/battle/GameActivity;->mNetText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/findit/battle/GameActivity;I)V
    .locals 0

    .prologue
    .line 169
    iput p1, p0, Lcom/findit/battle/GameActivity;->mNetTextSize:I

    return-void
.end method

.method static synthetic access$8(Lcom/findit/battle/GameActivity;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/findit/battle/GameActivity;->mNetTextSize:I

    return v0
.end method

.method static synthetic access$9(Lcom/findit/battle/GameActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mNetText:Ljava/lang/String;

    return-object v0
.end method

.method private createInviteConsentDlg()Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x7f090015

    const/4 v5, 0x2

    .line 1109
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1110
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1111
    .local v3, "window":Landroid/view/Window;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 1112
    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 1114
    const v4, 0x7f020193

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1116
    const v4, 0x7f03000b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1118
    const/high16 v4, 0x7f0b0000

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1119
    .local v2, "textview":Landroid/widget/TextView;
    const v4, 0x7f090002

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/findit/battle/GameActivity;->mInviteConsentMsg:Ljava/lang/String;

    .line 1124
    const v4, 0x7f0b0008

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textview":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 1125
    .restart local v2    # "textview":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1126
    iput-object v2, p0, Lcom/findit/battle/GameActivity;->mInviteConsentMsgTextView:Landroid/widget/TextView;

    .line 1129
    const v4, 0x7f0b006a

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1130
    .local v0, "button":Landroid/widget/Button;
    const v4, 0x7f09001d

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 1131
    new-instance v4, Lcom/findit/battle/GameActivity$31;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$31;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    const v4, 0x7f0b006b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1148
    .restart local v0    # "button":Landroid/widget/Button;
    const v4, 0x7f09001e

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 1149
    new-instance v4, Lcom/findit/battle/GameActivity$32;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$32;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    return-object v1
.end method

.method private destroyGameView()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    invoke-virtual {v0}, Lcom/findit/battle/GameView;->onDestroy()V

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    iget-object v0, v0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->close()V

    .line 401
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v0}, Lcom/findit/battle/CommonDialog;->cancelLoadingDlg()V

    .line 406
    return-void
.end method

.method private finishFromDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 757
    const-string v0, ">> finishFromDialog()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 758
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->finish()V

    .line 762
    return-void
.end method

.method private init(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 219
    const-string v1, ">> init()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 221
    new-instance v1, Lcom/findit/battle/GameView;

    invoke-direct {v1, p0}, Lcom/findit/battle/GameView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    .line 222
    const v1, 0x7f0b0069

    invoke-virtual {p0, v1}, Lcom/findit/battle/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->createLoginDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 225
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->createGuestDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mGuestDlg:Landroid/app/Dialog;

    .line 226
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->createGuestLoginDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mGuestLoginDlg:Landroid/app/Dialog;

    .line 227
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->createDownloadDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mDownloadDlg:Landroid/app/Dialog;

    .line 228
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->createDownloadFileDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mDownloadFileDlg:Landroid/app/Dialog;

    .line 229
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->createInviteDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mInviteDlg:Landroid/app/Dialog;

    .line 230
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->createUserListDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mUserListDlg:Landroid/app/Dialog;

    .line 231
    invoke-direct {p0}, Lcom/findit/battle/GameActivity;->createInviteConsentDlg()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mInviteConsentDlg:Landroid/app/Dialog;

    .line 232
    new-instance v1, Lcom/findit/battle/CommonDialog;

    invoke-direct {v1, p0}, Lcom/findit/battle/CommonDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    .line 234
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mDownloadFileDlg:Landroid/app/Dialog;

    .line 235
    const v2, 0x7f0b0070

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 234
    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mDownloadFileProgressBar:Landroid/widget/ProgressBar;

    .line 236
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mDownloadFileDlg:Landroid/app/Dialog;

    .line 237
    const v2, 0x7f0b0071

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 236
    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mDownloadFileTextView:Landroid/widget/TextView;

    .line 238
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 239
    const v2, 0x7f0b0062

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 238
    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    .line 241
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    const v2, 0x7f080005

    .line 241
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/findit/battle/GameActivity;->mButtonClickSize:I

    .line 245
    new-instance v1, Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    invoke-direct {v1, p0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 247
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    .local v0, "extra":Landroid/os/Bundle;
    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    .line 259
    :cond_0
    const-string v1, "++ onCreate() savedInstanceState is not null \uc608\uc804 \uc815\ubcf4 \uadf8\ub300\ub85c \uc2e4\ud589 \ud55c\ub2e4."

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 265
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/findit/battle/GameActivity;->mDownloadList:Ljava/util/ArrayList;

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/findit/battle/GameActivity;->mSave:Z

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/findit/battle/GameActivity;->mRestart:Z

    .line 269
    invoke-direct {p0}, Lcom/findit/battle/GameActivity;->startGameView()V

    .line 270
    return-void

    .line 261
    :cond_1
    const-string v1, "++ onCreate() savedInstanceState is null \uc624\ud504\ub2dd\ubd80\ud130 \uc2dc\uc791 \ud55c\ub2e4. "

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private killMyApp()V
    .locals 1

    .prologue
    .line 421
    const-string v0, ">> killMyApp()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->error(Ljava/lang/String;)V

    .line 422
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 423
    return-void
.end method

.method private setButtonTouchListener(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 1161
    new-instance v0, Lcom/findit/battle/GameActivity$33;

    invoke-direct {v0, p0}, Lcom/findit/battle/GameActivity$33;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1183
    return-void
.end method

.method private setItemsData(Lcom/findit/battle/Items;Lorg/json/JSONArray;)Lcom/findit/battle/Items;
    .locals 11
    .param p1, "items"    # Lcom/findit/battle/Items;
    .param p2, "subjsonarray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1251
    const-string v8, ">> setItemsData() "

    invoke-static {v8}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1252
    if-nez p1, :cond_0

    .line 1253
    new-instance p1, Lcom/findit/battle/Items;

    .end local p1    # "items":Lcom/findit/battle/Items;
    invoke-direct {p1, p0}, Lcom/findit/battle/Items;-><init>(Landroid/content/Context;)V

    .line 1255
    .restart local p1    # "items":Lcom/findit/battle/Items;
    :cond_0
    const/4 v8, 0x0

    iput v8, p1, Lcom/findit/battle/Items;->mItemTotalnum:I

    .line 1257
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 1258
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 1286
    return-object p1

    .line 1259
    :cond_1
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1261
    .local v5, "subjsonobject":Lorg/json/JSONObject;
    iget-object v8, p1, Lcom/findit/battle/Items;->mTypeMap:Ljava/util/HashMap;

    .line 1262
    const-string v9, "itemType"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1261
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1264
    .local v7, "type":I
    const-string v8, "itemNo"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1263
    invoke-virtual {p1, v7, v8}, Lcom/findit/battle/Items;->getSubType(II)I

    move-result v6

    .line 1265
    .local v6, "subtype":I
    const/4 v8, -0x1

    if-le v6, v8, :cond_2

    .line 1266
    const-string v8, "quantity"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1267
    .local v3, "quantity":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "itemSeq"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1269
    .local v4, "seg":Ljava/lang/String;
    invoke-virtual {p1, v7, v6}, Lcom/findit/battle/Items;->checkOverlap(II)Lcom/findit/battle/Items$Item;

    move-result-object v2

    .line 1270
    .local v2, "item":Lcom/findit/battle/Items$Item;
    if-nez v2, :cond_3

    .line 1271
    invoke-virtual {p1, v7, v6}, Lcom/findit/battle/Items;->createItem(II)Lcom/findit/battle/Items$Item;

    move-result-object v2

    .line 1272
    iput v3, v2, Lcom/findit/battle/Items$Item;->mNum:I

    .line 1277
    :goto_1
    if-eqz v2, :cond_2

    .line 1278
    iget-object v8, v2, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1279
    iget-object v8, v2, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    .line 1258
    .end local v2    # "item":Lcom/findit/battle/Items$Item;
    .end local v3    # "quantity":I
    .end local v4    # "seg":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1274
    .restart local v2    # "item":Lcom/findit/battle/Items$Item;
    .restart local v3    # "quantity":I
    .restart local v4    # "seg":Ljava/lang/String;
    :cond_3
    iget v8, v2, Lcom/findit/battle/Items$Item;->mNum:I

    add-int/2addr v8, v3

    iput v8, v2, Lcom/findit/battle/Items$Item;->mNum:I

    goto :goto_1

    .line 1281
    :cond_4
    iget-object v8, v2, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "|"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/findit/battle/Items$Item;->mSeqs:Ljava/lang/String;

    goto :goto_2
.end method

.method private setMargin(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1186
    const-string v2, ">> setMargin()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1189
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1188
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1190
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1191
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1192
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1193
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1195
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1197
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1199
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1200
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1201
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1202
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, p5

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1204
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private settingSystem()V
    .locals 2

    .prologue
    .line 208
    const-string v0, ">> settingSystem()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 210
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/findit/battle/GameActivity;->setVolumeControlStream(I)V

    .line 216
    return-void
.end method

.method private startGameView()V
    .locals 12

    .prologue
    .line 311
    const-string v1, ">> startGameView()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/findit/battle/DBAdapter;

    invoke-direct {v0, p0}, Lcom/findit/battle/DBAdapter;-><init>(Landroid/content/Context;)V

    .line 315
    .local v0, "dbhelper":Lcom/findit/battle/DBAdapter;
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->open()Lcom/findit/battle/DBAdapter;

    .line 317
    iget-object v10, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    .line 318
    .local v10, "gameview":Lcom/findit/battle/GameView;
    iput-object v0, v10, Lcom/findit/battle/GameView;->mDbhelper:Lcom/findit/battle/DBAdapter;

    .line 319
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/DBAdapter;->fetchSetup(J)Landroid/database/Cursor;

    move-result-object v7

    .line 320
    .local v7, "c":Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+++ c.getCount():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 321
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->createState()J

    .line 323
    invoke-virtual {v0}, Lcom/findit/battle/DBAdapter;->createSetup()J

    .line 324
    const-wide/16 v1, 0x0

    .line 325
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 324
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->createCharacters(JIII)J

    .line 326
    const-wide/16 v1, 0x1

    .line 327
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 326
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->createCharacters(JIII)J

    .line 328
    const-wide/16 v1, 0x2

    .line 329
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 328
    invoke-virtual/range {v0 .. v5}, Lcom/findit/battle/DBAdapter;->createCharacters(JIII)J

    .line 331
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    .line 332
    const v2, 0x7f020180

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 333
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    const-string v2, "on"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 373
    :goto_0
    if-eqz v7, :cond_1

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_1
    return-void

    .line 339
    :cond_2
    const-string v1, "mAutoLogin"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 338
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 339
    const/4 v2, 0x1

    .line 338
    if-ne v1, v2, :cond_4

    const/4 v6, 0x1

    .line 340
    .local v6, "autologin":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 342
    const-string v1, "mEmail"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 341
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "email":Ljava/lang/String;
    const-string v1, "mPassword"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 343
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 346
    .local v11, "password":Ljava/lang/String;
    iput-object v9, v10, Lcom/findit/battle/GameView;->mEmail:Ljava/lang/String;

    .line 347
    iput-object v11, v10, Lcom/findit/battle/GameView;->mPassword:Ljava/lang/String;

    .line 349
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 350
    const v2, 0x7f0b0059

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 349
    check-cast v8, Landroid/widget/EditText;

    .line 351
    .local v8, "edittext":Landroid/widget/EditText;
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mLoginDlg:Landroid/app/Dialog;

    .line 354
    const v2, 0x7f0b005a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 353
    .end local v8    # "edittext":Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 355
    .restart local v8    # "edittext":Landroid/widget/EditText;
    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .end local v8    # "edittext":Landroid/widget/EditText;
    .end local v9    # "email":Ljava/lang/String;
    .end local v11    # "password":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/findit/battle/GameActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    .line 359
    if-eqz v6, :cond_5

    const v1, 0x7f020180

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 361
    iget-object v2, p0, Lcom/findit/battle/GameActivity;->mAutoLoginImageView:Landroid/widget/ImageView;

    .line 362
    if-eqz v6, :cond_6

    const-string v1, "on"

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 364
    iput-boolean v6, v10, Lcom/findit/battle/GameView;->mAutoLogin:Z

    .line 368
    const-string v1, "mSoundon"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 367
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 368
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    .line 367
    :goto_4
    iput-boolean v1, v10, Lcom/findit/battle/GameView;->mSoundon:Z

    goto :goto_0

    .line 338
    .end local v6    # "autologin":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 360
    .restart local v6    # "autologin":Z
    :cond_5
    const v1, 0x7f02017f

    goto :goto_2

    .line 362
    :cond_6
    const-string v1, "off"

    goto :goto_3

    .line 368
    :cond_7
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private stopGameView()V
    .locals 3

    .prologue
    .line 378
    const-string v0, ">> stopGameView()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    if-nez v0, :cond_0

    .line 381
    const-string v0, "-- stopGameView() mGameView is null"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->info(Ljava/lang/String;)V

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/findit/battle/GameActivity;->mSave:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/findit/battle/GameView;->saveState(J)V

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    invoke-virtual {v0}, Lcom/findit/battle/GameView;->recycleResources()V

    .line 390
    return-void
.end method

.method private stopNetworkThread()V
    .locals 2

    .prologue
    .line 305
    const-string v0, ">> stopNetworkThread()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 306
    const-string v0, "closeSocket2"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->closeSocket(Z)V

    .line 308
    return-void
.end method


# virtual methods
.method public connectServer(I)V
    .locals 5
    .param p1, "option"    # I

    .prologue
    .line 445
    const-string v1, ">> connecServer()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 447
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isConnectSocket: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnectSocket()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const-string v1, "showWaitingRoom \uc5f0\uacb0"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    invoke-virtual {v1}, Lcom/findit/battle/GameView;->showWaitingRoom()V

    .line 461
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 458
    const-string v1, "14.63.220.39"

    const/16 v2, 0x5673

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/findit/battle/GameActivity;->mConnectSocketHandler:Landroid/os/Handler;

    .line 458
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startConnectSocket(Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public createDownloadDlg()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 886
    const-string v4, ">> createDownloadDlg()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 887
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 888
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 889
    .local v3, "window":Landroid/view/Window;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 890
    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 892
    const v4, 0x7f020193

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 894
    const v4, 0x7f03000b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 896
    const/high16 v4, 0x7f0b0000

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 897
    .local v2, "textview":Landroid/widget/TextView;
    const v4, 0x7f090032

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 899
    const v4, 0x7f0b0008

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textview":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 900
    .restart local v2    # "textview":Landroid/widget/TextView;
    const v4, 0x7f090033

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 903
    const v4, 0x7f0b006a

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 904
    .local v0, "button":Landroid/widget/Button;
    const v4, 0x7f090034

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 905
    new-instance v4, Lcom/findit/battle/GameActivity$20;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$20;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    const v4, 0x7f0b006b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 932
    .restart local v0    # "button":Landroid/widget/Button;
    const v4, 0x7f090035

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 933
    new-instance v4, Lcom/findit/battle/GameActivity$21;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$21;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 942
    new-instance v4, Lcom/findit/battle/GameActivity$22;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$22;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 957
    return-object v1
.end method

.method public createDownloadFileDlg()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 961
    const-string v3, ">> createDownloadFileDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 962
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 963
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 964
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 965
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 967
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 969
    const v3, 0x7f030010

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 972
    const v3, 0x7f0b0072

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 973
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/GameActivity$23;

    invoke-direct {v3, p0}, Lcom/findit/battle/GameActivity$23;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 984
    new-instance v3, Lcom/findit/battle/GameActivity$24;

    invoke-direct {v3, p0}, Lcom/findit/battle/GameActivity$24;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 999
    return-object v1
.end method

.method public createGuestDlg()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 765
    const-string v4, ">> createGuestDlg()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 766
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 767
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 768
    .local v3, "window":Landroid/view/Window;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 769
    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 771
    const v4, 0x7f020193

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 773
    const v4, 0x7f03000b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 774
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 776
    const/high16 v4, 0x7f0b0000

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 777
    .local v2, "textview":Landroid/widget/TextView;
    const v4, 0x7f09002e

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 779
    const v4, 0x7f0b0008

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textview":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 780
    .restart local v2    # "textview":Landroid/widget/TextView;
    const v4, 0x7f09002f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 783
    const v4, 0x7f0b006a

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 784
    .local v0, "button":Landroid/widget/Button;
    const v4, 0x7f090027

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 785
    new-instance v4, Lcom/findit/battle/GameActivity$16;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$16;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    const v4, 0x7f0b006b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 808
    .restart local v0    # "button":Landroid/widget/Button;
    const v4, 0x7f090031

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 809
    new-instance v4, Lcom/findit/battle/GameActivity$17;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$17;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    return-object v1
.end method

.method public createGuestLoginDlg()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 843
    const-string v4, ">> createGuestLoginDlg()"

    invoke-static {v4}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 844
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 845
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 846
    .local v3, "window":Landroid/view/Window;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 847
    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 849
    const v4, 0x7f020193

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 851
    const v4, 0x7f03000b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 853
    const/high16 v4, 0x7f0b0000

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 854
    .local v2, "textview":Landroid/widget/TextView;
    const v4, 0x7f090002

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 856
    const v4, 0x7f0b0008

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textview":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 857
    .restart local v2    # "textview":Landroid/widget/TextView;
    const v4, 0x7f090030

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 860
    const v4, 0x7f0b006a

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 861
    .local v0, "button":Landroid/widget/Button;
    const v4, 0x7f090025

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 862
    new-instance v4, Lcom/findit/battle/GameActivity$18;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$18;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    const v4, 0x7f0b006b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 873
    .restart local v0    # "button":Landroid/widget/Button;
    const v4, 0x7f09001f

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 874
    new-instance v4, Lcom/findit/battle/GameActivity$19;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$19;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    return-object v1
.end method

.method public createInviteDlg()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1003
    const-string v3, ">> createInviteDlg()"

    invoke-static {v3}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1004
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1005
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1006
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 1007
    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 1009
    const v3, 0x7f020193

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1011
    const v3, 0x7f030006

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1013
    const v3, 0x7f0b0055

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/findit/battle/GameActivity;->mInviteEditText:Landroid/widget/EditText;

    .line 1016
    const v3, 0x7f0b0056

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1017
    .local v0, "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/GameActivity$25;

    invoke-direct {v3, p0}, Lcom/findit/battle/GameActivity$25;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    const v3, 0x7f0b0057

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1030
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/GameActivity$26;

    invoke-direct {v3, p0}, Lcom/findit/battle/GameActivity$26;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1042
    const v3, 0x7f0b0058

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1043
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v3, Lcom/findit/battle/GameActivity$27;

    invoke-direct {v3, p0}, Lcom/findit/battle/GameActivity$27;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    new-instance v3, Lcom/findit/battle/GameActivity$28;

    invoke-direct {v3, p0}, Lcom/findit/battle/GameActivity$28;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1070
    return-object v1
.end method

.method public createLoginDlg()Landroid/app/Dialog;
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 590
    const-string v11, ">> createLoginDlg()"

    invoke-static {v11}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 591
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 592
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 593
    .local v10, "window":Landroid/view/Window;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/view/Window;->requestFeature(I)Z

    .line 594
    invoke-virtual {v10, v12, v12}, Landroid/view/Window;->setFlags(II)V

    .line 596
    const v11, 0x7f020193

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 598
    const v11, 0x7f030009

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 602
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080004

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 603
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080003

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 604
    .local v8, "subheight":F
    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v9, v11

    .line 605
    .local v9, "subwidth":I
    div-float v11, v2, v8

    float-to-int v6, v11

    .line 608
    .local v6, "length":I
    const v11, 0x7f0b0067

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 607
    check-cast v5, Landroid/widget/LinearLayout;

    .line 609
    .local v5, "layout":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 610
    float-to-int v11, v8

    .line 609
    invoke-direct {v7, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 612
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-le v3, v6, :cond_0

    .line 621
    const v11, 0x7f0b0066

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 622
    .local v0, "button":Landroid/widget/Button;
    new-instance v11, Lcom/findit/battle/GameActivity$11;

    invoke-direct {v11, p0}, Lcom/findit/battle/GameActivity$11;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    invoke-direct {p0, v0}, Lcom/findit/battle/GameActivity;->setButtonTouchListener(Landroid/widget/Button;)V

    .line 658
    const v11, 0x7f0b0064

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 659
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v11, Lcom/findit/battle/GameActivity$12;

    invoke-direct {v11, p0}, Lcom/findit/battle/GameActivity$12;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    invoke-direct {p0, v0}, Lcom/findit/battle/GameActivity;->setButtonTouchListener(Landroid/widget/Button;)V

    .line 685
    const v11, 0x7f0b0068

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 686
    .restart local v0    # "button":Landroid/widget/Button;
    new-instance v11, Lcom/findit/battle/GameActivity$13;

    invoke-direct {v11, p0}, Lcom/findit/battle/GameActivity$13;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    invoke-direct {p0, v0}, Lcom/findit/battle/GameActivity;->setButtonTouchListener(Landroid/widget/Button;)V

    .line 697
    const v11, 0x7f0b0061

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "layout":Landroid/widget/LinearLayout;
    check-cast v5, Landroid/widget/LinearLayout;

    .line 698
    .restart local v5    # "layout":Landroid/widget/LinearLayout;
    new-instance v11, Lcom/findit/battle/GameActivity$14;

    invoke-direct {v11, p0}, Lcom/findit/battle/GameActivity$14;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    new-instance v11, Lcom/findit/battle/GameActivity$15;

    invoke-direct {v11, p0, v1}, Lcom/findit/battle/GameActivity$15;-><init>(Lcom/findit/battle/GameActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 748
    return-object v1

    .line 613
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 614
    .local v4, "imageview":Landroid/widget/ImageView;
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    const v11, 0x7f020177

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 617
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public createUserListDlg()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1074
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1075
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1076
    .local v3, "window":Landroid/view/Window;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 1077
    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 1079
    const v4, 0x7f020193

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1081
    const v4, 0x7f030017

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1083
    const v4, 0x7f0b006d

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1084
    .local v2, "listview":Landroid/widget/ListView;
    new-instance v4, Lcom/findit/battle/GameActivity$29;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$29;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1093
    iput-object v2, p0, Lcom/findit/battle/GameActivity;->mUserListView:Landroid/widget/ListView;

    .line 1096
    const v4, 0x7f0b0072

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1097
    .local v0, "button":Landroid/widget/Button;
    new-instance v4, Lcom/findit/battle/GameActivity$30;

    invoke-direct {v4, p0}, Lcom/findit/battle/GameActivity$30;-><init>(Lcom/findit/battle/GameActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    return-object v1
.end method

.method public downloadImage(I)V
    .locals 14
    .param p1, "index"    # I

    .prologue
    .line 530
    const-string v1, ">> downloadImage()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 532
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    iget-object v12, p0, Lcom/findit/battle/GameActivity;->mDownloadList:Ljava/util/ArrayList;

    .line 534
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/findit/battle/GameActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 539
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 541
    .local v13, "url":Ljava/lang/String;
    const-string v1, "http://14.63.220.39/"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 542
    .local v9, "desurl":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    .line 543
    .local v11, "lastindex":I
    const/4 v1, 0x0

    invoke-virtual {v9, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "folder":Ljava/lang/String;
    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "filename":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadImage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 549
    const-string v1, ""

    invoke-virtual {v0, v13, v1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 551
    const-string v1, ""

    const-string v2, ""

    const-wide/16 v3, 0x1

    .line 552
    iget-object v8, p0, Lcom/findit/battle/GameActivity;->mDownloadImageResultHandler:Landroid/os/Handler;

    move v7, p1

    .line 551
    invoke-virtual/range {v0 .. v8}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startDownloadFile(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 553
    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 426
    const-string v1, ">> login()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 429
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/login.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v1, "userPass"

    invoke-virtual {v0, v1, p2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v1, "userDevice"

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 438
    const-string v1, "utf-8"

    .line 439
    const-string v2, "GET"

    const/4 v3, 0x2

    .line 440
    iget-object v4, p0, Lcom/findit/battle/GameActivity;->mLoginResultHandler:Landroid/os/Handler;

    .line 438
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 442
    :cond_0
    return-void
.end method

.method public movePage(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> movePage() clsName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1233
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1234
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0, v0}, Lcom/findit/battle/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 1238
    const/high16 v1, 0x7f040000

    const v2, 0x7f040002

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/GameActivity;->overridePendingTransition(II)V

    .line 1239
    return-void
.end method

.method public movePage(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 3
    .param p2, "requestcode"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1242
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> movePage() clsName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1243
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1244
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1245
    invoke-virtual {p0, v0, p2}, Lcom/findit/battle/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1246
    const/high16 v1, 0x7f040000

    const v2, 0x7f040002

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/GameActivity;->overridePendingTransition(II)V

    .line 1247
    return-void
.end method

.method public movePage(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>movePage () clsName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1218
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1220
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1221
    const-class v1, Lcom/findit/battle/NoticeActivity;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1228
    :goto_0
    const/high16 v1, 0x7f040000

    const v2, 0x7f040002

    invoke-virtual {p0, v1, v2}, Lcom/findit/battle/GameActivity;->overridePendingTransition(II)V

    .line 1229
    return-void

    .line 1223
    :cond_0
    const-class v1, Lcom/findit/battle/RankActivity;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1224
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/findit/battle/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1226
    :cond_1
    invoke-virtual {p0, v0}, Lcom/findit/battle/GameActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2307
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2308
    const-string v0, ">> onActivityResult()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2310
    packed-switch p1, :pswitch_data_0

    .line 2324
    :goto_0
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2325
    return-void

    .line 2312
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/findit/battle/GameActivity;->mSave:Z

    goto :goto_0

    .line 2320
    :pswitch_2
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/findit/battle/GameView;->enterMainMenu(I)V

    goto :goto_0

    .line 2310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const-string v2, ">> onCreate()"

    invoke-static {v2}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/findit/battle/GameActivity;->settingSystem()V

    .line 187
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/findit/battle/GameActivity;->setContentView(I)V

    .line 191
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/findit/battle/GameActivity$10;

    invoke-direct {v3, p0, p1}, Lcom/findit/battle/GameActivity$10;-><init>(Lcom/findit/battle/GameActivity;Landroid/os/Bundle;)V

    .line 197
    const-wide/16 v4, 0x1f4

    .line 191
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    .local v1, "vIntro":Landroid/widget/ImageView;
    const v2, 0x7f02016a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 201
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/findit/battle/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 203
    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 204
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 410
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 413
    invoke-direct {p0}, Lcom/findit/battle/GameActivity;->destroyGameView()V

    .line 415
    invoke-direct {p0}, Lcom/findit/battle/GameActivity;->stopNetworkThread()V

    .line 417
    invoke-direct {p0}, Lcom/findit/battle/GameActivity;->killMyApp()V

    .line 418
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 2246
    const-string v1, ">> onKeyUp()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 2247
    packed-switch p1, :pswitch_data_0

    .line 2302
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2249
    :pswitch_0
    sget v1, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 2250
    sget v1, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2251
    sget v1, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 2252
    :cond_1
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mScreenBattleRoom:Lcom/findit/battle/GameView$BattleRoom;

    invoke-virtual {v1}, Lcom/findit/battle/GameView$BattleRoom;->exitRoom()V

    goto :goto_0

    .line 2254
    :cond_2
    sget v1, Lcom/findit/battle/GameView;->mScreenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2255
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/findit/battle/GameView;->enterMainMenu(I)V

    goto :goto_0

    .line 2247
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 297
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    invoke-virtual {v0}, Lcom/findit/battle/GameView;->onPause()V

    .line 302
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> onRestoreInstanceState() savedInstanceState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 277
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 287
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 290
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    invoke-virtual {v0}, Lcom/findit/battle/GameView;->onResume()V

    .line 293
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">> onSaveInstanceState() outState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    return-void
.end method

.method public receiveAdViewCount(J)V
    .locals 6
    .param p1, "adid"    # J

    .prologue
    .line 556
    const-string v1, ">> receiveAdViewCount()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 559
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/newAdImageList.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 564
    const-string v1, "adId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 567
    const-string v1, "utf-8"

    .line 568
    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/GameActivity;->mAdViewCountResultHandler:Landroid/os/Handler;

    .line 567
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 570
    return-void
.end method

.method public receiveImageList(J)V
    .locals 6
    .param p1, "lastimgid"    # J

    .prologue
    .line 512
    const-string v1, ">> receiveImageList()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 515
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receiveImageList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 519
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/newImageList.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 521
    const-string v1, "imgId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 524
    const-string v1, "utf-8"

    .line 525
    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/GameActivity;->mImageListResultHandler:Landroid/os/Handler;

    .line 524
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 527
    return-void
.end method

.method public sendAdViewCount(J)V
    .locals 6
    .param p1, "adid"    # J

    .prologue
    .line 573
    const-string v1, ">> sendAdViewCount()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 576
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/hitViewCount.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 581
    const-string v1, "adId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 584
    const-string v1, "utf-8"

    .line 585
    const-string v2, "GET"

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/GameActivity;->mAdViewCountResultHandler:Landroid/os/Handler;

    .line 584
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 587
    return-void
.end method

.method public sendAddUp(Ljava/lang/String;IJIJ)V
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "score"    # J
    .param p5, "point"    # I
    .param p6, "coin"    # J

    .prologue
    .line 465
    const-string v1, ">> sendAddUp()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 468
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/mutiAddUp.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 473
    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v1, "score"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v1, "coin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v1, "point"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAddUp: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mCommonDlg:Lcom/findit/battle/CommonDialog;

    invoke-virtual {v1}, Lcom/findit/battle/CommonDialog;->showProgressDlg()V

    .line 482
    const-string v1, "utf-8"

    .line 483
    const-string v2, "GET"

    const/4 v3, 0x2

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 485
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 484
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    iget-object v5, p0, Lcom/findit/battle/GameActivity;->mAddUpResultHandler:Landroid/os/Handler;

    .line 482
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 486
    return-void
.end method

.method public sendSpendItem(Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "quantity"    # J

    .prologue
    .line 489
    const-string v1, ">> sendSpendItem()"

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mConnectNetwork:Lcom/jargoandroid/connectnetwork/ConnectNetwork;

    .line 492
    .local v0, "connectnetwork":Lcom/jargoandroid/connectnetwork/ConnectNetwork;
    :cond_0
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/findit/battle/GameActivity;->mGameView:Lcom/findit/battle/GameView;

    iget-object v1, v1, Lcom/findit/battle/GameView;->mObjects:Lcom/findit/battle/Objects;

    iget-object v1, v1, Lcom/findit/battle/Objects;->mItems:Lcom/findit/battle/Items;

    iget-object v1, v1, Lcom/findit/battle/Items;->mItem:[Lcom/findit/battle/Items$Item;

    aget-object v1, v1, p2

    iget v6, v1, Lcom/findit/battle/Items$Item;->mTypeNo:I

    .line 497
    .local v6, "itemno":I
    const-string v1, "http://14.63.220.39/"

    const-string v2, "app/member/spendMyItem.json"

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setServerUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->clearParameter()V

    .line 499
    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v1, "itemNo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v1, "quantity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSpendItem: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 506
    const-string v1, "utf-8"

    .line 507
    const-string v2, "GET"

    const/4 v3, 0x2

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/findit/battle/GameActivity;->mSpendItemResultHandler:Landroid/os/Handler;

    .line 506
    invoke-virtual/range {v0 .. v5}, Lcom/jargoandroid/connectnetwork/ConnectNetwork;->startParsingData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    .line 509
    return-void
.end method

.method public showInviteConsentDlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1209
    const-string v0, ">> showInviteConsentDlg()"

    invoke-static {v0}, Lcom/findit/battle/finals/LOG;->verbose(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mInviteConsentMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1211
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mInviteConsentMsgTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/findit/battle/GameActivity;->mInviteConsentMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v0, p0, Lcom/findit/battle/GameActivity;->mInviteConsentDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1213
    return-void
.end method
