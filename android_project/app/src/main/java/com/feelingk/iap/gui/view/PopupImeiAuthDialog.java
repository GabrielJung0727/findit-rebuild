package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class PopupImeiAuthDialog extends Dialog {
    private View.OnClickListener mClickListener;
    private ParserXML mGUIParser;
    ParserXML.ParserIMEIAuthCallback mImeiAuthCallback;

    public PopupImeiAuthDialog(Context context, ParserXML.ParserIMEIAuthCallback cb, int theme) {
        super(context, theme);
        this.mGUIParser = null;
        this.mClickListener = null;
        this.mImeiAuthCallback = null;
        this.mGUIParser = new ParserXML(context, cb, "IMEIAuthForm", true);
        this.mImeiAuthCallback = cb;
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupImeiAuthDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                PopupImeiAuthDialog.this.mImeiAuthCallback.onIMEIAuthDialogCancelButtonClick();
            }
        });
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

    public void inflageView(int state, View.OnClickListener clickListener, int orientation) {
        this.mClickListener = clickListener;
        setContentView(this.mGUIParser.StartIMEIAuth("/xml/imeiauth", clickListener, orientation));
    }

    public void ShowPopupIMEIAuthDialog() {
        show();
    }

    public void ClosePopupIMEIAuthDialog() {
        dismiss();
    }
}
