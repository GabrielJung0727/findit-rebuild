package com.kt.olleh.inapp;

import android.os.AsyncTask;
import android.os.Build;
import com.findit.battle.GameView;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.crypt.AESCrypt;
import com.kt.olleh.inapp.net.InAppAPI;
import com.kt.olleh.inapp.net.InAppError;
import com.kt.olleh.inapp.net.NetworkManager;
import com.kt.olleh.inapp.net.ResBuyDIUrl;
import com.kt.olleh.inapp.net.ResCheckBalance;
import com.kt.olleh.inapp.net.ResCheckCoin;
import com.kt.olleh.inapp.net.ResCheckPin;
import com.kt.olleh.inapp.net.ResCheckShowId;
import com.kt.olleh.inapp.net.ResCheckUserId;
import com.kt.olleh.inapp.net.ResDIApproveDown;
import com.kt.olleh.inapp.net.ResDIBuy;
import com.kt.olleh.inapp.net.ResDIDetail;
import com.kt.olleh.inapp.net.ResDIDownAuth;
import com.kt.olleh.inapp.net.ResDIDownUrl;
import com.kt.olleh.inapp.net.ResDIGetFile;
import com.kt.olleh.inapp.net.ResDIList;
import com.kt.olleh.inapp.net.ResDIListExpand;
import com.kt.olleh.inapp.net.ResDIStatus;
import com.kt.olleh.inapp.net.ResDIesBuy;
import com.kt.olleh.inapp.net.ResDownSucProc;
import com.kt.olleh.inapp.net.ResGetSymKeyGen;
import com.kt.olleh.inapp.net.ResSetPin;
import com.kt.olleh.inapp.net.ResTags;
import com.kt.olleh.inapp.net.Response;
import com.kt.olleh.inapp.net.ResponseOld;
import com.kt.olleh.inapp.net.XMLParser;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class InApp {
    private static final String TAG = "InApp";
    private String app_id;
    private String authen;
    private String buy_type;
    private String co_id;
    private String di_id;
    private String mAES_URL;
    private String model_name;
    private String pay_no;
    private String pin;
    private String user_id;
    private String user_info;
    private volatile boolean mRun = false;
    private NetworkManager mNetManager = null;
    private final String TB_URL = "http://221.148.247.203:8888/INAP_GW/inap_gw/";
    private final String RS_URL = "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/";
    private final String crypto_param = "crypto_param/";
    private final String seq_key = "/seq_key/";
    private final String mApp_id = "/app_id/";
    private final String mUser_info = "/user_info/";
    private final String mUser_id = "/user_id/";
    private final String mAuthen = "/authen/";
    private final String mModel_name = "/model_name/";
    private final String mPage_size = "/page_size/";
    private final String mPage = "/page/";
    private final String mRecipients = "/recipients/";
    private final String mDi_id = "/di_id/";
    private final String mBuy_type = "/buy_type/";
    private final String mTr_id = "/tr_id/";
    private final String mFile_name = "/file_name/";
    private final String mMime_type = "/mime_type/";
    private final String mShow_id = "/show_id/";
    private final String mPwd = "/pwd/";
    private final String mBuy_pwd = "/buy_pwd/";
    private final String mOpcode = "opcode=";
    private final String mIid = "&iid=";
    private final String mAppid = "&appid=";
    private final String mPhone = "&phone=";
    private final String mPin = "/pin/";
    private final String mPay_no = "/pay_no/";
    private final String mco_id = "/co_id/";
    private final String mCert_key = "/cert_key/";
    private final String mId_type = "/id_type/";
    private String tr_id = GameView.CHARACTER_AI;
    private int mFailCnt = 0;
    private String mAPI = null;
    private String mAPINext = null;
    private String mSymmetric_key = null;
    private String mSeq_key = null;
    private NetworkTask mRunningTask = null;

    public String getMainURL() {
        if (Config.bTBserver) {
            return "http://221.148.247.203:8888/INAP_GW/inap_gw/";
        }
        return "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void networkTaskStart(OnInAppListener listener, String url, String api) {
        if (Config.DEBUG) {
            Config.LogD(TAG, "networkTaskStart in");
        }
        NetworkTask task = new NetworkTask(listener);
        if (Build.VERSION.SDK_INT < 11) {
            if (Config.DEBUG) {
                Config.LogD(TAG, new StringBuilder().append(Build.VERSION.SDK_INT).toString());
            }
            task.execute(url, api);
        } else {
            if (Config.DEBUG) {
                Config.LogD(TAG, new StringBuilder().append(Build.VERSION.SDK_INT).toString());
            }
            task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, url, api);
        }
        this.mRunningTask = task;
        this.mRun = true;
    }

    public void getDIUsableList(String app_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getUseDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIPurchaseList(String app_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getBuyDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIAllList(String app_id, String user_info, String user_id, String authen, String model_name, int page_size, int page, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getAllDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name + ", page_size = " + page_size + ", page = " + page);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name + "/page_size/" + page_size + "/page/" + page;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIAllList(String app_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getAllDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIGiftList(String app_id, String user_info, String user_id, String authen, String model_name, String recipients, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getGiftDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name + ", recipients = " + recipients);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name + "/recipients/" + recipients;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIGiftList(String app_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getGiftDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIReceiveList(String app_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getReceiveDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIInformation(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getDiDetail;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        if (Config.DEBUG) {
            Config.LogD(TAG, this.mAES_URL);
        }
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDIDownloadableList(String app_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getDownloadDiList;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getItemStatus(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getItemStatus;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getBuyDiUrl(String app_id, String di_id, String user_info, String user_id, String authen, String buy_type, String model_name, String pin, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getBuyDiUrl;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", buy_type = " + buy_type + ", model_name = " + model_name + ", pin\t = " + pin);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/buy_type/" + buy_type + "/model_name/" + model_name + "/pin/" + pin;
        this.app_id = app_id;
        this.di_id = di_id;
        this.user_info = user_info;
        this.user_id = user_id;
        this.authen = authen;
        this.buy_type = buy_type;
        this.model_name = model_name;
        this.pin = pin;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestBuyDI(String co_id, String pay_no, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.buyDi;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: co_id = " + co_id + ", pay_no\t = " + pay_no);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/co_id/" + co_id + "/pay_no/" + pay_no;
        this.co_id = co_id;
        this.pay_no = pay_no;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestDIBuy(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, String buy_type, String pin, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.buyDi;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name + ", buy_type = " + buy_type + ", pin\t = " + pin);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name + "/buy_type/" + buy_type + "/pin/" + pin;
        this.app_id = app_id;
        this.di_id = di_id;
        this.user_info = user_info;
        this.user_id = user_id;
        this.authen = authen;
        this.model_name = model_name;
        this.buy_type = buy_type;
        this.pin = pin;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestDIReBuy(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, String buy_type, String pin, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.buyDi;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name + ", buy_type = " + buy_type + ", pin\t = " + pin);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name + "/buy_type/" + buy_type + "/pin/" + pin;
        String aesURL = null;
        if (this.mSymmetric_key == null || this.mAES_URL == null) {
            listener.OnError("0000", "이전 구매 내역 없음");
        }
        try {
            if (this.mAES_URL != null) {
                aesURL = AESCrypt.encrypt(this.mSymmetric_key, this.mAES_URL);
            }
        } catch (Exception e) {
            Config.LogE(TAG, "AESCrypter ::" + e);
        }
        String url = String.valueOf(getMainURL()) + "crypto_param/" + aesURL + "/seq_key/" + this.mSeq_key;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestDIBuyCancel(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, String tr_id, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.buyCancelDi;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name + ", tr_id = " + tr_id);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name + "/tr_id/" + tr_id;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestDIesBuy(String iid, String appid, String phone, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.esBuyDi;
        this.mAES_URL = String.valueOf(this.mAPINext) + "?opcode=1&iid=" + iid + "&appid=" + appid + "&phone=" + phone;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: iid = " + iid + ", appid = " + appid + ", phone = " + phone);
        }
        String url = String.valueOf(getMainURL()) + this.mAES_URL;
        networkTaskStart(listener, url, this.mAPINext);
    }

    public void requestDIApproveUse(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.approvedUseDi;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDownUrl(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getDownUrl;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void getDownAuth(String cert_key, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getDownAuth;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: cert_key = " + cert_key);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/cert_key/" + cert_key;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void downSucProc(String cert_key, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.downSucProc;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: cert_key = " + cert_key);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/cert_key/" + cert_key;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestDIApproveDown(String app_id, String di_id, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.approvedDownDi;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: app_id = " + app_id + ", di_id = " + di_id + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/app_id/" + app_id + "/di_id/" + di_id + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestDIgetFile(String file_name, String mime_type, String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.getFile;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: file_name = " + file_name + ", mime_type = " + mime_type + ", user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/file_name/" + file_name + "/mime_type/" + mime_type + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestCheckCoin(String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.checkCoin;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void check_balance(String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.check_balance;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void checkUserId(String user_id, String pwd, String id_type, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.checkUserId;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: user_id = " + user_id + ", pwd = " + pwd + ", id_type = " + id_type);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/user_id/" + user_id + "/pwd/" + pwd + "/id_type/" + id_type;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void CheckPin(String user_info, String user_id, String authen, String model_name, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.checkPin;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void SetPin(String user_info, String user_id, String authen, String model_name, String pin, OnInAppListener listener) {
        this.mAPI = "getSymKeyGen";
        this.mAPINext = InAppAPI.setPin;
        String url = String.valueOf(getMainURL()) + this.mAPI;
        if (Config.DEBUG) {
            Config.LogD(TAG, "Parameter :: user_info = " + user_info + ", user_id = " + user_id + ", authen = " + authen + ", model_name = " + model_name + " pin = " + pin);
        }
        this.mAES_URL = String.valueOf(this.mAPINext) + "/user_info/" + user_info + "/user_id/" + user_id + "/authen/" + authen + "/model_name/" + model_name + "/pin/" + pin;
        networkTaskStart(listener, url, this.mAPI);
    }

    public void requestCancel() {
        if (this.mRunningTask != null) {
            this.mRunningTask.cancel(true);
        }
        this.mRunningTask = null;
    }

    class NetworkTask extends AsyncTask<String, Void, InputStream> {
        private String mCurrentAPI = null;
        private int mLastError;
        private int mLastHttpCode;
        private OnInAppListener mListener;

        public NetworkTask(OnInAppListener listener) {
            this.mListener = listener;
            if (Config.DEBUG) {
                Config.LogD(InApp.TAG, "NetworkTask AsyncTask in");
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public InputStream doInBackground(String... params) {
            if (Config.DEBUG) {
                Config.LogD(InApp.TAG, "doInBackground in");
            }
            String url = params[0];
            this.mCurrentAPI = params[1];
            if (Config.DEBUG) {
                Config.LogD(InApp.TAG, "Config.bIsStandAlone = false");
            }
            InApp.this.mNetManager = new NetworkManager();
            return InApp.this.mNetManager.getData(url);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(InputStream in) {
            if (Config.DEBUG) {
                Config.LogD(InApp.TAG, "onPostExecute in");
            }
            if (!isCancelled()) {
                if (in == null) {
                    this.mLastError = InApp.this.mNetManager.getLastError();
                    this.mLastHttpCode = InApp.this.mNetManager.getLastHttpCode();
                    if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getFile)) {
                        if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.buyDi)) {
                            if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getBuyDiUrl)) {
                                if (InApp.this.mRun) {
                                    sendErrorReason("A015", "서버에 접속할 수 없습니다. 네트워크 상태를 확인해주세요.", null);
                                    return;
                                }
                                return;
                            } else if (InApp.this.mFailCnt != 0) {
                                InApp.this.mFailCnt = 0;
                                InApp.this.requestDIBuyCancel(InApp.this.app_id, InApp.this.di_id, InApp.this.user_info, InApp.this.user_id, InApp.this.authen, InApp.this.model_name, InApp.this.tr_id, this.mListener);
                                return;
                            } else {
                                InApp.this.mFailCnt++;
                                InApp.this.getBuyDiUrl(InApp.this.app_id, InApp.this.di_id, InApp.this.user_info, InApp.this.user_id, InApp.this.authen, InApp.this.model_name, InApp.this.buy_type, InApp.this.pin, this.mListener);
                                return;
                            }
                        }
                        if (Config.tCCodeKT.equals(Config.tCompanyCode)) {
                            if (InApp.this.mFailCnt != 0) {
                                InApp.this.mFailCnt = 0;
                                InApp.this.requestDIBuyCancel(InApp.this.app_id, InApp.this.di_id, InApp.this.user_info, InApp.this.user_id, InApp.this.authen, InApp.this.model_name, InApp.this.tr_id, this.mListener);
                                return;
                            } else {
                                InApp.this.mFailCnt++;
                                InApp.this.requestDIReBuy(InApp.this.app_id, InApp.this.di_id, InApp.this.user_info, InApp.this.user_id, InApp.this.authen, InApp.this.model_name, InApp.this.buy_type, InApp.this.pin, this.mListener);
                                return;
                            }
                        }
                        if (InApp.this.mFailCnt != 0) {
                            InApp.this.mFailCnt = 0;
                            InApp.this.requestDIBuyCancel(InApp.this.app_id, InApp.this.di_id, InApp.this.user_info, InApp.this.user_id, InApp.this.authen, InApp.this.model_name, InApp.this.tr_id, this.mListener);
                            return;
                        } else {
                            InApp.this.mFailCnt++;
                            InApp.this.requestBuyDI(InApp.this.co_id, InApp.this.pay_no, this.mListener);
                            return;
                        }
                    }
                    return;
                }
                if (Config.DEBUG) {
                    Config.LogD(InApp.TAG, "in is not null");
                }
                if (InApp.this.mRun) {
                    if (this.mCurrentAPI.equalsIgnoreCase(InAppAPI.esBuyDi)) {
                        ResponseOld old = XMLParser.parseXML_OLD(in, this.mCurrentAPI);
                        if (old != null) {
                            if (InApp.this.mRun) {
                                this.mListener.OnResultOLDAPI(old.mResultCode, old.mResultMessage);
                                return;
                            }
                            return;
                        } else {
                            this.mLastError = InApp.this.mNetManager.getLastError();
                            this.mLastHttpCode = InApp.this.mNetManager.getLastHttpCode();
                            if (InApp.this.mRun) {
                                sendErrorReason("A015", "서버 요청 응답 시간 초과", null);
                                return;
                            }
                            return;
                        }
                    }
                    Response response = XMLParser.parseXML(in, this.mCurrentAPI);
                    if (response != null) {
                        if (!InAppError.SUCCESS.equalsIgnoreCase(response.mCode)) {
                            if (InApp.this.mRun) {
                                sendErrorReason(response.mCode, response.mReason, response);
                                return;
                            }
                            return;
                        }
                        if (Config.DEBUG) {
                            Config.LogD(InApp.TAG, "onPostExecute(" + InApp.this.mAPI + ") called");
                        }
                        if (!InApp.this.mAPI.equalsIgnoreCase("getSymKeyGen")) {
                            if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getUseDiList) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getDownloadDiList)) {
                                if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getItemStatus)) {
                                    if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getBuyDiList) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getAllDiList) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getGiftDiList) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getReceiveDiList)) {
                                        if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getDiDetail)) {
                                            if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getBuyDiUrl) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getGiftDiUrl)) {
                                                if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.buyDi) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.buyCancelDi) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.giftDi) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.reGiftDi) && !InApp.this.mAPI.equalsIgnoreCase(InAppAPI.approvedUseDi)) {
                                                    if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getDownUrl)) {
                                                        if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getDownAuth)) {
                                                            if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.downSucProc)) {
                                                                if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.esBuyDi)) {
                                                                    if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.approvedDownDi)) {
                                                                        if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getFile)) {
                                                                            if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.checkShowId)) {
                                                                                if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.checkCoin)) {
                                                                                    if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.check_balance)) {
                                                                                        if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.checkUserId)) {
                                                                                            if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.checkPin)) {
                                                                                                if (InApp.this.mAPI.equalsIgnoreCase(InAppAPI.setPin)) {
                                                                                                    ResSetPin res = (ResSetPin) response;
                                                                                                    if (InApp.this.mRun) {
                                                                                                        this.mListener.OnResultAPI(InApp.this.mAPI, res);
                                                                                                        return;
                                                                                                    }
                                                                                                    return;
                                                                                                }
                                                                                                return;
                                                                                            }
                                                                                            ResCheckPin res2 = (ResCheckPin) response;
                                                                                            if (InApp.this.mRun) {
                                                                                                this.mListener.OnResultAPI(InApp.this.mAPI, res2);
                                                                                                return;
                                                                                            }
                                                                                            return;
                                                                                        }
                                                                                        ResCheckUserId res3 = (ResCheckUserId) response;
                                                                                        if (InApp.this.mRun) {
                                                                                            this.mListener.OnResultAPI(InApp.this.mAPI, res3);
                                                                                            return;
                                                                                        }
                                                                                        return;
                                                                                    }
                                                                                    ResCheckBalance res4 = (ResCheckBalance) response;
                                                                                    if (InApp.this.mRun) {
                                                                                        this.mListener.OnResultAPI(InApp.this.mAPI, res4);
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                }
                                                                                ResCheckCoin res5 = (ResCheckCoin) response;
                                                                                if (InApp.this.mRun) {
                                                                                    this.mListener.OnResultAPI(InApp.this.mAPI, res5);
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            }
                                                                            ResCheckShowId res6 = (ResCheckShowId) response;
                                                                            if (InApp.this.mRun) {
                                                                                this.mListener.OnResultAPI(InApp.this.mAPI, res6);
                                                                                return;
                                                                            }
                                                                            return;
                                                                        }
                                                                        ResDIGetFile res7 = (ResDIGetFile) response;
                                                                        if (InApp.this.mRun) {
                                                                            this.mListener.OnResultAPI(InApp.this.mAPI, res7);
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                    ResDIApproveDown res8 = (ResDIApproveDown) response;
                                                                    if (InApp.this.mRun) {
                                                                        this.mListener.OnResultAPI(InApp.this.mAPI, res8);
                                                                        return;
                                                                    }
                                                                    return;
                                                                }
                                                                ResDIesBuy res9 = (ResDIesBuy) response;
                                                                if (InApp.this.mRun) {
                                                                    this.mListener.OnResultAPI(InApp.this.mAPI, res9);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            ResDownSucProc res10 = (ResDownSucProc) response;
                                                            if (InApp.this.mRun) {
                                                                this.mListener.OnResultAPI(InApp.this.mAPI, res10);
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        ResDIDownAuth res11 = (ResDIDownAuth) response;
                                                        if (InApp.this.mRun) {
                                                            this.mListener.OnResultAPI(InApp.this.mAPI, res11);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    ResDIDownUrl res12 = (ResDIDownUrl) response;
                                                    if (InApp.this.mRun) {
                                                        this.mListener.OnResultAPI(InApp.this.mAPI, res12);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                ResDIBuy res13 = (ResDIBuy) response;
                                                if (InApp.this.mRun) {
                                                    this.mListener.OnResultAPI(InApp.this.mAPI, res13);
                                                    return;
                                                }
                                                return;
                                            }
                                            ResBuyDIUrl res14 = (ResBuyDIUrl) response;
                                            res14.mSymmetric_key = InApp.this.mSymmetric_key;
                                            if (InApp.this.mRun) {
                                                this.mListener.OnResultAPI(InApp.this.mAPI, res14);
                                                return;
                                            }
                                            return;
                                        }
                                        ResDIDetail res15 = (ResDIDetail) response;
                                        if (InApp.this.mRun) {
                                            this.mListener.OnResultAPI(InApp.this.mAPI, res15);
                                            return;
                                        }
                                        return;
                                    }
                                    ResDIList res16 = (ResDIList) response;
                                    if (InApp.this.mRun) {
                                        this.mListener.OnResultAPI(InApp.this.mAPI, res16);
                                        return;
                                    }
                                    return;
                                }
                                ResDIStatus res17 = (ResDIStatus) response;
                                if (InApp.this.mRun) {
                                    this.mListener.OnResultAPI(InApp.this.mAPI, res17);
                                    return;
                                }
                                return;
                            }
                            ResDIListExpand res18 = (ResDIListExpand) response;
                            if (InApp.this.mRun) {
                                this.mListener.OnResultAPI(InApp.this.mAPI, res18);
                                return;
                            }
                            return;
                        }
                        ResGetSymKeyGen res19 = (ResGetSymKeyGen) response;
                        if (InApp.this.mAPINext.equalsIgnoreCase(InAppAPI.buyDi) || InApp.this.mAPINext.equalsIgnoreCase(InAppAPI.giftDi)) {
                            InApp.this.mSymmetric_key = res19.mSymmetric_key;
                            InApp.this.mSeq_key = res19.mSeq_key;
                            InApp.this.tr_id = ResTags.TR_ID;
                        } else {
                            InApp.this.mSymmetric_key = res19.mSymmetric_key;
                            InApp.this.mSeq_key = null;
                        }
                        if (Config.DEBUG) {
                            Config.LogI(InApp.TAG, "onPostExecute(" + res19.mSymmetric_key + "," + res19.mSeq_key + ")");
                        }
                        String aesReplaceURL = null;
                        if (!InAppError.SUCCESS.equalsIgnoreCase(res19.mCode)) {
                            if (InApp.this.mRun) {
                                sendErrorReason(res19.mCode, res19.mReason, response);
                                return;
                            }
                            return;
                        }
                        try {
                            if (InApp.this.mAES_URL != null) {
                                String aesURL = AESCrypt.encrypt(res19.mSymmetric_key, InApp.this.mAES_URL);
                                if (Config.DEBUG) {
                                    Config.LogI(InApp.TAG, "#################################################################");
                                }
                                if (Config.DEBUG) {
                                    Config.LogI(InApp.TAG, "mAES_URL = " + InApp.this.mAES_URL);
                                }
                                if (Config.DEBUG) {
                                    Config.LogI(InApp.TAG, "aesURL = " + aesURL);
                                }
                                aesReplaceURL = aesURL.replace('/', '$');
                                if (Config.DEBUG) {
                                    Config.LogI(InApp.TAG, "aesReplaceURL = " + aesReplaceURL);
                                }
                                if (Config.DEBUG) {
                                    Config.LogI(InApp.TAG, "#################################################################");
                                }
                            }
                        } catch (Exception e) {
                            Config.LogE(InApp.TAG, "AESCrypter ::" + e);
                        }
                        String url = String.valueOf(InApp.this.getMainURL()) + "crypto_param/" + aesReplaceURL + "/seq_key/" + res19.mSeq_key;
                        if (InApp.this.mAPINext == null) {
                            if (InApp.this.mRun) {
                                this.mListener.OnResultAPI(InApp.this.mAPI, response);
                            }
                        } else {
                            InApp.this.mAPI = InApp.this.mAPINext;
                            InApp.this.mAPINext = null;
                            if (InApp.this.mRun) {
                                if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getFile)) {
                                    InApp.this.networkTaskStart(this.mListener, url, InApp.this.mAPI);
                                } else {
                                    this.mListener.OnResultFileURL(InAppError.SUCCESS, url);
                                }
                            }
                        }
                    }
                }
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            InApp.this.mRun = false;
            InApp.this.mNetManager.cancel();
        }

        private void sendErrorReason(String code, String reason, Response response) {
            if (code == null) {
                code = "code null";
            }
            if (reason == null) {
                reason = "reason null";
            }
            if (this.mListener != null) {
                if (code.equalsIgnoreCase(Config.B007)) {
                    reason = Config.B007_msg;
                } else if (code.equalsIgnoreCase(Config.B009)) {
                    reason = Config.B009_msg;
                } else if (code.equalsIgnoreCase(Config.B010)) {
                    reason = Config.B010_msg;
                } else if (code.equalsIgnoreCase(Config.B011) && response != null) {
                    if (!InApp.this.mAPI.equalsIgnoreCase(InAppAPI.buyDi)) {
                        if (InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getBuyDiUrl) || InApp.this.mAPI.equalsIgnoreCase(InAppAPI.getGiftDiUrl)) {
                            ResBuyDIUrl res = (ResBuyDIUrl) response;
                            reason = res.getmPin_fail_cnt();
                        } else {
                            ResDIBuy res2 = (ResDIBuy) response;
                            reason = res2.getPinFailCnt();
                        }
                    } else {
                        ResDIBuy res3 = (ResDIBuy) response;
                        reason = res3.getPinFailCnt();
                    }
                }
                this.mListener.OnError(code, reason);
            }
        }
    }
}
