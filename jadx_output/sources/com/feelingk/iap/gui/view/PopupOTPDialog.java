package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class PopupOTPDialog extends Dialog {
    private View.OnClickListener mClickListener;
    private int mCurTelecom;
    private ParserXML mGUIParser;
    private ParserXML.ParserOtpCallback onOtpCallback;

    public PopupOTPDialog(Context context, int themeStyle, ParserXML.ParserOtpCallback cb) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mClickListener = null;
        this.onOtpCallback = null;
        this.mCurTelecom = 0;
        this.mCurTelecom = CommonF.getCarrier(context);
        this.mGUIParser = new ParserXML(context, cb, true);
        this.onOtpCallback = cb;
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
        this.mClickListener = clickListener;
        setContentView(this.mGUIParser.Start("/xml/otpPopup_", null, clickListener, orientation));
        if (state == 114) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupOTPDialog.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupOTPDialog.this.onOtpCallback.onOtpDialogCancelButtonClick();
                }
            });
        }
    }

    public void ShowPopupOtpDialog() {
        show();
    }

    public void ClosePopupOtpDialog() {
        dismiss();
    }
}
