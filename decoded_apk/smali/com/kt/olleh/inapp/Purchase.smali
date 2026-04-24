.class public Lcom/kt/olleh/inapp/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/olleh/inapp/Purchase$Data;
    }
.end annotation


# static fields
.field public static Dialog_Mode:I

.field public static Pay_Alert_Mode:I

.field public static config:I


# instance fields
.field private final Dialog_Alert:I

.field private final Dialog_Cancel:I

.field private final Dialog_Check:I

.field private final Dialog_Dismiss:I

.field private final Dialog_List:I

.field private final Dialog_Loding:I

.field private final Dialog_Login:I

.field private final Dialog_New_Pwd:I

.field private final Dialog_Pay:I

.field private final Dialog_Pay_No_Pwd:I

.field private final Dialog_Pwd_Ret:I

.field private final Dialog_Select:I

.field private final Dialog_Web_Pay:I

.field private final Pay_Alert_Mode_01:I

.field private final Pay_Alert_Mode_02:I

.field private final Pay_Alert_Mode_03:I

.field private final Pay_Alert_Mode_04:I

.field private final Pay_Alert_Mode_11:I

.field private final Pay_Alert_Mode_12:I

.field private final Pay_Alert_Mode_13:I

.field private final Pay_Alert_Mode_14:I

.field public final TAG:Ljava/lang/String;

.field private dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

.field private dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

.field private dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

.field private dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

.field private dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

.field private dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

.field private dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

.field private dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

.field private errorCode:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field private mApplicationID:Ljava/lang/String;

.field private mAuthen:Ljava/lang/String;

.field private mCardName:Ljava/lang/String;

.field private mCo_id:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDialog_BtnCnt:I

.field private mDialog_Btn_Text_01:Ljava/lang/String;

.field private mDialog_Btn_Text_02:Ljava/lang/String;

.field private mDialog_Message:Ljava/lang/String;

.field private mDialog_Title:Ljava/lang/String;

.field private mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

.field private mDigitalID:Ljava/lang/String;

.field private mInApp:Lcom/kt/olleh/inapp/InApp;

.field mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private mIsPayInformation:Z

.field private mIsPayMessage:Z

.field private mIsSetCheck:Z

.field private mIsSetPwd:Z

.field private mItem_Name:Ljava/lang/String;

.field private mItem_Price:I

.field private mLibMode:I

.field private mListener:Lcom/kt/olleh/inapp/OnInAppListener;

.field private mLmt_Price:Ljava/lang/String;

.field private mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

.field private mModel_name:Ljava/lang/String;

.field private mOpCode:Ljava/lang/String;

.field private mOrderNo:Ljava/lang/String;

.field private mPayAmount:Ljava/lang/String;

.field private mPayStoreId:Ljava/lang/String;

.field private mPay_Type:Ljava/lang/String;

.field private mReturnUrl:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mTr_ID:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUser_id:Ljava/lang/String;

.field private postData:Ljava/lang/String;

.field private purchaseEnd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 97
    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 98
    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 61
    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x3f4

    const/16 v4, 0x3f3

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Alert:I

    .line 73
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_List:I

    .line 74
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Pay:I

    .line 75
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Loding:I

    .line 76
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Dismiss:I

    .line 77
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Login:I

    .line 78
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Select:I

    .line 79
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Check:I

    .line 80
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Pay_No_Pwd:I

    .line 81
    const/16 v0, 0x3f1

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Cancel:I

    .line 82
    const/16 v0, 0x3f2

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_New_Pwd:I

    .line 83
    iput v4, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Pwd_Ret:I

    .line 84
    iput v5, p0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Web_Pay:I

    .line 86
    iput v4, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_01:I

    .line 87
    iput v5, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_02:I

    .line 88
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_03:I

    .line 89
    const/16 v0, 0x3f6

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_04:I

    .line 92
    const/16 v0, 0x3fd

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_11:I

    .line 93
    const/16 v0, 0x3fe

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_12:I

    .line 94
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_13:I

    .line 95
    const/16 v0, 0x400

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode_14:I

    .line 100
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 101
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    .line 105
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 106
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 107
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    .line 110
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    .line 111
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 122
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 126
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    .line 127
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    .line 128
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    .line 129
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    .line 130
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    .line 131
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    .line 132
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    .line 133
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    .line 135
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->purchaseEnd:Z

    .line 154
    const-string v0, "Purchase"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->TAG:Ljava/lang/String;

    .line 987
    new-instance v0, Lcom/kt/olleh/inapp/Purchase$1;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/Purchase$1;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->handler:Landroid/os/Handler;

    .line 1468
    new-instance v0, Lcom/kt/olleh/inapp/Purchase$2;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/Purchase$2;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 157
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 158
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 161
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    .line 162
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    .line 163
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 164
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 165
    return-void
.end method

