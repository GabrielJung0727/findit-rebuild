package com.findit.battle.iap.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import com.findit.battle.iap.util.IabHelper;
import com.findit.battle.iap.util.IabResult;
import com.findit.battle.iap.util.Inventory;
import com.findit.battle.iap.util.Purchase;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class InAppBillingActivity extends Activity {
    private static final String API_RSA_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAoLHUZ3UGz+QNcl7q5h0NeB0w1KKI4x7v/uSO3jsKutL2memlRO6jb21tbOvKCFV1ozy1QjLtZOVWqSEMPk2s9duSx4Cu8dWOE3ay7DyEhp6hBPZpg7uWefIxyVpPh+Xv41aMixJzJ7KBqttYLX5Xu4X5OjyJM1DsNnOQM5Rv/hKN/47g7Jo4GDyFFqNMFNlBZGDvbCrz2egMa6oDlS+hbeBzGN9MEuefXJHtK5BH/2bDXoUuraddZktQNjczWRenFhpxFnz6dRG3vW3SSgEGWziQNfqAh/aU3H0gwntyrHjJHXdsQlDkHswJzfCcCqtBEKDHoI3jv1tm7ANl/ZqNdQIDAQAB";
    public static final int INAPP_RESULT_ACTIVITY_CODE = 1001;
    static final boolean SHOW_LOG = false;
    static final String TAG = "TrivialDrive";
    IabHelper mHelper;
    IInAppBillingService mService;
    ServiceConnection mServiceConn = new ServiceConnection() { // from class: com.findit.battle.iap.activity.InAppBillingActivity.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            InAppBillingActivity.this.mService = IInAppBillingService.Stub.asInterface(service);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            InAppBillingActivity.this.mService = null;
        }
    };
    IabHelper.OnIabPurchaseFinishedListener mPurchaseFinishedListener = new IabHelper.OnIabPurchaseFinishedListener() { // from class: com.findit.battle.iap.activity.InAppBillingActivity.2
        @Override // com.findit.battle.iap.util.IabHelper.OnIabPurchaseFinishedListener
        public void onIabPurchaseFinished(IabResult result, Purchase info) {
            Log.e(InAppBillingActivity.TAG, "RESULT: " + result.isSuccess());
            Log.e(InAppBillingActivity.TAG, "ITEM Name: " + info.getSku());
            Log.e(InAppBillingActivity.TAG, "ITEM Name: " + info.getDeveloperPayload());
            Log.e(InAppBillingActivity.TAG, "ITEM Name: " + info.getItemType());
            Log.e(InAppBillingActivity.TAG, "ITEM Name: " + info.getOrderId());
            Log.e(InAppBillingActivity.TAG, "ITEM Name: " + info.getOriginalJson());
            Log.e(InAppBillingActivity.TAG, "ITEM Name: " + info.getToken());
            Log.e(InAppBillingActivity.TAG, "ITEM Name: " + info.getSignature());
        }
    };
    IabHelper.OnIabSetupFinishedListener mSetupFinishedListener = new IabHelper.OnIabSetupFinishedListener() { // from class: com.findit.battle.iap.activity.InAppBillingActivity.3
        @Override // com.findit.battle.iap.util.IabHelper.OnIabSetupFinishedListener
        public void onIabSetupFinished(IabResult result) {
            if (!result.isSuccess()) {
                InAppBillingActivity.this.complain("Problem setting up in-app billing: " + result);
            } else {
                Log.d(InAppBillingActivity.TAG, "Setup successful. Querying inventory.");
                InAppBillingActivity.this.AlreadyPurchaseItems();
            }
        }
    };
    IabHelper.QueryInventoryFinishedListener mGotInventoryListener = new IabHelper.QueryInventoryFinishedListener() { // from class: com.findit.battle.iap.activity.InAppBillingActivity.4
        @Override // com.findit.battle.iap.util.IabHelper.QueryInventoryFinishedListener
        public void onQueryInventoryFinished(IabResult result, Inventory inventory) {
            Log.d(InAppBillingActivity.TAG, "Query inventory finished.");
            if (InAppBillingActivity.this.mHelper != null) {
                if (result.isFailure()) {
                    InAppBillingActivity.this.complain("Failed to query inventory: " + result);
                } else {
                    Log.d(InAppBillingActivity.TAG, "Query inventory was successful.");
                    Log.d(InAppBillingActivity.TAG, "Initial inventory query finished; enabling main UI.");
                }
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        bindService(new Intent("com.android.vending.billing.InAppBillingService.BIND"), this.mServiceConn, 1);
        this.mHelper = new IabHelper(this, API_RSA_KEY);
        this.mHelper.enableDebugLogging(true);
        this.mHelper.startSetup(this.mSetupFinishedListener);
    }

    public void AlreadyPurchaseItems() {
        try {
            Bundle ownedItems = this.mService.getPurchases(3, getPackageName(), IabHelper.ITEM_TYPE_INAPP, null);
            int response = ownedItems.getInt(IabHelper.RESPONSE_CODE);
            if (response == 0) {
                ArrayList<String> purchaseDataList = ownedItems.getStringArrayList(IabHelper.RESPONSE_INAPP_PURCHASE_DATA_LIST);
                Log.e(TAG, "PurchaseDataList Size: " + purchaseDataList.size());
                String[] tokens = new String[purchaseDataList.size()];
                for (int i = 0; i < purchaseDataList.size(); i++) {
                    String purchaseData = purchaseDataList.get(i);
                    JSONObject jo = new JSONObject(purchaseData);
                    tokens[i] = jo.getString("purchaseToken");
                    this.mService.consumePurchase(3, getPackageName(), tokens[i]);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void buyItem(String id_item) {
        try {
            Bundle buyIntentBundle = this.mService.getBuyIntent(3, getPackageName(), id_item, IabHelper.ITEM_TYPE_INAPP, "test");
            PendingIntent pendingIntent = (PendingIntent) buyIntentBundle.getParcelable(IabHelper.RESPONSE_BUY_INTENT);
            if (pendingIntent != null) {
                this.mHelper.launchPurchaseFlow(this, getPackageName(), INAPP_RESULT_ACTIVITY_CODE, this.mPurchaseFinishedListener, "test");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        System.out.println("requestCode : " + requestCode);
        System.out.println("resultCode : " + resultCode);
        if (requestCode == 1001 && resultCode == -1 && !this.mHelper.handleActivityResult(requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
            data.getIntExtra(IabHelper.RESPONSE_CODE, 0);
            data.getStringExtra(IabHelper.RESPONSE_INAPP_PURCHASE_DATA);
            data.getStringExtra(IabHelper.RESPONSE_INAPP_SIGNATURE);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.mServiceConn != null) {
            unbindService(this.mServiceConn);
        }
        Log.d(TAG, "Destroying helper.");
        if (this.mHelper != null) {
            this.mHelper.dispose();
            this.mHelper = null;
        }
    }

    void complain(String message) {
    }

    void alert(String message) {
        AlertDialog.Builder bld = new AlertDialog.Builder(this);
        bld.setMessage(message);
        bld.setNeutralButton("OK", (DialogInterface.OnClickListener) null);
        Log.d(TAG, "Showing alert dialog: " + message);
        bld.create().show();
    }
}
