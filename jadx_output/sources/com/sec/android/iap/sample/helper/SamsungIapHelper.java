package com.sec.android.iap.sample.helper;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.findit.battle.Objects;
import com.findit.battle.R;
import com.findit.battle.finals.LOG;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.sec.android.iap.IAPConnector;
import com.sec.android.iap.sample.vo.ErrorVO;
import com.sec.android.iap.sample.vo.InBoxVO;
import com.sec.android.iap.sample.vo.ItemVO;
import com.sec.android.iap.sample.vo.PurchaseVO;
import com.sec.android.iap.sample.vo.VerificationVO;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class SamsungIapHelper {
    private static final int FLAG_INCLUDE_STOPPED_PACKAGES = 32;
    private static final int HONEYCOMB_MR1 = 12;
    public static final int IAP_ERROR_ALREADY_PURCHASED = -1003;
    public static final int IAP_ERROR_COMMON = -1002;
    public static final int IAP_ERROR_CONFIRM_INBOX = -1006;
    public static final int IAP_ERROR_INITIALIZATION = -1000;
    public static final int IAP_ERROR_NEED_APP_UPGRADE = -1001;
    public static final int IAP_ERROR_NONE = 0;
    public static final int IAP_ERROR_PRODUCT_DOES_NOT_EXIST = -1005;
    public static final int IAP_ERROR_WHILE_RUNNING = -1004;
    public static final int IAP_MODE_COMMERCIAL = 0;
    public static final int IAP_MODE_TEST_FAIL = -1;
    public static final int IAP_MODE_TEST_SUCCESS = 1;
    public static final String IAP_PACKAGE_NAME = "com.sec.android.iap";
    public static final int IAP_PAYMENT_IS_CANCELED = 1;
    public static final int IAP_RESPONSE_RESULT_OK = 0;
    public static final int IAP_RESPONSE_RESULT_UNAVAILABLE = 2;
    public static final String IAP_SERVICE_NAME = "com.sec.android.iap.service.iapService";
    public static final int IAP_SIGNATURE_HASHCODE = 2055122763;
    public static final String ITEM_TYPE_ALL = "10";
    public static final String ITEM_TYPE_CONSUMABLE = "00";
    public static final String ITEM_TYPE_NON_CONSUMABLE = "01";
    public static final String ITEM_TYPE_SUBSCRIPTION = "02";
    public static final String KEY_NAME_ERROR_STRING = "ERROR_STRING";
    public static final String KEY_NAME_IAP_UPGRADE_URL = "IAP_UPGRADE_URL";
    public static final String KEY_NAME_ITEM_GROUP_ID = "ITEM_GROUP_ID";
    public static final String KEY_NAME_ITEM_ID = "ITEM_ID";
    public static final String KEY_NAME_RESULT_LIST = "RESULT_LIST";
    public static final String KEY_NAME_RESULT_OBJECT = "RESULT_OBJECT";
    public static final String KEY_NAME_STATUS_CODE = "STATUS_CODE";
    public static final String KEY_NAME_THIRD_PARTY_NAME = "THIRD_PARTY_NAME";
    public static final int REQUEST_CODE_IS_ACCOUNT_CERTIFICATION = 2;
    public static final int REQUEST_CODE_IS_IAP_PAYMENT = 1;
    private static final int STATE_BINDING = 1;
    private static final int STATE_READY = 2;
    private static final int STATE_TERM = 0;
    private static final String TAG = SamsungIapHelper.class.getSimpleName();
    private static SamsungIapHelper mInstance = null;
    private int mMode = 1;
    private Context mContext = null;
    private ProgressDialog mProgressDialog = null;
    private IAPConnector mIapConnector = null;
    private ServiceConnection mServiceConn = null;
    private InitIapTask mInitIapTask = null;
    private OnInitIapListener mOnInitIapListener = null;
    private GetItemListTask mGetItemListTask = null;
    private OnGetItemListListener mOnGetItemListListener = null;
    private GetInboxListTask mGetInboxListTask = null;
    private OnGetInboxListListener mOnGetInboxListListener = null;
    private VerifyClientToServer mVerifyClientToServer = null;
    private int mState = 0;

    public interface OnGetInboxListListener {
        void OnSucceedGetInboxList(ArrayList<InBoxVO> arrayList);
    }

    public interface OnGetItemListListener {
        void onSucceedGetItemList(ArrayList<ItemVO> arrayList);
    }

    public interface OnIapBindListener {
        void onBindIapFinished(int i);
    }

    public interface OnInitIapListener {
        void onSucceedInitIap();
    }

    public static SamsungIapHelper getInstance(Context _context, int _mode) {
        if (mInstance == null) {
            mInstance = new SamsungIapHelper(_context, _mode);
        } else {
            mInstance.setContextAndMode(_context, _mode);
        }
        return mInstance;
    }

    public void setContextAndMode(Context _context, int _mode) {
        this.mContext = _context.getApplicationContext();
        this.mMode = _mode;
    }

    public SamsungIapHelper(Context _context, int _mode) {
        setContextAndMode(_context, _mode);
    }

    public void setMode(int _mode) {
        this.mMode = _mode;
    }

    public void setOnInitIapListener(OnInitIapListener _onInitIaplistener) {
        this.mOnInitIapListener = _onInitIaplistener;
    }

    public void setOnGetItemListListener(OnGetItemListListener _onGetItemListListener) {
        this.mOnGetItemListListener = _onGetItemListListener;
    }

    public void setOnGetInboxListListener(OnGetInboxListListener _onGetInboxListListener) {
        this.mOnGetInboxListListener = _onGetInboxListListener;
    }

    public void startAccountActivity(Activity _activity) {
        ComponentName com2 = new ComponentName(IAP_PACKAGE_NAME, "com.sec.android.iap.activity.AccountActivity");
        Intent intent = new Intent();
        intent.setComponent(com2);
        _activity.startActivityForResult(intent, 2);
    }

    public void installIapPackage(Activity _activity) {
        Runnable OkBtnRunnable = new Runnable() { // from class: com.sec.android.iap.sample.helper.SamsungIapHelper.1
            @Override // java.lang.Runnable
            public void run() {
                Uri iapDeepLink = Uri.parse("samsungapps://ProductDetail/com.sec.android.iap");
                Intent intent = new Intent();
                intent.setData(iapDeepLink);
                if (Build.VERSION.SDK_INT >= 12) {
                    intent.addFlags(335544352);
                } else {
                    intent.addFlags(335544320);
                }
                SamsungIapHelper.this.mContext.startActivity(intent);
            }
        };
        showIapDialog(_activity, _activity.getString(R.string.in_app_purchase), _activity.getString(R.string.msg_iap_is_not_installed), true, OkBtnRunnable);
    }

    public boolean isInstalledIapPackage(Context _context) {
        PackageManager pm = _context.getPackageManager();
        try {
            pm.getApplicationInfo(IAP_PACKAGE_NAME, Defines.DIALOG_STATE.DLG_CUTURE_QUERY_ERROR);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isValidIapPackage(Context _context) {
        try {
            Signature[] sigs = _context.getPackageManager().getPackageInfo(IAP_PACKAGE_NAME, 64).signatures;
            if (sigs[0].hashCode() == 2055122763) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void bindIapService(final OnIapBindListener _listener) {
        if (this.mState >= 1) {
            if (_listener != null) {
                _listener.onBindIapFinished(0);
            }
        } else {
            this.mServiceConn = new ServiceConnection() { // from class: com.sec.android.iap.sample.helper.SamsungIapHelper.2
                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName _name) {
                    LOG.debug("IAP Service Disconnected...");
                    SamsungIapHelper.this.mState = 0;
                    SamsungIapHelper.this.mIapConnector = null;
                    SamsungIapHelper.this.mServiceConn = null;
                }

                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName _name, IBinder _service) {
                    SamsungIapHelper.this.mIapConnector = IAPConnector.Stub.asInterface(_service);
                    if (SamsungIapHelper.this.mIapConnector == null || _listener == null) {
                        SamsungIapHelper.this.mState = 0;
                        _listener.onBindIapFinished(2);
                    } else {
                        SamsungIapHelper.this.mState = 1;
                        _listener.onBindIapFinished(0);
                    }
                }
            };
            Intent serviceIntent = new Intent(IAP_SERVICE_NAME);
            this.mContext.bindService(serviceIntent, this.mServiceConn, 1);
        }
    }

    public ErrorVO init() {
        ErrorVO errorVO = new ErrorVO();
        try {
            Bundle bundle = this.mIapConnector.init(this.mMode);
            if (bundle != null) {
                errorVO.setErrorCode(bundle.getInt(KEY_NAME_STATUS_CODE));
                errorVO.setErrorString(bundle.getString(KEY_NAME_ERROR_STRING));
                errorVO.setExtraString(bundle.getString(KEY_NAME_IAP_UPGRADE_URL));
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return errorVO;
    }

    public Bundle getItemList(String _itemGroupId, int _startNum, int _endNum, String _itemType) {
        try {
            Bundle itemList = this.mIapConnector.getItemList(this.mMode, this.mContext.getPackageName(), _itemGroupId, _startNum, _endNum, _itemType);
            return itemList;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Bundle getItemsInbox(String _itemGroupId, int _startNum, int _endNum, String _startDate, String _endDate) {
        try {
            Bundle purchaseItemList = this.mIapConnector.getItemsInbox(this.mContext.getPackageName(), _itemGroupId, _startNum, _endNum, _startDate, _endDate);
            return purchaseItemList;
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void startPurchase(Activity _activity, int _requestCode, String _itemGroupId, String _itemId) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString(KEY_NAME_THIRD_PARTY_NAME, this.mContext.getPackageName());
            bundle.putString(KEY_NAME_ITEM_GROUP_ID, _itemGroupId);
            bundle.putString(KEY_NAME_ITEM_ID, _itemId);
            ComponentName com2 = new ComponentName(IAP_PACKAGE_NAME, "com.sec.android.iap.activity.PaymentMethodListActivity");
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(com2);
            intent.putExtras(bundle);
            _activity.startActivityForResult(intent, _requestCode);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void showIapDialog(final Activity _activity, String _title, String _message, final boolean _finishActivity, final Runnable _onClickRunable) {
        AlertDialog.Builder alert = new AlertDialog.Builder(_activity);
        alert.setTitle(_title);
        alert.setMessage(_message);
        alert.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.sec.android.iap.sample.helper.SamsungIapHelper.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface _dialog, int _which) {
                if (_onClickRunable != null) {
                    _onClickRunable.run();
                }
                _dialog.dismiss();
                if (_finishActivity) {
                    _activity.finish();
                }
            }
        });
        if (_finishActivity) {
            alert.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.sec.android.iap.sample.helper.SamsungIapHelper.4
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    _activity.finish();
                }
            });
        }
        alert.show();
    }

    public void stopRunningTask() {
        if (this.mInitIapTask != null && this.mInitIapTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.mInitIapTask.cancel(true);
        }
        if (this.mGetItemListTask != null && this.mGetItemListTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.mGetItemListTask.cancel(true);
        }
        if (this.mGetInboxListTask != null && this.mGetInboxListTask.getStatus() != AsyncTask.Status.FINISHED) {
            this.mGetInboxListTask.cancel(true);
        }
        if (this.mVerifyClientToServer != null && this.mVerifyClientToServer.getStatus() != AsyncTask.Status.FINISHED) {
            this.mVerifyClientToServer.cancel(true);
        }
    }

    public void dispose() {
        if (this.mContext != null && this.mServiceConn != null) {
            this.mContext.unbindService(this.mServiceConn);
        }
        this.mState = 0;
        this.mServiceConn = null;
        this.mIapConnector = null;
    }

    public void showProgressDialog(Context _context) {
        if (this.mProgressDialog == null || !this.mProgressDialog.isShowing()) {
            this.mProgressDialog = ProgressDialog.show(_context, GameView.CHARACTER_AI, _context.getString(R.string.waiting_ing), true);
        }
    }

    public void dismissProgressDialog() {
        try {
            if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
                this.mProgressDialog.dismiss();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void safeInitIap(Activity _activity) {
        try {
            if (this.mInitIapTask != null && this.mInitIapTask.getStatus() != AsyncTask.Status.FINISHED) {
                this.mInitIapTask.cancel(true);
            }
            this.mInitIapTask = new InitIapTask(_activity);
            this.mInitIapTask.execute(new String[0]);
        } catch (RejectedExecutionException e) {
            LOG.error("safeInitTask()\n" + e.toString());
        } catch (Exception e2) {
            e2.printStackTrace();
            LOG.error("safeInitTask()\n" + e2.toString());
        }
    }

    private class InitIapTask extends AsyncTask<String, Object, Boolean> {
        private Activity mActivity;
        private ErrorVO mErrorVO = new ErrorVO();

        public InitIapTask(Activity _activity) {
            this.mActivity = null;
            this.mActivity = _activity;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            if (SamsungIapHelper.this.mOnInitIapListener == null || this.mActivity == null) {
                cancel(true);
            }
            SamsungIapHelper.this.showProgressDialog(this.mActivity);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            SamsungIapHelper.this.dismissProgressDialog();
            super.onCancelled();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(String... params) {
            try {
                if (SamsungIapHelper.this.mState == 2) {
                    this.mErrorVO.setErrorCode(0);
                } else {
                    this.mErrorVO = SamsungIapHelper.this.init();
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            if (result.booleanValue()) {
                if (this.mErrorVO.getErrorCode() == 0) {
                    if (SamsungIapHelper.this.mOnInitIapListener != null) {
                        SamsungIapHelper.this.mState = 2;
                        SamsungIapHelper.this.mOnInitIapListener.onSucceedInitIap();
                        return;
                    }
                    return;
                }
                if (this.mErrorVO.getErrorCode() == -1001) {
                    SamsungIapHelper.this.dismissProgressDialog();
                    Runnable OkBtnRunnable = new Runnable() { // from class: com.sec.android.iap.sample.helper.SamsungIapHelper.InitIapTask.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!TextUtils.isEmpty(InitIapTask.this.mErrorVO.getExtraString())) {
                                Intent intent = new Intent();
                                intent.setData(Uri.parse(InitIapTask.this.mErrorVO.getExtraString()));
                                intent.addFlags(268435456);
                                try {
                                    InitIapTask.this.mActivity.startActivity(intent);
                                } catch (ActivityNotFoundException e) {
                                    e.printStackTrace();
                                }
                            }
                        }
                    };
                    SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), String.valueOf(this.mActivity.getString(R.string.msg_iap_upgrade_is_requred)) + "\n\n" + this.mErrorVO.getErrorString(), true, OkBtnRunnable);
                    LOG.error(this.mErrorVO.getErrorString());
                    return;
                }
                SamsungIapHelper.this.dismissProgressDialog();
                SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), String.valueOf(this.mActivity.getString(R.string.msg_failed_to_initialize_iap)) + "\n\n" + this.mErrorVO.getErrorString(), false, null);
                LOG.error(this.mErrorVO.getErrorString());
                return;
            }
            SamsungIapHelper.this.dismissProgressDialog();
            SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), this.mActivity.getString(R.string.msg_failed_to_initialize_iap), false, null);
            LOG.error(this.mErrorVO.getErrorString());
        }
    }

    public void safeGetItemList(Activity _activity, String _itemGroupId, int _startNum, int _endNum, String _itemType) {
        try {
            if (this.mGetItemListTask != null && this.mGetItemListTask.getStatus() != AsyncTask.Status.FINISHED) {
                this.mGetItemListTask.cancel(true);
            }
            this.mGetItemListTask = new GetItemListTask(_activity, _itemGroupId, _startNum, _endNum, _itemType);
            this.mGetItemListTask.execute(new String[0]);
        } catch (RejectedExecutionException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private class GetItemListTask extends AsyncTask<String, Object, Boolean> {
        private Activity mActivity;
        private int mEndNum;
        private String mItemGroupId;
        private String mItemType;
        private int mStartNum;
        private ArrayList<ItemVO> mMoreItemVOList = null;
        private ErrorVO mErrorVO = new ErrorVO();

        public GetItemListTask(Activity _activity, String _itemGroupId, int _startNum, int _endNum, String _itemType) {
            this.mItemGroupId = GameView.CHARACTER_AI;
            this.mStartNum = 1;
            this.mEndNum = 15;
            this.mItemType = GameView.CHARACTER_AI;
            this.mActivity = null;
            this.mActivity = _activity;
            this.mItemGroupId = _itemGroupId;
            this.mStartNum = _startNum;
            this.mEndNum = _endNum;
            this.mItemType = _itemType;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            if (this.mActivity == null && SamsungIapHelper.this.mOnGetItemListListener == null) {
                cancel(true);
            }
            this.mMoreItemVOList = new ArrayList<>();
            SamsungIapHelper.this.showProgressDialog(this.mActivity);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            SamsungIapHelper.this.dismissProgressDialog();
            super.onCancelled();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(String... params) {
            try {
                Bundle bundle = SamsungIapHelper.this.getItemList(this.mItemGroupId, this.mStartNum, this.mEndNum, this.mItemType);
                this.mErrorVO.setErrorCode(bundle.getInt(SamsungIapHelper.KEY_NAME_STATUS_CODE));
                this.mErrorVO.setErrorString(bundle.getString(SamsungIapHelper.KEY_NAME_ERROR_STRING));
                this.mErrorVO.setExtraString(bundle.getString(SamsungIapHelper.KEY_NAME_IAP_UPGRADE_URL));
                if (this.mErrorVO.getErrorCode() == 0) {
                    ArrayList<String> itemStringList = bundle.getStringArrayList(SamsungIapHelper.KEY_NAME_RESULT_LIST);
                    if (itemStringList != null) {
                        for (String itemString : itemStringList) {
                            ItemVO itemVO = new ItemVO(itemString);
                            LOG.info("S================================>");
                            LOG.info(itemVO.dump());
                            LOG.info("E================================>");
                            this.mMoreItemVOList.add(itemVO);
                        }
                    } else {
                        LOG.debug("RESULT_LIST of bundle is empty.\n");
                    }
                } else {
                    LOG.debug(this.mErrorVO.getErrorString());
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean _result) {
            if (_result.booleanValue()) {
                if (this.mErrorVO.getErrorCode() == 0) {
                    if (SamsungIapHelper.this.mOnGetItemListListener != null) {
                        SamsungIapHelper.this.mOnGetItemListListener.onSucceedGetItemList(this.mMoreItemVOList);
                        return;
                    }
                    return;
                } else {
                    if (this.mErrorVO.getErrorCode() == -1001) {
                        SamsungIapHelper.this.dismissProgressDialog();
                        Runnable OkBtnRunnable = new Runnable() { // from class: com.sec.android.iap.sample.helper.SamsungIapHelper.GetItemListTask.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!TextUtils.isEmpty(GetItemListTask.this.mErrorVO.getExtraString())) {
                                    Intent intent = new Intent();
                                    intent.setData(Uri.parse(GetItemListTask.this.mErrorVO.getExtraString()));
                                    intent.addFlags(268435456);
                                    try {
                                        GetItemListTask.this.mActivity.startActivity(intent);
                                    } catch (ActivityNotFoundException e) {
                                        e.printStackTrace();
                                    }
                                }
                            }
                        };
                        SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), String.valueOf(this.mActivity.getString(R.string.msg_iap_upgrade_is_requred)) + "\n\n" + this.mErrorVO.getErrorString(), true, OkBtnRunnable);
                        LOG.error(this.mErrorVO.getErrorString());
                        return;
                    }
                    SamsungIapHelper.this.dismissProgressDialog();
                    SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), String.valueOf(this.mActivity.getString(R.string.msg_failed_to_load_list_of_product)) + "\n\n" + this.mErrorVO.getErrorString(), false, null);
                    LOG.error(this.mErrorVO.getErrorString());
                    return;
                }
            }
            SamsungIapHelper.this.dismissProgressDialog();
            SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), this.mActivity.getString(R.string.msg_failed_to_load_list_of_product), false, null);
        }
    }

    public void safeGetItemInboxTask(Activity _activity, String _itemGroupId, int _startNum, int _endNum, String _startDate, String _endDate) {
        try {
            if (this.mGetInboxListTask != null && this.mGetInboxListTask.getStatus() != AsyncTask.Status.FINISHED) {
                this.mGetInboxListTask.cancel(true);
            }
            this.mGetInboxListTask = new GetInboxListTask(_activity, _itemGroupId, _startNum, _endNum, _startDate, _endDate);
            this.mGetInboxListTask.execute(new String[0]);
        } catch (RejectedExecutionException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private class GetInboxListTask extends AsyncTask<String, Object, Boolean> {
        private Activity mActivity;
        private String mEndDate;
        private int mEndNum;
        private String mItemGroupId;
        private String mStartDate;
        private int mStartNum;
        private ErrorVO mErrorVO = new ErrorVO();
        private ArrayList<InBoxVO> mMoreInboxVOList = null;

        public GetInboxListTask(Activity _activity, String _itemGroupId, int _startNum, int _endNum, String _startDate, String _endDate) {
            this.mActivity = null;
            this.mItemGroupId = GameView.CHARACTER_AI;
            this.mStartNum = 0;
            this.mEndNum = 15;
            this.mStartDate = "20130101";
            this.mEndDate = "20130729";
            this.mActivity = _activity;
            this.mItemGroupId = _itemGroupId;
            this.mStartNum = _startNum;
            this.mEndNum = _endNum;
            this.mStartDate = _startDate;
            this.mEndDate = _endDate;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            if (this.mActivity == null || SamsungIapHelper.this.mOnGetInboxListListener == null) {
                cancel(true);
            }
            this.mMoreInboxVOList = new ArrayList<>();
            SamsungIapHelper.this.showProgressDialog(this.mActivity);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            SamsungIapHelper.this.dismissProgressDialog();
            super.onCancelled();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(String... params) {
            try {
                Bundle bundle = SamsungIapHelper.this.getItemsInbox(this.mItemGroupId, this.mStartNum, this.mEndNum, this.mStartDate, this.mEndDate);
                this.mErrorVO.setErrorCode(bundle.getInt(SamsungIapHelper.KEY_NAME_STATUS_CODE));
                this.mErrorVO.setErrorString(bundle.getString(SamsungIapHelper.KEY_NAME_ERROR_STRING));
                if (this.mErrorVO.getErrorCode() == 0) {
                    ArrayList<String> purchaseItemStringList = bundle.getStringArrayList(SamsungIapHelper.KEY_NAME_RESULT_LIST);
                    if (purchaseItemStringList != null) {
                        for (String itemString : purchaseItemStringList) {
                            InBoxVO inboxVO = new InBoxVO(itemString);
                            LOG.info("S================================>");
                            LOG.info(inboxVO.dump());
                            LOG.info("E================================>");
                            this.mMoreInboxVOList.add(inboxVO);
                        }
                    } else {
                        LOG.debug("Bundle Value 'RESULT_LIST' is null.");
                    }
                } else {
                    LOG.debug(this.mErrorVO.getErrorString());
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean _result) {
            if (_result.booleanValue()) {
                if (this.mErrorVO.getErrorCode() == 0) {
                    if (SamsungIapHelper.this.mOnGetInboxListListener != null) {
                        SamsungIapHelper.this.mOnGetInboxListListener.OnSucceedGetInboxList(this.mMoreInboxVOList);
                        return;
                    }
                    return;
                } else {
                    SamsungIapHelper.this.dismissProgressDialog();
                    SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), String.valueOf(this.mActivity.getString(R.string.msg_failed_to_load_list_of_purchase)) + "\n\n" + this.mErrorVO.getErrorString(), false, null);
                    return;
                }
            }
            SamsungIapHelper.this.dismissProgressDialog();
            SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.in_app_purchase), this.mActivity.getString(R.string.msg_failed_to_load_list_of_purchase), false, null);
        }
    }

    public void verifyPurchaseResult(Activity _activity, PurchaseVO _purchaseVO) {
        try {
            if (this.mVerifyClientToServer != null && this.mVerifyClientToServer.getStatus() != AsyncTask.Status.FINISHED) {
                this.mVerifyClientToServer.cancel(true);
            }
            this.mVerifyClientToServer = new VerifyClientToServer(_activity, _purchaseVO);
            this.mVerifyClientToServer.execute(new Void[0]);
        } catch (RejectedExecutionException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private class VerifyClientToServer extends AsyncTask<Void, Void, Boolean> {
        Activity mActivity;
        PurchaseVO mPurchaseVO;
        VerificationVO mVerificationVO = null;

        public VerifyClientToServer(Activity _activity, PurchaseVO _purchaseVO) {
            this.mPurchaseVO = null;
            this.mActivity = null;
            this.mActivity = _activity;
            this.mPurchaseVO = _purchaseVO;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            super.onPreExecute();
            if (this.mPurchaseVO == null || TextUtils.isEmpty(this.mPurchaseVO.getVerifyUrl()) || TextUtils.isEmpty(this.mPurchaseVO.getPurchaseId()) || TextUtils.isEmpty(this.mPurchaseVO.getPaymentId()) || this.mActivity == null) {
                cancel(true);
            }
            SamsungIapHelper.this.showProgressDialog(this.mActivity);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            SamsungIapHelper.this.dismissProgressDialog();
            super.onCancelled();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Boolean doInBackground(Void... params) throws Throwable {
            String strResponse;
            try {
                StringBuffer strUrl = new StringBuffer();
                strUrl.append(this.mPurchaseVO.getVerifyUrl());
                strUrl.append("&purchaseID=" + this.mPurchaseVO.getPurchaseId());
                int retryCount = 0;
                do {
                    strResponse = getHttpGetData(strUrl.toString(), Objects.Skills.BERRYSKILL_INDEX, Objects.Skills.BERRYSKILL_INDEX);
                    retryCount++;
                    if (retryCount >= 3) {
                        break;
                    }
                } while (TextUtils.isEmpty(strResponse));
                if (strResponse == null || TextUtils.isEmpty(strResponse)) {
                    return false;
                }
                this.mVerificationVO = new VerificationVO(strResponse);
                if (this.mVerificationVO != null && "true".equals(this.mVerificationVO.getStatus()) && this.mPurchaseVO.getPaymentId().equals(this.mVerificationVO.getPaymentId())) {
                    return true;
                }
                return false;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean result) {
            SamsungIapHelper.this.dismissProgressDialog();
            if (result.booleanValue()) {
                SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.dlg_title_payment_success), this.mActivity.getString(R.string.dlg_msg_payment_success), false, null);
            } else {
                SamsungIapHelper.this.showIapDialog(this.mActivity, this.mActivity.getString(R.string.dlg_title_payment_error), this.mActivity.getString(R.string.msg_invalid_purchase), false, null);
            }
        }

        private String getHttpGetData(String _strUrl, int _connTimeout, int _readTimeout) throws Throwable {
            HttpURLConnection httpConnection;
            int responseCode;
            ByteArrayOutputStream buffer;
            byte[] bData;
            String strResult = null;
            BufferedInputStream bis = null;
            ByteArrayOutputStream buffer2 = null;
            try {
                try {
                    URL url = new URL(_strUrl);
                    URLConnection con = url.openConnection();
                    con.setConnectTimeout(Objects.Skills.BERRYSKILL_INDEX);
                    con.setReadTimeout(Objects.Skills.BERRYSKILL_INDEX);
                    httpConnection = (HttpURLConnection) con;
                    httpConnection.setRequestMethod(ConnectNetwork.GET);
                    httpConnection.connect();
                    responseCode = httpConnection.getResponseCode();
                } catch (Exception e) {
                    e = e;
                }
                if (responseCode == 200) {
                    BufferedInputStream bis2 = new BufferedInputStream(httpConnection.getInputStream(), 4096);
                    try {
                        buffer = new ByteArrayOutputStream(4096);
                    } catch (Exception e2) {
                        e = e2;
                        bis = bis2;
                    } catch (Throwable th) {
                        th = th;
                        bis = bis2;
                    }
                    try {
                        bData = new byte[4096];
                    } catch (Exception e3) {
                        e = e3;
                        buffer2 = buffer;
                        bis = bis2;
                        e.printStackTrace();
                        if (bis != null) {
                            try {
                                bis.close();
                            } catch (Exception e4) {
                            }
                        }
                        if (buffer2 != null) {
                            try {
                                buffer2.close();
                            } catch (IOException e5) {
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        buffer2 = buffer;
                        bis = bis2;
                        if (bis != null) {
                            try {
                                bis.close();
                            } catch (Exception e6) {
                            }
                        }
                        if (buffer2 != null) {
                            try {
                                buffer2.close();
                            } catch (IOException e7) {
                            }
                        }
                        throw th;
                    }
                    while (true) {
                        int nRead = bis2.read(bData, 0, 4096);
                        if (nRead == -1) {
                            break;
                        }
                        buffer.write(bData, 0, nRead);
                        return strResult;
                    }
                    buffer.flush();
                    strResult = buffer.toString();
                    buffer2 = buffer;
                    bis = bis2;
                }
                if (bis != null) {
                    try {
                        bis.close();
                    } catch (Exception e8) {
                    }
                }
                if (buffer2 != null) {
                    try {
                        buffer2.close();
                    } catch (IOException e9) {
                    }
                }
                return strResult;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }
}
