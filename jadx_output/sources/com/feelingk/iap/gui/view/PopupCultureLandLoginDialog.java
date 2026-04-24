package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class PopupCultureLandLoginDialog extends Dialog {
    private ParserXML mGUIParser;
    private ParserXML.ParserCultureLandCallback onCultureLandCallback;

    public PopupCultureLandLoginDialog(Context context, int themeStyle, ParserXML.ParserCultureLandCallback cb) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.onCultureLandCallback = null;
        this.mGUIParser = new ParserXML(context, cb, true);
        this.onCultureLandCallback = cb;
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
        setContentView(this.mGUIParser.Start("/xml/culture_login_", null, clickListener, orientation));
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupCultureLandLoginDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                PopupCultureLandLoginDialog.this.onCultureLandCallback.onCultureLandCancelButtonClick();
            }
        });
    }

    public void ShowPopupCultureLandLoginDialog() {
        show();
    }

    public void ClosePopupCultureLandLoginDialog() {
        dismiss();
    }
}
