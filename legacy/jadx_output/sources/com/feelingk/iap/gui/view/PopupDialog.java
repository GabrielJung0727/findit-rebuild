package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.IAPLib;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class PopupDialog extends Dialog {
    private View.OnClickListener mClickListener;
    private ParserXML mGUIParser;
    private ParserXML.ParserPopupDlgResultCallback onParserPopupDlgResultCallback;

    public PopupDialog(Context context, ParserXML.ParserPopupDlgResultCallback cb, int themeStyle, boolean isDeviceTab) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mClickListener = null;
        this.onParserPopupDlgResultCallback = null;
        this.mGUIParser = new ParserXML(context);
        this.onParserPopupDlgResultCallback = cb;
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

    public void InflateView(int state, String message, View.OnClickListener clickListener) {
        this.mClickListener = clickListener;
        if (IAPLib.getIsOTPAuth() && IAPLib.getOTPPurchaseSuccess()) {
            setContentView(this.mGUIParser.Start("/xml/otpCommonPopup.xml", message, clickListener));
        } else {
            setContentView(this.mGUIParser.Start("/xml/commonPopup.xml", message, clickListener));
        }
        if (state == 105) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupDialog.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupDialog.this.mClickListener.onClick(null);
                }
            });
        } else if (state == 127 || state == 128 || state == 130) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupDialog.2
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupDialog.this.onParserPopupDlgResultCallback.onErrorDlgBtnClick();
                }
            });
        } else {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupDialog.3
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface arg0) {
                    PopupDialog.this.onParserPopupDlgResultCallback.onDlgButtonClick();
                }
            });
        }
    }

    public void ShowPopupDialog() {
        show();
    }

    public void ClosePopupDialog() {
        dismiss();
    }
}
