.class public Lcom/feelingk/iap/IAPActivity;
.super Landroid/app/Activity;
.source "IAPActivity.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IAPActivity"

.field private static decryptPwd:Ljava/lang/String;

.field private static dirPath:Ljava/lang/String;

.field private static encryptPwd:Ljava/lang/String;

.field public static finalVerFlag:Z

.field private static mLGUSmsAuthNumberKey:Ljava/lang/String;

.field private static m_strLogFileFolderPath:Ljava/lang/String;

.field private static m_strLogFileName:Ljava/lang/String;

.field public static purchaseDismissFlag:Z


# instance fields
.field private USIM_Check:Ljava/lang/String;

.field private iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field public juminFlag:Z

.field private lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

.field private mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

.field private mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

.field private mData:[B

.field private mDlgType:Ljava/lang/String;

.field private mDotoriSmsAuthCheckTime:Ljava/lang/String;

.field private mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

.field private mEncName:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mForeignInputMDN:Lcom/feelingk/iap/gui/view/ForeignInputMDN;

.field private final mGUIMessageHandler:Landroid/os/Handler;

.field private mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

.field private mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

.field private mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

.field private mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

.field private mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

.field private mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

.field private mMsgItemInfo:Ljava/lang/String;

.field private mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

.field private mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

.field private mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

.field private mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

.field private mPurchaseBPInfo:Ljava/lang/String;

.field private mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

.field private mPurchaseID:Ljava/lang/String;

.field private mPurchaseItemWorkFlow:I

.field private mPurchaseName:Ljava/lang/String;

.field private mRotaion:I

.field private mSetBPProtocol:Ljava/lang/Boolean;

.field private mSetTmpBPProtocol:Ljava/lang/Boolean;

.field private mSetting:Lcom/feelingk/iap/IAPLibSetting;

.field private mSmsAuthCheckTime:Ljava/lang/String;

.field private mStrNotExistPermissionList:Ljava/lang/String;

.field private mTabDevice:Z

.field private mUseTCash:Z

.field public mUsimCheckFlag:Z

.field private mUsimPurchaseItemWorkFlow:I

.field private mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

.field private mYesNoMessage:Ljava/lang/String;

.field private m_Tid:Ljava/lang/String;

.field private m_encBpInfo:Ljava/lang/String;

.field private m_phoneUSIMState:I

.field private m_telephonyManager:Landroid/telephony/TelephonyManager;

.field onAlertDialogClickListener:Landroid/view/View$OnClickListener;

.field private onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

.field onConfirmInfoListener:Landroid/view/View$OnClickListener;

.field public onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

.field onCultureLandLoginListener:Landroid/view/View$OnClickListener;

.field public onDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

.field onDotoriSmsAuthListener:Landroid/view/View$OnClickListener;

.field private onForeignInputMDNCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

.field onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

.field private onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

.field public onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

.field onInfoCancelListener:Landroid/view/View$OnClickListener;

.field onJAutoPurchaseFormInfoListener:Landroid/view/View$OnClickListener;

.field onJoinInfoListener:Landroid/view/View$OnClickListener;

.field private onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

.field private onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

.field onLGUSMSAuthInfoListener:Landroid/view/View$OnClickListener;

.field onLGUSMSAuthListener:Landroid/view/View$OnClickListener;

.field public onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

.field onLimit_ExcessDlgListener:Landroid/view/View$OnClickListener;

.field onOCBRegListener:Landroid/view/View$OnClickListener;

.field public onOcbCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

.field public onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

.field onOtpInfoListener:Landroid/view/View$OnClickListener;

.field private onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

.field private onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

.field onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

.field private onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

.field onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field public pwdAuthFlag:Z

.field private sellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

.field private wfmanager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 178
    sput-boolean v0, Lcom/feelingk/iap/IAPActivity;->finalVerFlag:Z

    .line 179
    sput-boolean v0, Lcom/feelingk/iap/IAPActivity;->purchaseDismissFlag:Z

    .line 183
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    .line 184
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    .line 186
    const-string v0, ""

    sput-object v0, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    .line 188
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    .line 189
    sput-object v1, Lcom/feelingk/iap/IAPActivity;->mLGUSmsAuthNumberKey:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    const-string v0, "USIM Null"

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    .line 121
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 126
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->wfmanager:Landroid/net/wifi/WifiManager;

    .line 127
    const/16 v0, 0xa

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    .line 136
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    .line 139
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 140
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 141
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 142
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 143
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 144
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 145
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 146
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 147
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    .line 148
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    .line 149
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    .line 150
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    .line 151
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    .line 152
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    .line 155
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mForeignInputMDN:Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    .line 158
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 162
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    .line 167
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 168
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    .line 169
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    .line 171
    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 172
    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 174
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mData:[B

    .line 176
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    .line 177
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->juminFlag:Z

    .line 180
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    .line 181
    iput-boolean v2, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 191
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthCheckTime:Ljava/lang/String;

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mStrNotExistPermissionList:Ljava/lang/String;

    .line 492
    new-instance v0, Lcom/feelingk/iap/IAPActivity$1;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$1;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 935
    new-instance v0, Lcom/feelingk/iap/IAPActivity$2;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$2;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onForeignInputMDNCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    .line 996
    new-instance v0, Lcom/feelingk/iap/IAPActivity$3;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$3;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    .line 1065
    new-instance v0, Lcom/feelingk/iap/IAPActivity$4;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$4;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    .line 1132
    new-instance v0, Lcom/feelingk/iap/IAPActivity$5;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$5;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    .line 1145
    new-instance v0, Lcom/feelingk/iap/IAPActivity$6;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$6;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    .line 1171
    new-instance v0, Lcom/feelingk/iap/IAPActivity$7;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$7;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    .line 1198
    new-instance v0, Lcom/feelingk/iap/IAPActivity$8;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$8;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onOcbCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    .line 1254
    new-instance v0, Lcom/feelingk/iap/IAPActivity$9;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$9;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    .line 1286
    new-instance v0, Lcom/feelingk/iap/IAPActivity$10;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$10;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    .line 1374
    new-instance v0, Lcom/feelingk/iap/IAPActivity$11;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$11;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    .line 1425
    new-instance v0, Lcom/feelingk/iap/IAPActivity$12;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$12;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    .line 1469
    new-instance v0, Lcom/feelingk/iap/IAPActivity$13;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$13;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    .line 1626
    new-instance v0, Lcom/feelingk/iap/IAPActivity$14;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$14;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    .line 1867
    new-instance v0, Lcom/feelingk/iap/IAPActivity$15;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$15;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    .line 2037
    new-instance v0, Lcom/feelingk/iap/IAPActivity$16;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$16;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

    .line 2057
    new-instance v0, Lcom/feelingk/iap/IAPActivity$17;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$17;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onInfoCancelListener:Landroid/view/View$OnClickListener;

    .line 2091
    new-instance v0, Lcom/feelingk/iap/IAPActivity$18;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$18;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 2113
    new-instance v0, Lcom/feelingk/iap/IAPActivity$19;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$19;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLimit_ExcessDlgListener:Landroid/view/View$OnClickListener;

    .line 2127
    new-instance v0, Lcom/feelingk/iap/IAPActivity$20;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$20;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthInfoListener:Landroid/view/View$OnClickListener;

    .line 2137
    new-instance v0, Lcom/feelingk/iap/IAPActivity$21;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$21;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onAlertDialogClickListener:Landroid/view/View$OnClickListener;

    .line 2200
    new-instance v0, Lcom/feelingk/iap/IAPActivity$22;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$22;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 2211
    new-instance v0, Lcom/feelingk/iap/IAPActivity$23;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$23;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 2221
    new-instance v0, Lcom/feelingk/iap/IAPActivity$24;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$24;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJAutoPurchaseFormInfoListener:Landroid/view/View$OnClickListener;

    .line 2231
    new-instance v0, Lcom/feelingk/iap/IAPActivity$25;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$25;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onJoinInfoListener:Landroid/view/View$OnClickListener;

    .line 2241
    new-instance v0, Lcom/feelingk/iap/IAPActivity$26;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$26;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onOtpInfoListener:Landroid/view/View$OnClickListener;

    .line 2251
    new-instance v0, Lcom/feelingk/iap/IAPActivity$27;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$27;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthListener:Landroid/view/View$OnClickListener;

    .line 2259
    new-instance v0, Lcom/feelingk/iap/IAPActivity$28;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$28;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onOCBRegListener:Landroid/view/View$OnClickListener;

    .line 2268
    new-instance v0, Lcom/feelingk/iap/IAPActivity$29;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$29;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onCultureLandLoginListener:Landroid/view/View$OnClickListener;

    .line 2277
    new-instance v0, Lcom/feelingk/iap/IAPActivity$30;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$30;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onDotoriSmsAuthListener:Landroid/view/View$OnClickListener;

    .line 2286
    new-instance v0, Lcom/feelingk/iap/IAPActivity$31;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$31;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method

.method private DismissAutoPurchaseFormDialog()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->ClosePopupAutoPurchaseFormDialog()V

    .line 928
    return-void
.end method

.method private DismissCultureLandLoginDialog()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->ClosePopupCultureLandLoginDialog()V

    .line 781
    return-void
.end method

.method private DismissDotoriSmsAuthDialog()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->ClosePopupDotoriSMSAuthDialog()V

    .line 797
    return-void
.end method

.method private DismissForeignInputMDNDialog()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mForeignInputMDN:Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->ClosePopupDialog()V

    .line 705
    return-void
.end method

.method private DismissImageDialog()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->ClosePopupImageDialog()V

    .line 924
    return-void
.end method

.method private DismissImeiAuthDlg()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->ClosePopupIMEIAuthDialog()V

    .line 914
    return-void
.end method

.method private DismissInfoMessageDialog()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->ClosePopupDialog()V

    .line 614
    return-void
.end method

.method private DismissJoinDialog()V
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->ClosePopupJoinDialog()V

    .line 932
    return-void
.end method

.method private DismissJuminAuthDialog()V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->ClosePopupAuthDialog()V

    .line 716
    return-void
.end method

.method private DismissLguSMSAuthDlg()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->ClosePopupLguSMSAuthDialog()V

    .line 900
    return-void
.end method

.method private DismissLoaingProgress()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ProgressDialog;->CloseProgress()V

    .line 568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 570
    :cond_0
    return-void
.end method

.method private DismissOCBPWDDialog()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->ClosePopupOCBDialog()V

    .line 765
    return-void
.end method

.method private DismissOCBRegDialog()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->ClosePopupOCBDialog()V

    .line 749
    return-void
.end method

.method private DismissOtpDlg()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->ClosePopupOtpDialog()V

    .line 891
    return-void
.end method

.method private DismissPurchaseDialog()V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->ClosePurchaseDialog()V

    .line 695
    return-void
.end method

.method private DismissYesNoDialog()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->ClosePopupYesNoDialog()V

    .line 919
    return-void
.end method

.method private IAPLibDeviceCheck()V
    .locals 3

    .prologue
    .line 2861
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/feelingk/iap/IAPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2862
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2863
    .local v0, "disp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    iput v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 2873
    return-void
.end method

.method private IAPLibUSIMStateCheck()V
    .locals 4

    .prologue
    .line 2652
    new-instance v0, Lcom/feelingk/iap/IAPActivity$36;

    invoke-direct {v0, p0}, Lcom/feelingk/iap/IAPActivity$36;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 2675
    .local v0, "m_phoneStateListener":Landroid/telephony/PhoneStateListener;
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ub9ac\uc2a4\ub108 \uc678\ubd80 m_phoneUSIMState: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2678
    return-void
.end method

.method private RestoreData()V
    .locals 4

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 533
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 534
    check-cast v0, Ljava/util/HashMap;

    .line 536
    .local v0, "dataBackupMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "NET_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    .line 537
    const-string v2, "ERR_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    .line 538
    const-string v2, "YESNO_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    .line 539
    const-string v2, "USE_BPPROTOCOL"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    .line 540
    const-string v2, "PRODUCT_NAME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 541
    const-string v2, "PRODUCT_INFO"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/feelingk/iap/net/ItemInfoConfirm;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 542
    const-string v2, "PURCHASEID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 543
    const-string v2, "LGUSMSAUTHCHECKTIME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    .line 544
    const-string v2, "DOTORISMSAUTHCHECKTIME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthCheckTime:Ljava/lang/String;

    .line 545
    const-string v2, "DLGTYPE"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    .line 546
    const-string v2, "ENCNAME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    .line 547
    const-string v2, "TID"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 548
    const-string v2, "ENCBPINFO"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    .line 550
    const-string v2, "IAPActivity"

    const-string v3, "## Restore Data ......"

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v0    # "dataBackupMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private ShowCultureLandLoginDialog()V
    .locals 4

    .prologue
    const/16 v3, 0x7a

    .line 775
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onCultureLandLoginListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 776
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;->ShowPopupCultureLandLoginDialog()V

    .line 777
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 778
    return-void
.end method

.method private ShowDotoriSmsAutnDialog()V
    .locals 4

    .prologue
    const/16 v3, 0x7b

    .line 791
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onDotoriSmsAuthListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 792
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;->ShowPopupDotoriSMSAuthDialog()V

    .line 793
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 794
    return-void
.end method

.method private ShowForeignInputMDNDialog()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mForeignInputMDN:Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->InflateView(I)V

    .line 700
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mForeignInputMDN:Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;->ShowPopupDialog()V

    .line 701
    const/16 v0, 0x7c

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 702
    return-void
.end method

.method private ShowInfoMessageDialog(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "info_message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 572
    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onConfirmInfoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 574
    iput-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupDialog;->ShowPopupDialog()V

    .line 610
    return-void

    .line 576
    :cond_0
    const/16 v0, 0x74

    if-ne p1, v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLimit_ExcessDlgListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 578
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    goto :goto_0

    .line 580
    :cond_1
    const/16 v0, 0x75

    if-ne p1, v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthInfoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 583
    :cond_2
    const/16 v0, 0x77

    if-ne p1, v0, :cond_3

    .line 584
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onAlertDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 586
    :cond_3
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_4

    .line 587
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onAlertDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 589
    :cond_4
    const/16 v0, 0x7f

    if-eq p1, v0, :cond_5

    .line 590
    const/16 v0, 0x80

    if-eq p1, v0, :cond_5

    .line 591
    const/16 v0, 0x82

    if-ne p1, v0, :cond_6

    .line 592
    :cond_5
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onAlertDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 594
    :cond_6
    const/16 v0, 0x64

    if-ne p1, v0, :cond_7

    .line 595
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    new-instance v1, Lcom/feelingk/iap/IAPActivity$33;

    invoke-direct {v1, p0}, Lcom/feelingk/iap/IAPActivity$33;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 604
    :cond_7
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onInfoCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/feelingk/iap/gui/view/PopupDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 606
    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ShowJuminAuthDialog()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->InflateView(I)V

    .line 710
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;->ShowPopupAuthDialog()V

    .line 711
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 713
    return-void
.end method

.method private ShowLoadingProgress()V
    .locals 3

    .prologue
    .line 562
    new-instance v0, Lcom/feelingk/iap/gui/view/ProgressDialog;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_PROCESSING_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onProgressCancelListerner:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 563
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ProgressDialog;->ShowProgress()V

    .line 564
    return-void
.end method

.method private ShowLoadingProgressPhurchase_Confirm()V
    .locals 3

    .prologue
    .line 556
    new-instance v0, Lcom/feelingk/iap/gui/view/ProgressDialog;

    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_PROCESSING_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v1}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/feelingk/iap/gui/view/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    .line 557
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mProgressDlg:Lcom/feelingk/iap/gui/view/ProgressDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/ProgressDialog;->ShowProgress()V

    .line 558
    return-void
.end method

.method private ShowOCBPWDDialog()V
    .locals 4

    .prologue
    const/16 v3, 0x79

    .line 759
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onOCBRegListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 760
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->ShowPopupOCBDialog()V

    .line 761
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 762
    return-void
.end method

.method private ShowOCBRegDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputType"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x78

    .line 731
    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "U"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    :cond_0
    invoke-static {p1}, Lcom/feelingk/iap/IAPLib;->setOcbCardUpdateType(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onOCBRegListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 735
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;->ShowPopupOCBDialog()V

    .line 736
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 746
    :cond_1
    :goto_0
    return-void

    .line 738
    :cond_2
    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    sget-object v0, Lcom/feelingk/iap/util/CommonString$Index;->OCB_CARD_DELETE_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v0}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    .line 741
    const/16 v0, 0x7e

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 742
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ShowPurchaseDialog(Ljava/lang/Object;)V
    .locals 19
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, Lcom/feelingk/iap/net/ItemInfoConfirm;

    .end local p1    # "item":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    .line 626
    const/16 v16, 0x0

    .line 629
    .local v16, "nIsExistDotoriSmsAuthLogFile":Z
    const-string v4, "DotoriSMSAuthLog.txt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 630
    const/16 v16, 0x1

    .line 633
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v4

    const-string v9, ","

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 637
    .local v5, "nPrice":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v4

    const-string v9, ","

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 638
    .local v6, "nTCash":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmOCBRegisterInfo()Ljava/lang/String;

    move-result-object v7

    .line 639
    .local v7, "nOCBRegisterInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmOCBCardNum()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    const-string v10, "-"

    invoke-static {v4, v9, v10}, Lcom/feelingk/iap/util/CommonF;->addLineEndString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 640
    .local v8, "nOCBCartNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmDotoriBalance()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 641
    .local v11, "nDotori":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmDotoriLinkInfo()Ljava/lang/String;

    move-result-object v12

    .line 642
    .local v12, "nDotoriLinkInfo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmFinalVersionCheck()Z

    move-result v13

    .line 643
    .local v13, "nFinalVer":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAutoPurchaseCheck()Z

    move-result v14

    .line 644
    .local v14, "nautoPurchaseCheck":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getmAfterAutoPurchaseInfoAgree()Z

    move-result v15

    .line 647
    .local v15, "nAfterAutoPurchaseInfoAgree":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 650
    .local v3, "itemName":Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 652
    const-string v4, "%"

    const-string v9, "%25"

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "#"

    const-string v10, "%23"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "+"

    const-string v10, "%2B"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "&"

    const-string v10, "%26"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v9, " "

    const-string v10, "%20"

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 654
    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 661
    :cond_1
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 663
    new-instance v2, Lcom/feelingk/iap/gui/data/PurchaseItem;

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPeriod()Ljava/lang/String;

    move-result-object v4

    .line 670
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/iap/IAPActivity;->sellerInfoConfirm:Lcom/feelingk/iap/net/SellerInfoConfirm;

    move-object/from16 v17, v0

    move v9, v5

    .line 663
    invoke-direct/range {v2 .. v17}, Lcom/feelingk/iap/gui/data/PurchaseItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IZILjava/lang/String;ZZZZLcom/feelingk/iap/net/SellerInfoConfirm;)V

    .line 678
    .local v2, "pItemInfo":Lcom/feelingk/iap/gui/data/PurchaseItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v4, v9, v2}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->InflateParserDialog(ILcom/feelingk/iap/gui/data/PurchaseItem;)V

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    invoke-virtual {v4}, Lcom/feelingk/iap/gui/view/PurchaseDialog;->ShowPurchaseDialog()V

    .line 689
    .end local v2    # "pItemInfo":Lcom/feelingk/iap/gui/data/PurchaseItem;
    .end local v3    # "itemName":Ljava/lang/String;
    .end local v5    # "nPrice":I
    .end local v6    # "nTCash":I
    .end local v7    # "nOCBRegisterInfo":Ljava/lang/String;
    .end local v8    # "nOCBCartNumber":Ljava/lang/String;
    .end local v11    # "nDotori":I
    .end local v12    # "nDotoriLinkInfo":Ljava/lang/String;
    .end local v13    # "nFinalVer":Z
    .end local v14    # "nautoPurchaseCheck":Z
    .end local v15    # "nAfterAutoPurchaseInfoAgree":Z
    :goto_2
    return-void

    .line 647
    .restart local v5    # "nPrice":I
    .restart local v6    # "nTCash":I
    .restart local v7    # "nOCBRegisterInfo":Ljava/lang/String;
    .restart local v8    # "nOCBCartNumber":Ljava/lang/String;
    .restart local v11    # "nDotori":I
    .restart local v12    # "nDotoriLinkInfo":Ljava/lang/String;
    .restart local v13    # "nFinalVer":Z
    .restart local v14    # "nautoPurchaseCheck":Z
    .restart local v15    # "nAfterAutoPurchaseInfoAgree":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v4}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 657
    .restart local v3    # "itemName":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 658
    .local v18, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 684
    .end local v3    # "itemName":Ljava/lang/String;
    .end local v5    # "nPrice":I
    .end local v6    # "nTCash":I
    .end local v7    # "nOCBRegisterInfo":Ljava/lang/String;
    .end local v8    # "nOCBCartNumber":Ljava/lang/String;
    .end local v11    # "nDotori":I
    .end local v12    # "nDotoriLinkInfo":Ljava/lang/String;
    .end local v13    # "nFinalVer":Z
    .end local v14    # "nautoPurchaseCheck":Z
    .end local v15    # "nAfterAutoPurchaseInfoAgree":Z
    .end local v18    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    const-string v4, "IAPActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mItemInfoConfirm = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mItemInfoConfirm.getItemPrice() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 685
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v10}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemPrice()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mItemInfoConfirm.getItemTCash() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v10}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getItemTCash()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 684
    invoke-static {v4, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissForeignInputMDNDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/feelingk/iap/IAPActivity;)I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    return v0
