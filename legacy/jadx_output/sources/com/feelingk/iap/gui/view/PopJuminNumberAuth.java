package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class PopJuminNumberAuth extends Dialog {
    private ParserXML mGUIParser;
    private ParserXML.ParserAuthResultCallback onResultCallback;

    public PopJuminNumberAuth(Context context, int themeSytle, ParserXML.ParserAuthResultCallback cb, boolean isDeviceTab) {
        super(context, themeSytle);
        this.mGUIParser = null;
        this.onResultCallback = null;
        this.mGUIParser = new ParserXML(context, cb, true);
        this.onResultCallback = cb;
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

    public void InflateView(int orientation) {
        if (orientation == 0 || orientation == 2) {
            setContentView(this.mGUIParser.Start("/xml_kt_lg/pop_Juminnumber_w.xml", (String) null, (Object) null));
        } else {
            setContentView(this.mGUIParser.Start("/xml_kt_lg/pop_Juminnumber_h.xml", (String) null, (Object) null));
        }
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopJuminNumberAuth.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                PopJuminNumberAuth.this.onResultCallback.onAuthDialogCancelButtonClick();
            }
        });
    }

    public void ShowPopupAuthDialog() {
        show();
    }

    public void ClosePopupAuthDialog() {
        dismiss();
    }
}
