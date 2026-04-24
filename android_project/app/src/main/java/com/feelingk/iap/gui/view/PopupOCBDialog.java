package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class PopupOCBDialog extends Dialog {
    private ParserXML mGUIParser;
    private ParserXML.ParserOCBCallback onOCBCallback;

    public PopupOCBDialog(Context context, int themeStyle, ParserXML.ParserOCBCallback cb) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.onOCBCallback = null;
        this.mGUIParser = new ParserXML(context, cb, true);
        this.onOCBCallback = cb;
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
        if (state == 120) {
            setContentView(this.mGUIParser.Start("/xml/ocbpopup_", null, clickListener, orientation));
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupOCBDialog.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupOCBDialog.this.onOCBCallback.onOCBRegistrationCancelClick();
                }
            });
        } else if (state == 121) {
            setContentView(this.mGUIParser.Start("/xml/ocb_pw_auth.xml", (String) null, clickListener));
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupOCBDialog.2
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupOCBDialog.this.onOCBCallback.onOCBPWDCancelButtonClick();
                }
            });
        }
    }

    public void ShowPopupOCBDialog() {
        show();
    }

    public void ClosePopupOCBDialog() {
        dismiss();
    }
}