.end method

.method static synthetic access$10(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$11(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    return-void
.end method

.method static synthetic access$13(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/IAPLibSetting;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    return-object v0
.end method

.method static synthetic access$14(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissImageDialog()V

    return-void
.end method

.method static synthetic access$15(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissAutoPurchaseFormDialog()V

    return-void
.end method

.method static synthetic access$16(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    return-void
.end method

.method static synthetic access$17(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 912
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissImeiAuthDlg()V

    return-void
.end method

.method static synthetic access$18(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOCBRegDialog()V

    return-void
.end method

.method static synthetic access$19(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOCBPWDDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissCultureLandLoginDialog()V

    return-void
.end method

.method static synthetic access$21(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissDotoriSmsAuthDialog()V

    return-void
.end method

.method static synthetic access$22(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthCheckTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthCheckTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/feelingk/iap/IAPActivity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$25(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V

    return-void
.end method

.method static synthetic access$26(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOtpDlg()V

    return-void
.end method

.method static synthetic access$27(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    return-object v0
.end method

.method static synthetic access$28(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$29(Lcom/feelingk/iap/IAPActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$3(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/feelingk/iap/IAPActivity;Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    return-void
.end method

.method static synthetic access$31()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/feelingk/iap/IAPActivity;->mLGUSmsAuthNumberKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V

    return-void
.end method

.method static synthetic access$33(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgressPhurchase_Confirm()V

    return-void
.end method

.method static synthetic access$34(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$37(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$38(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 3166
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->setInit()V

    return-void
.end method

.method static synthetic access$39(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 3185
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->handPurchaseConfirm()V

    return-void
.end method

.method static synthetic access$4(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/feelingk/iap/IAPActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$41(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    return-void
.end method

.method static synthetic access$42(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/feelingk/iap/IAPActivity;->ShowOCBRegDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$43(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowOCBPWDDialog()V

    return-void
.end method

.method static synthetic access$44(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowCultureLandLoginDialog()V

    return-void
.end method

.method static synthetic access$45(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowDotoriSmsAutnDialog()V

    return-void
.end method

.method static synthetic access$46(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    return-void
.end method

.method static synthetic access$47(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    return-void
.end method

.method static synthetic access$48(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$50(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupYesNoDialog;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    return-object v0
.end method

.method static synthetic access$51(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupImageDialog;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    return-object v0
.end method

.method static synthetic access$52(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    return-object v0
.end method

.method static synthetic access$53(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupJoinDialog;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    return-object v0
.end method

.method static synthetic access$54(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupOTPDialog;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    return-object v0
.end method

.method static synthetic access$55(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    return-object v0
.end method

.method static synthetic access$56(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupOCBDialog;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    return-object v0
.end method

.method static synthetic access$57(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    return-object v0
.end method

.method static synthetic access$58(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    return-object v0
.end method

.method static synthetic access$59(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/feelingk/iap/IAPActivity;I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    return-void
.end method

.method static synthetic access$60(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showImeiAuthDlg()V

    return-void
.end method

.method static synthetic access$61(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$62(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$63(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-void
.end method

.method static synthetic access$64(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->lguConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    return-object v0
.end method

.method static synthetic access$65(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    sput-object p0, Lcom/feelingk/iap/IAPActivity;->mLGUSmsAuthNumberKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$66(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method static synthetic access$67(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->iic:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method static synthetic access$68(Lcom/feelingk/iap/IAPActivity;Lcom/feelingk/iap/net/ItemInfoConfirm;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-void
.end method

.method static synthetic access$69(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJuminAuthDialog()V

    return-void
.end method

.method static synthetic access$70(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$71(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$72(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    return-object v0
.end method

.method static synthetic access$73(Lcom/feelingk/iap/IAPActivity;I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    return-void
.end method

.method static synthetic access$74(Lcom/feelingk/iap/IAPActivity;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    return v0
.end method

.method static synthetic access$75(Lcom/feelingk/iap/IAPActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$76(Lcom/feelingk/iap/IAPActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->USIM_Check:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$77(Lcom/feelingk/iap/IAPActivity;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$8(Lcom/feelingk/iap/IAPActivity;)V
    .locals 0

    .prologue
    .line 3224
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->billingLockCheck()V

    return-void
.end method

.method static synthetic access$9(Lcom/feelingk/iap/IAPActivity;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    return-object v0
.end method

.method private billingLockCheck()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x3

    const/16 v10, 0x67

    .line 3230
    invoke-static {v9}, Lcom/feelingk/iap/IAPLib;->setLimitExcess(Z)V

    .line 3232
    const/4 v2, 0x0

    .line 3234
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    check-cast v0, [B

    .line 3236
    .local v0, "data":[B
    :try_start_0
    const-string v7, "com.skt.skaf.A000Z00040"

    const/4 v8, 0x2

    invoke-virtual {p0, v7, v8}, Lcom/feelingk/iap/IAPActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 3237
    .local v5, "other":Landroid/content/Context;
    const-string v7, "lockInfo.txt"

    invoke-virtual {v5, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 3239
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 3240
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 3241
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3252
    .end local v5    # "other":Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_c

    array-length v7, v0

    const/16 v8, 0xe

    if-ne v7, v8, :cond_c

    .line 3253
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 3256
    .local v6, "value":Ljava/lang/String;
    const/16 v7, 0xc

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    .line 3260
    :try_start_2
    sget-object v7, Lcom/feelingk/iap/IAPActivity;->encryptPwd:Ljava/lang/String;

    const-string v8, "5w5943jeheiqtytyieo1wo3i"

    invoke-static {v7, v8}, Lcom/feelingk/iap/IAPActivity;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 3266
    :goto_1
    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3268
    iget-boolean v7, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    if-nez v7, :cond_3

    .line 3269
    const-string v7, "IAPActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\ube44\ubc00\ubc88\ud638 \uc778\uc99d \ub2e4\uc774\uc5bc\ub85c\uadf8 \ub744\uc6b0\uae30 \uc9c4\uc785, pwdAuthFlag: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 3272
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 3273
    const/16 v7, 0x64

    invoke-static {v7}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 3277
    :goto_2
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/feelingk/iap/PwdActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3278
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "pwd"

    sget-object v8, Lcom/feelingk/iap/IAPActivity;->decryptPwd:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3279
    const v7, 0xd7115

    invoke-virtual {p0, v3, v7}, Lcom/feelingk/iap/IAPActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3419
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 3242
    .restart local v5    # "other":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 3243
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 3246
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "other":Landroid/content/Context;
    :catch_1
    move-exception v1

    .line 3247
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3248
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 3249
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3261
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "value":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 3262
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3276
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_2

    .line 3283
    :cond_3
    const/4 v4, 0x0

    .line 3285
    .local v4, "lguPlusFlag":Z
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 3286
    const/4 v4, 0x1

    .line 3289
    :cond_4
    if-eqz v4, :cond_6

    .line 3290
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 3294
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPostPay()I

    move-result v7

    if-lez v7, :cond_5

    .line 3295
    const-string v7, "IAPActivity"

    const-string v8, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561 0\uc6d0 \ucd08\uacfc"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto :goto_3

    .line 3300
    :cond_5
    const-string v7, "IAPActivity"

    const-string v8, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc74c"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3301
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 3302
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v7}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto :goto_3

    .line 3306
    :cond_6
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 3310
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->handPurchaseConfirm()V

    goto :goto_3

    .line 3322
    .end local v4    # "lguPlusFlag":Z
    :cond_7
    const-string v7, "IAPActivity"

    const-string v8, "\uc0f5\ud074 \ube44\ubc00\ubc88\ud638 \ubbf8\uc124\uc815"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3324
    const/4 v4, 0x0

    .line 3326
    .restart local v4    # "lguPlusFlag":Z
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v11, :cond_8

    .line 3327
    const/4 v4, 0x1

    .line 3330
    :cond_8
    if-eqz v4, :cond_a

    .line 3331
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 3335
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPostPay()I

    move-result v7

    if-lez v7, :cond_9

    .line 3336
    const-string v7, "IAPActivity"

    const-string v8, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561 0\uc6d0 \ucd08\uacfc"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto :goto_3

    .line 3341
    :cond_9
    const-string v7, "IAPActivity"

    const-string v8, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc74c"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v7}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto/16 :goto_3

    .line 3348
    :cond_a
    const-string v7, "TstoreOTPLog.txt"

    invoke-virtual {p0, v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 3350
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \ubbf8\uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showPopOtpDlg()V

    goto/16 :goto_3

    .line 3355
    :cond_b
    const-string v7, "TstoreOTPLog.txt"

    invoke-virtual {p0, v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3356
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3357
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 3361
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->handPurchaseConfirm()V

    goto/16 :goto_3

    .line 3368
    .end local v4    # "lguPlusFlag":Z
    .end local v6    # "value":Ljava/lang/String;
    :cond_c
    const-string v7, "IAPActivity"

    const-string v8, "data is null && \uc0f5\ud074 \uc7a0\uae08\ud30c\uc77c \ubbf8\uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3374
    const/4 v4, 0x0

    .line 3376
    .restart local v4    # "lguPlusFlag":Z
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v7

    if-ne v7, v11, :cond_d

    .line 3377
    const/4 v4, 0x1

    .line 3380
    :cond_d
    if-eqz v4, :cond_f

    .line 3381
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 3385
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPostPay()I

    move-result v7

    if-lez v7, :cond_e

    .line 3386
    const-string v7, "IAPActivity"

    const-string v8, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561 0\uc6d0 \ucd08\uacfc"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto/16 :goto_3

    .line 3391
    :cond_e
    const-string v7, "IAPActivity"

    const-string v8, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc74c"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v7}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto/16 :goto_3

    .line 3399
    :cond_f
    const-string v7, "TstoreOTPLog.txt"

    invoke-virtual {p0, v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 3403
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \ubbf8\uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showPopOtpDlg()V

    goto/16 :goto_3

    .line 3407
    :cond_10
    const-string v7, "TstoreOTPLog.txt"

    invoke-virtual {p0, v7}, Lcom/feelingk/iap/IAPActivity;->isExistOTPLog(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3408
    const-string v7, "IAPActivity"

    const-string v8, "OTP \uc778\uc99d \ud30c\uc77c \uc874\uc7ac"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    invoke-static {v10}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 3412
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->handPurchaseConfirm()V

    goto/16 :goto_3
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "strPermission"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mStrNotExistPermissionList:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "android.permission."

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mStrNotExistPermissionList:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3072
    const-string v3, "DESede/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3073
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-static {p1}, Lcom/feelingk/iap/IAPActivity;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3074
    invoke-static {p0}, Lcom/feelingk/iap/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 3075
    .local v1, "outputBytes2":[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3077
    .local v2, "strResult":Ljava/lang/String;
    return-object v2
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2024
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2025
    .local v0, "calendar":Ljava/util/Calendar;
    const-string v2, "%d-%d-%d %d:%d"

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2026
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 2027
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x3

    .line 2028
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 2029
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2025
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2030
    .local v1, "strTime":Ljava/lang/String;
    return-object v1
.end method

.method private static getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 4
    .param p0, "keyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3082
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 3083
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 3084
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 3086
    .local v1, "key":Ljava/security/Key;
    return-object v1
.end method

.method private handPurchaseConfirm()V
    .locals 9

    .prologue
    const/16 v8, 0x44c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3188
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->setInit()V

    .line 3190
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 3191
    .local v2, "msgUI":Landroid/os/Message;
    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3193
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 3195
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3196
    .local v0, "hnd":Landroid/os/Handler;
    const/4 v1, 0x0

    .line 3197
    .local v1, "msgNET":Landroid/os/Message;
    const-string v3, "IAPActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "# Purchase SK!!  mUseTCash ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / BPProtocol = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->mUseTCash:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mSetTmpBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {v0, v8, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3199
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3209
    :goto_2
    return-void

    :cond_0
    move v3, v5

    .line 3198
    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 3203
    .end local v0    # "hnd":Landroid/os/Handler;
    .end local v1    # "msgNET":Landroid/os/Message;
    :cond_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3205
    .restart local v0    # "hnd":Landroid/os/Handler;
    const-string v3, "IAPActivity"

    const-string v4, "# Purchase KT_LG!!  "

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    const/16 v3, 0x44d

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3207
    .restart local v1    # "msgNET":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method private isEnablePermission()Z
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x1

    .line 201
    .local v0, "isExistPermission":Z
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-direct {p0, v1}, Lcom/feelingk/iap/IAPActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 202
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/feelingk/iap/IAPActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 203
    const-string v1, "android.permission.INTERNET"

    invoke-direct {p0, v1}, Lcom/feelingk/iap/IAPActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 204
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-direct {p0, v1}, Lcom/feelingk/iap/IAPActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 205
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v1}, Lcom/feelingk/iap/IAPActivity;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 208
    return v0
.end method

.method public static reset(Ljava/lang/String;)V
    .locals 5
    .param p0, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 1956
    sput-object p0, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    .line 1958
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1959
    .local v0, "bSDCardExist":Z
    if-eqz v0, :cond_0

    .line 1961
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    .line 1969
    :goto_0
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reset\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1971
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1973
    const-string v2, "TstoreLog : "

    sget-object v3, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/feelingk/iap/IAPActivity;->write(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1975
    return-void

    .line 1966
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    sget-object v2, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    sput-object v2, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private setInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3168
    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setOCBPointInfo(Z)V

    .line 3169
    const-string v0, ""

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setOCBPoint(Ljava/lang/String;)V

    .line 3171
    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->setCultureCashQueryInfo(Z)V

    .line 3172
    const-string v0, ""

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setCultureLandCashPoint(Ljava/lang/String;)V

    .line 3175
    return-void
.end method

.method private showImeiAuthDlg()V
    .locals 4

    .prologue
    .line 903
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    const/16 v1, 0x76

    new-instance v2, Lcom/feelingk/iap/IAPActivity$35;

    invoke-direct {v2, p0}, Lcom/feelingk/iap/IAPActivity$35;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 909
    iget v3, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    .line 903
    invoke-virtual {v0, v1, v2, v3}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->inflageView(ILandroid/view/View$OnClickListener;I)V

    .line 910
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;->ShowPopupIMEIAuthDialog()V

    .line 911
    return-void
.end method

.method private showLguSMSAuthDlg()V
    .locals 4

    .prologue
    const/16 v3, 0x75

    .line 894
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onLGUSMSAuthListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 895
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;->ShowPopupLguSMSAuthDialog()V

    .line 896
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 897
    return-void
.end method

.method private showPopOtpDlg()V
    .locals 4

    .prologue
    const/16 v3, 0x72

    .line 881
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onOtpInfoListener:Landroid/view/View$OnClickListener;

    iget v2, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v3, v1, v2}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->InflateView(ILandroid/view/View$OnClickListener;I)V

    .line 884
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;->ShowPopupOtpDialog()V

    .line 885
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 886
    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 888
    return-void
.end method

.method public static varargs write(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p0, "strMessage"    # Ljava/lang/String;
    .param p1, "logFileName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1978
    sput-object p1, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    .line 1980
    move-object v0, p0

    .line 1981
    .local v0, "_strMessage":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2021
    :cond_0
    :goto_0
    return-void

    .line 1984
    :cond_1
    array-length v5, p2

    if-eqz v5, :cond_2

    .line 1986
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/feelingk/iap/IAPActivity;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1991
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/feelingk/iap/IAPActivity;->m_strLogFileFolderPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1992
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 1996
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2011
    if-eqz v4, :cond_4

    .line 2013
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 2003
    :catch_0
    move-exception v1

    .line 2005
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2011
    if-eqz v3, :cond_0

    .line 2013
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2016
    :catch_1
    move-exception v1

    .line 2018
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2008
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 2011
    :goto_2
    if-eqz v3, :cond_3

    .line 2013
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 2020
    :cond_3
    :goto_3
    throw v5

    .line 2016
    :catch_2
    move-exception v1

    .line 2018
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2016
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 2018
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 2008
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 2003
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public IAPLibAuthCheck()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2876
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2888
    :cond_0
    :goto_0
    return v0

    .line 2884
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getEncJuminNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    .line 2888
    goto :goto_0
.end method

.method public IAPLibInit(Lcom/feelingk/iap/IAPLibSetting;)V
    .locals 4
    .param p1, "setting"    # Lcom/feelingk/iap/IAPLibSetting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3062
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    .line 3064
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/feelingk/iap/util/CommonF;->getMDN(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3066
    .local v0, "mdn":Ljava/lang/String;
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0, v1, v2, v0, v3}, Lcom/feelingk/iap/IAPLib;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/feelingk/iap/IAPLibSetting;Ljava/lang/String;I)V

    .line 3067
    return-void
.end method

.method protected goIAPLibProcess()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x66

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2681
    const-string v1, "IAPActivity"

    const-string v2, "##  TStore Library Version = V 12.09.17"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    if-eqz v1, :cond_0

    .line 2685
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x45c

    .line 2686
    sget-object v3, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_USIM_ACTIVATE_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v3}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v3

    .line 2685
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2686
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2688
    iput v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2689
    iput-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2858
    :goto_0
    return-void

    .line 2695
    :cond_0
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " # \uc0ac\uc6a9\uac00\ub2a5\ud55c \uc815\uc0c1 \uc720\uc2ec  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    if-ne v1, v7, :cond_6

    .line 2703
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2705
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v2, ".*%.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2706
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 2710
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2720
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibAuthCheck()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2721
    iput v8, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseItemWorkFlow:I

    .line 2722
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 2712
    :catch_0
    move-exception v0

    .line 2713
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    .line 2714
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 2717
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2718
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    goto :goto_1

    .line 2725
    :cond_4
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# popPurchaseDlg PID= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / UseBPProtocol="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 2729
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    .line 2731
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 2732
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2733
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    :cond_5
    :goto_2
    iput v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2856
    iput-boolean v5, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    goto/16 :goto_0

    .line 2738
    :cond_6
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    if-ne v1, v8, :cond_b

    .line 2740
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2742
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v2, ".*%.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2743
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 2747
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2759
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2761
    :try_start_2
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2801
    :cond_9
    :goto_4
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# popPurchaseDlg TID= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 2803
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2804
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2749
    :catch_1
    move-exception v0

    .line 2750
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    .line 2751
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 2754
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_a
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 2755
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    goto :goto_3

    .line 2763
    :catch_2
    move-exception v0

    .line 2764
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    .line 2765
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 2812
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_b
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    .line 2814
    const-string v1, "IAPActivity"

    const-string v2, "# sendItemWholeAuth"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendItemWholeAuth()V

    goto/16 :goto_2

    .line 2818
    :cond_c
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_d

    .line 2820
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# sendItemAuth PID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->sendItemAuth(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2824
    :cond_d
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    .line 2826
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# sendItemUse PID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->sendItemUse(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2834
    :cond_e
    iget v1, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 2836
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "# sendPurchaseDismiss PID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2840
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v7, :cond_f

    .line 2845
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 2846
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 2848
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-static {v1}, Lcom/feelingk/iap/IAPLib;->sendPurchaseDismissCheck(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2851
    :cond_f
    const/16 v1, 0x6f

    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_DLG_AUTO_PURCHASE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto/16 :goto_2
.end method

.method public isExistOTPLog(Ljava/lang/String;)Z
    .locals 11
    .param p1, "logFileName"    # Ljava/lang/String;

    .prologue
    .line 1919
    sput-object p1, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    .line 1921
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1923
    .local v0, "bSDCardExist":Z
    const/4 v1, 0x0

    .line 1925
    .local v1, "bufferReader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 1926
    .local v7, "strPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1928
    .local v5, "path":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1929
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v5    # "path":Ljava/io/File;
    .local v6, "path":Ljava/io/File;
    move-object v5, v6

    .line 1935
    .end local v6    # "path":Ljava/io/File;
    .restart local v5    # "path":Ljava/io/File;
    :goto_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1936
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1937
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .local v2, "bufferReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1938
    const-string v8, "IAPActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " Log Read OK"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1943
    const/4 v8, 0x1

    move-object v1, v2

    .line 1951
    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    :goto_1
    return v8

    .line 1932
    :cond_0
    :try_start_2
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/feelingk/iap/IAPActivity;->m_strLogFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5    # "path":Ljava/io/File;
    .restart local v6    # "path":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "path":Ljava/io/File;
    .restart local v5    # "path":Ljava/io/File;
    goto :goto_0

    .line 1944
    :catch_0
    move-exception v3

    .line 1945
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1951
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1947
    :catch_1
    move-exception v3

    .line 1948
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1947
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 1944
    .end local v1    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v2    # "bufferReader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/16 v4, 0x67

    .line 3091
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 3092
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##   onActivityResult :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    const v1, 0xd7115

    if-ne p1, v1, :cond_1

    .line 3097
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 3098
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 3100
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onActivityResult] pwdAuthFlag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    const/4 v0, 0x0

    .line 3107
    .local v0, "lguPlusFlag":Z
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 3109
    const/4 v0, 0x1

    .line 3115
    :cond_0
    if-eqz v0, :cond_3

    .line 3116
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    .line 3120
    invoke-static {}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getInstance()Lcom/feelingk/iap/gui/data/SingletonCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/feelingk/iap/gui/data/SingletonCounter;->getmPostPay()I

    move-result v1

    if-lez v1, :cond_2

    .line 3121
    const-string v1, "IAPActivity"

    const-string v2, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561 0\uc6d0 \ucd08\uacfc"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    .line 3138
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    .line 3139
    const-string v1, "IAPActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onActivityResult 2] pwdAuthFlag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/feelingk/iap/IAPActivity;->pwdAuthFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3157
    .end local v0    # "lguPlusFlag":Z
    :cond_1
    :goto_1
    return-void

    .line 3126
    .restart local v0    # "lguPlusFlag":Z
    :cond_2
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 3127
    const-string v1, "IAPActivity"

    const-string v2, "\ud6c4\ubd88\uacb0\uc81c \uae08\uc561\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc74c"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto :goto_0

    .line 3134
    :cond_3
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 3135
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    invoke-interface {v1}, Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;->onPurchaseButtonClick()V

    goto :goto_0

    .line 3142
    .end local v0    # "lguPlusFlag":Z
    :cond_4
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 3143
    const-string v1, "IAPActivity"

    const-string v2, "[onActivityResult] mCurTelecom is LG_TELECOM"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    const-string v1, "IAPActivity"

    const-string v2, "[onActivityResult] result code is not RESULT_OK"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    const-string v1, "IAPActivity"

    const-string v2, "[onActivityResult] showPurchaseDialog Pop!!"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    if-eqz v1, :cond_5

    .line 3147
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {p0, v1}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    .line 3148
    invoke-static {v4}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_1

    .line 3151
    :cond_5
    const-string v1, "IAPActivity"

    const-string v2, "[onActivityResult] mItemInfoConfirm is null"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->isEnablePermission()Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v4, Lcom/feelingk/iap/util/CommonString$Index;->WARNING_PERMISSION:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v4}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mStrNotExistPermissionList:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/feelingk/iap/IAPActivity;->mStrNotExistPermissionList:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 232
    sget-object v4, Lcom/feelingk/iap/util/CommonString$Index;->CONFIRM:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v4}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 234
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 235
    new-instance v4, Lcom/feelingk/iap/IAPActivity$32;

    invoke-direct {v4, p0}, Lcom/feelingk/iap/IAPActivity$32;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 300
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v4, "IAPActivity"

    const-string v5, "IAPActivity onCreate "

    invoke-static {v4, v5}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 251
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/feelingk/iap/IAPActivity;->dirPath:Ljava/lang/String;

    .line 254
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/feelingk/iap/IAPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_telephonyManager:Landroid/telephony/TelephonyManager;

    .line 257
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 258
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-lez v4, :cond_1

    .line 260
    const v3, 0x1030011

    .line 261
    .local v3, "theme":I
    new-instance v4, Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/feelingk/iap/gui/view/PurchaseDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;Z)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 262
    new-instance v4, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 263
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v5, v3, v6}, Lcom/feelingk/iap/gui/view/PopupDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;IZ)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 264
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 265
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupImageDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupImageDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 266
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 267
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 268
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    .line 269
    new-instance v4, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    .line 270
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    .line 271
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onOcbCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    .line 272
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    .line 273
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    .line 275
    new-instance v4, Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onForeignInputMDNCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v5, v3, v6}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;IZ)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mForeignInputMDN:Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    .line 299
    :goto_1
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->RestoreData()V

    goto/16 :goto_0

    .line 280
    .end local v3    # "theme":I
    :cond_1
    const v3, 0x1030010

    .line 281
    .restart local v3    # "theme":I
    new-instance v4, Lcom/feelingk/iap/gui/view/PurchaseDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onPurchasePopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/feelingk/iap/gui/view/PurchaseDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserResultCallback;Z)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseDlg:Lcom/feelingk/iap/gui/view/PurchaseDialog;

    .line 282
    new-instance v4, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onJuminDialogPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v3, v5, v6}, Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserAuthResultCallback;Z)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mJuminAuth:Lcom/feelingk/iap/gui/view/PopJuminNumberAuth;

    .line 283
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onParserPopupDlgResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v5, v3, v6}, Lcom/feelingk/iap/gui/view/PopupDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserPopupDlgResultCallback;IZ)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mPopupDlg:Lcom/feelingk/iap/gui/view/PopupDialog;

    .line 284
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onPopupCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserYesNoResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 285
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupImageDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onImageResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupImageDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserImageResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    .line 286
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onAutoPurchaseFormResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserAutoPurchaseFormResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    .line 287
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onJoinResultCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserJoinResultCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    .line 288
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onOtpCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupOTPDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOtpCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mOtpDlg:Lcom/feelingk/iap/gui/view/PopupOTPDialog;

    .line 289
    new-instance v4, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onLguSmsCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserLguSmsAuthCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mLguSmsDlg:Lcom/feelingk/iap/gui/view/PopLguSmsAuthDialog;

    .line 290
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onImeiAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;

    invoke-direct {v4, p0, v5, v3}, Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserIMEIAuthCallback;I)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mImeiAuthDlg:Lcom/feelingk/iap/gui/view/PopupImeiAuthDialog;

    .line 291
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onOcbCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupOCBDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserOCBCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mOCBDlg:Lcom/feelingk/iap/gui/view/PopupOCBDialog;

    .line 292
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onCultureLandCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserCultureLandCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mCultureLandLoginDlg:Lcom/feelingk/iap/gui/view/PopupCultureLandLoginDialog;

    .line 293
    new-instance v4, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onDotoriSmsAuthCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;

    invoke-direct {v4, p0, v3, v5}, Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;-><init>(Landroid/content/Context;ILcom/feelingk/iap/gui/parser/ParserXML$ParserDotoriSmsAuthCallback;)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthDlg:Lcom/feelingk/iap/gui/view/PopupDotoriSmsAuth;

    .line 295
    new-instance v4, Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->onForeignInputMDNCallback:Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;

    iget-boolean v6, p0, Lcom/feelingk/iap/IAPActivity;->mTabDevice:Z

    invoke-direct {v4, p0, v5, v3, v6}, Lcom/feelingk/iap/gui/view/ForeignInputMDN;-><init>(Landroid/content/Context;Lcom/feelingk/iap/gui/parser/ParserXML$ParserForeignInputMDNResultCallback;IZ)V

    iput-object v4, p0, Lcom/feelingk/iap/IAPActivity;->mForeignInputMDN:Lcom/feelingk/iap/gui/view/ForeignInputMDN;

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/16 v7, 0x68

    const/16 v6, 0x64

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 399
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v2

    .line 400
    .local v2, "nDlgType":I
    const-string v3, "IAPActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IAPActivity onPause ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    .line 404
    if-ne v2, v7, :cond_0

    .line 482
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getNetHandler()Landroid/os/Handler;

    move-result-object v0

    .line 409
    .local v0, "hnd":Landroid/os/Handler;
    const/16 v3, 0x44e

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 410
    .local v1, "msgNetwork":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 412
    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    .line 415
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    .line 416
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 481
    :cond_1
    :goto_1
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/feelingk/iap/IAPLib;->setUIHandler(Landroid/os/Handler;)V

    goto :goto_0

    .line 418
    :cond_2
    const/16 v3, 0x67

    if-ne v2, v3, :cond_3

    .line 419
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissPurchaseDialog()V

    goto :goto_1

    .line 421
    :cond_3
    const/16 v3, 0x6b

    if-ne v2, v3, :cond_4

    .line 422
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJoinDialog()V

    goto :goto_1

    .line 424
    :cond_4
    const/16 v3, 0x6c

    if-ne v2, v3, :cond_5

    .line 425
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissAutoPurchaseFormDialog()V

    goto :goto_1

    .line 427
    :cond_5
    const/16 v3, 0x69

    if-ne v2, v3, :cond_6

    .line 428
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    goto :goto_1

    .line 430
    :cond_6
    const/16 v3, 0x65

    if-eq v2, v3, :cond_7

    .line 431
    const/16 v3, 0x7f

    if-eq v2, v3, :cond_7

    .line 432
    const/16 v3, 0x80

    if-eq v2, v3, :cond_7

    .line 433
    const/16 v3, 0x82

    if-ne v2, v3, :cond_8

    .line 434
    :cond_7
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    .line 435
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_1

    .line 440
    :cond_8
    const/16 v3, 0x73

    if-ne v2, v3, :cond_9

    .line 441
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V

    goto :goto_1

    .line 442
    :cond_9
    const/16 v3, 0x6a

    if-ne v2, v3, :cond_a

    .line 443
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissJuminAuthDialog()V

    goto :goto_1

    .line 446
    :cond_a
    const/16 v3, 0x7c

    if-ne v2, v3, :cond_b

    .line 447
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissForeignInputMDNDialog()V

    goto :goto_1

    .line 449
    :cond_b
    const/16 v3, 0x70

    if-ne v2, v3, :cond_c

    .line 450
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    goto :goto_1

    .line 452
    :cond_c
    if-ne v2, v7, :cond_d

    .line 453
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLoaingProgress()V

    .line 454
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_1

    .line 456
    :cond_d
    const/16 v3, 0x72

    if-ne v2, v3, :cond_e

    .line 457
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOtpDlg()V

    goto :goto_1

    .line 458
    :cond_e
    const/16 v3, 0x74

    if-ne v2, v3, :cond_f

    .line 459
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    goto :goto_1

    .line 460
    :cond_f
    const/16 v3, 0x75

    if-ne v2, v3, :cond_10

    .line 461
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissInfoMessageDialog()V

    .line 462
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissLguSMSAuthDlg()V

    goto/16 :goto_1

    .line 464
    :cond_10
    const/16 v3, 0x76

    if-ne v2, v3, :cond_11

    .line 465
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissImeiAuthDlg()V

    goto/16 :goto_1

    .line 466
    :cond_11
    const/16 v3, 0x78

    if-ne v2, v3, :cond_12

    .line 467
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOCBRegDialog()V

    goto/16 :goto_1

    .line 468
    :cond_12
    const/16 v3, 0x79

    if-ne v2, v3, :cond_13

    .line 469
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissOCBPWDDialog()V

    goto/16 :goto_1

    .line 470
    :cond_13
    const/16 v3, 0x7a

    if-ne v2, v3, :cond_14

    .line 471
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissCultureLandLoginDialog()V

    goto/16 :goto_1

    .line 472
    :cond_14
    const/16 v3, 0x7b

    if-ne v2, v3, :cond_15

    .line 473
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissDotoriSmsAuthDialog()V

    goto/16 :goto_1

    .line 474
    :cond_15
    const/16 v3, 0x81

    if-ne v2, v3, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->DismissYesNoDialog()V

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x6c

    const/16 v5, 0x6b

    .line 304
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 306
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibDeviceCheck()V

    .line 308
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onResume - m_phoneUSIMState: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/feelingk/iap/IAPActivity;->m_phoneUSIMState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/16 v1, 0x64

    .line 311
    .local v1, "nDlgType":I
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 313
    :cond_0
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IAPActivity onResume ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mGUIMessageHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setUIHandler(Landroid/os/Handler;)V

    .line 316
    invoke-static {p0}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 318
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getEncJuminNumber()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "encJumin":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 324
    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->updateEncJuminNumber(Ljava/lang/String;)V

    .line 328
    .end local v0    # "encJumin":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x67

    if-ne v1, v2, :cond_3

    .line 329
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {p0, v2}, Lcom/feelingk/iap/IAPActivity;->ShowPurchaseDialog(Ljava/lang/Object;)V

    .line 393
    :cond_2
    :goto_0
    return-void

    .line 330
    :cond_3
    if-ne v1, v5, :cond_4

    .line 331
    invoke-virtual {p0}, Lcom/feelingk/iap/IAPActivity;->popupJoinDlg()V

    .line 332
    invoke-static {v5}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 334
    :cond_4
    if-ne v1, v6, :cond_5

    .line 335
    sget-object v2, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_PURCHASE_INFONAME:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v2}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_FORM_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-static {v3}, Lcom/feelingk/iap/util/CommonString;->getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/feelingk/iap/IAPActivity;->popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0

    .line 338
    :cond_5
    const/16 v2, 0x69

    if-ne v1, v2, :cond_6

    .line 339
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_6
    const/16 v2, 0x6a

    if-ne v1, v2, :cond_7

    .line 341
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowJuminAuthDialog()V

    goto :goto_0

    .line 343
    :cond_7
    const/16 v2, 0x7c

    if-ne v1, v2, :cond_8

    .line 344
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowForeignInputMDNDialog()V

    goto :goto_0

    .line 346
    :cond_8
    const/16 v2, 0x70

    if-ne v1, v2, :cond_9

    .line 347
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_9
    const/16 v2, 0x65

    if-eq v1, v2, :cond_a

    .line 349
    const/16 v2, 0x7f

    if-eq v1, v2, :cond_a

    .line 350
    const/16 v2, 0x80

    if-eq v1, v2, :cond_a

    .line 351
    const/16 v2, 0x82

    if-ne v1, v2, :cond_b

    .line 352
    :cond_a
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_b
    const/16 v2, 0x73

    if-ne v1, v2, :cond_c

    .line 354
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_c
    const/16 v2, 0x72

    if-ne v1, v2, :cond_d

    .line 356
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showPopOtpDlg()V

    goto :goto_0

    .line 357
    :cond_d
    const/16 v2, 0x74

    if-ne v1, v2, :cond_e

    .line 358
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/feelingk/iap/IAPActivity;->ShowInfoMessageDialog(ILjava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_e
    const/16 v2, 0x75

    if-ne v1, v2, :cond_f

    .line 360
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showLguSMSAuthDlg()V

    goto :goto_0

    .line 361
    :cond_f
    const/16 v2, 0x76

    if-ne v1, v2, :cond_10

    .line 362
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->showImeiAuthDlg()V

    goto/16 :goto_0

    .line 363
    :cond_10
    const/16 v2, 0x78

    if-ne v1, v2, :cond_11

    .line 364
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getOcbCardUpdateType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/feelingk/iap/IAPActivity;->ShowOCBRegDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 365
    :cond_11
    const/16 v2, 0x79

    if-ne v1, v2, :cond_12

    .line 366
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowOCBPWDDialog()V

    goto/16 :goto_0

    .line 367
    :cond_12
    const/16 v2, 0x7a

    if-ne v1, v2, :cond_13

    .line 368
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowCultureLandLoginDialog()V

    goto/16 :goto_0

    .line 369
    :cond_13
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_14

    .line 370
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowDotoriSmsAutnDialog()V

    goto/16 :goto_0

    .line 371
    :cond_14
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_15

    .line 372
    const-string v2, "IAPActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "# popPurchaseDlg TID= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->ShowLoadingProgress()V

    .line 374
    const/16 v2, 0x66

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 375
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/feelingk/iap/IAPLib;->sendItemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_15
    const/16 v2, 0x81

    if-ne v1, v2, :cond_2

    .line 378
    const/16 v2, 0x7e

    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 379
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/feelingk/iap/IAPActivity;->popupYesNoDlg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    .local v0, "dataBackupMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "NET_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mMsgItemInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v1, "ERR_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v1, "YESNO_MESSAGE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v1, "USE_BPPROTOCOL"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSetBPProtocol:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v1, "PRODUCT_NAME"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v1, "PRODUCT_INFO"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mItemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v1, "PURCHASEID"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v1, "LGUSMSAUTHCHECKTIME"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mSmsAuthCheckTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v1, "DOTORISMSAUTHCHECKTIME"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDotoriSmsAuthCheckTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v1, "DLGTYPE"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mDlgType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v1, "ENCNAME"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->mEncName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v1, "TID"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const-string v1, "ENCBPINFO"

    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->m_encBpInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-object v0
.end method

.method protected popPurchaseDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;
    .param p3, "pTID"    # Ljava/lang/String;
    .param p4, "pBPInfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2932
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2934
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2935
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    .line 2941
    :goto_0
    if-eqz p2, :cond_2

    .line 2943
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2944
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 2952
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .end local p3    # "pTID":Ljava/lang/String;
    :goto_2
    iput-object p3, p0, Lcom/feelingk/iap/IAPActivity;->m_Tid:Ljava/lang/String;

    .line 2954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2955
    const/4 v0, 0x2

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2957
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2958
    return-void

    .line 2937
    .restart local p3    # "pTID":Ljava/lang/String;
    :cond_0
    iput-object p4, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseBPInfo:Ljava/lang/String;

    goto :goto_0

    .line 2946
    :cond_1
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_1

    .line 2949
    :cond_2
    iput-object v1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    goto :goto_1

    .line 2952
    :cond_3
    invoke-static {p0, p1}, Lcom/feelingk/iap/util/CommonF;->getTID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2
.end method

.method protected popupAutoPurchaseFormDlg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "formName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    const/16 v1, 0x71

    .line 866
    new-instance v4, Lcom/feelingk/iap/IAPActivity$34;

    invoke-direct {v4, p0}, Lcom/feelingk/iap/IAPActivity$34;-><init>(Lcom/feelingk/iap/IAPActivity;)V

    .line 873
    iget v5, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    move-object v2, p1

    move-object v3, p2

    .line 865
    invoke-virtual/range {v0 .. v5}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->InflateView(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 875
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mAutoPurchaseFormDlg:Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupAutoPurchaseFormDialog;->ShowPopupAutoPurchaseFormDialog()V

    .line 877
    return-void
.end method

.method protected popupImageDlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    const/16 v1, 0x69

    .line 851
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onImageConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 850
    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 854
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mImageDlg:Lcom/feelingk/iap/gui/view/PopupImageDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupImageDialog;->ShowPopupImageDialog()V

    .line 856
    return-void
.end method

.method protected popupJoinDlg()V
    .locals 5

    .prologue
    .line 805
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/feelingk/iap/IAPActivity;->onJoinInfoListener:Landroid/view/View$OnClickListener;

    iget v4, p0, Lcom/feelingk/iap/IAPActivity;->mRotaion:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 807
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mJoinDlg:Lcom/feelingk/iap/gui/view/PopupJoinDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupJoinDialog;->ShowPopupJoinDialog()V

    .line 809
    return-void
.end method

.method protected popupYesNoDlg(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x81

    .line 817
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getDialogType()I

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    .line 820
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    .line 821
    iget-object v1, p0, Lcom/feelingk/iap/IAPActivity;->onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 820
    invoke-virtual {v0, v2, p1, v1}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 824
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->ShowPopupYesNoDialog()V

    .line 827
    invoke-static {v2}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    .line 844
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    const/16 v1, 0x69

    .line 836
    iget-object v2, p0, Lcom/feelingk/iap/IAPActivity;->onYesNoConfirmInfoListener:Landroid/view/View$OnClickListener;

    .line 835
    invoke-virtual {v0, v1, p1, v2}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->InflateView(ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 839
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mYesNoDlg:Lcom/feelingk/iap/gui/view/PopupYesNoDialog;

    invoke-virtual {v0}, Lcom/feelingk/iap/gui/view/PopupYesNoDialog;->ShowPopupYesNoDialog()V

    .line 841
    const/16 v0, 0x73

    invoke-static {v0}, Lcom/feelingk/iap/IAPLib;->setDialogType(I)V

    goto :goto_0
.end method

.method protected sendBPData([B)[B
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 3009
    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    iget-object v0, v0, Lcom/feelingk/iap/IAPLibSetting;->BP_IP:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/feelingk/iap/IAPActivity;->mSetting:Lcom/feelingk/iap/IAPLibSetting;

    iget v0, v0, Lcom/feelingk/iap/IAPLibSetting;->BP_Port:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 3011
    :cond_0
    const-string v0, "IAPActivity"

    const-string v1, "sendBPData - BP Server IP is null or invalid Port Number"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    const/4 v0, 0x0

    .line 3016
    :goto_0
    return-object v0

    .line 3015
    :cond_1
    const-string v0, "IAPActivity"

    const-string v1, "# sendBPData"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    invoke-static {p1}, Lcom/feelingk/iap/IAPLib;->sendBPData([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected sendItemAuth(Ljava/lang/String;)V
    .locals 1
    .param p1, "pID"    # Ljava/lang/String;

    .prologue
    .line 2993
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2996
    const/4 v0, 0x4

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2998
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2999
    return-void
.end method

.method protected sendItemUse(Ljava/lang/String;)V
    .locals 1
    .param p1, "pID"    # Ljava/lang/String;

    .prologue
    .line 2979
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 2981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2982
    const/4 v0, 0x5

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2984
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2985
    return-void
.end method

.method protected sendItemWholeAuth()V
    .locals 1

    .prologue
    .line 2967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 2968
    const/4 v0, 0x3

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 2970
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 2971
    return-void
.end method

.method protected sendPurchaseDismiss(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pID"    # Ljava/lang/String;
    .param p2, "pName"    # Ljava/lang/String;

    .prologue
    .line 3037
    iput-object p1, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseID:Ljava/lang/String;

    .line 3038
    iput-object p2, p0, Lcom/feelingk/iap/IAPActivity;->mPurchaseName:Ljava/lang/String;

    .line 3041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimCheckFlag:Z

    .line 3042
    const/4 v0, 0x6

    iput v0, p0, Lcom/feelingk/iap/IAPActivity;->mUsimPurchaseItemWorkFlow:I

    .line 3044
    invoke-direct {p0}, Lcom/feelingk/iap/IAPActivity;->IAPLibUSIMStateCheck()V

    .line 3045
    return-void
.end method
