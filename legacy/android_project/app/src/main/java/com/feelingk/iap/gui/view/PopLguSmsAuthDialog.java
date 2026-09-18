package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class PopLguSmsAuthDialog extends Dialog {
    private int mCurTelecom;
    private ParserXML mGUIParser;
    private ParserXML.ParserLguSmsAuthCallback onLguSmsAuthCallback;

    public PopLguSmsAuthDialog(Context context, ParserXML.ParserLguSmsAuthCallback cb, int themeStyle) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.onLguSmsAuthCallback = null;
        this.mCurTelecom = 0;
        this.mCurTelecom = CommonF.getCarrier(context);
        this.mGUIParser = new ParserXML(context, cb, true);
        this.onLguSmsAuthCallback = cb;
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
        setContentView(this.mGUIParser.Start("/xml_kt_lg/lgusmsauthpopup_", clickListener, orientation));
        if (state == 117) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopLguSmsAuthDialog.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopLguSmsAuthDialog.this.onLguSmsAuthCallback.onLguSmsAuthCancer();
                }
            });
        }
    }

    public void ShowPopupLguSMSAuthDialog() {
        show();
    }

    public void ClosePopupLguSMSAuthDialog() {
        dismiss();
    }
}
