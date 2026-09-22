package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class PopupYesNoDialog extends Dialog {
    private View.OnClickListener mClickListener;
    private int mCurTelecom;
    private ParserXML mGUIParser;
    private ParserXML.ParserYesNoResultCallback onYesNoResultCallback;

    public PopupYesNoDialog(Context context, ParserXML.ParserYesNoResultCallback cb, int themeStyle) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mClickListener = null;
        this.onYesNoResultCallback = null;
        this.mCurTelecom = 0;
        this.mCurTelecom = CommonF.getCarrier(context);
        this.mGUIParser = new ParserXML(context, cb, 0, "YesNo", true);
        this.onYesNoResultCallback = cb;
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
        if (this.mCurTelecom == 2 || this.mCurTelecom == 3) {
            setContentView(this.mGUIParser.Start("/xml_kt_lg/commonPopupYesNo.xml", message, clickListener));
        } else {
            setContentView(this.mGUIParser.Start("/xml/commonPopupYesNo.xml", message, clickListener));
        }
        if (state == 105) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupYesNoDialog.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupYesNoDialog.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
                }
            });
        } else if (state == 129) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupYesNoDialog.2
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupYesNoDialog.this.onYesNoResultCallback.onYesNoDialogCancelButtonClick();
                }
            });
        }
    }

    public void ShowPopupYesNoDialog() {
        show();
    }

    public void ClosePopupYesNoDialog() {
        dismiss();
    }
}
