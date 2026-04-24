package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class PopupDotoriSmsAuth extends Dialog {
    private ParserXML.ParserDotoriSmsAuthCallback mDotoriSmsAuthCallback;
    private ParserXML mGUIParser;

    public PopupDotoriSmsAuth(Context context, int themeStyle, ParserXML.ParserDotoriSmsAuthCallback cb) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mDotoriSmsAuthCallback = null;
        this.mGUIParser = new ParserXML(context, cb, true);
        this.mDotoriSmsAuthCallback = cb;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 82) {
            return super.onKeyDown(keyCode, event);
        }
        event.startTracking();
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int keyCode, KeyEvent event) {
        if (keyCode == 82) {
            return true;
        }
        return super.onKeyLongPress(keyCode, event);
    }

    public void InflateView(int state, View.OnClickListener clickListener, int orientation) {
        setContentView(this.mGUIParser.Start("/xml/dotori_sms_auth_", null, clickListener, orientation));
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupDotoriSmsAuth.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                PopupDotoriSmsAuth.this.mDotoriSmsAuthCallback.onDotoriSmsAuthCancelButtonClick();
            }
        });
    }

    public void ShowPopupDotoriSMSAuthDialog() {
        show();
    }

    public void ClosePopupDotoriSMSAuthDialog() {
        dismiss();
    }
}
