package com.kt.olleh.inapp.Config;

import android.util.Log;
import com.feelingk.iap.util.Defines;
import com.sec.android.iap.sample.helper.SamsungIapHelper;

/* JADX INFO: loaded from: classes.dex */
public class Config {
    public static final String B007 = "B007";
    public static final String B007_msg = "구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
    public static final String B009 = "B009";
    public static final String B009_msg = "일별 구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
    public static final String B010 = "B010";
    public static final String B010_msg = "월별 구매한도를 초과하여 더 이상 구매하실 수 없습니다.";
    public static final String B011 = "B011";
    public static final String CONTENT_URI = "content://com.kt.olleh.app.manager.inapp/inapp";
    public static final String INAPP_VERSION = "V1.7.2";
    public static final String RS_INAPP_URL = "http://hybrid.olleh.com/hybrid/appMy?tab=CERT";
    public static final String TB_INAPP_URL = "http://221.148.243.100/hybrid2/appMy?tab=CERT";
    public static String VERSION = null;
    public static final String Z999 = "Z999";
    public static final String Z999_msg = "올레마켓이 설치되지 않았습니다.\n설치 후 다시 시도해 주십시오.";
    public static final boolean bIsStandAlone = false;
    public static int densityDpi = 0;
    public static final int iLibSetting = 0;
    public static String mPin = null;
    public static final String strFileName = "inapp.txt";
    public static final String strSaveFilePath = "/data/";
    public static String TAG = "Config";
    public static boolean DEBUG = false;
    public static boolean bTBserver = false;
    public static float Density = 1.0f;
    public static boolean isTimerRunning = false;
    public static String tCompanyCode = SamsungIapHelper.ITEM_TYPE_CONSUMABLE;
    public static String tCCodeKT = "08";
    public static String tCCodeSKT = "05";
    public static String tCCodeLGT = "06";
    public static int ldpi = Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG;
    public static int mdpi = 160;
    public static int hdpi = 240;
    public static int xhdpi = 320;

    public static void LogD(String title, String content) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.d(TAG, str.toString());
        }
    }

    public static void LogI(String title, String content) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.i(TAG, str.toString());
        }
    }

    public static void LogE(String title, String content) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.e(TAG, str.toString());
        }
    }

    public static void LogW(String title, String content) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.w(TAG, str.toString());
        }
    }

    public static void LogD(String title, String content, Throwable tr) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.d(TAG, str.toString(), tr);
        }
    }

    public static void LogI(String title, String content, Throwable tr) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.i(TAG, str.toString(), tr);
        }
    }

    public static void LogE(String title, String content, Throwable tr) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.e(TAG, str.toString(), tr);
        }
    }

    public static void LogW(String title, String content, Throwable tr) {
        if (DEBUG) {
            StringBuffer str = new StringBuffer();
            str.append("[");
            str.append(title);
            str.append("] ");
            str.append(content);
            Log.w(TAG, str.toString(), tr);
        }
    }
}
