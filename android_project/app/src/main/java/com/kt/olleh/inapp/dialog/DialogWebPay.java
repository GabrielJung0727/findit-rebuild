package com.kt.olleh.inapp.dialog;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.webkit.JsResult;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.findit.battle.GameView;
import com.jargoandroid.connectnetwork.ConnectNetwork;
import com.kt.olleh.inapp.Purchase;
import com.kt.olleh.inapp.net.InAppError;
import com.kt.olleh.inapp.util.UIParser;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.apache.http.util.EncodingUtils;

/* JADX INFO: loaded from: classes.dex */
public class DialogWebPay extends Dialog {
    public final String TAG;
    final String encoding;
    private Context mContext;
    private DialogOnClickListener[] mListener;
    UIParser mParser;
    private String postData;
    private Purchase purchase;
    private String url;
    private WebViewJavaScriptHandler webJsContext;
    private WebView webView;

    public DialogWebPay(Context context, Purchase purchase) {
        super(context, android.R.style.Theme_Translucent_NoTitleBar);
        this.mListener = null;
        this.encoding = "EUC-KR";
        this.webView = null;
        this.url = GameView.CHARACTER_AI;
        this.postData = GameView.CHARACTER_AI;
        this.purchase = null;
        this.TAG = "Purchase";
        this.mContext = context;
        this.purchase = purchase;
    }

    public void close() {
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void show() {
        create();
        super.show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        unBind();
        Purchase.Dialog_Mode = -1;
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }

    public void unBind() {
        if (this.mListener != null) {
            for (int i = 0; i < this.mListener.length; i++) {
                this.mListener[i] = null;
            }
            this.mListener = null;
        }
    }

    private View showMy(String path) {
        this.mParser = new UIParser(this.mContext);
        return this.mParser.Start(path);
    }

    private void createDialog() {
        setContentView(showMy("/layout-hdpi/web_pay.xml"));
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        lp.dimAmount = 0.7f;
        getWindow().setAttributes(lp);
        getWindow().addFlags(2);
        this.webView = (WebView) findViewById(this.mParser.getID("webView"));
        Log.d("Purchase", "URL = " + this.url);
        this.webView.postUrl(this.url, EncodingUtils.getBytes(this.postData, "UTF-8"));
        this.webView.setWebViewClient(new MyWebView(this, null));
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.kt.olleh.inapp.dialog.DialogWebPay.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int newProgress) {
                super.onProgressChanged(view, newProgress);
            }

            @Override // android.webkit.WebChromeClient
            public void onExceededDatabaseQuota(String url, String databaseIdentifier, long currentQuota, long estimatedSize, long totalUsedQuota, WebStorage.QuotaUpdater quotaUpdater) {
                quotaUpdater.updateQuota(2 * estimatedSize);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsConfirm(WebView view, String url, String message, final JsResult result) {
                new AlertDialog.Builder(DialogWebPay.this.mContext).setMessage(message).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.kt.olleh.inapp.dialog.DialogWebPay.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        result.confirm();
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.kt.olleh.inapp.dialog.DialogWebPay.1.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        result.cancel();
                    }
                }).show();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public boolean onJsAlert(WebView view, String url, String message, final JsResult result) {
                new AlertDialog.Builder(DialogWebPay.this.mContext).setMessage(message).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.kt.olleh.inapp.dialog.DialogWebPay.1.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        result.confirm();
                    }
                }).show();
                return true;
            }
        });
    }

    private void webViewInit() {
        String databasePath = this.mContext.getDir("database", 0).getPath();
        String appCachePath = this.mContext.getCacheDir().getPath();
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.webView.getSettings().setDatabaseEnabled(true);
        this.webView.getSettings().setDatabasePath(databasePath);
        this.webView.getSettings().setDomStorageEnabled(true);
        this.webView.getSettings().setLoadsImagesAutomatically(true);
        this.webView.getSettings().setDefaultTextEncodingName("EUC-KR");
        // setAppCache* APIs were removed in API 33; cache is managed automatically now.
        this.webView.requestFocusFromTouch();
        this.webView.setHorizontalScrollBarEnabled(true);
        this.webView.setVerticalScrollBarEnabled(true);
        this.webView.setHorizontalFadingEdgeEnabled(false);
        this.webView.setScrollBarStyle(0);
        if (this.webJsContext == null) {
            this.webJsContext = new WebViewJavaScriptHandler(this);
        }
    }

    public void setButton(int idx, DialogOnClickListener listener) {
        if (this.mListener != null && this.mListener.length > idx && idx >= 0) {
            this.mListener[idx] = listener;
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.webView.canGoBack()) {
            this.webView.goBack();
            return;
        }
        close();
        this.purchase.SendMessage(1009);
        super.onBackPressed();
    }

    private class MyWebView extends WebViewClient {
        private MyWebView() {
        }

        /* synthetic */ MyWebView(DialogWebPay dialogWebPay, MyWebView myWebView) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            String lUrl = null;
            try {
                lUrl = URLDecoder.decode(url, ConnectNetwork.UTF_8);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            if (lUrl.startsWith("mbf://")) {
                if (lUrl.startsWith("mbf://wn_closePayment/0")) {
                    String pay_no = lUrl.substring(lUrl.lastIndexOf("payNo="), lUrl.indexOf("&orderNo="));
                    String pay_no2 = pay_no.substring(pay_no.indexOf("=") + 1);
                    DialogWebPay.this.close();
                    DialogWebPay.this.purchase.getBuyDi(pay_no2);
                } else if (lUrl.startsWith("mbf://wn_closePayment/1")) {
                    DialogWebPay.this.close();
                    DialogWebPay.this.purchase.SendMessage(1009);
                }
            } else {
                if (lUrl.startsWith("tel:")) {
                    return true;
                }
                view.loadUrl(url);
            }
            return super.shouldOverrideUrlLoading(view, url);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            handler.proceed();
        }
    }

    public WebView getWebView() {
        return this.webView;
    }

    public void setWebView(WebView webView) {
        this.webView = webView;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPostData() {
        return this.postData;
    }

    public void setPostData(String postData) {
        this.postData = postData;
    }

    public void callPayWebView(String encType, String enckey, String url) {
    }

    public void payWebClose(String closeType, String param) {
        if (closeType == null || InAppError.FAILED.equals(closeType)) {
        }
        dismiss();
    }
}
