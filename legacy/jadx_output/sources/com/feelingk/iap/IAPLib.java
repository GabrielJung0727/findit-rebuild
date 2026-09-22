package com.feelingk.iap;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.net.IAPBase;
import com.feelingk.iap.net.InitConfirm;
import com.feelingk.iap.net.ItemAuth;
import com.feelingk.iap.net.ItemAuthInfo;
import com.feelingk.iap.net.ItemUse;
import com.feelingk.iap.net.ItemUseConfirm;
import com.feelingk.iap.net.ItemWholeAuthConfirm;
import com.feelingk.iap.net.LGUSmsAuthNumberConfirm;
import com.feelingk.iap.net.SellerInfoConfirm;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.findit.battle.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class IAPLib {
    public static final int HND_ERR_AUTH = 2000;
    public static final int HND_ERR_COMMONINFOREQ = 2017;
    public static final int HND_ERR_CULTURELANDCASHINFO = 2020;
    public static final int HND_ERR_DATA = 2005;
    public static final int HND_ERR_DISCOUNT_REQ = 2023;
    public static final int HND_ERR_DOTORISMSAUTH = 2022;
    public static final int HND_ERR_DOTORISMSAUTHNUMBER = 2021;
    public static final int HND_ERR_IMEI_AUTH = 2015;
    public static final int HND_ERR_IMEI_AUTH_REQ = 2016;
    public static final int HND_ERR_INIT = 1999;
    public static final int HND_ERR_ITEMAUTH = 2007;
    public static final int HND_ERR_ITEMINFO = 2001;
    public static final int HND_ERR_ITEMPURCHASE = 2003;
    public static final int HND_ERR_ITEMQUERY = 2002;
    public static final int HND_ERR_LGU_SMSAUTH_REQ = 2014;
    public static final int HND_ERR_LGU_SMSAUTH_UMBER_REQ = 2013;
    public static final int HND_ERR_MEMBERSHIP = 2011;
    public static final int HND_ERR_NORMALTIMEOUT = 2008;
    public static final int HND_ERR_OCBCARDUPDATE = 2018;
    public static final int HND_ERR_OCBPOINTINFO = 2019;
    public static final int HND_ERR_PAYMENTTIMEOUT = 2009;
    public static final int HND_ERR_PURCHASEDISSMISS = 2012;
    public static final int HND_ERR_PURCHASEDISSMISS_CHECK = 2024;
    public static final int HND_ERR_SELLERINFO_QUERY_REQ = 2024;
    public static final int HND_ERR_SERVERTIMEOUT = 2010;
    public static final int HND_ERR_USEQUERY = 2006;
    public static final int HND_ERR_WHOLEQUERY = 2004;
    static final String TAG = "IAPLib";
    private static SellerInfoConfirm mSellerInfoConfirm;
    private static Handler mHndUI = null;
    private static Context mContext = null;
    protected static IAPBase mBase = null;
    protected static OnClientListener mClientListener = null;
    protected static String mProductID = null;
    protected static String mProductName = null;
    protected static String mTID = null;
    protected static String mBPInfo = null;
    protected static Boolean mUseTCash = false;
    protected static Boolean mUseBPProtol = false;
    protected static String mMdn = null;
    protected static int mKorTelecom = 0;
    protected static String mEncJuminNumber = null;
    protected static String mOcbPWNumber = null;
    protected static boolean mTStorePwdCheck = false;
    private static int mDialogType = 100;
    private static boolean mOTPAgreeFlag = false;
    public static boolean mIsOTPAuth = false;
    public static boolean mIsOTPSuccess = false;
    public static boolean mLimitExcess = false;
    public static String mOTPNumber = null;
    private static String mSmsAuthNumberKey = null;
    private static String mSmsAuthKey = null;
    private static boolean mOCBPointQueryCheck = false;
    private static String mOCBPoint = GameView.CHARACTER_AI;
    private static boolean mCultureCashQueryFlag = false;
    private static String mCultureLandPoint = GameView.CHARACTER_AI;
    private static String mCultureLandUserId = null;
    private static int mOCB_Use = 0;
    private static int mDotori_Use = 0;
    private static int mCulture_Use = 0;
    private static int mTCash_Use = 0;
    private static boolean mDotoriQueryFlag = false;
    private static String mDotoriAuthNumber = GameView.CHARACTER_AI;
    private static String mOCBCardUpdateType = GameView.CHARACTER_AI;
    private static String mUpdateType = null;
    protected static final Handler mNetworkMessageHandler = new Handler() { // from class: com.feelingk.iap.IAPLib.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            CommonF.LOGGER.i(IAPLib.TAG, "[NET-Handler] Network Message Receive Msg.what = " + msg.what);
            switch (msg.what) {
                case Defines.ACTION_EVENT.HND_PURCHASE_CONFIRM /* 1100 */:
                    IAPLib.mUseTCash = Boolean.valueOf(msg.arg1 == 1);
                    IAPLib.mUseBPProtol = Boolean.valueOf(msg.arg2 == 1);
                    IAPLib.sendItemQuery(IAPLib.mOCB_Use, IAPLib.mDotori_Use, IAPLib.mCulture_Use, IAPLib.mTCash_Use);
                    IAPLib.setPayments(0, 0, 0, 0);
                    SingletonCounter.getInstance().clear();
                    return;
                case Defines.ACTION_EVENT.HND_PURCHASE_CONFIRM_DANAL /* 1101 */:
                    IAPLib.sendItemQuery(IAPLib.mOCB_Use, IAPLib.mDotori_Use, IAPLib.mCulture_Use, IAPLib.mTCash_Use);
                    IAPLib.setPayments(0, 0, 0, 0);
                    SingletonCounter.getInstance().clear();
                    return;
                case Defines.ACTION_EVENT.HND_PURCHASE_CANCEL /* 1102 */:
                    IAPLib.close();
                    return;
                case Defines.ACTION_EVENT.HND_PURCHASE_FINISH_OK /* 1103 */:
                    if (IAPLib.mClientListener != null) {
                        IAPLib.setIsOTPAuth(false);
                        IAPLib.setOTPAgree(false);
                        IAPLib.setOTPPurchaseSuccess(false);
                        IAPLib.mClientListener.onItemPurchaseComplete();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_ITEMINFO_FINISH /* 1104 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_ITEMINFO_FINISH, msg.obj);
                        msgUI.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_ITEMQUERY_FINISH /* 1105 */:
                    if (IAPLib.mClientListener != null) {
                        try {
                            boolean bFlag = IAPLib.mClientListener.onItemQueryComplete().booleanValue();
                            if (bFlag) {
                                CommonF.LOGGER.i(IAPLib.TAG, "onItemQueryComplete bFlag: " + bFlag);
                                if (IAPLib.mKorTelecom == 1) {
                                    IAPLib.sendItemPurchse(IAPLib.mUseTCash);
                                } else {
                                    IAPLib.sendItemPurchseByDanal(IAPLib.mMdn, IAPLib.mKorTelecom, IAPLib.mUseTCash, IAPLib.mEncJuminNumber);
                                }
                            } else {
                                CommonF.LOGGER.i(IAPLib.TAG, "onItemQueryComplete bFlag: " + bFlag);
                                if (IAPLib.mHndUI != null) {
                                    Message messageUI = IAPLib.mHndUI.obtainMessage(IAPLib.HND_ERR_ITEMPURCHASE, CommonString.getString(CommonString.Index.ERROR_ONITEMQUERY_STRING));
                                    messageUI.sendToTarget();
                                    CommonF.LOGGER.e(IAPLib.TAG, "mClientListener.onItemQueryComplete() is false!!");
                                }
                            }
                            return;
                        } catch (Exception e) {
                            CommonF.LOGGER.e(IAPLib.TAG, "[Exception] " + e.toString());
                            if (IAPLib.mHndUI != null) {
                                Message messageUI2 = IAPLib.mHndUI.obtainMessage(IAPLib.HND_ERR_ITEMPURCHASE, CommonString.getString(CommonString.Index.ERROR_ONITEMQUERY_STRING));
                                messageUI2.sendToTarget();
                                CommonF.LOGGER.e(IAPLib.TAG, "[Exception] mClientListener.onItemQueryComplete() is null!!");
                                return;
                            }
                            return;
                        }
                    }
                    return;
                case Defines.ACTION_EVENT.HND_PURCHASE_FINISH /* 1106 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null && msg.obj != null) {
                        Message msgUI2 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_FINISH, msg.obj);
                        msgUI2.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_WHOLEQUERY_FINISH /* 1107 */:
                    IAPLib.close();
                    ItemWholeAuthConfirm whole = IAPLib.mBase.getItemWholeAuthConfirmMessage();
                    if (IAPLib.mClientListener != null) {
                        IAPLib.mClientListener.onWholeQuery(whole.getItems());
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_ITEMUSE_FINISH /* 1108 */:
                    IAPLib.close();
                    ItemUseConfirm itemUse = IAPLib.mBase.getItemUseConfirmMessage();
                    ItemUse item = new ItemUse();
                    item.pId = itemUse.getItemID();
                    item.pName = itemUse.getItemName();
                    item.pCount = itemUse.getCount();
                    if (IAPLib.mClientListener != null) {
                        IAPLib.mClientListener.onItemUseQuery(item);
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_ITEMAUTH_FINISH /* 1109 */:
                    IAPLib.close();
                    InitConfirm init = IAPLib.mBase.getInitConfirmMessage();
                    ItemAuthInfo item2 = new ItemAuthInfo();
                    item2.pCount = init.getCount();
                    item2.pExpireDate = init.getExpireDate();
                    item2.pToken = init.getToken();
                    if (IAPLib.mClientListener != null) {
                        IAPLib.mClientListener.onItemAuthInfo(item2);
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_AUTH_JUMINNUMBER /* 1110 */:
                    IAPLib.mEncJuminNumber = msg.obj.toString();
                    IAPLib.mBase.setBaseEncodeJuminNumber(IAPLib.mEncJuminNumber);
                    return;
                case 1111:
                case 1112:
                case 1113:
                case 1114:
                case Defines.ACTION_EVENT.HND_PERMISSON_ERROR /* 1115 */:
                case Defines.ACTION_EVENT.HND_USIM_ACTIVATE_ERROR /* 1116 */:
                case Defines.ACTION_EVENT.HND_JOIN_FORM_OPEN /* 1118 */:
                case Defines.ACTION_EVENT.HND_AUTOMATIC_PAYMENT /* 1122 */:
                case Defines.ACTION_EVENT.HND_PURCHASEAUTO_FORM_OPEN /* 1124 */:
                case Defines.ACTION_EVENT.HND_ERR_LGU_SMSAUTH_NUMBER_REQ_ERROR /* 1127 */:
                case Defines.ACTION_EVENT.HND_ERR_LGU_SMSAUTH_ERROR /* 1129 */:
                case Defines.ACTION_EVENT.HND_IMEI_AUTH_NOT_REQUIRED /* 1130 */:
                case Defines.ACTION_EVENT.HND_IMEI_AUTH_REQ_OK /* 1132 */:
                case Defines.ACTION_EVENT.HND_SELLERINFO_REQ_OK /* 1138 */:
                default:
                    IAPLib.close();
                    SingletonCounter.getInstance().clear();
                    if (msg.obj == null || msg.obj.equals(GameView.CHARACTER_AI)) {
                        msg.obj = CommonString.getString(CommonString.Index.ERROR_NONE_PARAMETER_STRING);
                    }
                    if (msg.what == 2003 && msg.arg1 == 15) {
                        IAPLib.updateEncJuminNumber(null);
                    }
                    if (IAPLib.mHndUI != null) {
                        Message msgUI3 = IAPLib.mHndUI.obtainMessage(msg.what, msg.obj);
                        IAPLib.mHndUI.sendMessage(msgUI3);
                    }
                    if (IAPLib.mClientListener != null && msg.what != 2018 && msg.what != 2019 && msg.what != 2020 && msg.what != 2022) {
                        IAPLib.mClientListener.onError(msg.what, msg.arg1);
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_FINAL_VERSION_CHECK /* 1117 */:
                    break;
                case Defines.ACTION_EVENT.HND_USER_CERTI_FAIL /* 1119 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI4 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_USER_CERTI_FAIL);
                        msgUI4.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_JOIN_FINISH_OK /* 1120 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI5 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_JOIN_FINISH_OK, msg.obj);
                        msgUI5.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_SKT_CERTI_FAIL /* 1121 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI6 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_SKT_CERTI_FAIL, msg.obj);
                        msgUI6.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_PURCHASE_DISMISS /* 1123 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI7 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_DISMISS, msg.obj);
                        msgUI7.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_LIMIT_EXCESS /* 1125 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI8 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_LIMIT_EXCESS, msg.obj);
                        msgUI8.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_LGU_SMSAUTH_NUMBER_REQ_OK /* 1126 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI9 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_LGU_SMSAUTH_NUMBER_REQ_OK, msg.obj);
                        msgUI9.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_LGU_SMSAUTH_REQ_OK /* 1128 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        LGUSmsAuthNumberConfirm confirm = IAPLib.mBase.getLGUSmsAuthNumberConfirmMessage();
                        IAPLib.mSmsAuthKey = confirm.getAuthKey();
                        Message msgUI10 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_LGU_SMSAUTH_REQ_OK, msg.obj);
                        msgUI10.sendToTarget();
                    }
                    break;
                case Defines.ACTION_EVENT.HND_IMEI_AUTH_POPUP /* 1131 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI11 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_IMEI_AUTH_POPUP);
                        msgUI11.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_OCB_CARD_UPDATE_REQ_OK /* 1133 */:
                    IAPLib.close();
                    CommonF.LOGGER.i(IAPLib.TAG, "OKCashbag 카드 업데이트: " + IAPLib.mUpdateType);
                    if (IAPLib.mUpdateType.equals(Objects.Animation.TYPE_DELAY) || IAPLib.mUpdateType.equals("U")) {
                        int totalPay = SingletonCounter.getInstance().getmPaymentTotal() - SingletonCounter.getInstance().getmOCBUse();
                        SingletonCounter.getInstance().setmOCBUse(0);
                        SingletonCounter.getInstance().setmPaymentTotal(totalPay);
                        SingletonCounter.getInstance().setmPostPay(SingletonCounter.getInstance().getmTotalBalance() - SingletonCounter.getInstance().getmPaymentTotal());
                        SingletonCounter.getInstance().setmOCBBtnFlag(false);
                    }
                    IAPLib.sendItemInfo(IAPLib.mProductID, IAPLib.mProductName, IAPLib.mTID, IAPLib.mBPInfo);
                    return;
                case Defines.ACTION_EVENT.HND_OCB_OCBPOINTINFO_REQ_OK /* 1134 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI12 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_OCB_OCBPOINTINFO_REQ_OK, msg.obj);
                        msgUI12.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_CULTURELAND_CASH_REQ_OK /* 1135 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI13 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_CULTURELAND_CASH_REQ_OK, msg.obj);
                        msgUI13.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_DOTORI_SMSAUTH_NUMBER_REQ_OK /* 1136 */:
                    IAPLib.close();
                    return;
                case Defines.ACTION_EVENT.HND_DOTORI_SMSAUTH_REQ_OK /* 1137 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI14 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_DOTORI_SMSAUTH_REQ_OK, msg.obj);
                        msgUI14.sendToTarget();
                        return;
                    }
                    return;
                case Defines.ACTION_EVENT.HND_PURCHASE_DISMISS_CHECK /* 1139 */:
                    IAPLib.close();
                    if (IAPLib.mHndUI != null) {
                        Message msgUI15 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_PURCHASE_DISMISS_CHECK, msg.obj);
                        msgUI15.sendToTarget();
                        return;
                    }
                    return;
            }
            IAPLib.close();
            if (IAPLib.mHndUI != null) {
                Message msgUI16 = IAPLib.mHndUI.obtainMessage(Defines.ACTION_EVENT.HND_FINAL_VERSION_CHECK, msg.obj);
                msgUI16.sendToTarget();
            }
        }
    };

    public interface OnClientListener {
        void onDlgAutoPurchaseInfoCancel();

        void onDlgError();

        void onDlgPurchaseCancel();

        void onError(int i, int i2);

        void onItemAuthInfo(ItemAuthInfo itemAuthInfo);

        void onItemPurchaseComplete();

        Boolean onItemQueryComplete();

        void onItemUseQuery(ItemUse itemUse);

        void onJoinDialogCancel();

        void onPurchaseDismiss();

        void onWholeQuery(ItemAuth[] itemAuthArr);
    }

    protected static void init(Context ctx, Handler hnd, IAPLibSetting setting, String mdn, int telecomCarrier) {
        mContext = ctx;
        mHndUI = hnd;
        mMdn = mdn;
        mKorTelecom = telecomCarrier;
        mUseBPProtol = false;
        mClientListener = setting.ClientListener;
        mBase = new IAPBase(mContext, mNetworkMessageHandler, setting, mdn);
    }

    protected static void sendItemInfo(String pID, String pName) {
        sendItemInfo(pID, pName, null, null);
    }

    protected static void sendItemInfo(String pID, String pName, String pTid) {
        sendItemInfo(pID, pName, pTid, null);
    }

    protected static void sendItemInfo(String pID, String pName, String pTid, String pBPInfo) {
        mProductID = pID;
        mProductName = pName;
        mTID = pTid;
        mBPInfo = pBPInfo;
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.ItemInfo(mKorTelecom, mMdn, pID, pName, pTid, pBPInfo);
    }

    protected static void resendItemInfo(String pID, String pName) {
        resendItemInfo(pID, pName, null, null);
    }

    protected static void resendItemInfo(String pID, String pName, String pTid) {
        resendItemInfo(pID, pName, pTid, null);
    }

    protected static void resendItemInfo(String pID, String pName, String pTid, String pBPInfo) {
        mProductID = pID;
        mProductName = pName;
        if (pTid != null) {
            mTID = pTid;
        }
        mBPInfo = pBPInfo;
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.reItemInfo(mKorTelecom, mMdn, pID, pName, mTID, pBPInfo);
        mLimitExcess = true;
    }

    protected static void sendItemQuery(int ocbUse, int dotoriUse, int cultureUse, int TcashUse) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.ItemQuery(mKorTelecom, mMdn, mProductID, mProductName, mTID, mBPInfo, mCultureLandUserId, ocbUse, dotoriUse, cultureUse, TcashUse);
    }

    protected static void sendItemPurchse(Boolean bTCash) {
        mBase.Reset();
        mBase.ItemPurchase(mProductID, mProductName, mTID, mBPInfo, bTCash, mUseBPProtol);
    }

    protected static void sendItemPurchseByDanal(String mdn, int carrier, Boolean bTCash, String jumin) {
        mBase.Reset();
        mBase.ItemPurchaseDanal(mdn, mProductID, mProductName, carrier, mTID, mBPInfo, bTCash, jumin);
    }

    protected static void sendItemWholeAuth() {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.ItemWholeAuth(mKorTelecom, mMdn);
    }

    protected static void sendItemAuth(String pID) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.ItemAuth(mKorTelecom, mMdn, pID);
    }

    protected static void sendItemUse(String pID) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.ItemUse(mKorTelecom, mMdn, pID);
    }

    protected static byte[] sendBPData(byte[] data) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        return mBase.sendBPData(data, mKorTelecom, mMdn);
    }

    protected static void sendDataMemebership() {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.Membership(mKorTelecom, mMdn, mProductID, mProductName, mTID, mBPInfo);
    }

    protected static void sendPurchaseDismiss(String pID) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.PurchaseDismiss(mKorTelecom, mMdn, pID);
    }

    protected static void sendPurchaseDismissCheck(String pID) {
        mBase.Reset();
        mProductID = pID;
        mKorTelecom = CommonF.getCarrier(mContext);
        mBase.PurchaseDismissCheck(mKorTelecom, pID);
    }

    protected static void sendOTPAgreeCheck(String agree) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.OTPAgreeCheck(mKorTelecom, mMdn, agree);
    }

    protected static void sendLguSmsAuthNumber(String pID) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.LGUSmsAuthNumberReq(mKorTelecom, mMdn, pID, mEncJuminNumber);
    }

    protected static void sendLguSmsAuth(String pID, String smsAuthNumberKey) {
        mBase.Reset();
        mSmsAuthNumberKey = smsAuthNumberKey;
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.LGUSmsAuthReq(mKorTelecom, smsAuthNumberKey, mOTPNumber);
    }

    protected static void SendImeiAuthReq() {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.CalliapSendImeiAuthReq(mKorTelecom, mMdn);
    }

    protected static void sendOCBUpdateReq(String updateType, String OCBCardNum) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mBase.OCBCardUpdate(mKorTelecom, updateType, OCBCardNum);
        mUpdateType = updateType;
    }

    protected static void sendOCBPointReq(String OCBPWNum) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mBase.OCBPointInfo(mKorTelecom, OCBPWNum);
    }

    protected static void sendCultureLandCashInfoReq(String cultureLandID, String cultureLandPW) {
        mCultureLandUserId = cultureLandID;
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mBase.CultureLandCashInfo(mKorTelecom, cultureLandID, cultureLandPW);
    }

    protected static void sendDotoriSmsAuthNumberReq() {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.DotoriSMSAuthNumber(mKorTelecom, mMdn);
    }

    public static String getDotoriSmsNumber() {
        return mDotoriAuthNumber;
    }

    public static void setDotoriSmsNumber(String dotoriSmsNum) {
        mDotoriAuthNumber = dotoriSmsNum;
    }

    protected static void sendDotoriSmsAuthReq(String userCode) {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
        mMdn = CommonF.getMDN(mContext, mKorTelecom);
        mBase.DotoriSmsAuth(mKorTelecom, mMdn, userCode);
    }

    protected static void sendPaymentInfo() {
        mBase.Reset();
        mKorTelecom = CommonF.getCarrier(mContext);
    }

    public static String getOTPNumber() {
        return mOTPNumber;
    }

    public static void setOTPNumber(String otpNum) {
        mOTPNumber = otpNum;
        ParserXML.setOTPNumber(otpNum);
    }

    public static boolean getOTPAgree() {
        return mOTPAgreeFlag;
    }

    public static void setOTPAgree(boolean OTPAgree) {
        mOTPAgreeFlag = OTPAgree;
    }

    public static boolean getIsOTPAuth() {
        return mIsOTPAuth;
    }

    public static void setIsOTPAuth(boolean OTPAuth) {
        mIsOTPAuth = OTPAuth;
    }

    public static boolean getOTPPurchaseSuccess() {
        return mIsOTPSuccess;
    }

    public static void setOTPPurchaseSuccess(boolean purchaseSuccess) {
        mIsOTPSuccess = purchaseSuccess;
    }

    public static String getSmsAuthNumberKey() {
        return mSmsAuthNumberKey;
    }

    public static void setSmsAuthNumberKey(String smsAuthNumberKey) {
        mSmsAuthNumberKey = smsAuthNumberKey;
    }

    public static String getSmsAuthKey() {
        return mSmsAuthKey;
    }

    public static void setSmsAuthKey(String smsAuthKey) {
        mSmsAuthKey = smsAuthKey;
    }

    public static void setLimitExcess(boolean limitExcess) {
        mLimitExcess = limitExcess;
    }

    public static boolean getLimitExcess() {
        return mLimitExcess;
    }

    public static void setOCBPointInfo(boolean pointQuery) {
        mOCBPointQueryCheck = pointQuery;
    }

    public static boolean getOCBPointInfo() {
        return mOCBPointQueryCheck;
    }

    public static void setOCBPoint(String point) {
        mOCBPoint = point;
    }

    public static String getOCBPoint() {
        return mOCBPoint;
    }

    public static void setCultureCashQueryInfo(boolean cultureCashQuery) {
        mCultureCashQueryFlag = cultureCashQuery;
    }

    public static boolean getCultureCashQueryInfo() {
        return mCultureCashQueryFlag;
    }

    public static void setCultureLandCashPoint(String CLPoint) {
        mCultureLandPoint = CLPoint;
    }

    public static String getCultureLandCashPoint() {
        return mCultureLandPoint;
    }

    public static void setPayments(int ocbUse, int dotoriUse, int cultureUse, int tcashUse) {
        mOCB_Use = ocbUse;
        mDotori_Use = dotoriUse;
        mCulture_Use = cultureUse;
        mTCash_Use = tcashUse;
    }

    public static void setOcbCardUpdateType(String inputType) {
        mOCBCardUpdateType = inputType;
    }

    public static String getOcbCardUpdateType() {
        return mOCBCardUpdateType;
    }

    public static void setSellerInfo(SellerInfoConfirm sellerInfo) {
        mSellerInfoConfirm = sellerInfo;
    }

    public static SellerInfoConfirm getSellerInfo() {
        return mSellerInfoConfirm;
    }

    protected static int getDialogType() {
        return mDialogType;
    }

    protected static void setDialogType(int mDialogType2) {
        mDialogType = mDialogType2;
    }

    protected static Handler getNetHandler() {
        return mNetworkMessageHandler;
    }

    protected static Handler getUIHandler() {
        return mHndUI;
    }

    protected static void setUIHandler(Handler handler) {
        mHndUI = handler;
    }

    protected static void close() {
        if (mBase != null) {
            mBase.StopService();
        }
        IAPBase.close();
    }

    public static String getEncJuminNumber() {
        return mEncJuminNumber;
    }

    public static void updateEncJuminNumber(String number) {
        mEncJuminNumber = number;
        mBase.setBaseEncodeJuminNumber(number);
    }
}
