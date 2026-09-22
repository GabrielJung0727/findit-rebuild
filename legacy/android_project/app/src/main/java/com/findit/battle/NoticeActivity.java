package com.findit.battle;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: loaded from: classes.dex */
public class NoticeActivity extends Activity {
    public static final String KEY_URL = "url";
    public static final String SERVER_URL_FACEBOOK = "http://www.facebook.com/finditbattle";
    public static final String SERVER_URL_NOTICE = Property.SERVER_DOMAIN + "app/member/notice.json";
    public static GameView mgameView;
    private CommonDialog mCommonDialog;
    public WebView mWebView;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.noticepage);
        getWindow().setLayout(FindItApplication.getDisplayScreenWidth(), FindItApplication.getDisplayScreenHeight());
        this.mCommonDialog = new CommonDialog(this);
        Bundle extra = getIntent().getExtras();
        this.mWebView = (WebView) findViewById(R.id.WebView);
        this.mWebView.setScrollBarStyle(33554432);
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.getSettings().setSupportMultipleWindows(true);
        this.mWebView.getSettings().setDomStorageEnabled(true);
        this.mWebView.setVerticalScrollBarEnabled(true);
        this.mWebView.loadUrl(extra.getString("url"));
        this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.findit.battle.NoticeActivity.1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView view, String url, Bitmap favicon) {
                NoticeActivity.this.mCommonDialog.showProgressDlg();
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                view.canGoBack();
                NoticeActivity.this.mCommonDialog.cancelProgressDlg();
            }
        });
    }
}
