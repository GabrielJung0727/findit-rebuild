package com.kt.olleh.inapp;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.IRemoteInapService;
import com.kt.olleh.inapp.net.InAppError;
import com.sec.android.iap.sample.helper.SamsungIapHelper;

/* JADX INFO: loaded from: classes.dex */
public abstract class KTInAppActivity extends Activity implements ILibMode {
    private String mAuthen;
    private InApp mInApp;
    private OnInAppListener mListener;
    private String mModel_name;
    private String mPin;
    private Purchase mPurchase;
    IRemoteInapService mService;
    private String mUser_id;
    int newConfig;
    private int mLibMode = -1;
    public final String TAG = "KTInAppActivity";
    private Context mContext = null;
    ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kt.olleh.inapp.KTInAppActivity.1
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName className) {
            if (Config.DEBUG) {
                Config.LogI("KTInAppActivity", " onServiceDisconnected");
            }
            KTInAppActivity.this.mService = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            if (Config.DEBUG) {
                Config.LogI("KTInAppActivity", " ** onServiceConnected");
            }
            KTInAppActivity.this.mService = IRemoteInapService.Stub.asInterface(service);
            if (KTInAppActivity.this.mService != null) {
                try {
                    InAppSettings.UserInfo = KTInAppActivity.this.mService.getPhoneNumber();
                    if (Config.DEBUG) {
                        Config.LogI("KTInAppActivity", "SoIP Phone number = " + InAppSettings.UserInfo);
                    }
                    KTInAppActivity.this.onServiceStop();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    };

    public int getNewConfig() {
        return this.newConfig;
    }

    public void setNewConfig(int newConfig) {
        this.newConfig = newConfig;
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (Config.DEBUG) {
            Config.LogD("KTInAppActivity", "KTInAppActivity onPause");
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        if (Config.DEBUG) {
            Config.LogD("KTInAppActivity", "KTInAppActivity onResume");
        }
        super.onResume();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        if (this.mPurchase != null) {
            this.mPurchase.setConfig(newConfig.orientation);
            setNewConfig(newConfig.orientation);
        }
        super.onConfigurationChanged(newConfig);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DisplayMetrics dm = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(dm);
        Config.Density = dm.density;
        if (getLastNonConfigurationInstance() != null) {
            this.mPurchase = new Purchase();
            this.mPurchase.setData(getLastNonConfigurationInstance());
            this.mPurchase.setContext(this);
        }
        if (getResources().getConfiguration().orientation == 1) {
            if (this.mPurchase != null) {
                this.mPurchase.setConfig(getResources().getConfiguration().orientation);
                setNewConfig(getResources().getConfiguration().orientation);
                return;
            }
            return;
        }
        if (getResources().getConfiguration().orientation == 2 && this.mPurchase != null) {
            this.mPurchase.setConfig(getResources().getConfiguration().orientation);
            setNewConfig(getResources().getConfiguration().orientation);
        }
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        if (this.mPurchase != null) {
            return this.mPurchase.getData();
        }
        return null;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (Config.DEBUG) {
            Config.LogD("KTInAppActivity", "KTInAppActivity onDestroy");
        }
        if (this.mPurchase != null) {
            this.mPurchase.onDestroy();
            this.mPurchase = null;
        }
        if (this.mInApp != null) {
            this.mInApp = null;
        }
        this.mLibMode = -1;
        this.mAuthen = null;
        super.onDestroy();
    }

    public void init(OnInAppListener listener) {
        try {
            TelephonyManager tm = (TelephonyManager) getSystemService("phone");
            String ret = tm.getSubscriberId().substring(3, 5);
            Config.tCompanyCode = ret;
            if (ret.equals(Config.tCCodeKT)) {
                InAppSettings.authen_SP = SamsungIapHelper.ITEM_TYPE_NON_CONSUMABLE;
            } else if (ret.equals(Config.tCCodeSKT)) {
                InAppSettings.authen_SP = Defines.KOR_TELECOM_PACKET.SK_TELECOM;
            } else if (ret.equals(Config.tCCodeLGT)) {
                InAppSettings.authen_SP = "21";
            } else {
                InAppSettings.authen_SP = "31";
            }
        } catch (Exception e) {
            if (Config.DEBUG) {
                Config.LogE("AAAAA", "IMSI load Failed, " + e.toString());
            }
        }
        this.mLibMode = 0;
        this.mAuthen = InAppSettings.authen_SP;
        this.mUser_id = "@none";
        this.mModel_name = Build.MODEL;
        this.mListener = listener;
        if ("+821034160112".equals(getUserInfo())) {
            Config.DEBUG = true;
        }
    }

    public String getVersionInfo() {
        return Config.INAPP_VERSION;
    }

    public String getUserInfo() {
        if (InAppSettings.UserInfo == null) {
            switch (this.mLibMode) {
                case 0:
                    TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
                    String phoneNo = telephonyManager.getLine1Number();
                    InAppSettings.UserInfo = phoneNo;
                    break;
                case 1:
                    if (Config.DEBUG) {
                        Config.LogE("KTInAppActivity", "ILibMode.mode_SoIP number not exist");
                    }
                    break;
                case 2:
                    if (Config.DEBUG) {
                        Config.LogE("KTInAppActivity", "ILibMode.mode_KPAD not exist");
                    }
                    break;
            }
        }
        if (InAppSettings.UserInfo != null) {
            if (Config.DEBUG) {
                Config.LogD("KTInAppActivity", "UserInfo.information = " + InAppSettings.UserInfo);
            }
        } else if (Config.DEBUG) {
            Config.LogD("KTInAppActivity", "UserInfo.information = null");
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

    private String getUserInfo2() {
        switch (this.mLibMode) {
            case 0:
                TelephonyManager telephonyManager = (TelephonyManager) getSystemService("phone");
                String phoneNo = telephonyManager.getLine1Number();
                InAppSettings.UserInfo = phoneNo;
                return InAppError.SUCCESS + phoneNo.substring(3);
            case 1:
                if (Config.DEBUG) {
                    Config.LogE("KTInAppActivity", "ILibMode.mode_SoIP number not exist");
                    return GameView.CHARACTER_AI;
                }
                return GameView.CHARACTER_AI;
            case 2:
                if (Config.DEBUG) {
                    Config.LogE("KTInAppActivity", "ILibMode.mode_KPAD not exist");
                    return GameView.CHARACTER_AI;
                }
                return GameView.CHARACTER_AI;
            default:
                return GameView.CHARACTER_AI;
        }
    }

    private String getUserInfo(String recipients) {
        return recipients;
    }

    public boolean initListener() {
        if (this.mListener != null) {
            return true;
        }
        Log.e("KTInApp", "OnInAppListener 미등록 오류 발생");
        return false;
    }

    public void purchase(String applicationID, String digitalID) {
        if (this.mPurchase != null) {
            this.mPurchase.onDestroy();
            this.mPurchase = null;
        }
        if (initListener()) {
            this.mPurchase = new Purchase();
            this.mPurchase.onCreate(this, applicationID, digitalID, this.mListener, this.mLibMode);
        }
    }

    private void notExistUserInfo() {
        switch (this.mLibMode) {
            case 0:
            case 1:
            case 2:
                this.mListener.OnError("CRAB2001", "ID or PhoneNumber 오류");
                break;
        }
    }

    public void getDIUsableList(String app_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDIUsableList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDIPurchaseList(String app_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDIPurchaseList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDIAllList(String app_id, int page_size, int page) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else if (page_size <= 0 || page <= 0) {
                this.mInApp.getDIAllList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            } else {
                this.mInApp.getDIAllList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, page_size, page, this.mListener);
            }
        }
    }

    public void getDIAllList(String app_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDIAllList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDIGiftList(String app_id, String recipients) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else if (recipients == null) {
                this.mInApp.getDIGiftList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            } else {
                this.mInApp.getDIGiftList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, getUserInfo(recipients), this.mListener);
            }
        }
    }

    public void getDIGiftList(String app_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDIGiftList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDIReceiveList(String app_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDIReceiveList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDIInformation(String app_id, String di_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDIInformation(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDIDownloadableList(String app_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDIDownloadableList(app_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getItemStatus(String app_id, String di_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getItemStatus(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void requestDIBuy(String app_id, String di_id, String buy_type, String pin) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestDIBuy(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, buy_type, pin, this.mListener);
            }
        }
    }

    public void requestDIReBuy(String app_id, String di_id, String buy_type, String buy_pwd, String pin) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestDIReBuy(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, buy_type, pin, this.mListener);
            }
        }
    }

    public void requestDIBuyCancel(String app_id, String di_id, String tr_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestDIBuyCancel(app_id, di_id, this.mUser_id, userInfo, this.mModel_name, this.mAuthen, tr_id, this.mListener);
            }
        }
    }

    public void requestDIesBuy(String iid, String appid) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo2();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestDIesBuy(iid, appid, userInfo, this.mListener);
            }
        }
    }

    public void requestDIApproveUse(String app_id, String di_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestDIApproveUse(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDownUrl(String app_id, String di_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.getDownUrl(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void getDownAuth(String cert_key) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            this.mInApp.getDownAuth(cert_key, this.mListener);
        }
    }

    public void downSucProc(String cert_key) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            this.mInApp.downSucProc(cert_key, this.mListener);
        }
    }

    public void requestDIApproveDown(String app_id, String di_id) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestDIApproveDown(app_id, di_id, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void requestDIgetFile(String file_name, String mime_type) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestDIgetFile(file_name, mime_type, userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void requestCheckCoin() {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.requestCheckCoin(userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void check_balance() {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.check_balance(userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void checkUserId(String user_id, String pwd, String id_type) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            this.mInApp.checkUserId(user_id, pwd, id_type, this.mListener);
        }
    }

    public void CheckPin() {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.CheckPin(userInfo, this.mUser_id, this.mAuthen, this.mModel_name, this.mListener);
            }
        }
    }

    public void SetPin(String pin) {
        if (this.mInApp == null) {
            this.mInApp = new InApp();
        }
        if (initListener()) {
            String userInfo = getUserInfo();
            if (userInfo == null) {
                notExistUserInfo();
            } else {
                this.mInApp.SetPin(userInfo, this.mUser_id, this.mAuthen, this.mModel_name, pin, this.mListener);
            }
        }
    }

    public void requestCancel() {
        this.mInApp.requestCancel();
    }

    public void settingSoIPNumber() {
        onServiceStart();
    }

    private void onServiceStart() {
        Intent intent = new Intent("com.kt.olleh.inapp.IRemoteInapService");
        bindService(intent, this.serviceConnection, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceStop() {
        unbindService(this.serviceConnection);
    }
}
