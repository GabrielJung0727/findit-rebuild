package com.feelingk.iap;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class SmsReceiver extends BroadcastReceiver {
    String mSmsMessage = null;
    String mSmsAuthNumber = null;
    String mSmsAddress = null;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle bundle = intent.getExtras();
        if (bundle != null) {
            Object[] pdusObj = (Object[]) bundle.get("pdus");
            SmsMessage[] messages = new SmsMessage[pdusObj.length];
            for (int i = 0; i < pdusObj.length; i++) {
                messages[i] = SmsMessage.createFromPdu((byte[]) pdusObj[i]);
            }
            for (SmsMessage smsMessage : messages) {
                this.mSmsMessage = smsMessage.getDisplayMessageBody().toString();
                CommonF.LOGGER.i("mSmsMessage: ", this.mSmsMessage);
                CommonF.LOGGER.i("mSmsMessage length: ", new StringBuilder(String.valueOf(this.mSmsMessage.length())).toString());
                if (this.mSmsMessage.length() >= 27) {
                    String isDanaMsg = this.mSmsMessage.substring(0, 20);
                    CommonF.LOGGER.i("isDanaMsg: ", isDanaMsg);
                    if (isDanaMsg.equals("[  tstore.co.kr]승인번호")) {
                        this.mSmsAuthNumber = this.mSmsMessage.substring(21, 27);
                        CommonF.LOGGER.i("mSmsAuthNumber: ", this.mSmsAuthNumber);
                        IAPLib.setOTPNumber(this.mSmsAuthNumber);
                    }
                }
            }
        }
    }
}
