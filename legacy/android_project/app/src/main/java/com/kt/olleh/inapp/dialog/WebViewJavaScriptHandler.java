package com.kt.olleh.inapp.dialog;

import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import com.findit.battle.GameView;
import com.findit.battle.Objects;
import com.sec.android.iap.sample.helper.SamsungIapHelper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes.dex */
public class WebViewJavaScriptHandler {
    public static final String CMD_PAY_WEBVIEW = "callPaymentWebViewOpen";
    public static final String CMD_PAY_WEB_CLOSE = "callPaymentWebViewClose";
    private static final String TAG = "## WebViewJavaScriptHandler";
    public static String callContentState;
    public static String getContentState;
    private StringBuilder sb;
    private DialogWebPay webScreen;
    public static String strInstall_list = null;
    public static int cntInstall = 0;
    public static final Uri CONTENTS_URI = Uri.parse("content://com.kt.olleh.app.manager.contents/contents");
    String CB_SUCCESS_CODE = SamsungIapHelper.ITEM_TYPE_CONSUMABLE;
    String CB_FAIL_CODE = SamsungIapHelper.ITEM_TYPE_NON_CONSUMABLE;

    public WebViewJavaScriptHandler(DialogWebPay wvAct) {
        this.webScreen = wvAct;
    }

    public void processW2N(WebView view, String url) {
        String lUrl = url.substring("mbf://".length());
        String cmd = lUrl.substring(0, lUrl.indexOf(47));
        String lUrl2 = lUrl.substring(lUrl.indexOf(47) + 1);
        try {
            Method method = WebViewJavaScriptHandler.class.getDeclaredMethod("processW2N_" + cmd.trim(), WebView.class, String.class);
            method.invoke(this, view, lUrl2);
        } catch (IllegalAccessException e) {
            process_exception(view, url, e);
        } catch (IllegalArgumentException e2) {
            process_exception(view, cmd, e2);
        } catch (NoSuchMethodException e3) {
            process_exception(view, cmd, e3);
        } catch (SecurityException e4) {
            process_exception(view, cmd, e4);
        } catch (InvocationTargetException e5) {
            process_exception(view, cmd, e5);
        }
    }

    public void notifyResult(WebView view, String workCode, String errCode, String msg) {
        String message = msg == null ? "nil" : msg;
        String func = String.format("callbackFromNative( '%s', '%s', '%s' )", workCode, errCode, message);
        callSbScript(view, func);
    }

    public void processN2W_callPaymentComplete(WebView view, String data) {
        String func = null;
        try {
            func = String.format("callPaymentComplete('%s')", data);
        } catch (Exception e) {
            Log.d("[processN2W_callInputText]", "Exception e: " + e);
        }
        callNwScript(view, func);
    }

    private void process_exception(WebView view, String cmd, Exception e) {
        if (e instanceof InvocationTargetException) {
            notifyResult(view, cmd, this.CB_FAIL_CODE, "check param");
        } else {
            notifyResult(view, cmd, this.CB_FAIL_CODE, "Not found command");
        }
    }

    private void callSbScript(WebView view, String data) {
        if (view != null) {
            this.webScreen.getWebView().loadUrl("javascript:sbDevice." + data + ";");
        }
    }

    private void callNwScript(WebView view, String data) {
        if (view != null) {
            this.webScreen.getWebView().loadUrl("javascript:nwDevice." + data + ";");
        }
    }

    private void processW2N_callPaymentWebViewOpen(WebView view, String data) {
        Log.d(TAG, String.format("processW2N_callPaymentWebViewOpen(%s, %s)", view.toString(), data));
        String errCode = data == null ? this.CB_FAIL_CODE : this.CB_SUCCESS_CODE;
        String encType = GameView.CHARACTER_AI;
        String enckey = GameView.CHARACTER_AI;
        String url = GameView.CHARACTER_AI;
        if (data != null) {
            encType = data.substring(0, data.indexOf(47));
            String temp = data.substring(data.indexOf(47) + 1);
            enckey = temp.substring(0, temp.indexOf(47));
            url = temp.substring(temp.indexOf(47) + 1);
        }
        Log.d(TAG, "encType = " + encType);
        Log.d(TAG, "enckey = " + enckey);
        Log.d(TAG, "url = " + url);
        if (errCode == this.CB_SUCCESS_CODE) {
            this.webScreen.callPayWebView(encType, enckey, url);
        }
        notifyResult(view, CMD_PAY_WEBVIEW, errCode, "nil");
    }

    private void processW2N_callPaymentWebViewClose(WebView view, String uri) {
        String errcode;
        String closeType = null;
        String param = null;
        Log.d(TAG, String.format("processW2N_callPaymentWebViewClose(%s, %s)", view.toString(), uri));
        StringTokenizer st = new StringTokenizer(uri, Objects.Animation.DEVIDER_DATA);
        int nCount = st.countTokens();
        for (int i = 0; i < nCount; i++) {
            switch (i) {
                case 0:
                    closeType = st.nextToken();
                    break;
                case 1:
                    param = st.nextToken();
                    break;
            }
        }
        Log.d(TAG, "closeType = " + closeType);
        Log.d(TAG, "param = " + param);
        if (param == null) {
            param = GameView.CHARACTER_AI;
        }
        if (closeType == null || GameView.CHARACTER_AI.equals(closeType)) {
            errcode = this.CB_FAIL_CODE;
        } else {
            this.webScreen.payWebClose(closeType, param);
            errcode = this.CB_SUCCESS_CODE;
        }
        notifyResult(view, CMD_PAY_WEB_CLOSE, errcode, "nil");
    }
}
