package com.feelingk.iap;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.encryption.CryptoManager;
import com.feelingk.iap.gui.data.PurchaseItem;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.gui.view.ForeignInputMDN;
import com.feelingk.iap.gui.view.PopJuminNumberAuth;
import com.feelingk.iap.gui.view.PopLguSmsAuthDialog;
import com.feelingk.iap.gui.view.PopupAutoPurchaseFormDialog;
import com.feelingk.iap.gui.view.PopupCultureLandLoginDialog;
import com.feelingk.iap.gui.view.PopupDialog;
import com.feelingk.iap.gui.view.PopupDotoriSmsAuth;
import com.feelingk.iap.gui.view.PopupImageDialog;
import com.feelingk.iap.gui.view.PopupImeiAuthDialog;
import com.feelingk.iap.gui.view.PopupJoinDialog;
import com.feelingk.iap.gui.view.PopupOCBDialog;
import com.feelingk.iap.gui.view.PopupOTPDialog;
import com.feelingk.iap.gui.view.PopupYesNoDialog;
import com.feelingk.iap.gui.view.ProgressDialog;
import com.feelingk.iap.gui.view.PurchaseDialog;
import com.feelingk.iap.net.AutoPurchaseDismissCheckConfirm;
import com.feelingk.iap.net.CultureLandCashConfirm;
import com.feelingk.iap.net.ItemInfoConfirm;
import com.feelingk.iap.net.LGUSmsAuthNumberConfirm;
import com.feelingk.iap.net.MsgConfirm;
import com.feelingk.iap.net.OKCashbagPointInfoConfirm;
import com.feelingk.iap.net.PurchaseParam;
import com.feelingk.iap.net.SellerInfoConfirm;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.findit.battle.Objects;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.kt.olleh.inapp.net.InAppError;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.Key;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class IAPActivity extends Activity {
    static final String TAG = "IAPActivity";
    private static String m_strLogFileName;
    private ItemInfoConfirm mItemInfoConfirm;
    private SellerInfoConfirm sellerInfoConfirm;
    public static boolean finalVerFlag = false;
    public static boolean purchaseDismissFlag = false;
    private static String encryptPwd = null;
    private static String decryptPwd = null;
    private static String m_strLogFileFolderPath = GameView.CHARACTER_AI;
    private static String dirPath = null;
    private static String mLGUSmsAuthNumberKey = null;
    private String USIM_Check = "USIM Null";
    private IAPLibSetting mSetting = null;
    private String mPurchaseName = null;
    private String mEncName = null;
    private String mMsgItemInfo = null;
    private TelephonyManager m_telephonyManager = null;
    private WifiManager wfmanager = null;
    private int m_phoneUSIMState = 10;
    private String mErrorMessage = GameView.CHARACTER_AI;
    private String mYesNoMessage = GameView.CHARACTER_AI;
    private String m_Tid = null;
    private String m_encBpInfo = null;
    private Boolean mSetBPProtocol = false;
    private Boolean mSetTmpBPProtocol = false;
    private PurchaseDialog mPurchaseDlg = null;
    private PopupDialog mPopupDlg = null;
    private ProgressDialog mProgressDlg = null;
    private PopJuminNumberAuth mJuminAuth = null;
    private PopupYesNoDialog mYesNoDlg = null;
    private PopupImageDialog mImageDlg = null;
    private PopupAutoPurchaseFormDialog mAutoPurchaseFormDlg = null;
    private PopupJoinDialog mJoinDlg = null;
    private PopupOTPDialog mOtpDlg = null;
    private PopLguSmsAuthDialog mLguSmsDlg = null;
    private PopupImeiAuthDialog mImeiAuthDlg = null;
    private PopupOCBDialog mOCBDlg = null;
    private PopupCultureLandLoginDialog mCultureLandLoginDlg = null;
    private PopupDotoriSmsAuth mDotoriSmsAuthDlg = null;
    private ForeignInputMDN mForeignInputMDN = null;
    private boolean mUseTCash = false;
    private int mRotaion = -1;
    private boolean mTabDevice = false;
    private ItemInfoConfirm iic = null;
    private LGUSmsAuthNumberConfirm lguConfirm = null;
    private String mDlgType = null;
    private int mPurchaseItemWorkFlow = 0;
    private int mUsimPurchaseItemWorkFlow = 0;
    private String mPurchaseID = null;
    private byte[] mData = null;
    private String mPurchaseBPInfo = null;
    public boolean juminFlag = false;
    public boolean pwdAuthFlag = false;
    public boolean mUsimCheckFlag = false;
    private String mSmsAuthCheckTime = null;
    private String mDotoriSmsAuthCheckTime = null;
    private String mStrNotExistPermissionList = GameView.CHARACTER_AI;
    PhoneStateListener phoneStateListener = new PhoneStateListener() { // from class: com.feelingk.iap.IAPActivity.1
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0000. Please report as an issue. */
        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int state, String incomingNumber) {
            switch (state) {
            }
        }
    };
    private ParserXML.ParserForeignInputMDNResultCallback onForeignInputMDNCallback = new ParserXML.ParserForeignInputMDNResultCallback() { // from class: com.feelingk.iap.IAPActivity.2
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserForeignInputMDNResultCallback
        public void onForeignInputMDNOKButtonClick(int carrier, String strMDN, String JuminNumber) {
            String tmpJuminNumber;
            IAPActivity.this.DismissForeignInputMDNDialog();
            CommonF.setCarrier(IAPActivity.this, carrier);
            CommonF.setMDN(strMDN);
            try {
                tmpJuminNumber = CryptoManager.encrypt(JuminNumber);
            } catch (Exception e) {
                tmpJuminNumber = null;
                e.printStackTrace();
            }
            if (tmpJuminNumber != null) {
                Handler hnd = IAPLib.getNetHandler();
                Message msgNET = hnd.obtainMessage(Defines.ACTION_EVENT.HND_AUTH_JUMINNUMBER, 0, 0, tmpJuminNumber);
                msgNET.sendToTarget();
            }
            IAPLib.setDialogType(100);
            if (tmpJuminNumber != null) {
                new Handler().postDelayed(new Runnable() { // from class: com.feelingk.iap.IAPActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CommonF.LOGGER.i(IAPActivity.TAG, " # Auto Runnale Mode = " + IAPActivity.this.mPurchaseItemWorkFlow);
                        if (IAPActivity.this.mPurchaseItemWorkFlow != 2) {
                            if (IAPActivity.this.mPurchaseItemWorkFlow != 4) {
                                if (IAPActivity.this.mPurchaseItemWorkFlow != 5) {
                                    if (IAPActivity.this.mPurchaseItemWorkFlow == 3) {
                                        IAPActivity.this.sendItemWholeAuth();
                                    } else {
                                        CommonF.LOGGER.e(IAPActivity.TAG, "# Auto Runnable Purchase Fail ");
                                    }
                                } else {
                                    IAPActivity.this.sendItemUse(IAPActivity.this.mPurchaseID);
                                }
                            } else {
                                IAPActivity.this.sendItemAuth(IAPActivity.this.mPurchaseID);
                            }
                        } else {
                            IAPActivity.this.popPurchaseDlg(IAPActivity.this.mPurchaseID, IAPActivity.this.mPurchaseName, IAPActivity.this.m_Tid, IAPActivity.this.mPurchaseBPInfo);
                        }
                        IAPActivity.this.mPurchaseItemWorkFlow = 0;
                    }
                }, 300L);
            }
        }
    };
    private ParserXML.ParserAuthResultCallback onJuminDialogPopupCallback = new ParserXML.ParserAuthResultCallback() { // from class: com.feelingk.iap.IAPActivity.3
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserAuthResultCallback
        public void onAuthDialogOKButtonClick(String juminText1, String juminText2) {
            String tmpJuminNumber;
            String JuminNumber = String.valueOf(juminText1) + juminText2;
            try {
                tmpJuminNumber = CryptoManager.encrypt(JuminNumber);
            } catch (Exception e) {
                tmpJuminNumber = null;
                e.printStackTrace();
            }
            if (tmpJuminNumber != null) {
                Handler hnd = IAPLib.getNetHandler();
                Message msgNET = hnd.obtainMessage(Defines.ACTION_EVENT.HND_AUTH_JUMINNUMBER, 0, 0, tmpJuminNumber);
                msgNET.sendToTarget();
            }
            IAPLib.setDialogType(100);
            IAPActivity.this.DismissJuminAuthDialog();
            if (tmpJuminNumber != null) {
                new Handler().postDelayed(new Runnable() { // from class: com.feelingk.iap.IAPActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        IAPActivity.this.billingLockCheck();
                    }
                }, 300L);
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserAuthResultCallback
        public void onAuthDialogCancelButtonClick() {
            IAPActivity.this.DismissJuminAuthDialog();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
            IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        }
    };
    private ParserXML.ParserYesNoResultCallback onPopupCallback = new ParserXML.ParserYesNoResultCallback() { // from class: com.feelingk.iap.IAPActivity.4
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserYesNoResultCallback
        public void onYesNoDialogOKButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "DlgType: " + IAPLib.getDialogType());
            IAPActivity.this.DismissYesNoDialog();
            if (IAPLib.getDialogType() == 129) {
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
                IAPActivity.this.ShowLoadingProgress();
                IAPLib.sendOCBUpdateReq(Objects.Animation.TYPE_DELAY, IAPActivity.this.mItemInfoConfirm.getmOCBCardNum());
            } else if (IAPActivity.purchaseDismissFlag) {
                IAPActivity.this.ShowLoadingProgress();
                IAPLib.sendPurchaseDismiss(IAPActivity.this.mPurchaseID);
            } else if (IAPActivity.finalVerFlag) {
                IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
            } else {
                IAPActivity.this.popupJoinDlg();
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_JOIN_DIALOG);
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserYesNoResultCallback
        public void onYesNoDialogCancelButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, new StringBuilder(String.valueOf(IAPLib.getDialogType())).toString());
            IAPActivity.this.DismissYesNoDialog();
            if (IAPLib.getDialogType() == 129) {
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
                return;
            }
            IAPLib.setDialogType(100);
            IAPActivity.this.mPurchaseItemWorkFlow = 0;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            if (IAPActivity.purchaseDismissFlag) {
                onAppCallbackFn.onDlgAutoPurchaseInfoCancel();
            } else {
                onAppCallbackFn.onDlgPurchaseCancel();
            }
        }
    };
    private ParserXML.ParserImageResultCallback onImageResultCallback = new ParserXML.ParserImageResultCallback() { // from class: com.feelingk.iap.IAPActivity.5
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserImageResultCallback
        public void onImageDialogButtonClick() {
            IAPActivity.this.DismissImageDialog();
        }
    };
    private ParserXML.ParserAutoPurchaseFormResultCallback onAutoPurchaseFormResultCallback = new ParserXML.ParserAutoPurchaseFormResultCallback() { // from class: com.feelingk.iap.IAPActivity.6
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserAutoPurchaseFormResultCallback
        public void onAutoPurchaseFormDialogButtonClick(boolean flag) {
            IAPActivity.this.DismissAutoPurchaseFormDialog();
            if (flag) {
                IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(true);
            } else {
                IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(false);
            }
            IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserAutoPurchaseFormResultCallback
        public void onAutoPurchaseFormDialogCancelButtonClick() {
            IAPActivity.this.DismissAutoPurchaseFormDialog();
            IAPActivity.this.DismissPurchaseDialog();
            IAPActivity.this.mPurchaseItemWorkFlow = 0;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            onAppCallbackFn.onDlgPurchaseCancel();
            IAPLib.setDialogType(100);
        }
    };
    public ParserXML.ParserIMEIAuthCallback onImeiAuthCallback = new ParserXML.ParserIMEIAuthCallback() { // from class: com.feelingk.iap.IAPActivity.7
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserIMEIAuthCallback
        public void onIMEIAuthDialogOKButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onIMEIAuthDialogOKButtonClick");
            IAPActivity.this.DismissImeiAuthDlg();
            IAPActivity.this.ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.SendImeiAuthReq();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserIMEIAuthCallback
        public void onIMEIAuthDialogCancelButtonClick() {
            IAPActivity.this.DismissImeiAuthDlg();
            IAPActivity.this.mPurchaseItemWorkFlow = 0;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            onAppCallbackFn.onDlgPurchaseCancel();
            IAPLib.setDialogType(100);
        }
    };
    public ParserXML.ParserOCBCallback onOcbCallback = new ParserXML.ParserOCBCallback() { // from class: com.feelingk.iap.IAPActivity.8
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOCBCallback
        public void onOCBRegistrationButtonClick(String CardNum) {
            CommonF.LOGGER.i(IAPActivity.TAG, "onOCBRegistrationButtonClick Click!!");
            IAPLib.sendOCBUpdateReq(IAPLib.getOcbCardUpdateType(), CardNum);
            IAPActivity.this.DismissOCBRegDialog();
            IAPActivity.this.ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOCBCallback
        public void onOCBRegistrationCancelClick() {
            IAPLib.setDialogType(100);
            IAPActivity.this.DismissOCBRegDialog();
            IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOCBCallback
        public void onOCBPWDOKButtonClick(String ocbCardPWNum) {
            CommonF.LOGGER.i(IAPActivity.TAG, "onOCBPWDOKButtonClick Click!!");
            IAPLib.sendOCBPointReq(ocbCardPWNum);
            IAPActivity.this.DismissOCBPWDDialog();
            IAPActivity.this.ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOCBCallback
        public void onOCBPWDCancelButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onOCBPWDCancelButtonClick Click!!");
            IAPLib.setDialogType(100);
            IAPActivity.this.DismissOCBRegDialog();
            IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
        }
    };
    public ParserXML.ParserCultureLandCallback onCultureLandCallback = new ParserXML.ParserCultureLandCallback() { // from class: com.feelingk.iap.IAPActivity.9
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserCultureLandCallback
        public void onCultureLandButtonClick(String cultureLandID, String cultureLandPW) {
            CommonF.LOGGER.i(IAPActivity.TAG, "onCultureLandButtonClick Click!!");
            IAPActivity.this.DismissCultureLandLoginDialog();
            IAPActivity.this.ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.sendCultureLandCashInfoReq(cultureLandID, cultureLandPW);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserCultureLandCallback
        public void onCultureLandCancelButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onCultureLandCancelButtonClick Click!!");
            IAPLib.setDialogType(100);
            IAPActivity.this.DismissCultureLandLoginDialog();
            IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
        }
    };
    public ParserXML.ParserDotoriSmsAuthCallback onDotoriSmsAuthCallback = new ParserXML.ParserDotoriSmsAuthCallback() { // from class: com.feelingk.iap.IAPActivity.10
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserDotoriSmsAuthCallback
        public void onDotoriSmsAuthOKButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onDotoriSmsAuthOKButtonClick Click!!");
            IAPLib.setDialogType(100);
            IAPActivity.this.DismissDotoriSmsAuthDialog();
            IAPActivity.this.ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.sendDotoriSmsAuthReq(IAPLib.getDotoriSmsNumber());
            IAPActivity.this.mDotoriSmsAuthCheckTime = null;
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserDotoriSmsAuthCallback
        public void onDotoriSmsAuthCancelButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onDotoriSmsAuthCancelButtonClick Click!!");
            IAPActivity.this.DismissDotoriSmsAuthDialog();
            IAPActivity.this.mDotoriSmsAuthCheckTime = null;
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
            IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserDotoriSmsAuthCallback
        public void onDotoriSmsAuthSMSReceiveButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onDotoriSmsAuthSMSReceiveButtonClick Click!!");
            long now = System.currentTimeMillis();
            SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
            String currTime = sdfNow.format(new Date(now));
            String oldTime = IAPActivity.this.mDotoriSmsAuthCheckTime;
            CommonF.LOGGER.i(IAPActivity.TAG, "currTime: " + currTime);
            CommonF.LOGGER.i(IAPActivity.TAG, "oldTime: " + oldTime);
            if (IAPActivity.this.mDotoriSmsAuthCheckTime != null && CommonF.getTimeDifference(oldTime, currTime) < 60) {
                IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ALERT_DIALOG, CommonString.getString(CommonString.Index.DOTORI_AUTH_SMS_SEND_MESSAGE_ERROR_STRING));
                return;
            }
            IAPLib.sendDotoriSmsAuthNumberReq();
            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ALERT_DIALOG, CommonString.getString(CommonString.Index.DOTORI_AUTH_SMS_SEND_MESSAGE_STRING));
            IAPActivity.this.mDotoriSmsAuthCheckTime = sdfNow.format(new Date(now));
        }
    };
    private ParserXML.ParserJoinResultCallback onJoinResultCallback = new ParserXML.ParserJoinResultCallback() { // from class: com.feelingk.iap.IAPActivity.11
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserJoinResultCallback
        public void onJoinFormDialogPopupClick(int type) {
            if (type == 1) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://m.tstore.co.kr/userpoc/mobile/policy.html"));
                IAPActivity.this.startActivity(intent);
            } else if (type == 2) {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://m.tstore.co.kr/userpoc/mobile/cashInfo.html"));
                IAPActivity.this.startActivity(intent2);
            } else if (type == 3) {
                Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse("http://m.tstore.co.kr/userpoc/mobile/information.html"));
                IAPActivity.this.startActivity(intent3);
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserJoinResultCallback
        public void onJoinDialogOKButtonClick(String flag) {
            if (!flag.equals("join")) {
                IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_JOIN_DIALOG, "이용약관 동의에\n체크 해 주시길 바랍니다.");
                return;
            }
            IAPActivity.this.DismissJoinDialog();
            IAPActivity.this.ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.sendDataMemebership();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserJoinResultCallback
        public void onJoinDialogCancelButtonClick() {
            IAPLib.setDialogType(100);
            IAPActivity.this.DismissJoinDialog();
            IAPActivity.this.mPurchaseItemWorkFlow = 0;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            onAppCallbackFn.onJoinDialogCancel();
        }
    };
    public ParserXML.ParserOtpCallback onOtpCallback = new ParserXML.ParserOtpCallback() { // from class: com.feelingk.iap.IAPActivity.12
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOtpCallback
        public void onOtpDialogOK() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onOtpDialogOKButtonClick");
            IAPActivity.this.DismissOtpDlg();
            IAPLib.setIsOTPAuth(true);
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
            IAPActivity.this.onPurchasePopupCallback.onPurchaseButtonClick();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOtpCallback
        public void onOtpDialogCancelButtonClick() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onOtpDialogCancelButtonClick");
            Handler hnd = IAPLib.getNetHandler();
            Message msg = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CANCEL);
            msg.sendToTarget();
            IAPActivity.this.DismissOtpDlg();
            IAPLib.setDialogType(100);
            IAPActivity iAPActivity = IAPActivity.this;
            IAPActivity.this.mSetBPProtocol = false;
            iAPActivity.mSetTmpBPProtocol = false;
            IAPActivity.this.mUseTCash = false;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            onAppCallbackFn.onDlgPurchaseCancel();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOtpCallback
        public void onOtpTstoreButtonClick() {
            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ALERT_DIALOG, CommonString.getString(CommonString.Index.DLG_TSTORE_NOT_INSTALLED_STRING));
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserOtpCallback
        public void onOtpErrorPopup() {
            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ALERT_DIALOG, "T store 앱의 업그레이드가 필요합니다. 업그레이드 하시겠습니까?");
        }
    };
    public ParserXML.ParserLguSmsAuthCallback onLguSmsCallback = new ParserXML.ParserLguSmsAuthCallback() { // from class: com.feelingk.iap.IAPActivity.13
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public void onLguSmsAuthNumberReq() {
            IAPLib.sendLguSmsAuthNumber(IAPActivity.this.mPurchaseID);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public void onLguSmsAuthOK() {
            if (IAPActivity.mLGUSmsAuthNumberKey != null) {
                IAPActivity.this.DismissLguSMSAuthDlg();
                IAPActivity.this.ShowLoadingProgressPhurchase_Confirm();
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
                IAPLib.sendLguSmsAuth(IAPActivity.this.mPurchaseID, IAPActivity.mLGUSmsAuthNumberKey);
                return;
            }
            IAPActivity.this.DismissLguSMSAuthDlg();
            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ERROR, CommonString.getString(CommonString.Index.ERROR_NETWORK_SEND_RECV_CHECK_STRING));
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_ERROR);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public void onLguSmsAuthCancer() {
            CommonF.LOGGER.i(IAPActivity.TAG, "onLguSmsAuthCancerButtonClick");
            Handler hnd = IAPLib.getNetHandler();
            Message msg = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CANCEL);
            msg.sendToTarget();
            IAPLib.setOTPNumber(null);
            IAPActivity.this.DismissLguSMSAuthDlg();
            IAPLib.setDialogType(100);
            IAPActivity iAPActivity = IAPActivity.this;
            IAPActivity.this.mSetBPProtocol = false;
            iAPActivity.mSetTmpBPProtocol = false;
            IAPActivity.this.mUseTCash = false;
            IAPActivity.this.mSmsAuthCheckTime = null;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            onAppCallbackFn.onDlgPurchaseCancel();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public void onErrorPopup() {
            String time = IAPActivity.this.mSmsAuthCheckTime;
            String currTime = String.valueOf(time.substring(0, 4)) + "-" + time.substring(4, 6) + "-" + time.substring(6, 8) + " " + time.substring(8, 10) + ":" + time.substring(10, 12) + ":" + time.substring(12, 14);
            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_LGU_SMS_AUTH_DIALOG, String.valueOf(CommonString.getString(CommonString.Index.ERROR_SMS_NUMBER_AUTH_STRING)) + "(" + CommonString.getString(CommonString.Index.LAST_REQUEST) + " " + currTime + ")");
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public String onGetLguSmsAuthTime() {
            return IAPActivity.this.mSmsAuthCheckTime;
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public void onSetLguSmsAuthTime(boolean flag) {
            if (flag) {
                long now = System.currentTimeMillis();
                SimpleDateFormat sdfNow = new SimpleDateFormat("yyyyMMddHHmmss");
                IAPActivity.this.mSmsAuthCheckTime = sdfNow.format(new Date(now));
                CommonF.LOGGER.i(IAPActivity.TAG, "smsAuthTimeCheck: " + IAPActivity.this.mSmsAuthCheckTime);
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public void onTstoreLockError(String msg) {
            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ALERT_DIALOG, msg);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserLguSmsAuthCallback
        public void onEnterTstore() {
            PackageInfo info = null;
            try {
                info = IAPActivity.this.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
            } catch (PackageManager.NameNotFoundException e1) {
                e1.printStackTrace();
            }
            String versionName = info.versionName;
            int versionCode = info.versionCode;
            CommonF.LOGGER.i(IAPActivity.TAG, "application versionName : " + versionName);
            CommonF.LOGGER.i(IAPActivity.TAG, "application versionCode : " + versionCode);
            byte[] data = (byte[]) null;
            try {
                Context other = IAPActivity.this.createPackageContext("com.skt.skaf.A000Z00040", 2);
                FileInputStream fis = other.openFileInput("lockInfo.txt");
                try {
                    data = new byte[fis.available()];
                    while (fis.read(data) != -1) {
                    }
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
            }
            if (data != null && versionCode >= 19) {
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                IAPActivity.this.startActivity(intent);
                return;
            }
            Intent intent2 = new Intent();
            intent2.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
            IAPActivity.this.startActivity(intent2);
        }
    };
    private ParserXML.ParserResultCallback onPurchasePopupCallback = new ParserXML.ParserResultCallback() { // from class: com.feelingk.iap.IAPActivity.14
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onUseTCashCheckChanged(boolean isChecked) {
            IAPActivity.this.mUseTCash = isChecked;
            if (!isChecked && IAPActivity.this.mSetBPProtocol.booleanValue()) {
                IAPActivity.this.mSetTmpBPProtocol = true;
            } else {
                IAPActivity.this.mSetTmpBPProtocol = false;
            }
            CommonF.LOGGER.i(IAPActivity.TAG, "PopupCheck!!  UseTCash =" + isChecked + " / BPProtocol = " + IAPActivity.this.mSetTmpBPProtocol);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onPurchaseCancelButtonClick() {
            Handler hnd = IAPLib.getNetHandler();
            Message msg = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CANCEL);
            msg.sendToTarget();
            IAPActivity.this.DismissPurchaseDialog();
            IAPLib.setDialogType(100);
            IAPActivity iAPActivity = IAPActivity.this;
            IAPActivity.this.mSetBPProtocol = false;
            iAPActivity.mSetTmpBPProtocol = false;
            IAPActivity.this.mUseTCash = false;
            IAPLib.setLimitExcess(false);
            IAPActivity.this.setInit();
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            onAppCallbackFn.onDlgPurchaseCancel();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onPurchaseButtonClick() {
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
            IAPActivity.this.handPurchaseConfirm();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onAutoPurchaseInfoClick(String formName, String message) {
            IAPActivity.this.DismissPurchaseDialog();
            Message msgUI = IAPActivity.this.mGUIMessageHandler.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASEAUTO_FORM_OPEN);
            IAPActivity.this.mGUIMessageHandler.sendMessage(msgUI);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onPurchaseAutoButtonClick() {
            IAPActivity.this.DismissPurchaseDialog();
            IAPLib.setDialogType(100);
            if (SingletonCounter.getInstance().getmPostPay() > 0 && IAPActivity.this.IAPLibAuthCheck()) {
                IAPActivity.this.ShowJuminAuthDialog();
            } else {
                IAPActivity.this.billingLockCheck();
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onPurchaseAutoCancelButtonClick(String flag) {
            if (flag.equals("error")) {
                IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_PURCHASE, CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFO_AGREE));
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onTstoreLockError(String msg) {
            IAPActivity.this.ShowInfoMessageDialog(100, msg);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onEnterTstore() {
            PackageInfo info = null;
            try {
                info = IAPActivity.this.getPackageManager().getPackageInfo("com.skt.skaf.A000Z00040", 0);
            } catch (PackageManager.NameNotFoundException e1) {
                e1.printStackTrace();
            }
            String versionName = info.versionName;
            int versionCode = info.versionCode;
            CommonF.LOGGER.i(IAPActivity.TAG, "application versionName : " + versionName);
            CommonF.LOGGER.i(IAPActivity.TAG, "application versionCode : " + versionCode);
            byte[] data = (byte[]) null;
            try {
                Context other = IAPActivity.this.createPackageContext("com.skt.skaf.A000Z00040", 2);
                FileInputStream fis = other.openFileInput("lockInfo.txt");
                try {
                    data = new byte[fis.available()];
                    while (fis.read(data) != -1) {
                    }
                    fis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
            }
            if (data != null && versionCode >= 19) {
                Intent intent = new Intent();
                intent.addFlags(536870912);
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                intent.setAction("COLLAB_ACTION");
                intent.putExtra("com.skt.skaf.COL.URI", "SETTING_VIEW".getBytes());
                intent.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
                IAPActivity.this.startActivity(intent);
                return;
            }
            Intent intent2 = new Intent();
            intent2.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
            IAPActivity.this.startActivity(intent2);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onShowOCBRegPopup(String inputType) {
            IAPActivity.this.DismissPurchaseDialog();
            IAPActivity.this.ShowOCBRegDialog(inputType);
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onShowOCBPWDDialog() {
            IAPActivity.this.DismissPurchaseDialog();
            IAPActivity.this.ShowOCBPWDDialog();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onShowCultureLandDialog() {
            IAPActivity.this.DismissPurchaseDialog();
            IAPActivity.this.ShowCultureLandLoginDialog();
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onShowDotoriQueryBtnClick(boolean flag) {
            if (!flag) {
                IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ALERT_DIALOG, CommonString.getString(CommonString.Index.DOTORI_MEMBERINFO_STRING));
            } else {
                IAPActivity.this.DismissPurchaseDialog();
                IAPActivity.this.ShowDotoriSmsAutnDialog();
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onShowMessageDialog() {
            IAPActivity.this.ShowInfoMessageDialog(100, CommonString.getString(CommonString.Index.DOTORI_LIMIT_EXCESS_STRING));
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserResultCallback
        public void onAutoPurchaseCheck(boolean autoPurchaseCheck) {
            if (autoPurchaseCheck) {
                IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(true);
            } else {
                IAPActivity.this.mItemInfoConfirm.setmAfterAutoPurchaseInfoAgree(false);
            }
        }
    };
    private ParserXML.ParserPopupDlgResultCallback onParserPopupDlgResultCallback = new ParserXML.ParserPopupDlgResultCallback() { // from class: com.feelingk.iap.IAPActivity.15
        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserPopupDlgResultCallback
        public void onDlgButtonClick() {
            if (IAPLib.getDialogType() != 107 && IAPLib.getDialogType() != 103) {
                IAPActivity.this.mPurchaseItemWorkFlow = 0;
                IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
                if (IAPActivity.purchaseDismissFlag) {
                    IAPActivity.purchaseDismissFlag = false;
                    IAPLib.setDialogType(100);
                    onAppCallbackFn.onPurchaseDismiss();
                } else if (IAPLib.getDialogType() == 117 || IAPLib.getDialogType() == 114 || IAPLib.getDialogType() == 123) {
                    IAPActivity.this.DismissInfoMessageDialog();
                } else {
                    IAPLib.setDialogType(100);
                    onAppCallbackFn.onDlgError();
                }
            }
        }

        @Override // com.feelingk.iap.gui.parser.ParserXML.ParserPopupDlgResultCallback
        public void onErrorDlgBtnClick() {
            if (IAPLib.getDialogType() == 127) {
            }
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
            IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
        }
    };
    DialogInterface.OnCancelListener onProgressCancelListerner = new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.IAPActivity.16
        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            Handler hnd = IAPLib.getNetHandler();
            Message msg = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CANCEL);
            msg.sendToTarget();
            IAPActivity.this.DismissLoaingProgress();
            IAPLib.setDialogType(100);
            IAPActivity.this.mUseTCash = false;
            IAPActivity iAPActivity = IAPActivity.this;
            IAPActivity.this.mSetBPProtocol = false;
            iAPActivity.mSetTmpBPProtocol = false;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            onAppCallbackFn.onDlgPurchaseCancel();
        }
    };
    View.OnClickListener onInfoCancelListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.17
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            Handler hnd = IAPLib.getNetHandler();
            Message msg = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CANCEL);
            msg.sendToTarget();
            IAPActivity.this.DismissInfoMessageDialog();
            if (IAPLib.getDialogType() != 107 && IAPLib.getDialogType() != 103) {
                IAPLib.setDialogType(100);
            }
            IAPActivity iAPActivity = IAPActivity.this;
            IAPActivity.this.mSetBPProtocol = false;
            iAPActivity.mSetTmpBPProtocol = false;
            IAPActivity.this.mUseTCash = false;
            IAPLib.OnClientListener onAppCallbackFn = IAPActivity.this.mSetting.ClientListener;
            if (IAPActivity.purchaseDismissFlag) {
                IAPActivity.purchaseDismissFlag = false;
                onAppCallbackFn.onPurchaseDismiss();
            } else if (IAPLib.getDialogType() != 107 && IAPLib.getDialogType() != 103) {
                onAppCallbackFn.onDlgError();
            }
        }
    };
    View.OnClickListener onConfirmInfoListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.18
        @Override // android.view.View.OnClickListener
        public void onClick(View v) throws Throwable {
            if (IAPLib.getIsOTPAuth() && IAPLib.getOTPAgree()) {
                IAPLib.sendOTPAgreeCheck("Y");
                IAPActivity.reset(Defines.SDCARD_LOG_FILE_NAME.OTP_LOG_FILE_NAME);
            }
            Handler hnd = IAPLib.getNetHandler();
            Message msg = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_FINISH_OK);
            msg.sendToTarget();
            IAPActivity iAPActivity = IAPActivity.this;
            IAPActivity.this.mSetBPProtocol = false;
            iAPActivity.mSetTmpBPProtocol = false;
            IAPActivity.this.mUseTCash = false;
            IAPActivity.this.DismissInfoMessageDialog();
            IAPLib.setDialogType(100);
        }
    };
    View.OnClickListener onLimit_ExcessDlgListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.19
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.DismissInfoMessageDialog();
            IAPActivity.this.ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.setLimitExcess(true);
            IAPLib.resendItemInfo(IAPActivity.this.mPurchaseID, IAPActivity.this.mEncName, IAPActivity.this.m_Tid, IAPActivity.this.m_encBpInfo);
        }
    };
    View.OnClickListener onLGUSMSAuthInfoListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.20
        @Override // android.view.View.OnClickListener
        public void onClick(View arg0) {
            IAPActivity.this.DismissInfoMessageDialog();
        }
    };
    View.OnClickListener onAlertDialogClickListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.21
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.DismissInfoMessageDialog();
            CommonF.LOGGER.i(IAPActivity.TAG, "DlgType" + IAPLib.getDialogType());
            if (IAPLib.getDialogType() == 103) {
                IAPActivity.this.DismissInfoMessageDialog();
                IAPActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://helpdesk.nate.com/userinfo/exMemberInfo.asp?pgcode=my_phone")));
                IAPActivity.this.DismissPurchaseDialog();
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_DOTORI_LINK_AFTER);
                return;
            }
            if (IAPLib.getDialogType() == 126) {
                IAPActivity.this.DismissInfoMessageDialog();
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
                IAPActivity.this.ShowLoadingProgress();
                IAPLib.sendOCBUpdateReq(Objects.Animation.TYPE_DELAY, IAPActivity.this.mItemInfoConfirm.getmOCBCardNum());
                return;
            }
            if (IAPLib.getDialogType() == 127 || IAPLib.getDialogType() == 128 || IAPLib.getDialogType() == 130) {
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
                return;
            }
            if (IAPLib.getDialogType() == 114) {
                boolean tStoreFlag = false;
                PackageManager pm = IAPActivity.this.getPackageManager();
                List<ApplicationInfo> appList = pm.getInstalledApplications(0);
                int nSize = appList.size();
                for (int i = 0; i < nSize; i++) {
                    ApplicationInfo app = appList.get(i);
                    if (app.packageName.indexOf("com.skt.skaf.A000Z00040") == 0) {
                        tStoreFlag = true;
                        CommonF.LOGGER.i(IAPActivity.TAG, "티스토어 설치여부: true");
                    }
                }
                if (!tStoreFlag) {
                    IAPActivity.this.DismissInfoMessageDialog();
                    return;
                }
                Intent intent = new Intent();
                intent.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
                IAPActivity.this.startActivity(intent);
            }
        }
    };
    View.OnClickListener onYesNoConfirmInfoListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.22
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mYesNoDlg.ClosePopupYesNoDialog();
        }
    };
    View.OnClickListener onImageConfirmInfoListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.23
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mImageDlg.ClosePopupImageDialog();
        }
    };
    View.OnClickListener onJAutoPurchaseFormInfoListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.24
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mAutoPurchaseFormDlg.ClosePopupAutoPurchaseFormDialog();
        }
    };
    View.OnClickListener onJoinInfoListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.25
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mJoinDlg.ClosePopupJoinDialog();
        }
    };
    View.OnClickListener onOtpInfoListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.26
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mOtpDlg.ClosePopupOtpDialog();
        }
    };
    View.OnClickListener onLGUSMSAuthListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.27
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mLguSmsDlg.ClosePopupLguSMSAuthDialog();
        }
    };
    View.OnClickListener onOCBRegListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.28
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mOCBDlg.ClosePopupOCBDialog();
        }
    };
    View.OnClickListener onCultureLandLoginListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.29
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mCultureLandLoginDlg.ClosePopupCultureLandLoginDialog();
        }
    };
    View.OnClickListener onDotoriSmsAuthListener = new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.30
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            IAPActivity.this.mDotoriSmsAuthDlg.ClosePopupDotoriSMSAuthDialog();
        }
    };
    private final Handler mGUIMessageHandler = new Handler() { // from class: com.feelingk.iap.IAPActivity.31
        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            int dlgType = IAPLib.getDialogType();
            CommonF.LOGGER.i(IAPActivity.TAG, "[GUI-Handler] mGUIMessageHandler msg.what= " + msg.what);
            switch (msg.what) {
                case Defines.ACTION_EVENT.HND_PURCHASE_CONFIRM /* 1100 */:
                    if (dlgType == 103) {
                        IAPActivity.this.DismissPurchaseDialog();
                        IAPActivity.this.ShowLoadingProgressPhurchase_Confirm();
                        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE_PROGRESS);
                    }
                    break;
                case Defines.ACTION_EVENT.HND_PURCHASE_CONFIRM_DANAL /* 1101 */:
                case Defines.ACTION_EVENT.HND_PURCHASE_CANCEL /* 1102 */:
                case Defines.ACTION_EVENT.HND_PURCHASE_FINISH_OK /* 1103 */:
                case Defines.ACTION_EVENT.HND_ITEMQUERY_FINISH /* 1105 */:
                case Defines.ACTION_EVENT.HND_WHOLEQUERY_FINISH /* 1107 */:
                case Defines.ACTION_EVENT.HND_ITEMUSE_FINISH /* 1108 */:
                case Defines.ACTION_EVENT.HND_ITEMAUTH_FINISH /* 1109 */:
                case Defines.ACTION_EVENT.HND_AUTH_JUMINNUMBER /* 1110 */:
                case 1111:
                case 1112:
                case 1113:
                case 1114:
                case Defines.ACTION_EVENT.HND_PERMISSON_ERROR /* 1115 */:
                case Defines.ACTION_EVENT.HND_USIM_ACTIVATE_ERROR /* 1116 */:
                case Defines.ACTION_EVENT.HND_JOIN_FORM_OPEN /* 1118 */:
                case Defines.ACTION_EVENT.HND_AUTOMATIC_PAYMENT /* 1122 */:
                case Defines.ACTION_EVENT.HND_ERR_LGU_SMSAUTH_NUMBER_REQ_ERROR /* 1127 */:
                case Defines.ACTION_EVENT.HND_ERR_LGU_SMSAUTH_ERROR /* 1129 */:
                case Defines.ACTION_EVENT.HND_IMEI_AUTH_NOT_REQUIRED /* 1130 */:
                case Defines.ACTION_EVENT.HND_IMEI_AUTH_REQ_OK /* 1132 */:
                case Defines.ACTION_EVENT.HND_OCB_CARD_UPDATE_REQ_OK /* 1133 */:
                case Defines.ACTION_EVENT.HND_DOTORI_SMSAUTH_NUMBER_REQ_OK /* 1136 */:
                case Defines.ACTION_EVENT.HND_SELLERINFO_REQ_OK /* 1138 */:
                default:
                    CommonF.LOGGER.i(IAPActivity.TAG, "[GUI Handler] OnError " + msg.what);
                    CommonF.LOGGER.i(IAPActivity.TAG, "dlgType :" + dlgType);
                    IAPActivity.this.DismissLoaingProgress();
                    if (dlgType != 100) {
                        IAPActivity.purchaseDismissFlag = false;
                        IAPLib.setDialogType(100);
                        IAPActivity.this.DismissLoaingProgress();
                        IAPActivity.this.DismissPurchaseDialog();
                    }
                    if (msg.what < 2004 || msg.what > 2007) {
                        if (msg.what == 2013) {
                            IAPActivity.this.DismissLguSMSAuthDlg();
                        }
                        if (msg.what == 2018) {
                            IAPLib.setOcbCardUpdateType(GameView.CHARACTER_AI);
                            CommonF.LOGGER.i(IAPActivity.TAG, "getOcbCardUpdateType: " + IAPLib.getOcbCardUpdateType());
                        }
                        if (msg.what == 2021 || msg.what == 2008) {
                            IAPActivity.this.DismissDotoriSmsAuthDialog();
                        }
                        if (IAPActivity.this.mSmsAuthCheckTime != null) {
                            IAPActivity.this.mSmsAuthCheckTime = null;
                            IAPActivity.this.DismissImeiAuthDlg();
                        }
                        IAPActivity.this.mErrorMessage = msg.obj.toString();
                        CommonF.LOGGER.e(IAPActivity.TAG, IAPActivity.this.mErrorMessage);
                        if (msg.what == 2018 || msg.what == 2019) {
                            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_OCB_REG_ERROR);
                            IAPActivity.this.DismissLoaingProgress();
                            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_OCB_REG_ERROR, IAPActivity.this.mErrorMessage);
                        } else if (msg.what == 2020) {
                            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_CUTURE_QUERY_ERROR);
                            IAPActivity.this.DismissLoaingProgress();
                            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_CUTURE_QUERY_ERROR, IAPActivity.this.mErrorMessage);
                        } else if (msg.what == 2022) {
                            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG);
                            IAPActivity.this.DismissLoaingProgress();
                            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_DOTORI_AUTH_DIALOG, IAPActivity.this.mErrorMessage);
                        } else {
                            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_ERROR);
                            IAPActivity.this.DismissLoaingProgress();
                            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ERROR, IAPActivity.this.mErrorMessage);
                        }
                    }
                    break;
                case Defines.ACTION_EVENT.HND_ITEMINFO_FINISH /* 1104 */:
                    if (dlgType == 102) {
                        IAPActivity.this.DismissLoaingProgress();
                        ItemInfoConfirm itemInfoConfirmObj = (ItemInfoConfirm) msg.obj;
                        if (!itemInfoConfirmObj.getmAutoPurchaseCheck()) {
                            IAPActivity.this.ShowPurchaseDialog(msg.obj);
                            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                        } else if (CommonF.getCarrier(IAPActivity.this) != 1) {
                            IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ERROR, CommonString.getString(CommonString.Index.ERROR_DLG_AUTO_PURCHASE));
                            IAPActivity.this.mErrorMessage = CommonString.getString(CommonString.Index.ERROR_DLG_AUTO_PURCHASE);
                            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_ERROR);
                        } else {
                            IAPActivity.this.ShowPurchaseDialog(msg.obj);
                            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                        }
                    }
                    break;
                case Defines.ACTION_EVENT.HND_PURCHASE_FINISH /* 1106 */:
                    if (dlgType == 104) {
                        IAPActivity.this.DismissLoaingProgress();
                        MsgConfirm confirm = (MsgConfirm) msg.obj;
                        try {
                            IAPActivity.this.mMsgItemInfo = new String(confirm.getMsg(), "MS949");
                            IAPActivity iAPActivity = IAPActivity.this;
                            iAPActivity.mMsgItemInfo = String.valueOf(iAPActivity.mMsgItemInfo) + "\n";
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE_CONFIRM);
                        IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_PURCHASE_CONFIRM, IAPActivity.this.mMsgItemInfo);
                    }
                    break;
                case Defines.ACTION_EVENT.HND_FINAL_VERSION_CHECK /* 1117 */:
                    if (dlgType == 102) {
                        IAPActivity.this.DismissLoaingProgress();
                        IAPActivity.this.iic = (ItemInfoConfirm) msg.obj;
                        IAPActivity.this.mItemInfoConfirm = IAPActivity.this.iic;
                        IAPActivity.finalVerFlag = true;
                        IAPActivity.this.popupYesNoDlg(CommonString.getString(CommonString.Index.FINAL_VERSION_CHECK_STRING));
                        IAPActivity.this.mYesNoMessage = CommonString.getString(CommonString.Index.FINAL_VERSION_CHECK_STRING);
                    }
                    break;
                case Defines.ACTION_EVENT.HND_USER_CERTI_FAIL /* 1119 */:
                    if (dlgType == 102) {
                        IAPActivity.this.DismissLoaingProgress();
                        IAPActivity.this.popupYesNoDlg(CommonString.getString(CommonString.Index.ERROR_USER_CERTI_FAIL_STRING));
                        IAPActivity.this.mYesNoMessage = CommonString.getString(CommonString.Index.ERROR_USER_CERTI_FAIL_STRING);
                    }
                    break;
                case Defines.ACTION_EVENT.HND_JOIN_FINISH_OK /* 1120 */:
                    IAPActivity.this.DismissLoaingProgress();
                    PurchaseParam pp = (PurchaseParam) msg.obj;
                    IAPActivity.this.popPurchaseDlg(pp.getpId(), pp.getpName(), pp.getpTid(), pp.getpBPInfo());
                    break;
                case Defines.ACTION_EVENT.HND_SKT_CERTI_FAIL /* 1121 */:
                    IAPActivity.this.DismissLoaingProgress();
                    IAPActivity.this.mErrorMessage = msg.obj.toString();
                    IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_ERROR, IAPActivity.this.mErrorMessage);
                    break;
                case Defines.ACTION_EVENT.HND_PURCHASE_DISMISS /* 1123 */:
                    MsgConfirm confirm2 = (MsgConfirm) msg.obj;
                    try {
                        IAPActivity.this.mMsgItemInfo = new String(confirm2.getMsg(), "MS949");
                        IAPActivity iAPActivity2 = IAPActivity.this;
                        iAPActivity2.mMsgItemInfo = String.valueOf(iAPActivity2.mMsgItemInfo) + "\n";
                    } catch (UnsupportedEncodingException e2) {
                        e2.printStackTrace();
                    }
                    CommonF.LOGGER.e(IAPActivity.TAG, IAPActivity.this.mMsgItemInfo);
                    IAPActivity.this.DismissLoaingProgress();
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_DISMISS);
                    IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_DISMISS, IAPActivity.this.mMsgItemInfo);
                    break;
                case Defines.ACTION_EVENT.HND_PURCHASEAUTO_FORM_OPEN /* 1124 */:
                    IAPActivity.this.popupAutoPurchaseFormDlg(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_JOIN_FORM_DIALOG);
                    break;
                case Defines.ACTION_EVENT.HND_LIMIT_EXCESS /* 1125 */:
                    if (dlgType == 102) {
                        IAPActivity.this.mErrorMessage = msg.obj.toString();
                        IAPActivity.this.DismissLoaingProgress();
                        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LIMIT_EXCESS);
                        IAPActivity.this.ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_LIMIT_EXCESS, IAPActivity.this.mErrorMessage);
                    }
                    break;
                case Defines.ACTION_EVENT.HND_LGU_SMSAUTH_NUMBER_REQ_OK /* 1126 */:
                    IAPActivity.this.lguConfirm = (LGUSmsAuthNumberConfirm) msg.obj;
                    IAPActivity.mLGUSmsAuthNumberKey = IAPActivity.this.lguConfirm.getAuthKey();
                    if (IAPActivity.mLGUSmsAuthNumberKey.equals("TEST")) {
                        int randomNum = 0;
                        for (int num = 1; num <= 20; num++) {
                            randomNum = (int) ((Math.random() * ((double) 900000)) + ((double) 100000));
                        }
                        IAPLib.setOTPNumber(Integer.toString(randomNum));
                    }
                    break;
                case Defines.ACTION_EVENT.HND_LGU_SMSAUTH_REQ_OK /* 1128 */:
                    IAPActivity.this.DismissLoaingProgress();
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                    IAPActivity.this.onPurchasePopupCallback.onPurchaseButtonClick();
                    break;
                case Defines.ACTION_EVENT.HND_IMEI_AUTH_POPUP /* 1131 */:
                    if (dlgType == 102) {
                        IAPActivity.this.DismissLoaingProgress();
                        IAPActivity.this.showImeiAuthDlg();
                        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_IMEI_AUTH_DIALOG);
                    }
                    break;
                case Defines.ACTION_EVENT.HND_OCB_OCBPOINTINFO_REQ_OK /* 1134 */:
                    OKCashbagPointInfoConfirm ocbpointObj = (OKCashbagPointInfoConfirm) msg.obj;
                    String ocbPoint = ocbpointObj.getOCBPointBalance();
                    IAPLib.setOCBPoint(ocbPoint);
                    IAPLib.setOCBPointInfo(true);
                    IAPActivity.this.DismissLoaingProgress();
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                    IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
                    break;
                case Defines.ACTION_EVENT.HND_CULTURELAND_CASH_REQ_OK /* 1135 */:
                    CultureLandCashConfirm cultureLandCashObj = (CultureLandCashConfirm) msg.obj;
                    String CLPoint = new String(cultureLandCashObj.getCultureLandCashBalance());
                    IAPLib.setCultureLandCashPoint(CLPoint);
                    IAPLib.setCultureCashQueryInfo(true);
                    IAPActivity.this.DismissLoaingProgress();
                    IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                    break;
                case Defines.ACTION_EVENT.HND_DOTORI_SMSAUTH_REQ_OK /* 1137 */:
                    IAPActivity.reset(Defines.SDCARD_LOG_FILE_NAME.DOTORI_SMS_AUTH_FILE_NAME);
                    IAPActivity.this.DismissLoaingProgress();
                    IAPActivity.this.ShowPurchaseDialog(IAPActivity.this.mItemInfoConfirm);
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                    break;
                case Defines.ACTION_EVENT.HND_PURCHASE_DISMISS_CHECK /* 1139 */:
                    IAPActivity.this.DismissLoaingProgress();
                    IAPActivity.purchaseDismissFlag = true;
                    AutoPurchaseDismissCheckConfirm confirmObj = (AutoPurchaseDismissCheckConfirm) msg.obj;
                    if (confirmObj.getmDismissInfo().equals("Y") && Integer.parseInt(confirmObj.getmDismissCount()) < 1) {
                        IAPActivity.this.mYesNoMessage = CommonString.getString(CommonString.Index.DLG_AUTO_PURCHASE_INFO);
                        IAPActivity.this.popupYesNoDlg("[" + IAPActivity.this.mPurchaseName + "]" + IAPActivity.this.mYesNoMessage);
                    } else {
                        IAPActivity.this.mYesNoMessage = String.valueOf(CommonString.getString(CommonString.Index.DLG_AUTO_PURCHASE_INFO)) + CommonString.getString(CommonString.Index.DLG_AUTO_PURCHASE_INFO2);
                        IAPActivity.this.popupYesNoDlg("[" + IAPActivity.this.mPurchaseName + "]" + IAPActivity.this.mYesNoMessage);
                    }
                    break;
            }
        }
    };

    private boolean isEnablePermission() {
        boolean isExistPermission = true & checkPermission("android.permission.RECEIVE_SMS");
        return isExistPermission & checkPermission("android.permission.WRITE_EXTERNAL_STORAGE") & checkPermission("android.permission.INTERNET") & checkPermission("android.permission.ACCESS_NETWORK_STATE") & checkPermission("android.permission.READ_PHONE_STATE");
    }

    private boolean checkPermission(String strPermission) {
        if (getPackageManager().checkPermission(strPermission, getPackageName()) != -1) {
            return true;
        }
        this.mStrNotExistPermissionList = String.valueOf(this.mStrNotExistPermissionList) + strPermission.replace("android.permission.", GameView.CHARACTER_AI) + "\r\n";
        return false;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (!isEnablePermission()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(CommonString.getString(CommonString.Index.WARNING_PERMISSION));
            builder.setMessage(this.mStrNotExistPermissionList.substring(0, this.mStrNotExistPermissionList.length() - 2));
            builder.setPositiveButton(CommonString.getString(CommonString.Index.CONFIRM), (DialogInterface.OnClickListener) null);
            AlertDialog dialog = builder.create();
            dialog.show();
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.feelingk.iap.IAPActivity.32
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialog2) {
                    IAPActivity.this.finish();
                }
            });
            return;
        }
        CommonF.LOGGER.i(TAG, "IAPActivity onCreate ");
        IAPLibDeviceCheck();
        dirPath = getApplicationContext().getFilesDir().getAbsolutePath();
        this.m_telephonyManager = (TelephonyManager) getSystemService("phone");
        WindowManager.LayoutParams params = getWindow().getAttributes();
        if ((params.flags & 1024) > 0) {
            this.mPurchaseDlg = new PurchaseDialog(this, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.onPurchasePopupCallback, this.mTabDevice);
            this.mJuminAuth = new PopJuminNumberAuth(this, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.onJuminDialogPopupCallback, this.mTabDevice);
            this.mPopupDlg = new PopupDialog(this, this.onParserPopupDlgResultCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.mTabDevice);
            this.mYesNoDlg = new PopupYesNoDialog(this, this.onPopupCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen);
            this.mImageDlg = new PopupImageDialog(this, this.onImageResultCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen);
            this.mAutoPurchaseFormDlg = new PopupAutoPurchaseFormDialog(this, this.onAutoPurchaseFormResultCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen);
            this.mJoinDlg = new PopupJoinDialog(this, this.onJoinResultCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen);
            this.mOtpDlg = new PopupOTPDialog(this, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.onOtpCallback);
            this.mLguSmsDlg = new PopLguSmsAuthDialog(this, this.onLguSmsCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen);
            this.mImeiAuthDlg = new PopupImeiAuthDialog(this, this.onImeiAuthCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen);
            this.mOCBDlg = new PopupOCBDialog(this, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.onOcbCallback);
            this.mCultureLandLoginDlg = new PopupCultureLandLoginDialog(this, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.onCultureLandCallback);
            this.mDotoriSmsAuthDlg = new PopupDotoriSmsAuth(this, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.onDotoriSmsAuthCallback);
            this.mForeignInputMDN = new ForeignInputMDN(this, this.onForeignInputMDNCallback, R.style.Theme.Translucent.NoTitleBar.Fullscreen, this.mTabDevice);
        } else {
            this.mPurchaseDlg = new PurchaseDialog(this, R.style.Theme.Translucent.NoTitleBar, this.onPurchasePopupCallback, this.mTabDevice);
            this.mJuminAuth = new PopJuminNumberAuth(this, R.style.Theme.Translucent.NoTitleBar, this.onJuminDialogPopupCallback, this.mTabDevice);
            this.mPopupDlg = new PopupDialog(this, this.onParserPopupDlgResultCallback, R.style.Theme.Translucent.NoTitleBar, this.mTabDevice);
            this.mYesNoDlg = new PopupYesNoDialog(this, this.onPopupCallback, R.style.Theme.Translucent.NoTitleBar);
            this.mImageDlg = new PopupImageDialog(this, this.onImageResultCallback, R.style.Theme.Translucent.NoTitleBar);
            this.mAutoPurchaseFormDlg = new PopupAutoPurchaseFormDialog(this, this.onAutoPurchaseFormResultCallback, R.style.Theme.Translucent.NoTitleBar);
            this.mJoinDlg = new PopupJoinDialog(this, this.onJoinResultCallback, R.style.Theme.Translucent.NoTitleBar);
            this.mOtpDlg = new PopupOTPDialog(this, R.style.Theme.Translucent.NoTitleBar, this.onOtpCallback);
            this.mLguSmsDlg = new PopLguSmsAuthDialog(this, this.onLguSmsCallback, R.style.Theme.Translucent.NoTitleBar);
            this.mImeiAuthDlg = new PopupImeiAuthDialog(this, this.onImeiAuthCallback, R.style.Theme.Translucent.NoTitleBar);
            this.mOCBDlg = new PopupOCBDialog(this, R.style.Theme.Translucent.NoTitleBar, this.onOcbCallback);
            this.mCultureLandLoginDlg = new PopupCultureLandLoginDialog(this, R.style.Theme.Translucent.NoTitleBar, this.onCultureLandCallback);
            this.mDotoriSmsAuthDlg = new PopupDotoriSmsAuth(this, R.style.Theme.Translucent.NoTitleBar, this.onDotoriSmsAuthCallback);
            this.mForeignInputMDN = new ForeignInputMDN(this, this.onForeignInputMDNCallback, R.style.Theme.Translucent.NoTitleBar, this.mTabDevice);
        }
        RestoreData();
    }

    @Override // android.app.Activity
    protected void onResume() {
        String encJumin;
        super.onResume();
        IAPLibDeviceCheck();
        CommonF.LOGGER.i(TAG, "onResume - m_phoneUSIMState: " + this.m_phoneUSIMState);
        int nDlgType = 100;
        if (this.mDlgType != null) {
            nDlgType = Integer.parseInt(this.mDlgType);
        }
        CommonF.LOGGER.e(TAG, "IAPActivity onResume [" + nDlgType + "]");
        IAPLib.setUIHandler(this.mGUIMessageHandler);
        if (CommonF.getCarrier(this) != 1 && (encJumin = IAPLib.getEncJuminNumber()) != null) {
            IAPLib.updateEncJuminNumber(encJumin);
        }
        if (nDlgType == 103) {
            ShowPurchaseDialog(this.mItemInfoConfirm);
            return;
        }
        if (nDlgType == 107) {
            popupJoinDlg();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_JOIN_DIALOG);
            return;
        }
        if (nDlgType == 108) {
            popupAutoPurchaseFormDlg(CommonString.getString(CommonString.Index.WORK_AUTO_PURCHASE_INFONAME), CommonString.getString(CommonString.Index.WORK_AUTO_FORM_STRING));
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_JOIN_FORM_DIALOG);
            return;
        }
        if (nDlgType == 105) {
            ShowInfoMessageDialog(nDlgType, this.mMsgItemInfo);
            return;
        }
        if (nDlgType == 106) {
            ShowJuminAuthDialog();
            return;
        }
        if (nDlgType == 124) {
            ShowForeignInputMDNDialog();
            return;
        }
        if (nDlgType == 112) {
            ShowInfoMessageDialog(nDlgType, this.mMsgItemInfo);
            return;
        }
        if (nDlgType == 101 || nDlgType == 127 || nDlgType == 128 || nDlgType == 130) {
            ShowInfoMessageDialog(nDlgType, this.mErrorMessage);
            return;
        }
        if (nDlgType == 115) {
            popupYesNoDlg(this.mYesNoMessage);
            return;
        }
        if (nDlgType == 114) {
            showPopOtpDlg();
            return;
        }
        if (nDlgType == 116) {
            ShowInfoMessageDialog(nDlgType, this.mMsgItemInfo);
            return;
        }
        if (nDlgType == 117) {
            showLguSMSAuthDlg();
            return;
        }
        if (nDlgType == 118) {
            showImeiAuthDlg();
            return;
        }
        if (nDlgType == 120) {
            ShowOCBRegDialog(IAPLib.getOcbCardUpdateType());
            return;
        }
        if (nDlgType == 121) {
            ShowOCBPWDDialog();
            return;
        }
        if (nDlgType == 122) {
            ShowCultureLandLoginDialog();
            return;
        }
        if (nDlgType == 123) {
            ShowDotoriSmsAutnDialog();
            return;
        }
        if (nDlgType == 125) {
            CommonF.LOGGER.i(TAG, "# popPurchaseDlg TID= " + this.m_Tid);
            ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.sendItemInfo(this.mPurchaseID, this.mEncName, this.m_Tid, this.m_encBpInfo);
            return;
        }
        if (nDlgType == 129) {
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_OCB_CARD_DELETE);
            popupYesNoDlg(this.mYesNoMessage);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        int nDlgType = IAPLib.getDialogType();
        CommonF.LOGGER.e(TAG, "IAPActivity onPause [" + nDlgType + "]");
        this.mDlgType = String.valueOf(nDlgType);
        if (nDlgType != 104) {
            Handler hnd = IAPLib.getNetHandler();
            Message msgNetwork = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CANCEL);
            msgNetwork.sendToTarget();
            if (nDlgType == 102) {
                DismissLoaingProgress();
                IAPLib.setDialogType(100);
            } else if (nDlgType == 103) {
                DismissPurchaseDialog();
            } else if (nDlgType == 107) {
                DismissJoinDialog();
            } else if (nDlgType == 108) {
                DismissAutoPurchaseFormDialog();
            } else if (nDlgType == 105) {
                DismissInfoMessageDialog();
            } else if (nDlgType == 101 || nDlgType == 127 || nDlgType == 128 || nDlgType == 130) {
                DismissInfoMessageDialog();
                if (isFinishing()) {
                    IAPLib.setDialogType(100);
                }
            } else if (nDlgType == 115) {
                DismissYesNoDialog();
            } else if (nDlgType == 106) {
                DismissJuminAuthDialog();
            } else if (nDlgType == 124) {
                DismissForeignInputMDNDialog();
            } else if (nDlgType == 112) {
                DismissInfoMessageDialog();
            } else if (nDlgType == 104) {
                DismissLoaingProgress();
                IAPLib.setDialogType(100);
            } else if (nDlgType == 114) {
                DismissOtpDlg();
            } else if (nDlgType == 116) {
                DismissInfoMessageDialog();
            } else if (nDlgType == 117) {
                DismissInfoMessageDialog();
                DismissLguSMSAuthDlg();
            } else if (nDlgType == 118) {
                DismissImeiAuthDlg();
            } else if (nDlgType == 120) {
                DismissOCBRegDialog();
            } else if (nDlgType == 121) {
                DismissOCBPWDDialog();
            } else if (nDlgType == 122) {
                DismissCultureLandLoginDialog();
            } else if (nDlgType == 123) {
                DismissDotoriSmsAuthDialog();
            } else if (nDlgType == 129) {
                DismissYesNoDialog();
            }
            IAPLib.setUIHandler(null);
        }
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        HashMap<String, Object> dataBackupMap = new HashMap<>();
        dataBackupMap.put("NET_MESSAGE", this.mMsgItemInfo);
        dataBackupMap.put("ERR_MESSAGE", this.mErrorMessage);
        dataBackupMap.put("YESNO_MESSAGE", this.mYesNoMessage);
        dataBackupMap.put("USE_BPPROTOCOL", this.mSetBPProtocol);
        dataBackupMap.put("PRODUCT_NAME", this.mPurchaseName);
        dataBackupMap.put("PRODUCT_INFO", this.mItemInfoConfirm);
        dataBackupMap.put("PURCHASEID", this.mPurchaseID);
        dataBackupMap.put("LGUSMSAUTHCHECKTIME", this.mSmsAuthCheckTime);
        dataBackupMap.put("DOTORISMSAUTHCHECKTIME", this.mDotoriSmsAuthCheckTime);
        dataBackupMap.put("DLGTYPE", this.mDlgType);
        dataBackupMap.put("ENCNAME", this.mEncName);
        dataBackupMap.put("TID", this.m_Tid);
        dataBackupMap.put("ENCBPINFO", this.m_encBpInfo);
        return dataBackupMap;
    }

    private void RestoreData() {
        Object obj = getLastNonConfigurationInstance();
        if (obj != null) {
            HashMap<String, Object> dataBackupMap = (HashMap) obj;
            this.mMsgItemInfo = (String) dataBackupMap.get("NET_MESSAGE");
            this.mErrorMessage = (String) dataBackupMap.get("ERR_MESSAGE");
            this.mYesNoMessage = (String) dataBackupMap.get("YESNO_MESSAGE");
            this.mSetBPProtocol = (Boolean) dataBackupMap.get("USE_BPPROTOCOL");
            this.mPurchaseName = (String) dataBackupMap.get("PRODUCT_NAME");
            this.mItemInfoConfirm = (ItemInfoConfirm) dataBackupMap.get("PRODUCT_INFO");
            this.mPurchaseID = (String) dataBackupMap.get("PURCHASEID");
            this.mSmsAuthCheckTime = (String) dataBackupMap.get("LGUSMSAUTHCHECKTIME");
            this.mDotoriSmsAuthCheckTime = (String) dataBackupMap.get("DOTORISMSAUTHCHECKTIME");
            this.mDlgType = (String) dataBackupMap.get("DLGTYPE");
            this.mEncName = (String) dataBackupMap.get("ENCNAME");
            this.m_Tid = (String) dataBackupMap.get("TID");
            this.m_encBpInfo = (String) dataBackupMap.get("ENCBPINFO");
            CommonF.LOGGER.i(TAG, "## Restore Data ......");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowLoadingProgressPhurchase_Confirm() {
        this.mProgressDlg = new ProgressDialog(this, CommonString.getString(CommonString.Index.WORK_PROCESSING_STRING), null);
        this.mProgressDlg.ShowProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowLoadingProgress() {
        this.mProgressDlg = new ProgressDialog(this, CommonString.getString(CommonString.Index.WORK_PROCESSING_STRING), this.onProgressCancelListerner);
        this.mProgressDlg.ShowProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissLoaingProgress() {
        if (this.mProgressDlg != null) {
            this.mProgressDlg.CloseProgress();
            this.mProgressDlg = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowInfoMessageDialog(int state, String info_message) {
        if (state == 105) {
            this.mPopupDlg.InflateView(state, info_message, this.onConfirmInfoListener);
            this.mSmsAuthCheckTime = null;
        } else if (state == 116) {
            this.mPopupDlg.InflateView(state, info_message, this.onLimit_ExcessDlgListener);
            this.mMsgItemInfo = info_message;
        } else if (state == 117) {
            this.mPopupDlg.InflateView(state, info_message, this.onLGUSMSAuthInfoListener);
        } else if (state == 119 || state == 126 || state == 127 || state == 128 || state == 130) {
            this.mPopupDlg.InflateView(state, info_message, this.onAlertDialogClickListener);
        } else if (state == 100) {
            this.mPopupDlg.InflateView(state, info_message, new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.33
                @Override // android.view.View.OnClickListener
                public void onClick(View v) {
                    IAPActivity.this.DismissInfoMessageDialog();
                }
            });
        } else {
            this.mPopupDlg.InflateView(state, info_message, this.onInfoCancelListener);
            IAPLib.setOTPNumber(null);
        }
        this.mPopupDlg.ShowPopupDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissInfoMessageDialog() {
        this.mPopupDlg.ClosePopupDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowPurchaseDialog(Object item) {
        this.mItemInfoConfirm = (ItemInfoConfirm) item;
        boolean nIsExistDotoriSmsAuthLogFile = false;
        if (isExistOTPLog(Defines.SDCARD_LOG_FILE_NAME.DOTORI_SMS_AUTH_FILE_NAME)) {
            nIsExistDotoriSmsAuthLogFile = true;
        }
        if (this.mItemInfoConfirm != null && this.mItemInfoConfirm.getItemPrice() != null && this.mItemInfoConfirm.getItemTCash() != null) {
            int nPrice = Integer.parseInt(this.mItemInfoConfirm.getItemPrice().replace(",", GameView.CHARACTER_AI));
            int nTCash = Integer.parseInt(this.mItemInfoConfirm.getItemTCash().replace(",", GameView.CHARACTER_AI));
            String nOCBRegisterInfo = this.mItemInfoConfirm.getmOCBRegisterInfo();
            String nOCBCartNumber = CommonF.addLineEndString(this.mItemInfoConfirm.getmOCBCardNum(), 4, "-");
            int nDotori = Integer.parseInt(this.mItemInfoConfirm.getmDotoriBalance());
            String nDotoriLinkInfo = this.mItemInfoConfirm.getmDotoriLinkInfo();
            boolean nFinalVer = this.mItemInfoConfirm.getmFinalVersionCheck();
            boolean nautoPurchaseCheck = this.mItemInfoConfirm.getmAutoPurchaseCheck();
            boolean nAfterAutoPurchaseInfoAgree = this.mItemInfoConfirm.getmAfterAutoPurchaseInfoAgree();
            String itemName = this.mPurchaseName != null ? this.mPurchaseName : this.mItemInfoConfirm.getItemTitle();
            try {
                if (this.mPurchaseName == null) {
                    itemName = URLDecoder.decode(itemName.replace("%", "%25").replace("#", "%23").replace("+", "%2B").replace(Objects.Animation.DEVIDER_SUB, "%26").replace(" ", "%20"), ConnectNetwork.UTF_8);
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            IAPLibDeviceCheck();
            PurchaseItem pItemInfo = new PurchaseItem(itemName, this.mItemInfoConfirm.getItemPeriod(), nPrice, nTCash, nOCBRegisterInfo, nOCBCartNumber, nPrice, this.mUseTCash, nDotori, nDotoriLinkInfo, nFinalVer, nautoPurchaseCheck, nAfterAutoPurchaseInfoAgree, nIsExistDotoriSmsAuthLogFile, this.sellerInfoConfirm);
            this.mPurchaseDlg.InflateParserDialog(this.mRotaion, pItemInfo);
            this.mPurchaseDlg.ShowPurchaseDialog();
            return;
        }
        CommonF.LOGGER.i(TAG, "mItemInfoConfirm = " + this.mItemInfoConfirm + ", mItemInfoConfirm.getItemPrice() = " + this.mItemInfoConfirm.getItemPrice() + ", mItemInfoConfirm.getItemTCash() = " + this.mItemInfoConfirm.getItemTCash());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissPurchaseDialog() {
        this.mPurchaseDlg.ClosePurchaseDialog();
    }

    private void ShowForeignInputMDNDialog() {
        this.mForeignInputMDN.InflateView(this.mRotaion);
        this.mForeignInputMDN.ShowPopupDialog();
        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_FOREIGN_INPUT_MDN_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissForeignInputMDNDialog() {
        this.mForeignInputMDN.ClosePopupDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowJuminAuthDialog() {
        this.mJuminAuth.InflateView(this.mRotaion);
        this.mJuminAuth.ShowPopupAuthDialog();
        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_AUTH_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissJuminAuthDialog() {
        this.mJuminAuth.ClosePopupAuthDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowOCBRegDialog(String inputType) {
        if (inputType.equals("C") || inputType.equals("U")) {
            IAPLib.setOcbCardUpdateType(inputType);
            this.mOCBDlg.InflateView(Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG, this.onOCBRegListener, this.mRotaion);
            this.mOCBDlg.ShowPopupOCBDialog();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG);
            return;
        }
        if (inputType.equals(Objects.Animation.TYPE_DELAY)) {
            this.mYesNoMessage = CommonString.getString(CommonString.Index.OCB_CARD_DELETE_STRING);
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_OCB_CARD_DELETE);
            popupYesNoDlg(this.mYesNoMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissOCBRegDialog() {
        this.mOCBDlg.ClosePopupOCBDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowOCBPWDDialog() {
        this.mOCBDlg.InflateView(Defines.DIALOG_STATE.DLG_OCB_PWD_DIALOG, this.onOCBRegListener, this.mRotaion);
        this.mOCBDlg.ShowPopupOCBDialog();
        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_OCB_PWD_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissOCBPWDDialog() {
        this.mOCBDlg.ClosePopupOCBDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowCultureLandLoginDialog() {
        this.mCultureLandLoginDlg.InflateView(Defines.DIALOG_STATE.DLG_CULTURELAND_LOGIN_DIALOG, this.onCultureLandLoginListener, this.mRotaion);
        this.mCultureLandLoginDlg.ShowPopupCultureLandLoginDialog();
        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_CULTURELAND_LOGIN_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissCultureLandLoginDialog() {
        this.mCultureLandLoginDlg.ClosePopupCultureLandLoginDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ShowDotoriSmsAutnDialog() {
        this.mDotoriSmsAuthDlg.InflateView(Defines.DIALOG_STATE.DLG_DOTORI_SMS_AUTH_DIALOG, this.onDotoriSmsAuthListener, this.mRotaion);
        this.mDotoriSmsAuthDlg.ShowPopupDotoriSMSAuthDialog();
        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_DOTORI_SMS_AUTH_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissDotoriSmsAuthDialog() {
        this.mDotoriSmsAuthDlg.ClosePopupDotoriSMSAuthDialog();
    }

    protected void popupJoinDlg() {
        this.mJoinDlg.InflateView(Defines.DIALOG_STATE.DLG_JOIN_DIALOG, null, this.onJoinInfoListener, this.mRotaion);
        this.mJoinDlg.ShowPopupJoinDialog();
    }

    protected void popupYesNoDlg(String message) {
        if (IAPLib.getDialogType() == 126) {
            this.mYesNoDlg.InflateView(Defines.DIALOG_STATE.DLG_OCB_DELETE_YESNO_DIALOG, message, this.onYesNoConfirmInfoListener);
            this.mYesNoDlg.ShowPopupYesNoDialog();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_OCB_DELETE_YESNO_DIALOG);
        } else {
            this.mYesNoDlg.InflateView(Defines.DIALOG_STATE.DLG_PURCHASE_CONFIRM, message, this.onYesNoConfirmInfoListener);
            this.mYesNoDlg.ShowPopupYesNoDialog();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_YESNO_DIALOG);
        }
    }

    protected void popupImageDlg(String message) {
        this.mImageDlg.InflateView(Defines.DIALOG_STATE.DLG_PURCHASE_CONFIRM, message, this.onImageConfirmInfoListener);
        this.mImageDlg.ShowPopupImageDialog();
    }

    protected void popupAutoPurchaseFormDlg(String formName, String message) {
        this.mAutoPurchaseFormDlg.InflateView(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_FORM_DIALOG, formName, message, new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.34
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                IAPActivity.this.mAutoPurchaseFormDlg.ClosePopupAutoPurchaseFormDialog();
            }
        }, this.mRotaion);
        this.mAutoPurchaseFormDlg.ShowPopupAutoPurchaseFormDialog();
    }

    private void showPopOtpDlg() {
        this.mOtpDlg.InflateView(Defines.DIALOG_STATE.DLG_OTP_DIALOG, this.onOtpInfoListener, this.mRotaion);
        this.mOtpDlg.ShowPopupOtpDialog();
        DismissPurchaseDialog();
        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_OTP_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissOtpDlg() {
        this.mOtpDlg.ClosePopupOtpDialog();
    }

    private void showLguSMSAuthDlg() {
        this.mLguSmsDlg.InflateView(Defines.DIALOG_STATE.DLG_LGU_SMS_AUTH_DIALOG, this.onLGUSMSAuthListener, this.mRotaion);
        this.mLguSmsDlg.ShowPopupLguSMSAuthDialog();
        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LGU_SMS_AUTH_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissLguSMSAuthDlg() {
        this.mLguSmsDlg.ClosePopupLguSMSAuthDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showImeiAuthDlg() {
        this.mImeiAuthDlg.inflageView(Defines.DIALOG_STATE.DLG_IMEI_AUTH_DIALOG, new View.OnClickListener() { // from class: com.feelingk.iap.IAPActivity.35
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                IAPActivity.this.mImeiAuthDlg.ClosePopupIMEIAuthDialog();
            }
        }, this.mRotaion);
        this.mImeiAuthDlg.ShowPopupIMEIAuthDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissImeiAuthDlg() {
        this.mImeiAuthDlg.ClosePopupIMEIAuthDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissYesNoDialog() {
        this.mYesNoDlg.ClosePopupYesNoDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissImageDialog() {
        this.mImageDlg.ClosePopupImageDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissAutoPurchaseFormDialog() {
        this.mAutoPurchaseFormDlg.ClosePopupAutoPurchaseFormDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void DismissJoinDialog() {
        this.mJoinDlg.ClosePopupJoinDialog();
    }

    public boolean isExistOTPLog(String logFileName) {
        File path;
        m_strLogFileName = logFileName;
        boolean bSDCardExist = Environment.getExternalStorageState().equals("mounted");
        try {
            if (bSDCardExist) {
                File path2 = new File(Environment.getExternalStorageDirectory() + Objects.Animation.DEVIDER_DATA + m_strLogFileName);
                path = path2;
            } else {
                File path3 = new File(String.valueOf(dirPath) + Objects.Animation.DEVIDER_DATA + m_strLogFileName);
                path = path3;
            }
            FileInputStream fis = new FileInputStream(path);
            BufferedReader bufferReader = new BufferedReader(new InputStreamReader(fis));
            try {
                bufferReader.readLine();
                CommonF.LOGGER.i(TAG, String.valueOf(logFileName) + " Log Read OK");
                fis.close();
                return true;
            } catch (FileNotFoundException e) {
                e = e;
                e.printStackTrace();
                return false;
            } catch (IOException e2) {
                e = e2;
                e.printStackTrace();
                return false;
            }
        } catch (FileNotFoundException e3) {
            e = e3;
        } catch (IOException e4) {
            e = e4;
        }
    }

    public static void reset(String logFileName) throws Throwable {
        m_strLogFileName = logFileName;
        boolean bSDCardExist = Environment.getExternalStorageState().equals("mounted");
        if (bSDCardExist) {
            m_strLogFileFolderPath = Environment.getExternalStorageDirectory().getAbsolutePath();
        } else {
            m_strLogFileFolderPath = dirPath;
        }
        CommonF.LOGGER.i(TAG, "reset\t" + m_strLogFileFolderPath);
        File file = new File(String.valueOf(m_strLogFileFolderPath) + Objects.Animation.DEVIDER_DATA + m_strLogFileName);
        file.delete();
        write("TstoreLog : ", m_strLogFileName, new Object[0]);
    }

    public static void write(String strMessage, String logFileName, Object... args) throws Throwable {
        FileOutputStream fos;
        m_strLogFileName = logFileName;
        String _strMessage = strMessage;
        if (strMessage != null && strMessage.length() != 0) {
            if (args.length != 0) {
                _strMessage = String.format(strMessage, args);
            }
            String _strMessage2 = String.valueOf(getCurrentTime()) + " " + _strMessage + "\n";
            File file = new File(String.valueOf(m_strLogFileFolderPath) + Objects.Animation.DEVIDER_DATA + m_strLogFileName);
            FileOutputStream fos2 = null;
            try {
                try {
                    fos = new FileOutputStream(file, true);
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                fos.write(_strMessage2.getBytes());
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                e = e3;
                fos2 = fos;
                e.printStackTrace();
                if (fos2 != null) {
                    try {
                        fos2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fos2 = fos;
                if (fos2 != null) {
                    try {
                        fos2.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        }
    }

    private static String getCurrentTime() {
        Calendar calendar = Calendar.getInstance();
        String strTime = String.format("%d-%d-%d %d:%d", Integer.valueOf(calendar.get(1)), Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5)), Integer.valueOf(calendar.get(11)), Integer.valueOf(calendar.get(12)));
        return strTime;
    }

    private void IAPLibUSIMStateCheck() {
        PhoneStateListener m_phoneStateListener = new PhoneStateListener() { // from class: com.feelingk.iap.IAPActivity.36
            @Override // android.telephony.PhoneStateListener
            public void onServiceStateChanged(ServiceState serviceState) {
                IAPActivity.this.m_phoneUSIMState = serviceState.getState();
                CommonF.LOGGER.i(IAPActivity.TAG, "리스너 내부 m_phoneUSIMState: " + IAPActivity.this.m_phoneUSIMState);
                if (IAPActivity.this.mUsimCheckFlag) {
                    IAPActivity.this.goIAPLibProcess();
                }
                if (IAPActivity.this.m_phoneUSIMState == 0) {
                    IAPActivity.this.USIM_Check = "STATE_IN_SERVICE";
                } else if (IAPActivity.this.m_phoneUSIMState == 2) {
                    IAPActivity.this.USIM_Check = "STATE_EMERGENCY_ONLY";
                } else if (IAPActivity.this.m_phoneUSIMState == 1) {
                    IAPActivity.this.USIM_Check = "STATE_OUT_OF_SERVICE";
                } else if (IAPActivity.this.m_phoneUSIMState == 3) {
                    IAPActivity.this.USIM_Check = "STATE_POWER_OFF";
                }
                CommonF.LOGGER.i(IAPActivity.TAG, "IAPActivity IAPLibUSIMStateCheck USIM_Check : " + IAPActivity.this.USIM_Check);
                if (IAPActivity.this.m_telephonyManager != null) {
                    IAPActivity.this.m_telephonyManager.listen(this, 0);
                }
            }
        };
        CommonF.LOGGER.i(TAG, "리스너 외부 m_phoneUSIMState: " + this.m_phoneUSIMState);
        this.m_telephonyManager.listen(m_phoneStateListener, 1);
    }

    protected void goIAPLibProcess() {
        CommonF.LOGGER.i(TAG, "##  TStore Library Version = V 12.09.17");
        if (this.m_phoneUSIMState != 0) {
            this.mGUIMessageHandler.obtainMessage(Defines.ACTION_EVENT.HND_USIM_ACTIVATE_ERROR, CommonString.getString(CommonString.Index.ERROR_USIM_ACTIVATE_STRING)).sendToTarget();
            this.mUsimPurchaseItemWorkFlow = 0;
            this.mUsimCheckFlag = false;
            return;
        }
        CommonF.LOGGER.i(TAG, " # 사용가능한 정상 유심  " + this.mUsimPurchaseItemWorkFlow);
        if (this.mUsimPurchaseItemWorkFlow == 1) {
            if (this.mPurchaseName != null) {
                if (this.mPurchaseName.matches(".*%.*")) {
                    this.mPurchaseName = this.mPurchaseName.replace("%", GameView.CHARACTER_AI);
                }
                try {
                    this.mEncName = URLEncoder.encode(this.mPurchaseName, ConnectNetwork.UTF_8);
                } catch (UnsupportedEncodingException e) {
                    this.mEncName = null;
                    e.printStackTrace();
                }
            } else if (this.mPurchaseName == null) {
                this.mEncName = null;
            }
            if (IAPLibAuthCheck()) {
                this.mPurchaseItemWorkFlow = 2;
                ShowJuminAuthDialog();
                return;
            }
            CommonF.LOGGER.i(TAG, "# popPurchaseDlg PID= " + this.mPurchaseID + " / UseBPProtocol=" + this.mSetBPProtocol);
            this.m_Tid = null;
            this.m_encBpInfo = null;
            ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.sendItemInfo(this.mPurchaseID, this.mEncName);
        } else if (this.mUsimPurchaseItemWorkFlow == 2) {
            if (this.mPurchaseName != null) {
                if (this.mPurchaseName.matches(".*%.*")) {
                    this.mPurchaseName = this.mPurchaseName.replace("%", GameView.CHARACTER_AI);
                }
                try {
                    this.mEncName = URLEncoder.encode(this.mPurchaseName, ConnectNetwork.UTF_8);
                } catch (UnsupportedEncodingException e2) {
                    this.mEncName = null;
                    e2.printStackTrace();
                }
            } else if (this.mPurchaseName == null) {
                this.mEncName = null;
            }
            if (this.mPurchaseBPInfo != null) {
                try {
                    this.m_encBpInfo = URLEncoder.encode(this.mPurchaseBPInfo, ConnectNetwork.UTF_8);
                } catch (UnsupportedEncodingException e3) {
                    this.m_encBpInfo = null;
                    e3.printStackTrace();
                }
            }
            CommonF.LOGGER.i(TAG, "# popPurchaseDlg TID= " + this.m_Tid);
            ShowLoadingProgress();
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
            IAPLib.sendItemInfo(this.mPurchaseID, this.mEncName, this.m_Tid, this.m_encBpInfo);
        } else if (this.mUsimPurchaseItemWorkFlow == 3) {
            CommonF.LOGGER.i(TAG, "# sendItemWholeAuth");
            IAPLib.sendItemWholeAuth();
        } else if (this.mUsimPurchaseItemWorkFlow == 4) {
            CommonF.LOGGER.i(TAG, "# sendItemAuth PID=" + this.mPurchaseID);
            IAPLib.sendItemAuth(this.mPurchaseID);
        } else if (this.mUsimPurchaseItemWorkFlow == 5) {
            CommonF.LOGGER.i(TAG, "# sendItemUse PID=" + this.mPurchaseID);
            IAPLib.sendItemUse(this.mPurchaseID);
        } else if (this.mUsimPurchaseItemWorkFlow == 6) {
            CommonF.LOGGER.i(TAG, "# sendPurchaseDismiss PID=" + this.mPurchaseID);
            if (CommonF.getCarrier(this) == 1) {
                ShowLoadingProgress();
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_LOADING_PROGRESS);
                IAPLib.sendPurchaseDismissCheck(this.mPurchaseID);
            } else {
                ShowInfoMessageDialog(Defines.DIALOG_STATE.DLG_AUTO_PURCHASE_ERROR, CommonString.getString(CommonString.Index.ERROR_DLG_AUTO_PURCHASE));
            }
        }
        this.mUsimPurchaseItemWorkFlow = 0;
        this.mUsimCheckFlag = false;
    }

    private void IAPLibDeviceCheck() {
        WindowManager wm = (WindowManager) getSystemService("window");
        Display disp = wm.getDefaultDisplay();
        this.mRotaion = disp.getOrientation();
    }

    public boolean IAPLibAuthCheck() {
        return CommonF.getCarrier(this) != 1 && IAPLib.getEncJuminNumber() == null;
    }

    protected void popPurchaseDlg(String pID, String pName, String pTID, String pBPInfo) {
        this.mPurchaseID = pID;
        if (pBPInfo != null && pBPInfo.length() == 0) {
            this.mPurchaseBPInfo = null;
        } else {
            this.mPurchaseBPInfo = pBPInfo;
        }
        if (pName == null || pName.contentEquals(GameView.CHARACTER_AI)) {
            this.mPurchaseName = null;
        } else {
            this.mPurchaseName = pName;
        }
        if (pTID == null || pTID.length() == 0) {
            pTID = CommonF.getTID(this, pID);
        }
        this.m_Tid = pTID;
        this.mUsimCheckFlag = true;
        this.mUsimPurchaseItemWorkFlow = 2;
        IAPLibUSIMStateCheck();
    }

    protected void sendItemWholeAuth() {
        this.mUsimCheckFlag = true;
        this.mUsimPurchaseItemWorkFlow = 3;
        IAPLibUSIMStateCheck();
    }

    protected void sendItemUse(String pID) {
        this.mPurchaseID = pID;
        this.mUsimCheckFlag = true;
        this.mUsimPurchaseItemWorkFlow = 5;
        IAPLibUSIMStateCheck();
    }

    protected void sendItemAuth(String pID) {
        this.mPurchaseID = pID;
        this.mUsimCheckFlag = true;
        this.mUsimPurchaseItemWorkFlow = 4;
        IAPLibUSIMStateCheck();
    }

    protected byte[] sendBPData(byte[] data) {
        if (this.mSetting.BP_IP == null || this.mSetting.BP_Port <= 1) {
            CommonF.LOGGER.i(TAG, "sendBPData - BP Server IP is null or invalid Port Number");
            return null;
        }
        CommonF.LOGGER.i(TAG, "# sendBPData");
        return IAPLib.sendBPData(data);
    }

    protected void sendPurchaseDismiss(String pID, String pName) {
        this.mPurchaseID = pID;
        this.mPurchaseName = pName;
        this.mUsimCheckFlag = true;
        this.mUsimPurchaseItemWorkFlow = 6;
        IAPLibUSIMStateCheck();
    }

    public void IAPLibInit(IAPLibSetting setting) throws Exception {
        this.mSetting = setting;
        String mdn = CommonF.getMDN(this, CommonF.getCarrier(this));
        IAPLib.init(this, this.mGUIMessageHandler, this.mSetting, mdn, CommonF.getCarrier(this));
    }

    public static String decrypt(String text, String key) throws Exception {
        Cipher cipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        cipher.init(2, getKey(key));
        byte[] outputBytes2 = cipher.doFinal(Base64.decode(text));
        String strResult = new String(outputBytes2, "UTF8");
        return strResult;
    }

    private static Key getKey(String keyValue) throws Exception {
        DESedeKeySpec desKeySpec = new DESedeKeySpec(keyValue.getBytes());
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DESede");
        Key key = keyFactory.generateSecret(desKeySpec);
        return key;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request, result, data);
        CommonF.LOGGER.e(TAG, "##   onActivityResult :" + result + "request: " + request);
        if (request == 880917) {
            if (result == -1) {
                DismissPurchaseDialog();
                CommonF.LOGGER.e(TAG, "[onActivityResult] pwdAuthFlag: " + this.pwdAuthFlag);
                boolean lguPlusFlag = false;
                if (CommonF.getCarrier(this) == 3) {
                    lguPlusFlag = true;
                }
                if (lguPlusFlag) {
                    DismissPurchaseDialog();
                    if (SingletonCounter.getInstance().getmPostPay() > 0) {
                        CommonF.LOGGER.i(TAG, "후불결제 금액 0원 초과");
                        showLguSMSAuthDlg();
                    } else {
                        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                        CommonF.LOGGER.i(TAG, "후불결제 금액이 존재하지 않음");
                        this.onPurchasePopupCallback.onPurchaseButtonClick();
                    }
                } else {
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                    this.onPurchasePopupCallback.onPurchaseButtonClick();
                }
                this.pwdAuthFlag = true;
                CommonF.LOGGER.e(TAG, "[onActivityResult 2] pwdAuthFlag: " + this.pwdAuthFlag);
                return;
            }
            if (CommonF.getCarrier(this) == 3) {
                CommonF.LOGGER.i(TAG, "[onActivityResult] mCurTelecom is LG_TELECOM");
                CommonF.LOGGER.i(TAG, "[onActivityResult] result code is not RESULT_OK");
                CommonF.LOGGER.i(TAG, "[onActivityResult] showPurchaseDialog Pop!!");
                if (this.mItemInfoConfirm != null) {
                    ShowPurchaseDialog(this.mItemInfoConfirm);
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                } else {
                    CommonF.LOGGER.i(TAG, "[onActivityResult] mItemInfoConfirm is null");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInit() {
        IAPLib.setOCBPointInfo(false);
        IAPLib.setOCBPoint(GameView.CHARACTER_AI);
        IAPLib.setCultureCashQueryInfo(false);
        IAPLib.setCultureLandCashPoint(GameView.CHARACTER_AI);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handPurchaseConfirm() {
        setInit();
        Message msgUI = this.mGUIMessageHandler.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CONFIRM);
        this.mGUIMessageHandler.sendMessage(msgUI);
        if (CommonF.getCarrier(this) == 1) {
            Handler hnd = IAPLib.getNetHandler();
            CommonF.LOGGER.i(TAG, "# Purchase SK!!  mUseTCash =" + this.mUseTCash + " / BPProtocol = " + this.mSetTmpBPProtocol);
            Message msgNET = hnd.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CONFIRM, this.mUseTCash ? 1 : 0, this.mSetTmpBPProtocol.booleanValue() ? 1 : 0);
            msgNET.sendToTarget();
            return;
        }
        Handler hnd2 = IAPLib.getNetHandler();
        CommonF.LOGGER.i(TAG, "# Purchase KT_LG!!  ");
        Message msgNET2 = hnd2.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_CONFIRM_DANAL);
        msgNET2.sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void billingLockCheck() {
        IAPLib.setLimitExcess(false);
        byte[] data = (byte[]) null;
        try {
            Context other = createPackageContext("com.skt.skaf.A000Z00040", 2);
            FileInputStream fis = other.openFileInput("lockInfo.txt");
            try {
                data = new byte[fis.available()];
                while (fis.read(data) != -1) {
                }
                fis.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        } catch (FileNotFoundException e3) {
            e3.printStackTrace();
        }
        if (data != null && data.length == 14) {
            String value = new String(data);
            encryptPwd = value.substring(0, 12);
            try {
                decryptPwd = decrypt(encryptPwd, "5w5943jeheiqtytyieo1wo3i");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (value.substring(13).equals(InAppError.FAILED)) {
                if (!this.pwdAuthFlag) {
                    CommonF.LOGGER.i(TAG, "비밀번호 인증 다이얼로그 띄우기 진입, pwdAuthFlag: " + this.pwdAuthFlag);
                    if (CommonF.getCarrier(this) == 3) {
                        DismissPurchaseDialog();
                        IAPLib.setDialogType(100);
                    } else {
                        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                    }
                    Intent intent = new Intent(this, (Class<?>) PwdActivity.class);
                    intent.putExtra("pwd", decryptPwd);
                    startActivityForResult(intent, 880917);
                    return;
                }
                boolean lguPlusFlag = false;
                if (CommonF.getCarrier(this) == 3) {
                    lguPlusFlag = true;
                }
                if (lguPlusFlag) {
                    DismissPurchaseDialog();
                    if (SingletonCounter.getInstance().getmPostPay() > 0) {
                        CommonF.LOGGER.i(TAG, "후불결제 금액 0원 초과");
                        showLguSMSAuthDlg();
                        return;
                    } else {
                        CommonF.LOGGER.i(TAG, "후불결제 금액이 존재하지 않음");
                        IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                        this.onPurchasePopupCallback.onPurchaseButtonClick();
                        return;
                    }
                }
                IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                handPurchaseConfirm();
                return;
            }
            CommonF.LOGGER.i(TAG, "샵클 비밀번호 미설정");
            boolean lguPlusFlag2 = false;
            if (CommonF.getCarrier(this) == 3) {
                lguPlusFlag2 = true;
            }
            if (lguPlusFlag2) {
                DismissPurchaseDialog();
                if (SingletonCounter.getInstance().getmPostPay() > 0) {
                    CommonF.LOGGER.i(TAG, "후불결제 금액 0원 초과");
                    showLguSMSAuthDlg();
                    return;
                } else {
                    CommonF.LOGGER.i(TAG, "후불결제 금액이 존재하지 않음");
                    this.onPurchasePopupCallback.onPurchaseButtonClick();
                    return;
                }
            }
            if (!isExistOTPLog(Defines.SDCARD_LOG_FILE_NAME.OTP_LOG_FILE_NAME)) {
                CommonF.LOGGER.i(TAG, "OTP 인증 파일 미존재");
                showPopOtpDlg();
                return;
            } else {
                if (isExistOTPLog(Defines.SDCARD_LOG_FILE_NAME.OTP_LOG_FILE_NAME)) {
                    CommonF.LOGGER.i(TAG, "OTP 인증 파일 존재");
                    IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
                    handPurchaseConfirm();
                    return;
                }
                return;
            }
        }
        CommonF.LOGGER.e(TAG, "data is null && 샵클 잠금파일 미존재");
        boolean lguPlusFlag3 = false;
        if (CommonF.getCarrier(this) == 3) {
            lguPlusFlag3 = true;
        }
        if (lguPlusFlag3) {
            DismissPurchaseDialog();
            if (SingletonCounter.getInstance().getmPostPay() > 0) {
                CommonF.LOGGER.i(TAG, "후불결제 금액 0원 초과");
                showLguSMSAuthDlg();
                return;
            } else {
                CommonF.LOGGER.i(TAG, "후불결제 금액이 존재하지 않음");
                this.onPurchasePopupCallback.onPurchaseButtonClick();
                return;
            }
        }
        if (!isExistOTPLog(Defines.SDCARD_LOG_FILE_NAME.OTP_LOG_FILE_NAME)) {
            CommonF.LOGGER.i(TAG, "OTP 인증 파일 미존재");
            showPopOtpDlg();
        } else if (isExistOTPLog(Defines.SDCARD_LOG_FILE_NAME.OTP_LOG_FILE_NAME)) {
            CommonF.LOGGER.i(TAG, "OTP 인증 파일 존재");
            IAPLib.setDialogType(Defines.DIALOG_STATE.DLG_PURCHASE);
            handPurchaseConfirm();
        }
    }
}