.method private CancelDialog()V
    .locals 5

    .prologue
    .line 1070
    const/16 v0, 0x3f1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 1072
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogCancel;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogCancel;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    .line 1073
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    const-string v1, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setTitle(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    const-string v1, "\uacb0\uc81c\ub97c \ud558\uc9c0 \uc54a\uc73c\uc168\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setMessage(Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    const/4 v1, 0x0

    const-string v2, "\ud655\uc778"

    .line 1076
    new-instance v3, Lcom/kt/olleh/inapp/Purchase$25;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$25;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 1075
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 1083
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$26;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$26;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1091
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCancel;->show()V

    .line 1093
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 1094
    return-void
.end method

.method private DialogPwdRet()V
    .locals 5

    .prologue
    .line 1097
    const/16 v0, 0x3f3

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 1099
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    .line 1100
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setTitle(Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setMessage(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    const/4 v1, 0x0

    const-string v2, "\ud655\uc778"

    .line 1103
    new-instance v3, Lcom/kt/olleh/inapp/Purchase$27;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$27;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 1102
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 1116
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$28;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$28;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1126
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->show()V

    .line 1128
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 1130
    return-void
.end method

.method private DialogWebPay()V
    .locals 2

    .prologue
    .line 1050
    const/16 v0, 0x3f4

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 1052
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;-><init>(Landroid/content/Context;Lcom/kt/olleh/inapp/Purchase;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    .line 1053
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->setUrl(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->postData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->setPostData(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$24;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$24;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1064
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogWebPay;->show()V

    .line 1066
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 1067
    return-void
.end method

.method private ErrorDialog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1286
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 1287
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->AlertDialog()V

    .line 1288
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->CancelDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->DialogPwdRet()V

    return-void
.end method

.method static synthetic access$10(Lcom/kt/olleh/inapp/Purchase;Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    return-void
.end method

.method static synthetic access$11(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mLmt_Price:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/kt/olleh/inapp/Purchase;)Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    return v0
.end method

.method static synthetic access$14(Lcom/kt/olleh/inapp/Purchase;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPay;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kt/olleh/inapp/Purchase;Z)V
    .locals 0

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    return-void
.end method

.method static synthetic access$17(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    return-void
.end method

.method static synthetic access$18(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mCo_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->DialogWebPay()V

    return-void
.end method

.method static synthetic access$20(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/net/ResBuyDIUrl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1695
    invoke-direct {p0, p1}, Lcom/kt/olleh/inapp/Purchase;->setPostData(Lcom/kt/olleh/inapp/net/ResBuyDIUrl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$21(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->postData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getCheckYN()V

    return-void
.end method

.method static synthetic access$23(Lcom/kt/olleh/inapp/Purchase;)Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    return v0
.end method

.method static synthetic access$24(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    return-object v0
.end method

.method static synthetic access$26(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/OnInAppListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    return-object v0
.end method

.method static synthetic access$28(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogProgress;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    return-object v0
.end method

.method static synthetic access$30(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogAlert;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    return-object v0
.end method

.method static synthetic access$33(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$35(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCheck;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    return-object v0
.end method

.method static synthetic access$36(Lcom/kt/olleh/inapp/Purchase;)V
    .locals 0

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->setCheckYN()V

    return-void
.end method

.method static synthetic access$37(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    return-object v0
.end method

.method static synthetic access$38(Lcom/kt/olleh/inapp/Purchase;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$39(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    return-void
.end method

.method static synthetic access$4(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogProgress;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    return-void
.end method

.method static synthetic access$40(Lcom/kt/olleh/inapp/Purchase;Lcom/kt/olleh/inapp/dialog/DialogPay;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    return-void
.end method

.method static synthetic access$41(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogWebPay;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogWebPay:Lcom/kt/olleh/inapp/dialog/DialogWebPay;

    return-object v0
.end method

.method static synthetic access$42(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogCancel;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCancel:Lcom/kt/olleh/inapp/dialog/DialogCancel;

    return-object v0
.end method

.method static synthetic access$43(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPwdRet;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPwdRet:Lcom/kt/olleh/inapp/dialog/DialogPwdRet;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kt/olleh/inapp/Purchase;I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    return-void
.end method

.method static synthetic access$6(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/kt/olleh/inapp/Purchase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    return-void
.end method

.method private checkDpi()V
    .locals 4

    .prologue
    .line 197
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 198
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    .line 200
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "Purchase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dpi = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/kt/olleh/inapp/Config/Config;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1730
    if-nez p1, :cond_0

    .line 1731
    const-string p1, ""

    .line 1733
    :cond_0
    return-object p1
.end method

.method private getCheckYN()V
    .locals 18

    .prologue
    .line 1133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1134
    const-string v2, "content://com.kt.olleh.app.manager.inapp/inapp"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1133
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1135
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 1136
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1137
    const-string v1, "Result"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1138
    .local v8, "checkIdx":I
    const/4 v1, -0x1

    if-le v8, v1, :cond_3

    .line 1139
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1140
    const-string v1, "1"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1141
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 1142
    invoke-direct/range {p0 .. p0}, Lcom/kt/olleh/inapp/Purchase;->writeSDYN()V

    .line 1185
    .end local v8    # "checkIdx":I
    :cond_0
    :goto_0
    return-void

    .line 1145
    .restart local v8    # "checkIdx":I
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 1152
    .end local v8    # "checkIdx":I
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1154
    .local v12, "ext":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1159
    .local v16, "mSdPath":Ljava/lang/String;
    :goto_2
    new-instance v13, Ljava/io/File;

    const-string v1, "/data/inapp.txt"

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    .local v13, "file":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .local v14, "inappText":Ljava/lang/StringBuilder;
    const-string v17, ""

    .line 1162
    .local v17, "result":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1164
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1166
    .local v7, "br":Ljava/io/BufferedReader;
    :goto_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_5

    .line 1169
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1170
    const-string v1, "1"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1171
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/kt/olleh/inapp/Purchase;->writeMarketYN()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1177
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1178
    .local v11, "e1":Ljava/io/FileNotFoundException;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1148
    .end local v11    # "e1":Ljava/io/FileNotFoundException;
    .end local v12    # "ext":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "inappText":Ljava/lang/StringBuilder;
    .end local v16    # "mSdPath":Ljava/lang/String;
    .end local v17    # "result":Ljava/lang/String;
    .restart local v8    # "checkIdx":I
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    goto :goto_1

    .line 1157
    .end local v8    # "checkIdx":I
    .restart local v12    # "ext":Ljava/lang/String;
    :cond_4
    const-string v16, "unmounted/"

    .restart local v16    # "mSdPath":Ljava/lang/String;
    goto :goto_2

    .line 1167
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "inappText":Ljava/lang/StringBuilder;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "result":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1179
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1180
    .local v10, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1175
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1183
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    goto/16 :goto_0
.end method

.method private getUserInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1297
    const/4 v5, 0x0

    .line 1298
    .local v5, "userInfo":Ljava/lang/String;
    sget-object v6, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 1299
    iget v6, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    packed-switch v6, :pswitch_data_0

    .line 1317
    :cond_0
    :goto_0
    sget-object v6, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1318
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1319
    const-string v6, "Purchase"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UserInfo.information = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :cond_1
    sget-object v5, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    .line 1324
    const/4 v2, 0x0

    .line 1326
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1327
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1328
    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1329
    sput-object v2, Lcom/kt/olleh/inapp/Config/Config;->tCompanyCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    return-object v5

    .line 1301
    .end local v2    # "ret":Ljava/lang/String;
    :pswitch_0
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 1302
    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1301
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1303
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1304
    .local v1, "phoneNo":Ljava/lang/String;
    sput-object v1, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    goto :goto_0

    .line 1307
    .end local v1    # "phoneNo":Ljava/lang/String;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_1
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1308
    const-string v6, "Purchase"

    const-string v7, "ILibMode.mode_SoIP number not exist"

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1311
    :pswitch_2
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1312
    const-string v6, "Purchase"

    const-string v7, "ILibMode.mode_KPAD Show ID not exist"

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1330
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1332
    const-string v6, "AAAAA"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IMSI load Failed, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setCheckYN()V
    .locals 9

    .prologue
    .line 1221
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1222
    .local v0, "contentValue":Landroid/content/ContentValues;
    const-string v7, "check"

    const-string v8, "1"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://com.kt.olleh.app.manager.inapp/inapp"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    .end local v0    # "contentValue":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 1231
    .local v3, "ext":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1236
    .local v5, "mSdPath":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/"

    invoke-direct {v1, v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1238
    new-instance v4, Ljava/io/File;

    const-string v7, "inapp.txt"

    invoke-direct {v4, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1240
    .local v4, "file":Ljava/io/File;
    new-instance v6, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1241
    .local v6, "out":Ljava/io/BufferedWriter;
    const-string v7, "1\n"

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->newLine()V

    .line 1243
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1247
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "mSdPath":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_2
    return-void

    .line 1224
    :catch_0
    move-exception v2

    .line 1225
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1234
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "ext":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v5, "unmounted/"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v5    # "mSdPath":Ljava/lang/String;
    goto :goto_1

    .line 1244
    .end local v3    # "ext":Ljava/lang/String;
    .end local v5    # "mSdPath":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1245
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private setPostData(Lcom/kt/olleh/inapp/net/ResBuyDIUrl;)Ljava/lang/String;
    .locals 5
    .param p1, "res"    # Lcom/kt/olleh/inapp/net/ResBuyDIUrl;

    .prologue
    .line 1696
    const-string v1, ""

    .line 1697
    .local v1, "postData":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "opCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mOpCode:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/Purchase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&payStoreId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mPayStoreId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/Purchase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&orderNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mOrderNo:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/Purchase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mSessionId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/Purchase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&payMethod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mPayMethod:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/Purchase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&payAmount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mPayAmount:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/Purchase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&payName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mPayName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kt/olleh/inapp/Purchase;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1705
    :try_start_0
    iget-object v2, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mCustName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&custName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mSymmetric_key:Ljava/lang/String;

    iget-object v4, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mCustName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1710
    :goto_0
    iget-object v2, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mCustPhone:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&custPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mSymmetric_key:Ljava/lang/String;

    iget-object v4, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mCustPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1715
    :goto_1
    iget-object v2, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mCustEmail:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&custEmail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mSymmetric_key:Ljava/lang/String;

    iget-object v4, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mCustEmail:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1725
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&returnUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/kt/olleh/inapp/net/ResBuyDIUrl;->mReturnUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1726
    return-object v1

    .line 1708
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&custName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1713
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&custPhone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1718
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&custEmail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    .line 1720
    :catch_0
    move-exception v0

    .line 1722
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private writeMarketYN()V
    .locals 4

    .prologue
    .line 1189
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1190
    .local v0, "contentValue":Landroid/content/ContentValues;
    const-string v2, "check"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.kt.olleh.app.manager.inapp/inapp"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    .end local v0    # "contentValue":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 1192
    :catch_0
    move-exception v1

    .line 1193
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeSDYN()V
    .locals 8

    .prologue
    .line 1200
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1201
    .local v2, "ext":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, "mSdPath":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/"

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1208
    new-instance v3, Ljava/io/File;

    const-string v6, "inapp.txt"

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1210
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1211
    .local v5, "out":Ljava/io/BufferedWriter;
    const-string v6, "1\n"

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1213
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 1217
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "ext":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "mSdPath":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return-void

    .line 1204
    .restart local v2    # "ext":Ljava/lang/String;
    :cond_1
    const-string v4, "unmounted/"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "mSdPath":Ljava/lang/String;
    goto :goto_0

    .line 1214
    .end local v2    # "ext":Ljava/lang/String;
    .end local v4    # "mSdPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1215
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public AlertDialog()V
    .locals 6

    .prologue
    .line 352
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 353
    .local v0, "prevMode":I
    const/16 v1, 0x3e8

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 355
    new-instance v1, Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogAlert;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    .line 356
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setMessage(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    const/4 v2, 0x0

    const-string v3, "\ud655\uc778"

    new-instance v4, Lcom/kt/olleh/inapp/Purchase$7;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    invoke-direct {v4, p0, v5, v0}, Lcom/kt/olleh/inapp/Purchase$7;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 399
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    new-instance v2, Lcom/kt/olleh/inapp/Purchase$8;

    invoke-direct {v2, p0, v0}, Lcom/kt/olleh/inapp/Purchase$8;-><init>(Lcom/kt/olleh/inapp/Purchase;I)V

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 441
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    invoke-virtual {v1}, Lcom/kt/olleh/inapp/dialog/DialogAlert;->show()V

    .line 443
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->dialogAlert:Lcom/kt/olleh/inapp/dialog/DialogAlert;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 444
    return-void
.end method

.method public CheckDialog()V
    .locals 5

    .prologue
    .line 447
    const/16 v0, 0x3ef

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 448
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogCheck;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    .line 449
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815 \uc548\ub0b4"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setMessage(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "olleh \ub9c8\ucf13\uc5d0\uc11c\ub294 \uc548\uc804\ud55c\n\uc720\ub8cc \uc544\uc774\ud15c \uacb0\uc81c\ub97c \uc704\ud574\n\ubcf4\uc548\ubc88\ud638 \uc124\uc815\uc744 \uad8c\uc7a5\ud569\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setMessage2(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const-string v1, "\uc9c0\uae08 \ubcf4\uc548\ubc88\ud638\ub97c \uc124\uc815\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setMessage3(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const/4 v1, 0x0

    const-string v2, "\uc608, \uc9c0\uae08 \uc124\uc815\ud569\ub2c8\ub2e4."

    new-instance v3, Lcom/kt/olleh/inapp/Purchase$9;

    .line 454
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$9;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 453
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    const/4 v1, 0x1

    const-string v2, "\uc544\ub2c8\uc624, \ub2e4\uc74c\uc5d0 \uc124\uc815\ud569\ub2c8\ub2e4."

    new-instance v3, Lcom/kt/olleh/inapp/Purchase$10;

    .line 462
    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$10;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 461
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$11;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$11;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 483
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->show()V

    .line 485
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 486
    return-void
.end method

.method public CheckPin()V
    .locals 6

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1447
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 1449
    .local v1, "userInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mUser_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->mModel_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual/range {v0 .. v5}, Lcom/kt/olleh/inapp/InApp;->CheckPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1450
    return-void
.end method

.method public LodingDialog()V
    .locals 3

    .prologue
    .line 902
    const/16 v0, 0x3eb

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 904
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogProgress;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogProgress;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    .line 905
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$23;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$23;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogProgress;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 928
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogProgress;->show()V

    .line 930
    :cond_0
    return-void
.end method

.method public LoginDialog()V
    .locals 4

    .prologue
    .line 279
    const/16 v0, 0x3ed

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 281
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogLogin;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    .line 283
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    const-string v1, "olleh.com \ub85c\uadf8\uc778"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    const/4 v1, 0x0

    new-instance v2, Lcom/kt/olleh/inapp/Purchase$3;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    invoke-direct {v2, p0, v3}, Lcom/kt/olleh/inapp/Purchase$3;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setButton(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    const/4 v1, 0x1

    new-instance v2, Lcom/kt/olleh/inapp/Purchase$4;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    invoke-direct {v2, p0, v3}, Lcom/kt/olleh/inapp/Purchase$4;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setButton(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->show()V

    .line 303
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLoginDialog:Lcom/kt/olleh/inapp/dialog/DialogLogin;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 304
    return-void
.end method

.method public NewPwdDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 489
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_0

    .line 490
    iput-boolean v5, p0, Lcom/kt/olleh/inapp/Purchase;->purchaseEnd:Z

    .line 492
    :cond_0
    const/16 v0, 0x3f2

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 493
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    .line 494
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    const-string v1, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815"

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    const/4 v1, 0x0

    const-string v2, "\ud655\uc778"

    .line 496
    new-instance v3, Lcom/kt/olleh/inapp/Purchase$12;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-direct {v3, p0, v4}, Lcom/kt/olleh/inapp/Purchase$12;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 495
    invoke-virtual {v0, v1, v2, v3}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 518
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    const-string v1, "\ucde8\uc18c"

    .line 519
    new-instance v2, Lcom/kt/olleh/inapp/Purchase$13;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-direct {v2, p0, v3}, Lcom/kt/olleh/inapp/Purchase$13;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 518
    invoke-virtual {v0, v5, v1, v2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 527
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$14;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$14;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 537
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->show()V

    .line 539
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 540
    return-void
.end method

.method public PayDialog(I)V
    .locals 11
    .param p1, "mode"    # I

    .prologue
    .line 693
    const/16 v6, 0x3ea

    sput v6, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 694
    new-instance v6, Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->getConfig()I

    move-result v9

    invoke-direct {v6, v7, v8, v9, p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;-><init>(Landroid/content/Context;IILcom/kt/olleh/inapp/Purchase;)V

    iput-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    .line 696
    const/16 v6, 0x3f6

    if-ne p1, v6, :cond_0

    .line 697
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setMessage(Ljava/lang/String;)V

    .line 700
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setBgColor(Z)V

    .line 750
    :goto_0
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    new-instance v9, Lcom/kt/olleh/inapp/Purchase$19;

    iget-object v10, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-direct {v9, p0, v10, p1}, Lcom/kt/olleh/inapp/Purchase$19;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 817
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    new-instance v9, Lcom/kt/olleh/inapp/Purchase$20;

    iget-object v10, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-direct {v9, p0, v10, p1}, Lcom/kt/olleh/inapp/Purchase$20;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 833
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    new-instance v7, Lcom/kt/olleh/inapp/Purchase$21;

    invoke-direct {v7, p0, p1}, Lcom/kt/olleh/inapp/Purchase$21;-><init>(Lcom/kt/olleh/inapp/Purchase;I)V

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 855
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-boolean v7, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayInformation(Z)V

    .line 856
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-boolean v7, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayMessage(Z)V

    .line 857
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6}, Lcom/kt/olleh/inapp/dialog/DialogPay;->show()V

    .line 858
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iput-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 859
    return-void

    .line 701
    :cond_0
    const/16 v6, 0x3f4

    if-ne p1, v6, :cond_1

    .line 702
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setMessage(Ljava/lang/String;)V

    .line 705
    iget v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, "price":Ljava/lang/String;
    const-string v6, "%s\uc744 \uacb0\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "msg":Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameTitle(Z)V

    .line 710
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 711
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 712
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6, v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 713
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayTypeMessage(Ljava/lang/String;)V

    .line 715
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 716
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 718
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setBgColor(Z)V

    goto/16 :goto_0

    .line 720
    .end local v0    # "msg":Ljava/lang/String;
    .end local v5    # "price":Ljava/lang/String;
    :cond_1
    sget v6, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    const/16 v7, 0x3f5

    if-ne v6, v7, :cond_2

    .line 721
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \uc644\ub8cc"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchaseEnd(Z)V

    .line 726
    :goto_1
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setMessage(Ljava/lang/String;)V

    .line 728
    iget v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 730
    .restart local v5    # "price":Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameTitle(Z)V

    .line 731
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-le v6, v7, :cond_3

    .line 732
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "msgPayItemName1":Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "msgPayItemName2":Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 736
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 741
    .end local v1    # "msgPayItemName1":Ljava/lang/String;
    .end local v2    # "msgPayItemName2":Ljava/lang/String;
    :goto_2
    const-string v6, "\uacb0\uc81c\uae08\uc561:%s(\ubd80\uac00\uc138 \ud3ec\ud568)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 742
    .local v3, "msgPayMoney":Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6, v3}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 743
    const-string v6, "\uacb0\uc81c\ubc29\uc2dd:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 744
    .local v4, "msgPayType":Ljava/lang/String;
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v6, v4}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayTypeMessage(Ljava/lang/String;)V

    .line 746
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 747
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setBgColor(Z)V

    .line 748
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    iget-boolean v7, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPwdOn(Z)V

    goto/16 :goto_0

    .line 724
    .end local v3    # "msgPayMoney":Ljava/lang/String;
    .end local v4    # "msgPayType":Ljava/lang/String;
    .end local v5    # "price":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const-string v7, "\uacb0\uc81c \uc548\ub0b4"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 738
    .restart local v5    # "price":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    .line 739
    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setPayNameMessage(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public PayDialogNoPwd(I)V
    .locals 13
    .param p1, "mode"    # I

    .prologue
    const/16 v12, 0xc

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 543
    const/16 v5, 0x3f0

    sput v5, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 544
    new-instance v5, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    invoke-direct {v5, v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    .line 545
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\uacb0\uc81c\uc548\ub0b4"

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\ud574\ub2f9 \uc544\uc774\ud15c\uc744 \uad6c\ub9e4\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 548
    const/16 v5, 0x400

    if-ne p1, v5, :cond_0

    .line 549
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 552
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v10}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setBgColor(Z)V

    .line 603
    :goto_0
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 604
    new-instance v7, Lcom/kt/olleh/inapp/Purchase$15;

    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-direct {v7, p0, v8, p1}, Lcom/kt/olleh/inapp/Purchase$15;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    .line 603
    invoke-virtual {v5, v10, v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 641
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\ucde8\uc18c"

    new-instance v7, Lcom/kt/olleh/inapp/Purchase$16;

    .line 642
    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-direct {v7, p0, v8, p1}, Lcom/kt/olleh/inapp/Purchase$16;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V

    .line 641
    invoke-virtual {v5, v11, v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 657
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\ubcf4\uc548\ubc88\ud638 \uc124\uc815"

    new-instance v7, Lcom/kt/olleh/inapp/Purchase$17;

    .line 658
    iget-object v8, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-direct {v7, p0, v8}, Lcom/kt/olleh/inapp/Purchase$17;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    .line 657
    invoke-virtual {v5, v9, v6, v7}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 665
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    new-instance v6, Lcom/kt/olleh/inapp/Purchase$18;

    invoke-direct {v6, p0, p1}, Lcom/kt/olleh/inapp/Purchase$18;-><init>(Lcom/kt/olleh/inapp/Purchase;I)V

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 687
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->show()V

    .line 689
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iput-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 690
    return-void

    .line 553
    :cond_0
    const/16 v5, 0x3fe

    if-ne p1, v5, :cond_1

    .line 554
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\uacb0\uc81c \ud655\uc778"

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 557
    iget v5, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, "price":Ljava/lang/String;
    const-string v5, "%s\uc744 \uacb0\uc81c\ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "msg":Ljava/lang/String;
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v9, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 562
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v11, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 563
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayTypeMessage(Ljava/lang/String;)V

    .line 566
    iput-boolean v9, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 567
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setIsPayInformation(Z)V

    .line 569
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setBgColor(Z)V

    goto/16 :goto_0

    .line 571
    .end local v0    # "msg":Ljava/lang/String;
    .end local v4    # "price":Ljava/lang/String;
    :cond_1
    sget v5, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    const/16 v6, 0x3ff

    if-ne v5, v6, :cond_2

    .line 572
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\uacb0\uc81c \uc644\ub8cc"

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v10}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setIsPayInformation(Z)V

    .line 574
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->purchaseEnd(Z)V

    .line 579
    :goto_1
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setMessage(Ljava/lang/String;)V

    .line 581
    iget v5, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/kt/olleh/inapp/Purchase;->getPriceFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 583
    .restart local v4    # "price":Ljava/lang/String;
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v12, :cond_3

    .line 584
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "msgPayItemName1":Ljava/lang/String;
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 587
    .local v2, "msgPayItemName2":Ljava/lang/String;
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v9, v1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 588
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v11, v2}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 593
    .end local v1    # "msgPayItemName1":Ljava/lang/String;
    .end local v2    # "msgPayItemName2":Ljava/lang/String;
    :goto_2
    const-string v5, "\uacb0\uc81c\uae08\uc561:%s(\ubd80\uac00\uc138 \ud3ec\ud568)"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "msgPayMoney":Ljava/lang/String;
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v3}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayMoneyMessage(Ljava/lang/String;)V

    .line 597
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mLmt_Price:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setLmtPrice(Ljava/lang/String;)V

    .line 599
    iput-boolean v9, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 600
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v10}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setBgColor(Z)V

    goto/16 :goto_0

    .line 576
    .end local v3    # "msgPayMoney":Ljava/lang/String;
    .end local v4    # "price":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    const-string v6, "\uacb0\uc81c \uc548\ub0b4"

    invoke-virtual {v5, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v9}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setIsPayInformation(Z)V

    goto :goto_1

    .line 590
    .restart local v4    # "price":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    invoke-virtual {v5, v9, v6}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    .line 591
    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v5, v11, v8}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setPayNameMessage(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public SelectDialog()V
    .locals 2

    .prologue
    .line 307
    const/16 v1, 0x3ee

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 309
    new-instance v0, Lcom/kt/olleh/inapp/dialog/DialogSelect;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogSelect;-><init>(Landroid/content/Context;)V

    .line 311
    .local v0, "dialog":Lcom/kt/olleh/inapp/dialog/DialogSelect;
    new-instance v1, Lcom/kt/olleh/inapp/Purchase$5;

    invoke-direct {v1, p0, v0}, Lcom/kt/olleh/inapp/Purchase$5;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogSelect;->setOnItemClickListener(Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 340
    new-instance v1, Lcom/kt/olleh/inapp/Purchase$6;

    invoke-direct {v1, p0, v0}, Lcom/kt/olleh/inapp/Purchase$6;-><init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogSelect;->setOnCancelListener(Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 346
    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogSelect;->show()V

    .line 348
    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 349
    return-void
.end method

.method public SendMessage(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 1250
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1251
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1252
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1253
    return-void
.end method

.method public SetPin(Ljava/lang/String;)V
    .locals 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1460
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1463
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 1465
    .local v1, "userInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mUser_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->mModel_name:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kt/olleh/inapp/InApp;->SetPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1466
    return-void
.end method

.method public getBuyDi(Ljava/lang/String;)V
    .locals 3
    .param p1, "pay_no"    # Ljava/lang/String;

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1386
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCo_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/kt/olleh/inapp/InApp;->requestBuyDI(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1390
    return-void
.end method

.method public getBuyDiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "pin"    # Ljava/lang/String;

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1370
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1373
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 1375
    .local v3, "userInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mModel_name:Ljava/lang/String;

    iget-object v9, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/kt/olleh/inapp/InApp;->getBuyDiUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1376
    return-void
.end method

.method public getConfig()I
    .locals 1

    .prologue
    .line 193
    sget v0, Lcom/kt/olleh/inapp/Purchase;->config:I

    return v0
.end method

.method public getDIInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1353
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1356
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 1358
    .local v3, "userInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mModel_name:Ljava/lang/String;

    iget-object v7, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/kt/olleh/inapp/InApp;->getDIInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1359
    return-void
.end method

.method public getData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 955
    new-instance v0, Lcom/kt/olleh/inapp/Purchase$Data;

    invoke-direct {v0, p0}, Lcom/kt/olleh/inapp/Purchase$Data;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    .line 956
    .local v0, "data":Lcom/kt/olleh/inapp/Purchase$Data;
    iget v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_BtnCnt:I

    .line 957
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Mode:I

    .line 958
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Message:Ljava/lang/String;

    .line 959
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_01:Ljava/lang/String;

    .line 960
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_02:Ljava/lang/String;

    .line 961
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Type:Ljava/lang/String;

    .line 962
    iget-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayInformation:Z

    .line 963
    iget-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    iput-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayMessage:Z

    .line 964
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->CardName:Ljava/lang/String;

    .line 965
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Alert_Mode:I

    .line 966
    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Name:Ljava/lang/String;

    .line 967
    iget v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    iput v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Price:I

    .line 969
    return-object v0
.end method

.method public getPriceFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pr"    # Ljava/lang/String;

    .prologue
    .line 1745
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1746
    .local v4, "sb":Ljava/lang/StringBuffer;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1748
    .local v3, "price":I
    int-to-double v1, v3

    .line 1749
    .local v1, "num":D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#,##0"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1751
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\uc6d0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationID"    # Ljava/lang/String;
    .param p3, "digitalID"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/kt/olleh/inapp/OnInAppListener;
    .param p5, "libMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 206
    iput-object p2, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    .line 208
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 209
    iput-object p4, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mTr_ID:Ljava/lang/String;

    .line 211
    iput p5, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    .line 212
    const-string v0, "@none"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mUser_id:Ljava/lang/String;

    .line 213
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 214
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 215
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mModel_name:Ljava/lang/String;

    .line 216
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 217
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->checkDpi()V

    .line 219
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 221
    :pswitch_0
    sget-object v0, Lcom/kt/olleh/inapp/InAppSettings;->authen_SP:Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto :goto_0

    .line 226
    :pswitch_1
    const-string v0, "02"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto :goto_0

    .line 230
    :pswitch_2
    const-string v0, "03"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/kt/olleh/inapp/InAppSettings;->UserInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 233
    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->purchaseGetInfo()V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 243
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 244
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Title:Ljava/lang/String;

    .line 245
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 246
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 247
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    .line 248
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 249
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 250
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    .line 252
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    .line 253
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 254
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 259
    :cond_0
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog:Landroid/app/Dialog;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_progress:Lcom/kt/olleh/inapp/dialog/DialogProgress;

    if-eqz v0, :cond_2

    .line 263
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 265
    :cond_2
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 266
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 267
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    .line 268
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    .line 270
    iput v3, p0, Lcom/kt/olleh/inapp/Purchase;->mLibMode:I

    .line 272
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetCheck:Z

    .line 273
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    .line 274
    return-void
.end method

.method public purchaseErrorDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1270
    const/4 v0, 0x1

    iput v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 1271
    const-string v0, "\ud655\uc778"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 1272
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 1273
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 1274
    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 1276
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/Purchase;->mIsSetPwd:Z

    if-eqz v0, :cond_0

    .line 1277
    const/16 v0, 0x3f6

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1278
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1283
    :goto_0
    return-void

    .line 1280
    :cond_0
    const/16 v0, 0x400

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 1281
    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    goto :goto_0
.end method

.method public purchaseGetInfo()V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mApplicationID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDigitalID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/kt/olleh/inapp/Purchase;->getDIInformation(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v0, "\ucde8\uc18c"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 1263
    const-string v0, "\ucc98\ub9ac \uc911..."

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 1264
    const-string v0, "\ud578\ub4dc\ud3f0 \uacb0\uc81c"

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 1265
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 1266
    return-void
.end method

.method public requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "app_id"    # Ljava/lang/String;
    .param p2, "di_id"    # Ljava/lang/String;
    .param p3, "buy_type"    # Ljava/lang/String;
    .param p4, "pin"    # Ljava/lang/String;

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    if-nez v0, :cond_0

    .line 1403
    new-instance v0, Lcom/kt/olleh/inapp/InApp;

    invoke-direct {v0}, Lcom/kt/olleh/inapp/InApp;-><init>()V

    iput-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    .line 1406
    :cond_0
    invoke-direct {p0}, Lcom/kt/olleh/inapp/Purchase;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    .line 1408
    .local v3, "userInfo":Ljava/lang/String;
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mInApp:Lcom/kt/olleh/inapp/InApp;

    iget-object v4, p0, Lcom/kt/olleh/inapp/Purchase;->mUser_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/kt/olleh/inapp/Purchase;->mAuthen:Ljava/lang/String;

    iget-object v6, p0, Lcom/kt/olleh/inapp/Purchase;->mModel_name:Ljava/lang/String;

    iget-object v9, p0, Lcom/kt/olleh/inapp/Purchase;->mInAppListener:Lcom/kt/olleh/inapp/OnInAppListener;

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/kt/olleh/inapp/InApp;->requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 1409
    return-void
.end method

.method public setConfig(I)V
    .locals 1
    .param p1, "config"    # I

    .prologue
    .line 168
    sput p1, Lcom/kt/olleh/inapp/Purchase;->config:I

    .line 169
    sget v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogCheck:Lcom/kt/olleh/inapp/dialog/DialogCheck;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->changeConfig(I)V

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->changeConfig(I)V

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogNewPwd:Lcom/kt/olleh/inapp/dialog/DialogNewPwd;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->changeConfig(I)V

    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->changeConfig(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase;->mContext:Landroid/content/Context;

    .line 1257
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 933
    move-object v0, p1

    check-cast v0, Lcom/kt/olleh/inapp/Purchase$Data;

    .line 935
    .local v0, "data":Lcom/kt/olleh/inapp/Purchase$Data;
    if-eqz v0, :cond_0

    .line 936
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_BtnCnt:I

    iput v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_BtnCnt:I

    .line 937
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Mode:I

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 938
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Message:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Message:Ljava/lang/String;

    .line 939
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_01:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_01:Ljava/lang/String;

    .line 940
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Dialog_Btn_Text_02:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mDialog_Btn_Text_02:Ljava/lang/String;

    .line 941
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Type:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mPay_Type:Ljava/lang/String;

    .line 942
    iget-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayInformation:Z

    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayInformation:Z

    .line 943
    iget-boolean v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->isPayMessage:Z

    iput-boolean v1, p0, Lcom/kt/olleh/inapp/Purchase;->mIsPayMessage:Z

    .line 944
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->CardName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mCardName:Ljava/lang/String;

    .line 945
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Pay_Alert_Mode:I

    sput v1, Lcom/kt/olleh/inapp/Purchase;->Pay_Alert_Mode:I

    .line 946
    iget-object v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Name:Ljava/lang/String;

    iput-object v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Name:Ljava/lang/String;

    .line 947
    iget v1, v0, Lcom/kt/olleh/inapp/Purchase$Data;->Item_Price:I

    iput v1, p0, Lcom/kt/olleh/inapp/Purchase;->mItem_Price:I

    .line 949
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    if-lez v1, :cond_0

    .line 950
    sget v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 952
    :cond_0
    return-void
.end method

.method public setModifyText()V
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getModifyTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->dialogPay:Lcom/kt/olleh/inapp/dialog/DialogPay;

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getModifyTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/kt/olleh/inapp/Purchase$22;

    invoke-direct {v1, p0}, Lcom/kt/olleh/inapp/Purchase$22;-><init>(Lcom/kt/olleh/inapp/Purchase;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    :cond_0
    return-void
.end method

.method public userCancelResponse()V
    .locals 3

    .prologue
    .line 896
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase;->mListener:Lcom/kt/olleh/inapp/OnInAppListener;

    const-string v1, "I001"

    const-string v2, "\uc0ac\uc6a9\uc790 \uc694\uccad\uc5d0 \uc758\ud55c \ucde8\uc18c"

    invoke-interface {v0, v1, v2}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/Purchase;->onDestroy()V

    .line 899
    return-void
.end method
