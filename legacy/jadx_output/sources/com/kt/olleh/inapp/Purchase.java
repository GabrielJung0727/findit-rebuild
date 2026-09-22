package com.kt.olleh.inapp;

import android.app.Dialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import com.findit.battle.GameView;
import com.findit.battle.Objects;
import com.findit.battle.iap.activity.InAppBillingActivity;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.crypt.AESCrypt;
import com.kt.olleh.inapp.dialog.DialogAlert;
import com.kt.olleh.inapp.dialog.DialogCancel;
import com.kt.olleh.inapp.dialog.DialogCheck;
import com.kt.olleh.inapp.dialog.DialogLogin;
import com.kt.olleh.inapp.dialog.DialogNewPwd;
import com.kt.olleh.inapp.dialog.DialogOnClickListener;
import com.kt.olleh.inapp.dialog.DialogPay;
import com.kt.olleh.inapp.dialog.DialogPayNoPwd;
import com.kt.olleh.inapp.dialog.DialogProgress;
import com.kt.olleh.inapp.dialog.DialogPwdRet;
import com.kt.olleh.inapp.dialog.DialogSelect;
import com.kt.olleh.inapp.dialog.DialogWebPay;
import com.kt.olleh.inapp.net.InAppAPI;
import com.kt.olleh.inapp.net.InAppError;
import com.kt.olleh.inapp.net.ResBuyDIUrl;
import com.kt.olleh.inapp.net.ResCheckPin;
import com.kt.olleh.inapp.net.ResDIBuy;
import com.kt.olleh.inapp.net.ResDIDetail;
import com.kt.olleh.inapp.net.ResSetPin;
import com.kt.olleh.inapp.net.Response;
import com.sec.android.iap.sample.helper.SamsungIapHelper;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DecimalFormat;

