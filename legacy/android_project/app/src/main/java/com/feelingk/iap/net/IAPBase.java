package com.feelingk.iap.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.IAPLibSetting;
import com.feelingk.iap.util.CommonF;
import com.feelingk.iap.util.CommonString;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class IAPBase extends IAPNet {
    private static String MPTID = null;
    static final String TAG = "IAPBase";
    private static String mPID;
    private static String mPName;
    public String APPLICATION_ID;
    public String BP_SERVER_IP;
    public int BP_SERVER_PORT;
    public String MDN;
    public Context mContext;
    public ExecutorService mExecutorService;
    public Handler mNetworkHandler;
    private static ItemInfoConfirm itemInfoConfirm = null;
    private static OKCashbagPointInfoConfirm oKCashbagPointInfoConfirm = null;
    private static CultureLandCashConfirm cultureLandCashConfirm = null;
    private static DotoriSmsAuthConfirm dotoriSmsAuthConfirm = null;
    private static SellerInfoConfirm sellerInfoConfirm = null;
    private static boolean mLimitExcessFlag = false;
    private static String mPBPInfo = null;
    private static String mOCBPWNum = null;
    public String OCBCARDNUM = GameView.CHARACTER_AI;
    public String CultureLand_ID = GameView.CHARACTER_AI;
    public boolean isWifi = false;
    public String errMsg = GameView.CHARACTER_AI;
    public int subErrorCode = 0;
    private InitConfirm initCfm = null;
    private MsgConfirm msgConfirm = null;
    private ItemWholeAuthConfirm itemWholeAuthConfirm = null;
    private ItemUseConfirm itemUseConfirm = null;
    private LGUSmsAuthNumberConfirm lguSmsAuthNumberConfirm = null;
    private AutoPurchaseDismissCheckConfirm autoPurchaseDismissCheckConfirm = null;
    private String mEncJuminNumer = null;
    public NETWORK_RESULT_TYPE mNetworkState = NETWORK_RESULT_TYPE.APP_MAIN;
    private String mOTPAgree = null;

    public enum NETWORK_RESULT_TYPE {
        APP_AUTOMATIC_PAYMENT,
        APP_AUTOMATIC_PAYMENT_DISMISS,
        APP_AUTOMATIC_PAYMENT_DISMISS_CHECK,
        APP_SKT_CERTI_FAIL,
        APP_FINAL_VERSION_CHECK,
        APP_USER_CERTI_FAIL,
        APP_LIMIT_EXCESS,
        APP_MAIN,
        APP_VALID_USER,
        APP_QUERY_ITEM,
        APP_QUERY_ITEM_OK,
        APP_CHARGE_ITEM,
        APP_CHARGE_ITEM_OK,
        APP_DATA_OK,
        APP_DOWNLOADING,
        APP_ERROR,
        APP_MEMBERSHIP,
        APP_MEMBERSHIP_OK,
        APP_LGU_SMSAUTHN_UMBER_REQ,
        APP_LGU_SMSAUTHN_UMBER_REQ_OK,
        APP_LGU_SMSAUTH_REQ,
        APP_LGU_SMSAUTH_REQ_OK,
        APP_IMEI_AUTH_NOT_REQUIRED,
        APP_IMEI_AUTH_POPUP,
        APP_IMEI_AUTH_REQ,
        APP_OCBCARD_UPDATE_REQ,
        APP_OCBCARD_UPDATE_REQ_OK,
        APP_OCBPOINTINFO_REQ,
        APP_OCBPOINTINFO_REQ_OK,
        APP_CULTURELAND_CASH_REQ,
        APP_CULTURELAND_CASH_REQ_OK,
        APP_DOTORI_SMSAUTH_NUMBER_REQ,
        APP_DOTORI_SMSAUTH_NUMBER_REQ_OK,
        APP_DOTORI_SMSAUTH_REQ,
        APP_DOTORI_SMSAUTH_REQ_OK,
        APP_MAX;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static NETWORK_RESULT_TYPE[] valuesCustom() {
            NETWORK_RESULT_TYPE[] network_result_typeArrValuesCustom = values();
            int length = network_result_typeArrValuesCustom.length;
            NETWORK_RESULT_TYPE[] network_result_typeArr = new NETWORK_RESULT_TYPE[length];
            System.arraycopy(network_result_typeArrValuesCustom, 0, network_result_typeArr, 0, length);
            return network_result_typeArr;
        }
    }

    public IAPBase(Context ctx, Handler handler, IAPLibSetting setting, String mdn) {
        this.mNetworkHandler = null;
        this.BP_SERVER_IP = null;
        this.BP_SERVER_PORT = 0;
        this.APPLICATION_ID = GameView.CHARACTER_AI;
        this.MDN = GameView.CHARACTER_AI;
        this.mContext = null;
        this.mExecutorService = null;
        this.mContext = ctx;
        this.mNetworkHandler = handler;
        this.APPLICATION_ID = setting.AppID;
        this.BP_SERVER_IP = setting.BP_IP;
        this.BP_SERVER_PORT = setting.BP_Port;
        this.MDN = mdn;
        this.mExecutorService = Executors.newFixedThreadPool(5);
    }

    public InitConfirm getInitConfirmMessage() {
        return this.initCfm;
    }

    public ItemInfoConfirm getItemInfoConfirmMessage() {
        return itemInfoConfirm;
    }

    public ItemUseConfirm getItemUseConfirmMessage() {
        return this.itemUseConfirm;
    }

    public ItemWholeAuthConfirm getItemWholeAuthConfirmMessage() {
        return this.itemWholeAuthConfirm;
    }

    public LGUSmsAuthNumberConfirm getLGUSmsAuthNumberConfirmMessage() {
        return this.lguSmsAuthNumberConfirm;
    }

    public void setBaseEncodeJuminNumber(String jumin) {
        this.mEncJuminNumer = jumin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void SendMessageToNetwork(int messageID, Object obj) {
        Message messageH = this.mNetworkHandler.obtainMessage(messageID, obj);
        messageH.arg1 = this.subErrorCode;
        this.mNetworkHandler.sendMessage(messageH);
    }

    public void Reset() {
        if (this.mExecutorService.isShutdown()) {
            this.mExecutorService = Executors.newFixedThreadPool(5);
        }
    }

    public void StopService() {
        if (this.mExecutorService != null) {
            this.mExecutorService.shutdown();
        }
    }

    public static void close() {
        IAPNet.iapClose(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean resultProc(MsgConfirm result) {
        if (result.getResultCode() != 0) {
            CommonF.LOGGER.e("IAPNet", "[ DEBUG ]  Network ErrorCode :" + ((int) result.getResultCode()));
            try {
                this.subErrorCode = result.getResultCode();
                if (result.getMsg() != null) {
                    this.errMsg = new String(result.getMsg(), "MS949");
                    CommonF.LOGGER.i("flybbird", "Network Message :" + this.errMsg);
                } else if (result.GetUserMessage() != null) {
                    this.errMsg = result.GetUserMessage();
                } else if (result.GetDumpMessage() != null) {
                    this.errMsg = result.GetDumpMessage();
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            this.mNetworkState = NETWORK_RESULT_TYPE.APP_ERROR;
            return false;
        }
        this.subErrorCode = 0;
        return true;
    }

    public void ItemInfo(int pTelecom, String pMdn, String PID, String PNAME, String pTID, String pBPInfo) {
        this.MDN = pMdn;
        this.mExecutorService.submit(new CallItemInfo(this, pTelecom, PID, PNAME, pTID, pBPInfo));
    }

    private class CallItemInfo implements Callable<Boolean> {
        private String pBPInfo;
        private String pID;
        private String pName;
        private String pTID;
        private int pTelecom;

        public CallItemInfo(IAPBase iAPBase, int telecom, String productID, String productName, String pTID, String pBPInfo) {
            this(productID, productName);
            this.pTelecom = telecom;
            this.pTID = pTID;
            this.pBPInfo = pBPInfo;
        }

        public CallItemInfo(String productID, String productName) {
            this.pTelecom = 0;
            this.pID = null;
            this.pName = null;
            this.pTID = null;
            this.pBPInfo = null;
            this.pID = productID;
            this.pName = productName;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, null, this.pTID)) {
                IAPBase.mPID = this.pID;
                IAPBase.mPName = this.pName;
                IAPBase.MPTID = this.pTID;
                IAPBase.mPBPInfo = this.pBPInfo;
                IAPBase.this.msgConfirm = IAPNet.iapSendISImeiAuthReq(IAPBase.this.MDN);
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    if (IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    } else {
                        if (IAPBase.this.subErrorCode == 1) {
                            IAPBase.this.msgConfirm = null;
                            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                            if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                                IAPBase.this.msgConfirm = null;
                                IAPBase.this.msgConfirm = IAPNet.iapSendDiscountInfoQuery(null, null, null, null, null, null, 0, 0, 0, 0);
                                if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                                    IAPBase.this.msgConfirm = null;
                                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_VALID_USER;
                                    IAPBase.this.msgConfirm = IAPNet.iapSendItemQuery(this.pID, this.pName, this.pTID, this.pBPInfo);
                                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM;
                                    if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                                        IAPBase.sellerInfoConfirm = IAPNet.iapSendSellerInfoReq(IAPBase.mPID);
                                        if (IAPBase.this.resultProc(IAPBase.sellerInfoConfirm) || IAPBase.this.subErrorCode == 3) {
                                            IAPLib.setSellerInfo(IAPBase.sellerInfoConfirm);
                                            IAPBase.itemInfoConfirm = IAPNet.iapSendItemInfoQuery(this.pID);
                                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM;
                                            if (!IAPBase.this.resultProc(IAPBase.itemInfoConfirm)) {
                                                if (IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                                                    IAPBase.this.subErrorCode = 0;
                                                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                                                } else {
                                                    if (IAPBase.this.subErrorCode == 7) {
                                                        CommonF.LOGGER.e(IAPBase.TAG, "정식판 전환용 - subErrorCode : " + IAPBase.this.subErrorCode);
                                                        IAPBase.itemInfoConfirm.setmFinalVersionCheck(false);
                                                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_FINAL_VERSION_CHECK;
                                                        IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_FINAL_VERSION_CHECK, IAPBase.itemInfoConfirm);
                                                        return false;
                                                    }
                                                    if (IAPBase.this.subErrorCode == 8) {
                                                        IAPBase.itemInfoConfirm.setmAutoPurchaseCheck(true);
                                                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_AUTOMATIC_PAYMENT;
                                                        IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMINFO_FINISH, IAPBase.itemInfoConfirm);
                                                        return false;
                                                    }
                                                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMINFO, IAPBase.this.errMsg);
                                                }
                                                return false;
                                            }
                                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM_OK;
                                            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMINFO_FINISH, IAPBase.itemInfoConfirm);
                                            return true;
                                        }
                                        if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                                            IAPBase.this.SendMessageToNetwork(2024, IAPBase.this.errMsg);
                                            CommonF.LOGGER.i(IAPBase.TAG, IAPBase.this.errMsg);
                                        } else {
                                            IAPBase.this.subErrorCode = 0;
                                            IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                                        }
                                        return false;
                                    }
                                    if (IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                                        IAPBase.this.subErrorCode = 0;
                                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                                    } else {
                                        if (IAPBase.this.subErrorCode == 1) {
                                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_USER_CERTI_FAIL;
                                            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_USER_CERTI_FAIL, null);
                                            return false;
                                        }
                                        if (IAPBase.this.subErrorCode != 6 && IAPBase.this.subErrorCode != 7) {
                                            IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMQUERY, IAPBase.this.errMsg);
                                        } else {
                                            CommonF.LOGGER.e(IAPBase.TAG, "subErrorCode: " + IAPBase.this.subErrorCode);
                                            IAPBase.mLimitExcessFlag = true;
                                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_LIMIT_EXCESS;
                                            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_LIMIT_EXCESS, IAPBase.this.errMsg);
                                            return false;
                                        }
                                    }
                                    return false;
                                }
                                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_DISCOUNT_REQ, IAPBase.this.errMsg);
                                } else {
                                    CommonF.LOGGER.e(IAPBase.TAG, "subErrorCode: " + IAPBase.this.subErrorCode);
                                    IAPBase.this.subErrorCode = 0;
                                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_PAYMENTTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                                }
                                return false;
                            }
                            if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                            } else {
                                IAPBase.this.subErrorCode = 0;
                                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                            }
                            return false;
                        }
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_IMEI_AUTH, IAPBase.this.errMsg);
                    }
                    return false;
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_IMEI_AUTH_POPUP;
                IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_IMEI_AUTH_POPUP, null);
                return true;
            }
            return false;
        }
    }

    public void reItemInfo(int pTelecom, String pMdn, String PID, String PNAME, String pTID, String pBPInfo) {
        this.MDN = pMdn;
        this.mExecutorService.submit(new reCallItemInfo(this, pTelecom, PID, PNAME, pTID, pBPInfo));
    }

    private class reCallItemInfo implements Callable<Boolean> {
        private String pBPInfo;
        private String pID;
        private String pName;
        private String pTID;
        private int pTelecom;

        public reCallItemInfo(IAPBase iAPBase, int telecom, String productID, String productName, String pTID, String pBPInfo) {
            this(productID, productName);
            this.pTelecom = telecom;
            this.pTID = pTID;
            this.pBPInfo = pBPInfo;
        }

        public reCallItemInfo(String productID, String productName) {
            this.pTelecom = 0;
            this.pID = null;
            this.pName = null;
            this.pTID = null;
            this.pBPInfo = null;
            this.pID = productID;
            this.pName = productName;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, null, this.pTID)) {
                IAPBase.this.msgConfirm = null;
                IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    IAPBase.sellerInfoConfirm = IAPNet.iapSendSellerInfoReq(IAPBase.mPID);
                    if (IAPBase.this.resultProc(IAPBase.sellerInfoConfirm) || IAPBase.this.subErrorCode == 3) {
                        IAPLib.setSellerInfo(IAPBase.sellerInfoConfirm);
                        IAPBase.itemInfoConfirm = IAPNet.iapSendItemInfoQuery(this.pID);
                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM;
                        if (!IAPBase.this.resultProc(IAPBase.itemInfoConfirm)) {
                            if (IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                                IAPBase.this.subErrorCode = 0;
                                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                            } else {
                                if (IAPBase.this.subErrorCode == 7) {
                                    CommonF.LOGGER.e(IAPBase.TAG, "정식판 전환용 - subErrorCode : " + IAPBase.this.subErrorCode);
                                    IAPBase.itemInfoConfirm.setmFinalVersionCheck(false);
                                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_FINAL_VERSION_CHECK;
                                    IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_FINAL_VERSION_CHECK, IAPBase.itemInfoConfirm);
                                    return false;
                                }
                                if (IAPBase.this.subErrorCode == 8) {
                                    IAPBase.itemInfoConfirm.setmAutoPurchaseCheck(true);
                                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_AUTOMATIC_PAYMENT;
                                    IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMINFO_FINISH, IAPBase.itemInfoConfirm);
                                    return false;
                                }
                                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMINFO, IAPBase.this.errMsg);
                            }
                            return false;
                        }
                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM_OK;
                        IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMINFO_FINISH, IAPBase.itemInfoConfirm);
                        return true;
                    }
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(2024, IAPBase.this.errMsg);
                        CommonF.LOGGER.i(IAPBase.TAG, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            return false;
        }
    }

    public void CalliapSendImeiAuthReq(int telecom, String mdn) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CalliapSendImeiAuthReq(telecom));
    }

    private class CalliapSendImeiAuthReq implements Callable<Boolean> {
        private int pTelecom;

        public CalliapSendImeiAuthReq(int telecom) {
            this.pTelecom = 0;
            this.pTelecom = telecom;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, IAPBase.MPTID)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendImeiAuthReq(IAPBase.this.MDN);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_IMEI_AUTH_REQ;
            CommonF.LOGGER.i(IAPBase.TAG, "Call iapSendImeiAuthReq Function ");
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_IMEI_AUTH_REQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                IAPBase.this.msgConfirm = null;
                IAPBase.this.msgConfirm = IAPNet.iapSendDiscountInfoQuery(null, null, null, null, null, null, 0, 0, 0, 0);
                if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    IAPBase.this.msgConfirm = null;
                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_VALID_USER;
                    IAPBase.this.msgConfirm = IAPNet.iapSendItemQuery(IAPBase.mPID, IAPBase.mPName, IAPBase.MPTID, IAPBase.mPBPInfo);
                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM;
                    if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                        IAPBase.sellerInfoConfirm = IAPNet.iapSendSellerInfoReq(IAPBase.mPID);
                        if (IAPBase.this.resultProc(IAPBase.sellerInfoConfirm) || IAPBase.this.subErrorCode == 3) {
                            IAPLib.setSellerInfo(IAPBase.sellerInfoConfirm);
                            IAPBase.itemInfoConfirm = IAPNet.iapSendItemInfoQuery(IAPBase.mPID);
                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM;
                            if (!IAPBase.this.resultProc(IAPBase.itemInfoConfirm)) {
                                if (IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                                    IAPBase.this.subErrorCode = 0;
                                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                                } else {
                                    if (IAPBase.this.subErrorCode == 7) {
                                        CommonF.LOGGER.e(IAPBase.TAG, "정식판 전환용 - subErrorCode : " + IAPBase.this.subErrorCode);
                                        IAPBase.itemInfoConfirm.setmFinalVersionCheck(false);
                                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_FINAL_VERSION_CHECK;
                                        IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_FINAL_VERSION_CHECK, IAPBase.itemInfoConfirm);
                                        return false;
                                    }
                                    if (IAPBase.this.subErrorCode == 8) {
                                        IAPBase.itemInfoConfirm.setmAutoPurchaseCheck(true);
                                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_AUTOMATIC_PAYMENT;
                                        IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMINFO_FINISH, IAPBase.itemInfoConfirm);
                                        return false;
                                    }
                                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMINFO, null);
                                }
                                return false;
                            }
                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM_OK;
                            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMINFO_FINISH, IAPBase.itemInfoConfirm);
                            return true;
                        }
                        if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                            IAPBase.this.SendMessageToNetwork(2024, IAPBase.this.errMsg);
                            CommonF.LOGGER.i(IAPBase.TAG, IAPBase.this.errMsg);
                        } else {
                            IAPBase.this.subErrorCode = 0;
                            IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                        }
                        return false;
                    }
                    if (IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    } else {
                        if (IAPBase.this.subErrorCode == 1) {
                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_USER_CERTI_FAIL;
                            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_USER_CERTI_FAIL, null);
                            return false;
                        }
                        if (IAPBase.this.subErrorCode != 6 && IAPBase.this.subErrorCode != 7) {
                            IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMQUERY, IAPBase.this.errMsg);
                        } else {
                            CommonF.LOGGER.e(IAPBase.TAG, "subErrorCode: " + IAPBase.this.subErrorCode);
                            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_LIMIT_EXCESS;
                            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_LIMIT_EXCESS, IAPBase.this.errMsg);
                            return false;
                        }
                    }
                    return false;
                }
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_DISCOUNT_REQ, IAPBase.this.errMsg);
                } else {
                    CommonF.LOGGER.e(IAPBase.TAG, "subErrorCode: " + IAPBase.this.subErrorCode);
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_PAYMENTTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
            } else {
                IAPBase.this.subErrorCode = 0;
                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
            }
            return false;
        }
    }

    public void ItemQuery(String PID, String PName) {
        this.mExecutorService.submit(new CallItemQuery(PID, PName));
    }

    public void ItemQuery(int telecom, String mdn, String PID, String PName, String PTID, String pBPInfo, String pCultureLandId, int ocbUse, int dotoriUse, int cultureUse, int tcashUse) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CallItemQuery(this, telecom, PID, PName, PTID, pBPInfo, pCultureLandId, ocbUse, dotoriUse, cultureUse, tcashUse));
    }

    private class CallItemQuery implements Callable<Boolean> {
        private String pBPInfo;
        private String pCultureId;
        private int pCultureUse;
        private int pDotoriUse;
        private String pID;
        private String pName;
        private int pOcbUse;
        private String pTID;
        private int pTcashUse;
        private int pTelecom;

        public CallItemQuery(String productID, String productName) {
            this.pTelecom = 0;
            this.pID = null;
            this.pName = null;
            this.pTID = null;
            this.pBPInfo = null;
            this.pCultureId = null;
            this.pOcbUse = 0;
            this.pDotoriUse = 0;
            this.pCultureUse = 0;
            this.pTcashUse = 0;
            this.pID = productID;
            this.pName = productName;
        }

        public CallItemQuery(IAPBase iAPBase, int telecom, String productID, String productName, String pTID, String pBPInfo, String pCultrueId, int ocb, int dotori, int culture, int tcash) {
            this(productID, productName);
            this.pTelecom = telecom;
            this.pTID = pTID;
            this.pBPInfo = pBPInfo;
            this.pCultureId = pCultrueId;
            this.pOcbUse = ocb;
            this.pDotoriUse = dotori;
            this.pCultureUse = culture;
            this.pTcashUse = tcash;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, null, this.pTID)) {
                IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    IAPBase.this.msgConfirm = null;
                    IAPBase.this.msgConfirm = IAPNet.iapSendDiscountInfoQuery(IAPBase.itemInfoConfirm, IAPBase.cultureLandCashConfirm, IAPBase.oKCashbagPointInfoConfirm, IAPBase.itemInfoConfirm.getmOCBCardNum(), IAPBase.mOCBPWNum, this.pCultureId, this.pOcbUse, this.pDotoriUse, this.pCultureUse, this.pTcashUse);
                    if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                        IAPBase.this.msgConfirm = null;
                        IAPBase.this.msgConfirm = IAPNet.iapSendItemQuery(this.pID, this.pName, this.pTID, this.pBPInfo);
                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM;
                        if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                            if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                                if (IAPBase.mLimitExcessFlag && (IAPBase.this.subErrorCode == 6 || IAPBase.this.subErrorCode == 7)) {
                                    IAPBase.mLimitExcessFlag = false;
                                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM_OK;
                                    IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMQUERY_FINISH, null);
                                } else {
                                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMQUERY, IAPBase.this.errMsg);
                                }
                            } else {
                                IAPBase.this.subErrorCode = 0;
                                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                            }
                            return false;
                        }
                        IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_QUERY_ITEM_OK;
                        IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMQUERY_FINISH, null);
                        return true;
                    }
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_DISCOUNT_REQ, IAPBase.this.errMsg);
                    } else {
                        CommonF.LOGGER.e(IAPBase.TAG, "subErrorCode: " + IAPBase.this.subErrorCode);
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_PAYMENTTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            return false;
        }
    }

    public void ItemPurchase(String PID, String PNAME, Boolean TCASH) {
        this.mExecutorService.submit(new CallItemPurchase(PID, PNAME, TCASH));
    }

    public void ItemPurchase(String PID, String PNAME, String TID, String BPINFO, Boolean TCASH) {
        this.mExecutorService.submit(new CallItemPurchase(this, PID, PNAME, TCASH, TID, BPINFO));
    }

    public void ItemPurchase(String PID, String PNAME, String TID, String BPINFO, Boolean TCASH, Boolean useBPProtocol) {
        this.mExecutorService.submit(new CallItemPurchase(this, PID, PNAME, TCASH, TID, BPINFO, useBPProtocol));
    }

    private class CallItemPurchase implements Callable<Boolean> {
        private String TID;
        private Boolean bTCash;
        private Boolean bUseBPProtocl;
        private String pBPInfo;
        private String pID;
        private String pName;

        public CallItemPurchase(String productID, String productName, Boolean TCash) {
            this.pID = null;
            this.pName = null;
            this.bTCash = false;
            this.TID = null;
            this.pBPInfo = null;
            this.bUseBPProtocl = false;
            this.pID = productID;
            this.pName = productName;
            this.bTCash = TCash;
        }

        public CallItemPurchase(IAPBase iAPBase, String productID, String productName, Boolean TCash, String TID, String BPINFO) {
            this(productID, productName, TCash);
            this.TID = TID;
            this.pBPInfo = BPINFO;
        }

        public CallItemPurchase(IAPBase iAPBase, String productID, String productName, Boolean TCash, String TID, String BPINFO, Boolean useProtocol) {
            this(productID, productName, TCash);
            this.TID = TID;
            this.pBPInfo = BPINFO;
            this.bUseBPProtocl = useProtocol;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID == null) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendItemPurchase(this.pID, this.pName, this.bTCash, this.TID, this.pBPInfo, this.bUseBPProtocl);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM;
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMPURCHASE, IAPBase.this.errMsg);
                } else {
                    CommonF.LOGGER.e(IAPBase.TAG, "subErrorCode: " + IAPBase.this.subErrorCode);
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_PAYMENTTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM_OK;
            IAPLib.setOTPPurchaseSuccess(true);
            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_PURCHASE_FINISH, IAPBase.this.msgConfirm);
            return true;
        }
    }

    public void ItemPurchaseDanal(String mdn, String pID, String pName, int pCarrier, String TID, String BPInfo, Boolean bTCash, String encJumin) {
        this.mExecutorService.submit(new CallItemPurchaseDanal(mdn, pID, pName, pCarrier, TID, BPInfo, bTCash.booleanValue(), encJumin));
    }

    private class CallItemPurchaseDanal implements Callable<Boolean> {
        private boolean bUseTcash;
        private String pBPInfo;
        private int pCarrier;
        private String pEncJumin;
        private String pID;
        private String pMdn;
        private String pName;
        private String pTID;

        public CallItemPurchaseDanal(String mdn, String id, String name, int carrier, String tid, String bpInfo, boolean TCash, String encJumin) {
            this.pMdn = null;
            this.pID = null;
            this.pName = null;
            this.pCarrier = -1;
            this.pTID = null;
            this.pBPInfo = null;
            this.bUseTcash = false;
            this.pEncJumin = null;
            this.pMdn = mdn;
            this.pID = id;
            this.pName = name;
            this.pCarrier = carrier;
            this.pTID = tid;
            this.pBPInfo = bpInfo;
            this.bUseTcash = TCash;
            this.pEncJumin = encJumin;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null) {
                IAPBase.this.msgConfirm = null;
                if (this.pCarrier == 2) {
                    IAPBase.this.msgConfirm = IAPNet.ReIapSendItemPurchaseByDanal(this.pMdn, this.pID, this.pName, this.pCarrier, this.pTID, this.pBPInfo, this.bUseTcash, this.pEncJumin);
                } else if (this.pCarrier == 3) {
                    IAPBase.this.msgConfirm = IAPNet.LguIapSendItemPurchaseByDanal(this.pMdn, this.pID, this.pName, this.pCarrier, this.pTID, this.pBPInfo, this.bUseTcash, this.pEncJumin);
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM;
                IAPLib.setSmsAuthNumberKey(null);
                IAPLib.setSmsAuthKey(null);
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_ITEMPURCHASE, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_PAYMENTTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM_OK;
                IAPLib.setOTPPurchaseSuccess(true);
                IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_PURCHASE_FINISH, IAPBase.this.msgConfirm);
                return true;
            }
            return false;
        }
    }

    public void OCBCardUpdate(int telecom, String updateType, String OCBCardNum) {
        this.OCBCARDNUM = OCBCardNum;
        this.mExecutorService.submit(new CallOCBCardUpdate(telecom, updateType, OCBCardNum));
    }

    private class CallOCBCardUpdate implements Callable<Boolean> {
        private String pOCBCardNum;
        private int pTelecom;
        private String pUpdateType;

        public CallOCBCardUpdate(int telecom_Type, String update_Type, String card_num) {
            this.pTelecom = 0;
            this.pUpdateType = null;
            this.pOCBCardNum = null;
            this.pTelecom = telecom_Type;
            this.pUpdateType = update_Type;
            this.pOCBCardNum = card_num;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendOCBCardUpdateQuery(this.pUpdateType, this.pOCBCardNum);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_OCBCARD_UPDATE_REQ;
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_OCBCARDUPDATE, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_OCBCARD_UPDATE_REQ_OK;
            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_OCB_CARD_UPDATE_REQ_OK, null);
            return true;
        }
    }

    public void OCBPointInfo(int telecom, String OCBPWNumber) {
        this.mExecutorService.submit(new CallOCBPointInfo(telecom, OCBPWNumber));
    }

    private class CallOCBPointInfo implements Callable<Boolean> {
        private int pTelecom;

        public CallOCBPointInfo(int telecom_Type, String OCB_PWNum) {
            this.pTelecom = 0;
            this.pTelecom = telecom_Type;
            IAPBase.mOCBPWNum = OCB_PWNum;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            CommonF.LOGGER.i(IAPBase.TAG, IAPBase.itemInfoConfirm.getmOCBCardNum());
            IAPBase.oKCashbagPointInfoConfirm = IAPNet.iapSendOCBPointInfoQuery(IAPBase.itemInfoConfirm.getmOCBCardNum(), IAPBase.mOCBPWNum);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_OCBCARD_UPDATE_REQ;
            if (!IAPBase.this.resultProc(IAPBase.oKCashbagPointInfoConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_OCBPOINTINFO, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_OCBPOINTINFO_REQ;
            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_OCB_OCBPOINTINFO_REQ_OK, IAPBase.oKCashbagPointInfoConfirm);
            return true;
        }
    }

    public void CultureLandCashInfo(int telecom, String cultureLandID, String cultureLandPW) {
        this.CultureLand_ID = cultureLandID;
        this.mExecutorService.submit(new CallCultureLandCashInfo(telecom, cultureLandID, cultureLandPW));
    }

    private class CallCultureLandCashInfo implements Callable<Boolean> {
        private String pCultureLandID;
        private String pCultureLandPW;
        private int pTelecom;

        public CallCultureLandCashInfo(int telecom_Type, String cultureLand_ID, String cultureLand_PW) {
            this.pTelecom = 0;
            this.pCultureLandID = null;
            this.pCultureLandPW = null;
            this.pTelecom = telecom_Type;
            this.pCultureLandID = cultureLand_ID;
            this.pCultureLandPW = cultureLand_PW;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                IAPBase.cultureLandCashConfirm = IAPNet.iapSendCultureLandCashInfoQuery(IAPBase.mPID, this.pCultureLandID, this.pCultureLandPW);
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CULTURELAND_CASH_REQ;
                if (!IAPBase.this.resultProc(IAPBase.cultureLandCashConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_CULTURELANDCASHINFO, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CULTURELAND_CASH_REQ_OK;
                IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_CULTURELAND_CASH_REQ_OK, IAPBase.cultureLandCashConfirm);
                return true;
            }
            if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
            } else {
                IAPBase.this.subErrorCode = 0;
                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
            }
            return false;
        }
    }

    public void DotoriSMSAuthNumber(int telecom, String mdn) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CallDotoriSmsAuthNumberInfo(telecom));
    }

    private class CallDotoriSmsAuthNumberInfo implements Callable<Boolean> {
        private int pTelecom;

        public CallDotoriSmsAuthNumberInfo(int telecom) {
            this.pTelecom = 0;
            this.pTelecom = telecom;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                IAPBase.dotoriSmsAuthConfirm = IAPNet.iapSendDotoriSmsAuthNumberInfoQuery(IAPBase.this.MDN, this.pTelecom, IAPBase.mPID);
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_DOTORI_SMSAUTH_NUMBER_REQ;
                if (!IAPBase.this.resultProc(IAPBase.dotoriSmsAuthConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_DOTORISMSAUTHNUMBER, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_DOTORI_SMSAUTH_REQ_OK;
                IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_DOTORI_SMSAUTH_NUMBER_REQ_OK, null);
                return true;
            }
            if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
            } else {
                IAPBase.this.subErrorCode = 0;
                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
            }
            return false;
        }
    }

    public void DotoriSmsAuth(int telecom, String mdn, String userCode) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CallDotoriSmsAuthInfo(telecom, userCode));
    }

    private class CallDotoriSmsAuthInfo implements Callable<Boolean> {
        private String pMobileSign;
        private String pSignData;
        private int pTelecom;
        private String pUserCode;

        public CallDotoriSmsAuthInfo(int telecom, String userCode) {
            this.pTelecom = 0;
            this.pUserCode = null;
            this.pMobileSign = null;
            this.pSignData = null;
            this.pTelecom = telecom;
            this.pUserCode = userCode;
            this.pMobileSign = IAPBase.dotoriSmsAuthConfirm.getMobileSign();
            this.pSignData = IAPBase.dotoriSmsAuthConfirm.getSignData();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendDotoriSmsAuthInfoQuery(IAPBase.this.MDN, this.pUserCode, this.pMobileSign, this.pSignData, IAPBase.mPID);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_DOTORI_SMSAUTH_NUMBER_REQ;
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_DOTORISMSAUTH, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_DOTORI_SMSAUTH_REQ_OK;
            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_DOTORI_SMSAUTH_REQ_OK, null);
            return true;
        }
    }

    public void ItemWholeAuth(int telecom, String mdn) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CallItemWholeAuth(telecom));
    }

    private class CallItemWholeAuth implements Callable<Boolean> {
        private int pTelecom;

        public CallItemWholeAuth(int telecom) {
            this.pTelecom = 0;
            this.pTelecom = telecom;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.itemWholeAuthConfirm = IAPNet.iapSendItemWholeAuth();
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM;
            if (!IAPBase.this.resultProc(IAPBase.this.itemWholeAuthConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_WHOLEQUERY, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM_OK;
            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_WHOLEQUERY_FINISH, null);
            return true;
        }
    }

    public void ItemUse(int telecom, String mdn, String PID) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CallItemItemUse(telecom, PID));
    }

    private class CallItemItemUse implements Callable<Boolean> {
        private String pID;
        private int pTelecom;

        public CallItemItemUse(int telecom, String productID) {
            this.pID = null;
            this.pTelecom = 0;
            this.pTelecom = telecom;
            this.pID = productID;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, null, null)) {
                IAPBase.this.msgConfirm = null;
                IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.itemUseConfirm = IAPNet.iapSendItemUse(this.pID);
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM;
                CommonF.LOGGER.i(IAPBase.TAG, "CallItemItemUse Function ");
                if (!IAPBase.this.resultProc(IAPBase.this.itemUseConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_USEQUERY, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM_OK;
                IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMUSE_FINISH, null);
                return true;
            }
            return false;
        }
    }

    public void ItemAuth(int telecom, String mdn, String pID) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CallItemAuth(telecom, pID));
    }

    private class CallItemAuth implements Callable<Boolean> {
        private String pID;
        private int pTelecom;

        public CallItemAuth(int telecom, String productID) {
            this.pID = null;
            this.pTelecom = 0;
            this.pTelecom = telecom;
            this.pID = productID;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, this.pID, null)) {
                IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                if (IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_ITEMAUTH_FINISH, null);
                    return true;
                }
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            return false;
        }
    }

    public byte[] sendBPData(byte[] data, int telecom, String mdn) {
        byte[] returnData = (byte[]) null;
        this.MDN = mdn;
        Future<byte[]> service = this.mExecutorService.submit(new CallSendBPData(data, telecom));
        try {
            return service.get();
        } catch (InterruptedException e) {
            SendMessageToNetwork(IAPLib.HND_ERR_DATA, null);
            e.printStackTrace();
            return returnData;
        } catch (ExecutionException e2) {
            SendMessageToNetwork(IAPLib.HND_ERR_DATA, null);
            e2.printStackTrace();
            return returnData;
        }
    }

    private class CallSendBPData implements Callable<byte[]> {
        private byte[] mData;
        private int mTelecom;

        public CallSendBPData(byte[] data, int telecom) {
            this.mData = null;
            this.mTelecom = 0;
            this.mData = data;
            this.mTelecom = telecom;
        }

        @Override // java.util.concurrent.Callable
        public byte[] call() throws Exception {
            InitConfirm init;
            ConnectivityManager connectivityManager = (ConnectivityManager) IAPBase.this.mContext.getSystemService("connectivity");
            NetworkInfo mobile = connectivityManager.getNetworkInfo(0);
            NetworkInfo wifi = connectivityManager.getNetworkInfo(1);
            if (wifi.isConnected()) {
                IAPBase.this.isWifi = true;
            } else if (mobile.isConnected()) {
                IAPBase.this.isWifi = false;
            } else {
                IAPBase.this.subErrorCode = -1;
                IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_AUTH, CommonString.getString(CommonString.Index.ERROR_INTERNET_ACCESS_STRING));
                return null;
            }
            CommonF.LOGGER.i(IAPBase.TAG, "CallSendBPData Start!!  WifiEnable = " + IAPBase.this.isWifi);
            if (IAPBase.this.isWifi) {
                IAPNet.setWifi(true);
                init = IAPNet.iapConnect(new ServerInfo(Defines.IAP_GW_IP, Defines.IAP_WIFI_PORT), this.mTelecom, IAPBase.this.APPLICATION_ID, IAPBase.this.MDN, IAPBase.this.BP_SERVER_IP, IAPBase.this.BP_SERVER_PORT, null, null, null, true, IAPBase.this.mContext);
            } else {
                IAPNet.setWifi(false);
                init = IAPNet.iapConnectBP(new ServerInfo(Defines.IAP_GW_IP, Defines.IAP_BPDATA_PORT), this.mTelecom, IAPBase.this.APPLICATION_ID, IAPBase.this.MDN, IAPBase.this.BP_SERVER_IP, IAPBase.this.BP_SERVER_PORT);
            }
            if (init == null) {
                return null;
            }
            if (!IAPBase.this.isWifi) {
                if (!IAPBase.this.resultProc(init)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_AUTH, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return null;
                }
                byte[] returnData = IAPNet.iapSendDataBP(this.mData);
                IAPNet.iapCloseBP(true);
                return returnData;
            }
            byte[] returnData2 = IAPNet.iapSendData(this.mData);
            return returnData2;
        }
    }

    public void Membership(int telecom, String pMdn, String PID, String PNAME, String pTID, String pBPInfo) {
        this.MDN = pMdn;
        this.mExecutorService.submit(new CallMembership(telecom, pMdn, PID, PNAME, pTID, pBPInfo));
    }

    private class CallMembership implements Callable<Boolean> {
        private String pBPInfo;
        private String pID;
        private String pMdn;
        private String pName;
        private String pTID;
        private int pTelecom;

        public CallMembership(int telecom, String mdn, String productID, String productName, String pTID, String pBPInfo) {
            this.pTelecom = 0;
            this.pMdn = null;
            this.pID = null;
            this.pName = null;
            this.pTID = null;
            this.pBPInfo = null;
            this.pTelecom = telecom;
            this.pMdn = mdn;
            this.pID = productID;
            this.pName = productName;
            this.pTID = pTID;
            this.pBPInfo = pBPInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, null, null)) {
                IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.msgConfirm = IAPNet.iapSendDataMembership(this.pTelecom, this.pMdn);
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_MEMBERSHIP;
                CommonF.LOGGER.i(IAPBase.TAG, "CallItemMembership Function ");
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    CommonF.LOGGER.e(IAPBase.TAG, "subErrorCode: " + IAPBase.this.subErrorCode);
                    if (IAPBase.this.subErrorCode == -1 || IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    } else if (IAPBase.this.subErrorCode == 11) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_MEMBERSHIP, "시스템 점검 중입니다. 잠시 후 이용해주세요.");
                    } else {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_MEMBERSHIP, IAPBase.this.errMsg);
                        CommonF.LOGGER.e(IAPBase.TAG, IAPBase.this.errMsg);
                    }
                    return false;
                }
                if (IAPBase.this.subErrorCode == 0) {
                    IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_MEMBERSHIP_OK;
                    IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_JOIN_FINISH_OK, new PurchaseParam(this.pID, this.pName, this.pTID, this.pBPInfo));
                }
                return true;
            }
            return false;
        }
    }

    public void OTPAgreeCheck(int telecom, String mdn, String agree) {
        this.MDN = mdn;
        this.mOTPAgree = agree;
        this.mExecutorService.submit(new OTPAgreeCheck(telecom));
    }

    private class OTPAgreeCheck implements Callable<Boolean> {
        private int pTelecom;

        public OTPAgreeCheck(int telecom) {
            this.pTelecom = 0;
            this.pTelecom = telecom;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendOTPAgreeCheck(IAPBase.this.mOTPAgree);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM;
            CommonF.LOGGER.i(IAPBase.TAG, "CallPurchaseDismiss Function ");
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_PURCHASEDISSMISS, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            return true;
        }
    }

    public void PurchaseDismiss(int telecom, String mdn, String PID) {
        this.MDN = mdn;
        this.mExecutorService.submit(new CallPurchaseDismiss(telecom, PID));
    }

    private class CallPurchaseDismiss implements Callable<Boolean> {
        private String pID;
        private int pTelecom;

        public CallPurchaseDismiss(int telecom, String productID) {
            this.pID = null;
            this.pTelecom = 0;
            this.pTelecom = telecom;
            this.pID = productID;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, null, null)) {
                IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.msgConfirm = IAPNet.iapSendAutoPurchaseDismiss(this.pID);
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM;
                CommonF.LOGGER.i(IAPBase.TAG, "CallPurchaseDismiss Function ");
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_PURCHASEDISSMISS, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_AUTOMATIC_PAYMENT_DISMISS;
                IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_PURCHASE_DISMISS, IAPBase.this.msgConfirm);
                return true;
            }
            return false;
        }
    }

    public void PurchaseDismissCheck(int telecom, String PID) {
        this.mExecutorService.submit(new CallPurchaseDismissCheck(telecom, PID));
    }

    private class CallPurchaseDismissCheck implements Callable<Boolean> {
        private String pID;
        private int pTelecom;

        public CallPurchaseDismissCheck(int telecom, String productID) {
            this.pID = null;
            this.pTelecom = 0;
            this.pTelecom = telecom;
            this.pID = productID;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (this.pID != null && IAPBase.this.connect(this.pTelecom, null, null)) {
                IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
                if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.autoPurchaseDismissCheckConfirm = IAPNet.iapSendAutoPurchaseDismissCheck(this.pID);
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_CHARGE_ITEM;
                CommonF.LOGGER.i(IAPBase.TAG, "CallPurchaseDismissCheck Function ");
                if (!IAPBase.this.resultProc(IAPBase.this.autoPurchaseDismissCheckConfirm)) {
                    if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                        IAPBase.this.SendMessageToNetwork(2024, IAPBase.this.errMsg);
                    } else {
                        IAPBase.this.subErrorCode = 0;
                        IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                    }
                    return false;
                }
                IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_AUTOMATIC_PAYMENT_DISMISS_CHECK;
                IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_PURCHASE_DISMISS_CHECK, IAPBase.this.autoPurchaseDismissCheckConfirm);
                return true;
            }
            return false;
        }
    }

    boolean connect(int pTelecom, String pID, String pTID) {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkInfo mobile = connectivityManager.getNetworkInfo(0);
        NetworkInfo wifi = connectivityManager.getNetworkInfo(1);
        if (wifi.isConnected()) {
            this.isWifi = true;
        } else if (mobile.isConnected()) {
            this.isWifi = false;
        } else {
            if (pID == null) {
                this.subErrorCode = -1;
                SendMessageToNetwork(IAPLib.HND_ERR_AUTH, CommonString.getString(CommonString.Index.ERROR_INTERNET_ACCESS_STRING));
            } else {
                SendMessageToNetwork(IAPLib.HND_ERR_ITEMAUTH, null);
            }
            return false;
        }
        CommonF.LOGGER.i(TAG, "(IAPBase) IAPNet Wifi = " + this.isWifi + "  /  Connect= " + IAPNet.isConnect());
        if (!IAPNet.isConnect()) {
            CommonF.LOGGER.i(TAG, "G/W Connect and Success !!! ");
            if (this.isWifi) {
                IAPNet.setWifi(true);
                this.initCfm = IAPNet.iapConnect(new ServerInfo(Defines.IAP_GW_IP, Defines.IAP_WIFI_PORT), pTelecom, this.APPLICATION_ID, this.MDN, this.BP_SERVER_IP, this.BP_SERVER_PORT, pID, pTID, this.mEncJuminNumer, false, this.mContext);
            } else {
                IAPNet.setWifi(false);
                this.initCfm = IAPNet.iapConnect(new ServerInfo(Defines.IAP_GW_IP, Defines.IAP_GW_PORT), pTelecom, this.APPLICATION_ID, this.MDN, this.BP_SERVER_IP, this.BP_SERVER_PORT, pID, pTID, this.mEncJuminNumer, false, this.mContext);
            }
        } else {
            CommonF.LOGGER.i(TAG, "G/W Re Connect + Auth");
            this.initCfm = IAPNet.iapReAuth(pTelecom, this.APPLICATION_ID, this.mEncJuminNumer, this.MDN, this.BP_SERVER_IP, this.BP_SERVER_PORT, pID, pTID);
        }
        if (this.initCfm == null) {
            return false;
        }
        if (!resultProc(this.initCfm)) {
            if (this.subErrorCode == -11 || this.subErrorCode == -12 || this.subErrorCode == -13) {
                this.subErrorCode = 0;
                SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
            } else {
                if (this.subErrorCode == 2) {
                    this.mNetworkState = NETWORK_RESULT_TYPE.APP_SKT_CERTI_FAIL;
                    SendMessageToNetwork(Defines.ACTION_EVENT.HND_SKT_CERTI_FAIL, this.errMsg);
                    return false;
                }
                if (pID == null) {
                    SendMessageToNetwork(IAPLib.HND_ERR_AUTH, this.errMsg);
                } else {
                    SendMessageToNetwork(IAPLib.HND_ERR_ITEMAUTH, this.errMsg);
                }
            }
            return false;
        }
        return true;
    }

    public void LGUSmsAuthNumberReq(int telecom, String mdn, String pID, String encJumin) {
        this.MDN = mdn;
        this.mExecutorService.submit(new LGUSmsAuthNumberReq(telecom, pID, encJumin));
    }

    private class LGUSmsAuthNumberReq implements Callable<Boolean> {
        private String pEncJumin;
        private String pID;
        private int pTelecom;

        public LGUSmsAuthNumberReq(int telecom, String productID, String encJumin) {
            this.pTelecom = 0;
            this.pID = null;
            this.pEncJumin = null;
            this.pTelecom = telecom;
            this.pID = productID;
            this.pEncJumin = encJumin;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.lguSmsAuthNumberConfirm = IAPNet.iapSendLGUSmsAuthNumberReq(this.pID, this.pTelecom, IAPBase.this.MDN, this.pEncJumin);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_LGU_SMSAUTHN_UMBER_REQ;
            CommonF.LOGGER.i(IAPBase.TAG, "Call LGUSmsAuthNumberReq Function ");
            if (!IAPBase.this.resultProc(IAPBase.this.lguSmsAuthNumberConfirm)) {
                if (IAPBase.this.subErrorCode == -11 || IAPBase.this.subErrorCode == -12 || IAPBase.this.subErrorCode == -13) {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                } else if (IAPBase.this.subErrorCode != 15) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_LGU_SMSAUTH_UMBER_REQ, IAPBase.this.errMsg);
                } else {
                    IAPLib.updateEncJuminNumber(null);
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_LGU_SMSAUTH_UMBER_REQ, IAPBase.this.errMsg);
                }
                return false;
            }
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_LGU_SMSAUTHN_UMBER_REQ_OK;
            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_LGU_SMSAUTH_NUMBER_REQ_OK, IAPBase.this.lguSmsAuthNumberConfirm);
            return true;
        }
    }

    public void LGUSmsAuthReq(int telecom, String smsAuthKey, String OTPNumber) {
        this.mExecutorService.submit(new LGUSmsAuthReq(telecom, smsAuthKey, OTPNumber));
    }

    private class LGUSmsAuthReq implements Callable<Boolean> {
        private String pOTPNumber;
        private String pSmsAuthKey;
        private int pTelecom;

        public LGUSmsAuthReq(int telecom, String smsAuthKey, String OTPNumber) {
            this.pTelecom = 0;
            this.pSmsAuthKey = null;
            this.pOTPNumber = null;
            this.pTelecom = telecom;
            this.pSmsAuthKey = smsAuthKey;
            this.pOTPNumber = OTPNumber;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            if (!IAPBase.this.connect(this.pTelecom, null, null)) {
                return false;
            }
            IAPBase.this.msgConfirm = IAPNet.iapSendCommonInfo();
            if (!IAPBase.this.resultProc(IAPBase.this.msgConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_COMMONINFOREQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.lguSmsAuthNumberConfirm = (LGUSmsAuthNumberConfirm) IAPNet.iapSendLGUSmsAuthReq(this.pSmsAuthKey, this.pOTPNumber);
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_LGU_SMSAUTH_REQ;
            CommonF.LOGGER.i(IAPBase.TAG, "Call LGUSmsAuthReq Function ");
            if (!IAPBase.this.resultProc(IAPBase.this.lguSmsAuthNumberConfirm)) {
                if (IAPBase.this.subErrorCode != -11 && IAPBase.this.subErrorCode != -12 && IAPBase.this.subErrorCode != -13) {
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_LGU_SMSAUTH_REQ, IAPBase.this.errMsg);
                } else {
                    IAPBase.this.subErrorCode = 0;
                    IAPBase.this.SendMessageToNetwork(IAPLib.HND_ERR_NORMALTIMEOUT, CommonString.getString(CommonString.Index.ERROR_NETWORK_CONNECT_CHECK_STRING));
                }
                return false;
            }
            IAPBase.this.mNetworkState = NETWORK_RESULT_TYPE.APP_LGU_SMSAUTH_REQ_OK;
            IAPBase.this.SendMessageToNetwork(Defines.ACTION_EVENT.HND_LGU_SMSAUTH_REQ_OK, IAPBase.this.lguSmsAuthNumberConfirm);
            return true;
        }
    }
}