/* JADX INFO: loaded from: classes.dex */
public class Purchase {
    public static int Dialog_Mode = -1;
    public static int Pay_Alert_Mode = -1;
    public static int config;
    private String errorCode;
    private String mAuthen;
    private String mCo_id;
    private Context mContext;
    private Dialog mDialog;
    private DialogProgress mDialog_progress;
    private boolean mIsSetCheck;
    private boolean mIsSetPwd;
    private String mLmt_Price;
    private DialogLogin mLoginDialog;
    private String mModel_name;
    private String mOpCode;
    private String mOrderNo;
    private String mPayAmount;
    private String mPayStoreId;
    private String mReturnUrl;
    private String mSessionId;
    private String mUrl;
    private String mUser_id;
    private String postData;
    private final int Dialog_Alert = Objects.FINDIMAGE_TOTALNUM;
    private final int Dialog_List = InAppBillingActivity.INAPP_RESULT_ACTIVITY_CODE;
    private final int Dialog_Pay = 1002;
    private final int Dialog_Loding = 1003;
    private final int Dialog_Dismiss = 1004;
    private final int Dialog_Login = 1005;
    private final int Dialog_Select = 1006;
    private final int Dialog_Check = 1007;
    private final int Dialog_Pay_No_Pwd = 1008;
    private final int Dialog_Cancel = 1009;
    private final int Dialog_New_Pwd = 1010;
    private final int Dialog_Pwd_Ret = 1011;
    private final int Dialog_Web_Pay = 1012;
    private final int Pay_Alert_Mode_01 = 1011;
    private final int Pay_Alert_Mode_02 = 1012;
    private final int Pay_Alert_Mode_03 = 1013;
    private final int Pay_Alert_Mode_04 = 1014;
    private final int Pay_Alert_Mode_11 = 1021;
    private final int Pay_Alert_Mode_12 = 1022;
    private final int Pay_Alert_Mode_13 = 1023;
    private final int Pay_Alert_Mode_14 = 1024;
    private int mDialog_BtnCnt = -1;
    private String mDialog_Title = null;
    private String mDialog_Message = null;
    private String mDialog_Btn_Text_01 = null;
    private String mDialog_Btn_Text_02 = null;
    private boolean mIsPayInformation = false;
    private boolean mIsPayMessage = false;
    private String mCardName = null;
    private String mItem_Name = null;
    private int mItem_Price = -1;
    private String mPay_Type = null;
    private DialogPay dialogPay = null;
    private DialogCheck dialogCheck = null;
    private DialogCancel dialogCancel = null;
    private DialogPayNoPwd dialogPayNoPwd = null;
    private DialogNewPwd dialogNewPwd = null;
    private DialogPwdRet dialogPwdRet = null;
    private DialogAlert dialogAlert = null;
    private DialogWebPay dialogWebPay = null;
    private boolean purchaseEnd = false;
    public final String TAG = "Purchase";
    public Handler handler = new Handler() { // from class: com.kt.olleh.inapp.Purchase.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case Objects.FINDIMAGE_TOTALNUM /* 1000 */:
                    Purchase.this.AlertDialog();
                    break;
                case 1002:
                    Purchase.this.PayDialog(Purchase.Pay_Alert_Mode);
                    break;
                case 1003:
                    Purchase.this.LodingDialog();
                    break;
                case 1004:
                    if (Purchase.this.mDialog_progress != null) {
                        Purchase.this.mDialog_progress.dismiss();
                        Purchase.this.mDialog_progress = null;
                    }
                    break;
                case 1005:
                    Purchase.this.LoginDialog();
                    break;
                case 1006:
                    Purchase.this.SelectDialog();
                    break;
                case 1007:
                    Purchase.this.CheckDialog();
                    break;
                case 1008:
                    Purchase.this.PayDialogNoPwd(Purchase.Pay_Alert_Mode);
                    break;
                case 1009:
                    Purchase.this.CancelDialog();
                    break;
                case 1010:
                    Purchase.this.NewPwdDialog();
                    break;
                case 1011:
                    Purchase.this.DialogPwdRet();
                    break;
                case 1012:
                    Purchase.this.DialogWebPay();
                    break;
            }
        }
    };
    OnInAppListener mInAppListener = new OnInAppListener() { // from class: com.kt.olleh.inapp.Purchase.2
        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultPurchase(String tr_id, String app_id, String di_id) {
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultAPI(String api, Response data) {
            if (Purchase.this.mDialog_progress != null && !api.equalsIgnoreCase(InAppAPI.getDiDetail)) {
                Purchase.this.SendMessage(1004);
            }
            if (api.equalsIgnoreCase(InAppAPI.getDiDetail)) {
                ResDIDetail res = (ResDIDetail) data;
                Purchase.this.mItem_Price = Integer.parseInt(res.getPrice());
                Purchase.this.mItem_Name = res.getDiTitle();
                Purchase.this.mDialog_Message = "처리중";
                Purchase.this.mDialog_Btn_Text_01 = "결제";
                Purchase.this.mDialog_Btn_Text_02 = "취소";
                Purchase.this.mIsPayInformation = true;
                if (Config.tCCodeKT.equals(Config.tCompanyCode)) {
                    Purchase.this.mLmt_Price = res.getHpLmtPrice();
                } else {
                    Purchase.this.mLmt_Price = res.getCdLmtPrice();
                }
                Purchase.this.CheckPin();
                return;
            }
            if (api.equalsIgnoreCase(InAppAPI.buyDi)) {
                Purchase.this.mTr_ID = ((ResDIBuy) data).mTr_id;
                if (InAppError.SUCCESS.equalsIgnoreCase(data.mCode)) {
                    Purchase.this.mDialog_Btn_Text_01 = "확인";
                    Purchase.this.mDialog_Message = "결제가 완료되었습니다.";
                    Purchase.this.mIsPayInformation = false;
                    if (!Purchase.this.mIsSetPwd) {
                        Purchase.this.mDialog_BtnCnt = 1;
                        Purchase.Pay_Alert_Mode = 1023;
                        Purchase.this.SendMessage(1008);
                        return;
                    }
                    if (!Config.isTimerRunning) {
                        Config.isTimerRunning = true;
                        Intent intent = new Intent(Purchase.this.mContext, (Class<?>) TimerService.class);
                        Purchase.this.mContext.startService(intent);
                    }
                    if (Purchase.this.dialogPay != null) {
                        Purchase.this.dialogPay.close();
                    }
                    Purchase.this.mIsSetPwd = false;
                    Purchase.this.mDialog_BtnCnt = 1;
                    Purchase.Pay_Alert_Mode = 1013;
                    Purchase.this.SendMessage(1002);
                    return;
                }
                return;
            }
            if (api.equalsIgnoreCase(InAppAPI.getBuyDiUrl)) {
                ResBuyDIUrl res2 = (ResBuyDIUrl) data;
                Purchase.this.mTr_ID = res2.mTr_id;
                if (InAppError.SUCCESS.equalsIgnoreCase(data.mCode)) {
                    if (InAppError.SUCCESS.equals(res2.mPayAmount)) {
                        Purchase.this.mDialog_Btn_Text_01 = "확인";
                        Purchase.this.mDialog_Message = "결제가 완료되었습니다.";
                        Purchase.this.mIsPayInformation = false;
                        if (!Purchase.this.mIsSetPwd) {
                            Purchase.this.mDialog_BtnCnt = 1;
                            Purchase.Pay_Alert_Mode = 1023;
                            Purchase.this.SendMessage(1008);
                            return;
                        }
                        if (!Config.isTimerRunning) {
                            Intent intent2 = new Intent(Purchase.this.mContext, (Class<?>) TimerService.class);
                            Purchase.this.mContext.startService(intent2);
                        }
                        if (Purchase.this.dialogPay != null) {
                            Purchase.this.dialogPay.close();
                        }
                        Purchase.this.mIsSetPwd = false;
                        Purchase.this.mDialog_BtnCnt = 1;
                        Purchase.Pay_Alert_Mode = 1013;
                        Purchase.this.SendMessage(1002);
                        return;
                    }
                    Purchase.this.mCo_id = res2.mCo_id;
                    Purchase.this.mUrl = res2.getmUrl();
                    if (Purchase.this.dialogPay != null) {
                        Purchase.this.dialogPay.close();
                    }
                    Purchase.this.SendMessage(1003);
                    Purchase.this.postData = Purchase.this.setPostData(res2);
                    Purchase.this.SendMessage(1004);
                    Purchase.this.SendMessage(1012);
                    return;
                }
                return;
            }
            if (api.equalsIgnoreCase(InAppAPI.checkShowId)) {
                Purchase.this.purchaseGetInfo();
                return;
            }
            if (api.equalsIgnoreCase(InAppAPI.checkPin)) {
                String isPin = ((ResCheckPin) data).getmPin_set();
                if (isPin == null || !"Y".equals(isPin)) {
                    Purchase.this.mIsSetPwd = false;
                } else {
                    Purchase.this.mIsSetPwd = true;
                }
                Purchase.this.mDialog_Message = "해당 아이템을 구매하시겠습니까?";
                if (Purchase.this.mIsSetPwd) {
                    Purchase.this.mDialog_BtnCnt = 2;
                    Purchase.Pay_Alert_Mode = 1011;
                    Purchase.this.SendMessage(1002);
                    return;
                }
                Purchase.this.getCheckYN();
                Purchase.Pay_Alert_Mode = 1021;
                if (Purchase.this.mIsSetCheck) {
                    Purchase.this.mDialog_BtnCnt = 3;
                    Purchase.this.SendMessage(1008);
                    return;
                } else {
                    Purchase.this.mDialog_BtnCnt = 2;
                    Purchase.this.SendMessage(1007);
                    return;
                }
            }
            if (api.equalsIgnoreCase(InAppAPI.setPin)) {
                ResSetPin res3 = (ResSetPin) data;
                if ("Y".equals(res3.getmPin_set_ret())) {
                    Purchase.this.mDialog_Title = "보안번호 설정 완료";
                    Purchase.this.mDialog_Message = "보안번호 설정이 완료되었습니다.";
                    Purchase.this.mIsSetPwd = true;
                    Purchase.this.SendMessage(1011);
                    return;
                }
                Purchase.this.mDialog_Title = "보안번호 설정 실패";
                Purchase.this.mDialog_Message = res3.mReason;
                Purchase.this.mIsSetPwd = false;
                Purchase.this.SendMessage(1011);
            }
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnError(String errorCode, String msg) {
            if (Purchase.this.mDialog_progress != null) {
                Purchase.this.SendMessage(1004);
            }
            if (Config.B007.equals(errorCode) || Config.B009.equals(errorCode) || Config.B010.equals(errorCode)) {
                if (Purchase.this.dialogPay != null) {
                    Purchase.this.dialogPay.close();
                }
                if (Purchase.this.dialogPayNoPwd != null) {
                    Purchase.this.dialogPayNoPwd.close();
                }
                Purchase.this.mDialog_Title = "구매 실패";
                Purchase.this.mDialog_Message = msg;
                Purchase.this.errorCode = errorCode;
                Purchase.this.SendMessage(Objects.FINDIMAGE_TOTALNUM);
                return;
            }
            if (!Config.B011.equals(errorCode)) {
                if (Purchase.this.mListener != null) {
                    Purchase.this.mListener.OnError(errorCode, msg);
                    return;
                }
                return;
            }
            boolean isNum = true;
            for (int i = 0; i < msg.length(); i++) {
                try {
                    char check = msg.charAt(i);
                    if (check < '0' || check > ':') {
                        isNum = false;
                        break;
                    }
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    return;
                }
            }
            if (!isNum) {
                if (Purchase.this.mListener != null) {
                    Purchase.this.mListener.OnError(errorCode, msg);
                    return;
                }
                return;
            }
            if (Integer.parseInt(msg) < 5) {
                if (Purchase.this.mListener != null) {
                    Purchase.this.mListener.OnError(errorCode, "보안번호가 틀렸습니다. 다시 입력해 주십시오.(오류횟수:" + msg + ")");
                }
            } else if (Integer.parseInt(msg) <= 4) {
                if (Purchase.this.mListener != null) {
                    Purchase.this.mListener.OnError(errorCode, "보안번호가 틀렸습니다. 다시 입력해 주십시오.");
                }
            } else {
                if (Purchase.this.dialogPay != null) {
                    Purchase.this.dialogPay.close();
                }
                Purchase.this.mDialog_Title = "보안번호 오류 안내";
                Purchase.this.mDialog_Message = "보안번호 입력 5회 이상 오류 입니다.\n보안번호를 분실하셨다면\nolleh마켓> My> 보안번호에서 보안번호를 해제 또는 변경하여 주십시오.";
                Purchase.this.errorCode = errorCode;
                Purchase.this.SendMessage(Objects.FINDIMAGE_TOTALNUM);
            }
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultOLDAPI(String code, String message) {
            if (Purchase.this.mListener != null) {
                Purchase.this.mListener.OnResultOLDAPI(code, message);
            }
        }

        @Override // com.kt.olleh.inapp.OnInAppListener
        public void OnResultFileURL(String code, String url) {
        }
    };
    private InApp mInApp = null;
    private String mApplicationID = null;
    private String mDigitalID = null;
    private OnInAppListener mListener = null;
    private String mTr_ID = null;
    private int mLibMode = -1;

    Purchase() {
        this.mIsSetCheck = false;
        this.mIsSetPwd = false;
        this.mIsSetCheck = false;
        this.mIsSetPwd = false;
    }

    public void setConfig(int config2) {
        config = config2;
        switch (Dialog_Mode) {
            case 1002:
                if (this.dialogPay != null) {
                    this.dialogPay.changeConfig(config2);
                }
                break;
            case 1007:
                if (this.dialogCheck != null) {
                    this.dialogCheck.changeConfig(config2);
                }
                break;
            case 1008:
                if (this.dialogPayNoPwd != null) {
                    this.dialogPayNoPwd.changeConfig(config2);
                }
                break;
            case 1010:
                if (this.dialogNewPwd != null) {
                    this.dialogNewPwd.changeConfig(config2);
                }
                break;
        }
    }

    public int getConfig() {
        return config;
    }

    private void checkDpi() {
        DisplayMetrics dm = new DisplayMetrics();
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(dm);
        Config.densityDpi = dm.densityDpi;
        if (Config.DEBUG) {
            Config.LogD("Purchase", "dpi = " + Config.densityDpi);
        }
    }

    public void onCreate(Context context, String applicationID, String digitalID, OnInAppListener listener, int libMode) {
        this.mApplicationID = applicationID;
        this.mDigitalID = digitalID;
        this.mContext = context;
        this.mListener = listener;
        this.mTr_ID = null;
        this.mLibMode = libMode;
        this.mUser_id = "@none";
        this.mIsSetCheck = false;
        this.mIsSetPwd = false;
        this.mModel_name = Build.MODEL;
        this.mInApp = new InApp();
        checkDpi();
        switch (this.mLibMode) {
            case 0:
                this.mAuthen = InAppSettings.authen_SP;
                purchaseGetInfo();
                break;
            case 1:
                this.mAuthen = SamsungIapHelper.ITEM_TYPE_SUBSCRIPTION;
                purchaseGetInfo();
                break;
            case 2:
                this.mAuthen = "03";
                if (InAppSettings.UserInfo == null) {
                    SendMessage(1005);
                } else {
                    purchaseGetInfo();
                }
                break;
        }
    }

    public void onDestroy() {
        this.mDialog_BtnCnt = -1;
        this.mDialog_Title = null;
        this.mDialog_Message = null;
        this.mDialog_Btn_Text_01 = null;
        this.mDialog_Btn_Text_02 = null;
        this.mIsPayInformation = false;
        this.mIsPayMessage = false;
        this.mCardName = null;
        this.mItem_Name = null;
        this.mItem_Price = -1;
        this.mPay_Type = null;
        this.mAuthen = null;
        if (this.mDialog != null) {
            if (this.mDialog.isShowing()) {
                this.mDialog.dismiss();
            }
            this.mDialog = null;
        }
        if (this.mDialog_progress != null) {
            SendMessage(1004);
        }
        this.mContext = null;
        this.mInApp = null;
        this.mApplicationID = null;
        this.mDigitalID = null;
        this.mListener = null;
        this.mLibMode = -1;
        this.mIsSetCheck = false;
        this.mIsSetPwd = false;
    }

    public void LoginDialog() {
        Dialog_Mode = 1005;
        this.mLoginDialog = new DialogLogin(this.mContext);
        this.mLoginDialog.setTitle("olleh.com 로그인");
        this.mLoginDialog.setButton(0, new DialogOnClickListener(this.mLoginDialog) { // from class: com.kt.olleh.inapp.Purchase.3
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                Purchase.this.mDialog_Btn_Text_01 = "취소";
                Purchase.this.mDialog_Message = "로그인 중...";
                Purchase.this.SendMessage(1003);
            }
        });
        this.mLoginDialog.setButton(1, new DialogOnClickListener(this.mLoginDialog) { // from class: com.kt.olleh.inapp.Purchase.4
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
            }
        });
        this.mLoginDialog.show();
        this.mDialog = this.mLoginDialog;
    }

    public void SelectDialog() {
        Dialog_Mode = 1006;
        DialogSelect dialog = new DialogSelect(this.mContext);
        dialog.setOnItemClickListener(new DialogOnClickListener(dialog) { // from class: com.kt.olleh.inapp.Purchase.5
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                String getTagValue = v.getTag().toString();
                if (InAppError.FAILED.equalsIgnoreCase(getTagValue)) {
                    Purchase.this.mAuthen = InAppSettings.authen_SP;
                    Purchase.this.mPay_Type = "핸드폰 결제";
                } else if ("2".equalsIgnoreCase(getTagValue)) {
                    Purchase.this.mAuthen = SamsungIapHelper.ITEM_TYPE_SUBSCRIPTION;
                    Purchase.this.mPay_Type = "인터넷전화 결제";
                }
                Purchase.this.getDIInformation(Purchase.this.mApplicationID, Purchase.this.mDigitalID);
                Purchase.this.mDialog_Btn_Text_01 = "취소";
                Purchase.this.mDialog_Message = "정보요청중..";
                Purchase.this.SendMessage(1003);
            }

            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener
            public Dialog getDialog() {
                return super.getDialog();
            }
        });
        dialog.setOnCancelListener(new DialogOnClickListener(dialog) { // from class: com.kt.olleh.inapp.Purchase.6
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
            }
        });
        dialog.show();
        this.mDialog = dialog;
    }

    public void AlertDialog() {
        final int prevMode = Dialog_Mode;
        Dialog_Mode = Objects.FINDIMAGE_TOTALNUM;
        this.dialogAlert = new DialogAlert(this.mContext, 1);
        this.dialogAlert.setTitle(this.mDialog_Title);
        this.dialogAlert.setMessage(this.mDialog_Message);
        this.dialogAlert.setButton(0, "확인", new DialogOnClickListener(this.dialogAlert) { // from class: com.kt.olleh.inapp.Purchase.7
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                Purchase.this.dialogAlert.close();
                Purchase.Dialog_Mode = prevMode;
                if (Config.B007.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.B007_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Config.B009.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.B009_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Config.B010.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.B010_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Config.Z999.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.Z999_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Purchase.Dialog_Mode == 1002 && Purchase.this.dialogPay != null) {
                    Purchase.this.dialogPay.changeConfig(Purchase.config);
                    Purchase.this.mDialog = Purchase.this.dialogPay;
                }
                if (Config.B011.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, "보안번호가 틀렸습니다. 다시 입력해 주십시오(오류횟수:5이상)");
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                } else {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, GameView.CHARACTER_AI);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                }
            }
        });
        this.dialogAlert.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.8
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                Purchase.this.dialogAlert.close();
                Purchase.Dialog_Mode = prevMode;
                if (Config.B007.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.B007_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Config.B009.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.B009_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Config.B010.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.B010_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Config.Z999.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, Config.Z999_msg);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                    return;
                }
                if (Purchase.Dialog_Mode == 1002 && Purchase.this.dialogPay != null) {
                    Purchase.this.dialogPay.changeConfig(Purchase.config);
                    Purchase.this.mDialog = Purchase.this.dialogPay;
                }
                if (Config.B011.equals(Purchase.this.errorCode)) {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, "보안번호가 틀렸습니다. 다시 입력해 주십시오(오류횟수:5이상)");
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                } else {
                    if (Purchase.this.mListener != null) {
                        Purchase.this.mListener.OnError(Purchase.this.errorCode, GameView.CHARACTER_AI);
                    }
                    Purchase.this.errorCode = GameView.CHARACTER_AI;
                }
            }
        });
        this.dialogAlert.show();
        this.mDialog = this.dialogAlert;
    }

    public void CheckDialog() {
        Dialog_Mode = 1007;
        this.dialogCheck = new DialogCheck(this.mContext, this.mDialog_BtnCnt);
        this.dialogCheck.setTitle("보안번호 설정");
        this.dialogCheck.setMessage("보안번호 설정 안내");
        this.dialogCheck.setMessage2("olleh 마켓에서는 안전한\n유료 아이템 결제를 위해\n보안번호 설정을 권장합니다.");
        this.dialogCheck.setMessage3("지금 보안번호를 설정하시겠습니까?");
        this.dialogCheck.setButton(0, "예, 지금 설정합니다.", new DialogOnClickListener(this.dialogCheck) { // from class: com.kt.olleh.inapp.Purchase.9
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                Purchase.this.dialogCheck.close();
                super.onClick(v);
                Purchase.this.SendMessage(1010);
            }
        });
        this.dialogCheck.setButton(1, "아니오, 다음에 설정합니다.", new DialogOnClickListener(this.dialogCheck) { // from class: com.kt.olleh.inapp.Purchase.10
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                Purchase.this.setCheckYN();
                Purchase.this.dialogCheck.close();
                super.onClick(v);
                Purchase.this.mDialog_BtnCnt = 3;
                Purchase.Pay_Alert_Mode = 1021;
                Purchase.this.SendMessage(1008);
            }
        });
        this.dialogCheck.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.11
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface arg0) {
                Purchase.Dialog_Mode = 1009;
                Purchase.this.SendMessage(1009);
                Purchase.this.dialogCheck.dismiss();
            }
        });
        this.dialogCheck.show();
        this.mDialog = this.dialogCheck;
    }

    public void NewPwdDialog() {
        if (Pay_Alert_Mode == 1023) {
            this.purchaseEnd = true;
        }
        Dialog_Mode = 1010;
        this.dialogNewPwd = new DialogNewPwd(this.mContext, 2);
        this.dialogNewPwd.setTitle("보안번호 설정");
        this.dialogNewPwd.setButton(0, "확인", new DialogOnClickListener(this.dialogNewPwd) { // from class: com.kt.olleh.inapp.Purchase.12
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                String pwd1 = Purchase.this.dialogNewPwd.getPwdEditText1().getText().toString().trim();
                String pwd2 = Purchase.this.dialogNewPwd.getPwdEditText2().getText().toString().trim();
                if (pwd1.length() < 4) {
                    Toast.makeText(Purchase.this.mContext, "보안번호를 입력해 주십시오.", 0).show();
                    return;
                }
                if (pwd2.length() < 4) {
                    Toast.makeText(Purchase.this.mContext, "보안번호 확인을 입력해 주십시오.", 0).show();
                    return;
                }
                if (!pwd1.equals(pwd2)) {
                    Toast.makeText(Purchase.this.mContext, "보안번호와 보안번호 확인이 다릅니다. 다시 입력해 주십시오.", 0).show();
                } else if (pwd1.equals(pwd2)) {
                    Purchase.this.SetPin(pwd1);
                    Purchase.this.mDialog_Message = "처리중";
                    Purchase.this.SendMessage(1003);
                    Purchase.this.dialogNewPwd.close();
                }
            }
        });
        this.dialogNewPwd.setButton(1, "취소", new DialogOnClickListener(this.dialogNewPwd) { // from class: com.kt.olleh.inapp.Purchase.13
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                Purchase.this.dialogNewPwd.close();
                Purchase.Dialog_Mode = 1009;
                Purchase.this.SendMessage(1009);
            }
        });
        this.dialogNewPwd.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.14
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                Purchase.this.dialogNewPwd.close();
                Purchase.Dialog_Mode = 1009;
                Purchase.this.SendMessage(1009);
            }
        });
        this.dialogNewPwd.show();
        this.mDialog = this.dialogNewPwd;
    }

    public void PayDialogNoPwd(final int mode) {
        Dialog_Mode = 1008;
        this.dialogPayNoPwd = new DialogPayNoPwd(this.mContext, this.mDialog_BtnCnt);
        this.dialogPayNoPwd.setTitle("결제안내");
        this.dialogPayNoPwd.setMessage("해당 아이템을 구매하시겠습니까?");
        if (mode == 1024) {
            this.dialogPayNoPwd.setTitle("결제 확인");
            this.dialogPayNoPwd.setMessage(this.mDialog_Message);
            this.dialogPayNoPwd.setBgColor(false);
        } else if (mode == 1022) {
            this.dialogPayNoPwd.setTitle("결제 확인");
            this.dialogPayNoPwd.setMessage(this.mDialog_Message);
            String price = getPriceFormat(Integer.toString(this.mItem_Price));
            String msg = String.format("%s을 결제하시겠습니까?", price);
            this.dialogPayNoPwd.setPayNameMessage(1, null);
            this.dialogPayNoPwd.setPayNameMessage(2, null);
            this.dialogPayNoPwd.setPayMoneyMessage(msg);
            this.dialogPayNoPwd.setPayTypeMessage(null);
            this.mIsPayMessage = true;
            this.dialogPayNoPwd.setIsPayInformation(true);
            this.dialogPayNoPwd.setBgColor(true);
        } else {
            if (Pay_Alert_Mode == 1023) {
                this.dialogPayNoPwd.setTitle("결제 완료");
                this.dialogPayNoPwd.setIsPayInformation(false);
                this.dialogPayNoPwd.purchaseEnd(true);
            } else {
                this.dialogPayNoPwd.setTitle("결제 안내");
                this.dialogPayNoPwd.setIsPayInformation(true);
            }
            this.dialogPayNoPwd.setMessage(this.mDialog_Message);
            String price2 = getPriceFormat(Integer.toString(this.mItem_Price));
            if (this.mItem_Name.length() > 12) {
                String msgPayItemName1 = this.mItem_Name.substring(0, 12);
                String msgPayItemName2 = this.mItem_Name.substring(12);
                this.dialogPayNoPwd.setPayNameMessage(1, msgPayItemName1);
                this.dialogPayNoPwd.setPayNameMessage(2, msgPayItemName2);
            } else {
                this.dialogPayNoPwd.setPayNameMessage(1, this.mItem_Name);
                this.dialogPayNoPwd.setPayNameMessage(2, null);
            }
            String msgPayMoney = String.format("결제금액:%s(부가세 포함)", price2);
            this.dialogPayNoPwd.setPayMoneyMessage(msgPayMoney);
            this.dialogPayNoPwd.setLmtPrice(this.mLmt_Price);
            this.mIsPayMessage = true;
            this.dialogPayNoPwd.setBgColor(false);
        }
        this.dialogPayNoPwd.setButton(0, this.mDialog_Btn_Text_01, new DialogOnClickListener(this.dialogPayNoPwd) { // from class: com.kt.olleh.inapp.Purchase.15
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                switch (mode) {
                    case 1021:
                        Purchase.Pay_Alert_Mode = 1022;
                        break;
                    case 1022:
                        break;
                    case 1023:
                        if (Purchase.this.mListener != null) {
                            Purchase.this.mListener.OnResultPurchase(Purchase.this.mTr_ID, Purchase.this.mApplicationID, Purchase.this.mDigitalID);
                        }
                        Purchase.this.dialogPayNoPwd.close();
                        Purchase.this.dialogPayNoPwd = null;
                        return;
                    case 1024:
                        Purchase.this.dialogPayNoPwd.close();
                        Purchase.this.userCancelResponse();
                        return;
                    default:
                        return;
                }
                if (Config.tCCodeKT.equals(Config.tCompanyCode)) {
                    Purchase.this.requestDIBuy(Purchase.this.mApplicationID, Purchase.this.mDigitalID, "DP", "none");
                } else {
                    Purchase.this.getBuyDiUrl(Purchase.this.mApplicationID, Purchase.this.mDigitalID, "HP", "none");
                }
                Purchase.this.mDialog_Btn_Text_01 = "취소";
                Purchase.this.mDialog_Message = "결제 요청 중...";
                Purchase.this.SendMessage(1003);
                Purchase.this.dialogPayNoPwd.close();
            }
        });
        this.dialogPayNoPwd.setButton(2, "취소", new DialogOnClickListener(this.dialogPayNoPwd) { // from class: com.kt.olleh.inapp.Purchase.16
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                switch (mode) {
                    case 1023:
                        Purchase.this.dialogPayNoPwd.close();
                        break;
                    default:
                        Purchase.Dialog_Mode = 1009;
                        Purchase.this.SendMessage(1009);
                        Purchase.this.dialogPayNoPwd.close();
                        break;
                }
            }
        });
        this.dialogPayNoPwd.setButton(1, "보안번호 설정", new DialogOnClickListener(this.dialogPayNoPwd) { // from class: com.kt.olleh.inapp.Purchase.17
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                Purchase.this.SendMessage(1010);
                Purchase.this.dialogPayNoPwd.close();
            }
        });
        this.dialogPayNoPwd.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.18
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                switch (mode) {
                    case 1021:
                    case 1022:
                        Purchase.Dialog_Mode = 1009;
                        Purchase.this.SendMessage(1009);
                        Purchase.this.dialogPayNoPwd.close();
                        break;
                    case 1023:
                        if (Purchase.this.mListener != null) {
                            Purchase.this.mListener.OnResultPurchase(Purchase.this.mTr_ID, Purchase.this.mApplicationID, Purchase.this.mDigitalID);
                        }
                        Purchase.this.dialogPayNoPwd = null;
                        break;
                    case 1024:
                        Purchase.this.userCancelResponse();
                        break;
                }
            }
        });
        this.dialogPayNoPwd.show();
        this.mDialog = this.dialogPayNoPwd;
    }

    public void PayDialog(final int mode) {
        Dialog_Mode = 1002;
        this.dialogPay = new DialogPay(this.mContext, this.mDialog_BtnCnt, getConfig(), this);
        if (mode == 1014) {
            this.dialogPay.setTitle("결제 확인");
            this.dialogPay.setMessage(this.mDialog_Message);
            this.dialogPay.setBgColor(false);
        } else if (mode == 1012) {
            this.dialogPay.setTitle("결제 확인");
            this.dialogPay.setMessage(this.mDialog_Message);
            String price = getPriceFormat(Integer.toString(this.mItem_Price));
            String msg = String.format("%s을 결제하시겠습니까?", price);
            this.dialogPay.setPayNameTitle(false);
            this.dialogPay.setPayNameMessage(1, null);
            this.dialogPay.setPayNameMessage(2, null);
            this.dialogPay.setPayMoneyMessage(msg);
            this.dialogPay.setPayTypeMessage(null);
            this.mIsPayMessage = true;
            this.mIsPayInformation = false;
            this.dialogPay.setBgColor(true);
        } else {
            if (Pay_Alert_Mode == 1013) {
                this.dialogPay.setTitle("결제 완료");
                this.dialogPay.purchaseEnd(true);
            } else {
                this.dialogPay.setTitle("결제 안내");
            }
            this.dialogPay.setMessage(this.mDialog_Message);
            String price2 = getPriceFormat(Integer.toString(this.mItem_Price));
            this.dialogPay.setPayNameTitle(true);
            if (this.mItem_Name.length() > 12) {
                String msgPayItemName1 = this.mItem_Name.substring(0, 12);
                String msgPayItemName2 = this.mItem_Name.substring(12);
                this.dialogPay.setPayNameMessage(1, msgPayItemName1);
                this.dialogPay.setPayNameMessage(2, msgPayItemName2);
            } else {
                this.dialogPay.setPayNameMessage(1, this.mItem_Name);
                this.dialogPay.setPayNameMessage(2, null);
            }
            String msgPayMoney = String.format("결제금액:%s(부가세 포함)", price2);
            this.dialogPay.setPayMoneyMessage(msgPayMoney);
            String msgPayType = String.format("결제방식:%s", this.mPay_Type);
            this.dialogPay.setPayTypeMessage(msgPayType);
            this.mIsPayMessage = true;
            this.dialogPay.setBgColor(false);
            this.dialogPay.setPwdOn(this.mIsSetPwd);
        }
        this.dialogPay.setButton(0, this.mDialog_Btn_Text_01, new DialogOnClickListener(this.dialogPay) { // from class: com.kt.olleh.inapp.Purchase.19
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                switch (mode) {
                    case 1011:
                        Purchase.Pay_Alert_Mode = 1012;
                        break;
                    case 1012:
                        break;
                    case 1013:
                        if (Purchase.this.mListener != null) {
                            Purchase.this.mListener.OnResultPurchase(Purchase.this.mTr_ID, Purchase.this.mApplicationID, Purchase.this.mDigitalID);
                        }
                        Purchase.this.dialogPay.close();
                        Purchase.this.dialogPay = null;
                        return;
                    case 1014:
                        Purchase.this.dialogPay.close();
                        Purchase.this.userCancelResponse();
                        return;
                    default:
                        return;
                }
                if (!Config.isTimerRunning || Config.mPin == null || GameView.CHARACTER_AI.equals(Config.mPin)) {
                    String pin = Purchase.this.dialogPay.getPwd();
                    if (pin != null) {
                        if (pin.length() == 4) {
                            if (Config.tCCodeKT.equals(Config.tCompanyCode)) {
                                Purchase.this.requestDIBuy(Purchase.this.mApplicationID, Purchase.this.mDigitalID, "DP", pin);
                            } else {
                                Purchase.this.getBuyDiUrl(Purchase.this.mApplicationID, Purchase.this.mDigitalID, "HP", pin);
                            }
                            Config.mPin = pin;
                            Purchase.this.mDialog_Btn_Text_01 = "취소";
                            Purchase.this.mDialog_Message = "결제 요청 중...";
                            Purchase.this.SendMessage(1003);
                            return;
                        }
                        Toast.makeText(Purchase.this.mContext, "보안번호를 입력해 주십시오.", 0).show();
                        return;
                    }
                    return;
                }
                if (Config.tCCodeKT.equals(Config.tCompanyCode)) {
                    Purchase.this.requestDIBuy(Purchase.this.mApplicationID, Purchase.this.mDigitalID, "DP", Config.mPin);
                } else {
                    Purchase.this.getBuyDiUrl(Purchase.this.mApplicationID, Purchase.this.mDigitalID, "HP", Config.mPin);
                }
                Purchase.this.mDialog_Btn_Text_01 = "취소";
                Purchase.this.mDialog_Message = "결제 요청 중...";
                Purchase.this.SendMessage(1003);
            }
        });
        this.dialogPay.setButton(1, this.mDialog_Btn_Text_02, new DialogOnClickListener(this.dialogPay) { // from class: com.kt.olleh.inapp.Purchase.20
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                switch (mode) {
                    case 1011:
                    case 1012:
                        Purchase.this.dialogPay.close();
                        Purchase.Dialog_Mode = 1009;
                        Purchase.this.SendMessage(1009);
                        break;
                }
            }
        });
        this.dialogPay.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.21
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                switch (mode) {
                    case 1011:
                    case 1012:
                        Purchase.this.dialogPay.close();
                        Purchase.Dialog_Mode = 1009;
                        Purchase.this.SendMessage(1009);
                        break;
                    case 1013:
                        if (Purchase.this.mListener != null) {
                            Purchase.this.mListener.OnResultPurchase(Purchase.this.mTr_ID, Purchase.this.mApplicationID, Purchase.this.mDigitalID);
                        }
                        Purchase.this.dialogPay = null;
                        break;
                    case 1014:
                        Purchase.this.userCancelResponse();
                        break;
                }
            }
        });
        this.dialogPay.setPayInformation(this.mIsPayInformation);
        this.dialogPay.setPayMessage(this.mIsPayMessage);
        this.dialogPay.show();
        this.mDialog = this.dialogPay;
    }

    public void setModifyText() {
        if (this.dialogPay.getModifyTextView() != null) {
            this.dialogPay.getModifyTextView().setOnClickListener(new View.OnClickListener() { // from class: com.kt.olleh.inapp.Purchase.22
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setType("vnd.kt.olleh.storefront/inapp.kt.olleh.storefront");
                        if (Config.bTBserver) {
                            intent.putExtra("INAPP_URL", Config.TB_INAPP_URL);
                        } else {
                            intent.putExtra("INAPP_URL", Config.RS_INAPP_URL);
                        }
                        Purchase.this.mContext.startActivity(intent);
                        Config.isTimerRunning = false;
                        Intent intentService = new Intent(Purchase.this.mContext, (Class<?>) TimerService.class);
                        Purchase.this.mContext.stopService(intentService);
                        Purchase.this.dialogPay.close();
                        Purchase.Dialog_Mode = 1009;
                        Purchase.this.SendMessage(1009);
                    } catch (Exception e) {
                        if (Config.DEBUG) {
                            e.printStackTrace();
                        }
                        Purchase.this.mDialog_Title = "안내";
                        Purchase.this.mDialog_Message = Config.Z999_msg;
                        Purchase.this.errorCode = Config.Z999;
                        Purchase.this.SendMessage(Objects.FINDIMAGE_TOTALNUM);
                    }
                }
            });
        }
    }

    public void userCancelResponse() {
        if (this.mListener != null) {
            this.mListener.OnError("I001", "사용자 요청에 의한 취소");
        }
        onDestroy();
    }

    public void LodingDialog() {
        Dialog_Mode = 1003;
        this.mDialog_progress = new DialogProgress(this.mContext, this.mDialog_Message);
        this.mDialog_progress.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.kt.olleh.inapp.Purchase.23
            @Override // android.content.DialogInterface.OnKeyListener
            public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                if (event.getAction() != 0 || keyCode != 4 || event.getRepeatCount() != 0) {
                    return event.getAction() == 1 && keyCode == 4 && event.isTracking() && !event.isCanceled();
                }
                event.startTracking();
                return true;
            }
        });
        if (this.mDialog_progress != null) {
            this.mDialog_progress.show();
        }
    }

    public void setData(Object obj) {
        Data data = (Data) obj;
        if (data != null) {
            this.mDialog_BtnCnt = data.Dialog_BtnCnt;
            Dialog_Mode = data.Dialog_Mode;
            this.mDialog_Message = data.Dialog_Message;
            this.mDialog_Btn_Text_01 = data.Dialog_Btn_Text_01;
            this.mDialog_Btn_Text_02 = data.Dialog_Btn_Text_02;
            this.mPay_Type = data.Pay_Type;
            this.mIsPayInformation = data.isPayInformation;
            this.mIsPayMessage = data.isPayMessage;
            this.mCardName = data.CardName;
            Pay_Alert_Mode = data.Pay_Alert_Mode;
            this.mItem_Name = data.Item_Name;
            this.mItem_Price = data.Item_Price;
            if (Dialog_Mode > 0) {
                SendMessage(Dialog_Mode);
            }
        }
    }

    public Object getData() {
        Data data = new Data();
        data.Dialog_BtnCnt = this.mDialog_BtnCnt;
        data.Dialog_Mode = Dialog_Mode;
        data.Dialog_Message = this.mDialog_Message;
        data.Dialog_Btn_Text_01 = this.mDialog_Btn_Text_01;
        data.Dialog_Btn_Text_02 = this.mDialog_Btn_Text_02;
        data.Pay_Type = this.mPay_Type;
        data.isPayInformation = this.mIsPayInformation;
        data.isPayMessage = this.mIsPayMessage;
        data.CardName = this.mCardName;
        data.Pay_Alert_Mode = Pay_Alert_Mode;
        data.Item_Name = this.mItem_Name;
        data.Item_Price = this.mItem_Price;
        return data;
    }

    class Data {
        String CardName;
        int Dialog_BtnCnt;
        String Dialog_Btn_Text_01;
        String Dialog_Btn_Text_02;
        String Dialog_Message;
        int Dialog_Mode;
        String Item_Name;
        int Item_Price;
        int Pay_Alert_Mode;
        String Pay_Type;
        boolean isPayInformation;
        boolean isPayMessage;

        Data() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DialogWebPay() {
        Dialog_Mode = 1012;
        this.dialogWebPay = new DialogWebPay(this.mContext, this);
        this.dialogWebPay.setUrl(this.mUrl);
        this.dialogWebPay.setPostData(this.postData);
        this.dialogWebPay.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.24
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                Purchase.this.dialogWebPay.dismiss();
                Purchase.this.SendMessage(1004);
            }
        });
        this.dialogWebPay.show();
        this.mDialog = this.dialogWebPay;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CancelDialog() {
        Dialog_Mode = 1009;
        this.dialogCancel = new DialogCancel(this.mContext, 1);
        this.dialogCancel.setTitle("결제 확인");
        this.dialogCancel.setMessage("결제를 하지 않으셨습니다.");
        this.dialogCancel.setButton(0, "확인", new DialogOnClickListener(this.dialogCancel) { // from class: com.kt.olleh.inapp.Purchase.25
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                Purchase.this.dialogCancel.dismiss();
                Purchase.this.userCancelResponse();
                super.onClick(v);
            }
        });
        this.dialogCancel.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.26
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                Purchase.this.dialogCancel.dismiss();
                Purchase.this.userCancelResponse();
            }
        });
        this.dialogCancel.show();
        this.mDialog = this.dialogCancel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DialogPwdRet() {
        Dialog_Mode = 1011;
        this.dialogPwdRet = new DialogPwdRet(this.mContext, 1);
        this.dialogPwdRet.setTitle(this.mDialog_Title);
        this.dialogPwdRet.setMessage(this.mDialog_Message);
        this.dialogPwdRet.setButton(0, "확인", new DialogOnClickListener(this.dialogPwdRet) { // from class: com.kt.olleh.inapp.Purchase.27
            @Override // com.kt.olleh.inapp.dialog.DialogOnClickListener, android.view.View.OnClickListener
            public void onClick(View v) {
                super.onClick(v);
                if (Purchase.this.mIsSetPwd) {
                    Purchase.Pay_Alert_Mode = 1011;
                    Purchase.this.mDialog_BtnCnt = 2;
                    Purchase.this.mDialog_Message = "해당 아이템을 구매하시겠습니까?";
                    Purchase.this.SendMessage(1002);
                    Purchase.this.dialogPwdRet.close();
                }
            }
        });
        this.dialogPwdRet.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kt.olleh.inapp.Purchase.28
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                Purchase.Dialog_Mode = 1009;
                Purchase.this.SendMessage(1009);
                Purchase.this.dialogPwdRet.close();
            }
        });
        this.dialogPwdRet.show();
        this.mDialog = this.dialogPwdRet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getCheckYN() {
        String mSdPath;
        Cursor cursor = this.mContext.getContentResolver().query(Uri.parse(Config.CONTENT_URI), null, null, null, null);
        if (cursor != null) {
            cursor.moveToFirst();
            int checkIdx = cursor.getColumnIndexOrThrow("Result");
            if (checkIdx > -1 && cursor.getString(checkIdx) != null && InAppError.FAILED.equals(cursor.getString(checkIdx))) {
                this.mIsSetCheck = true;
                writeSDYN();
                return;
            }
            this.mIsSetCheck = false;
        }
        String ext = Environment.getExternalStorageState();
        if (ext.equals("mounted")) {
            mSdPath = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + Objects.Animation.DEVIDER_DATA;
        } else {
            mSdPath = "unmounted/";
        }
        File file = new File(mSdPath, "/data/inapp.txt");
        StringBuilder inappText = new StringBuilder();
        if (ext.equals("mounted") && file.exists()) {
            try {
                BufferedReader br = new BufferedReader(new FileReader(file));
                while (true) {
                    String line = br.readLine();
                    if (line == null) {
                        break;
                    } else {
                        inappText.append(line);
                    }
                }
                String result = inappText.toString();
                if (InAppError.FAILED.equals(result)) {
                    this.mIsSetCheck = true;
                    writeMarketYN();
                    return;
                } else {
                    this.mIsSetCheck = false;
                    return;
                }
            } catch (FileNotFoundException e1) {
                if (Config.DEBUG) {
                    e1.printStackTrace();
                    return;
                }
                return;
            } catch (IOException e) {
                if (Config.DEBUG) {
                    e.printStackTrace();
                    return;
                }
                return;
            }
        }
        this.mIsSetCheck = false;
    }

    private void writeMarketYN() {
        try {
            ContentValues contentValue = new ContentValues();
            contentValue.put("check", InAppError.FAILED);
            this.mContext.getContentResolver().insert(Uri.parse(Config.CONTENT_URI), contentValue);
        } catch (Exception e) {
            if (Config.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    private void writeSDYN() {
        String mSdPath;
        try {
            String ext = Environment.getExternalStorageState();
            if (ext.equals("mounted")) {
                mSdPath = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + Objects.Animation.DEVIDER_DATA;
            } else {
                mSdPath = "unmounted/";
            }
            File dir = new File(mSdPath, Config.strSaveFilePath);
            dir.mkdirs();
            File file = new File(dir, Config.strFileName);
            BufferedWriter out = new BufferedWriter(new FileWriter(file));
            out.write("1\n");
            out.newLine();
            out.close();
        } catch (IOException e) {
            if (Config.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckYN() {
        String mSdPath;
        try {
            ContentValues contentValue = new ContentValues();
            contentValue.put("check", InAppError.FAILED);
            this.mContext.getContentResolver().insert(Uri.parse(Config.CONTENT_URI), contentValue);
        } catch (Exception e) {
            if (Config.DEBUG) {
                e.printStackTrace();
            }
        }
        try {
            String ext = Environment.getExternalStorageState();
            if (ext.equals("mounted")) {
                mSdPath = String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()) + Objects.Animation.DEVIDER_DATA;
            } else {
                mSdPath = "unmounted/";
            }
            File dir = new File(mSdPath, Config.strSaveFilePath);
            dir.mkdirs();
            File file = new File(dir, Config.strFileName);
            BufferedWriter out = new BufferedWriter(new FileWriter(file));
            out.write("1\n");
            out.newLine();
            out.close();
        } catch (IOException e2) {
            if (Config.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public void SendMessage(int what) {
        Message msg = this.handler.obtainMessage();
        msg.what = what;
        this.handler.sendMessage(msg);
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void purchaseGetInfo() {
        getDIInformation(this.mApplicationID, this.mDigitalID);
        this.mDialog_Btn_Text_01 = "취소";
        this.mDialog_Message = "처리 중...";
        this.mPay_Type = "핸드폰 결제";
        SendMessage(1003);
    }

    public void purchaseErrorDialog(String msg) {
        this.mDialog_BtnCnt = 1;
        this.mDialog_Btn_Text_01 = "확인";
        this.mDialog_Message = msg;
        this.mIsPayInformation = false;
        this.mIsPayMessage = false;
        if (this.mIsSetPwd) {
            Pay_Alert_Mode = 1014;
            SendMessage(1002);
        } else {
            Pay_Alert_Mode = 1024;
            SendMessage(1008);
        }
    }

    private void ErrorDialog(String msg) {
        this.mDialog_Message = msg;
        AlertDialog();
    }

    private String getUserInfo() {
        if (InAppSettings.UserInfo == null) {
            switch (this.mLibMode) {
                case 0:
                    TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
                    String phoneNo = telephonyManager.getLine1Number();
                    InAppSettings.UserInfo = phoneNo;
                    break;
                case 1:
                    if (Config.DEBUG) {
                        Config.LogE("Purchase", "ILibMode.mode_SoIP number not exist");
                    }
                    break;
                case 2:
                    if (Config.DEBUG) {
                        Config.LogE("Purchase", "ILibMode.mode_KPAD Show ID not exist");
                    }
                    break;
            }
        }
        if (InAppSettings.UserInfo != null && Config.DEBUG) {
            Config.LogE("Purchase", "UserInfo.information = " + InAppSettings.UserInfo);
        }
        String userInfo = InAppSettings.UserInfo;
        try {
            TelephonyManager tm = (TelephonyManager) this.mContext.getSystemService("phone");
            String ret = tm.getSubscriberId();
            Config.tCompanyCode = ret.substring(3, 5);
        } catch (Exception e) {
            if (Config.DEBUG) {
                Config.LogE("AAAAA", "IMSI load Failed, " + e.toString());
            }
        }
        return userInfo;
    }

    public void getDIInformation(String app_id, String di_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        String userInfo = getUserInfo();
        this.mInApp.getDIInformation(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mInAppListener);
    }

    public void getBuyDiUrl(String app_id, String di_id, String buy_type, String pin) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        String userInfo = getUserInfo();
        this.mInApp.getBuyDiUrl(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, buy_type, this.mModel_name, pin, this.mInAppListener);
    }

    public void getBuyDi(String pay_no) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        this.mInApp.requestBuyDI(this.mCo_id, pay_no, this.mInAppListener);
    }

    public void requestDIBuy(String app_id, String di_id, String buy_type, String pin) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        String userInfo = getUserInfo();
        this.mInApp.requestDIBuy(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, buy_type, pin, this.mInAppListener);
    }

    public void CheckPin() {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        String userInfo = getUserInfo();
        this.mInApp.CheckPin(userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mInAppListener);
    }

    public void SetPin(String pin) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        String userInfo = getUserInfo();
        this.mInApp.SetPin(userInfo, this.mUser_id, this.mAuthen, this.mModel_name, pin, this.mInAppListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String setPostData(ResBuyDIUrl res) {
        String postData;
        String postData2;
        String postData3 = String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(String.valueOf(GameView.CHARACTER_AI) + "opCode=" + checkNull(res.mOpCode)) + "&payStoreId=" + checkNull(res.mPayStoreId)) + "&orderNo=" + checkNull(res.mOrderNo)) + "&sessionId=" + checkNull(res.mSessionId)) + "&payMethod=" + checkNull(res.mPayMethod)) + "&payAmount=" + checkNull(res.mPayAmount)) + "&payName=" + checkNull(res.mPayName);
        try {
            if (res.mCustName != null) {
                postData = String.valueOf(postData3) + "&custName=" + AESCrypt.decrypt(res.mSymmetric_key, res.mCustName);
            } else {
                postData = String.valueOf(postData3) + "&custName=";
            }
            if (res.mCustPhone != null) {
                postData2 = String.valueOf(postData) + "&custPhone=" + AESCrypt.decrypt(res.mSymmetric_key, res.mCustPhone);
            } else {
                postData2 = String.valueOf(postData) + "&custPhone=";
            }
            if (res.mCustEmail != null) {
                postData3 = String.valueOf(postData2) + "&custEmail=" + AESCrypt.decrypt(res.mSymmetric_key, res.mCustEmail);
            } else {
                postData3 = String.valueOf(postData2) + "&custEmail=";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return String.valueOf(postData3) + "&returnUrl=" + res.mReturnUrl;
    }

    private String checkNull(String str) {
        if (str == null) {
            return GameView.CHARACTER_AI;
        }
        return str;
    }

    public String getPriceFormat(String pr) {
        StringBuffer sb = new StringBuffer();
        int price = Integer.parseInt(pr);
        double num = price;
        DecimalFormat df = new DecimalFormat("#,##0");
        sb.append(df.format(num));
        return String.valueOf(sb.toString()) + "원";
    }
}
