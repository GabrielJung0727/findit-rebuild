package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class PopupJoinDialog extends Dialog {
    private View.OnClickListener mClickListener;
    private int mCurTelecom;
    private ParserXML mGUIParser;
    private ParserXML.ParserJoinResultCallback onJoinResultCallback;

    public PopupJoinDialog(Context context, ParserXML.ParserJoinResultCallback cb, int themeStyle) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mClickListener = null;
        this.onJoinResultCallback = null;
        this.mCurTelecom = 0;
        this.mCurTelecom = CommonF.getCarrier(context);
        this.mGUIParser = new ParserXML(context, cb, 0, "Join", true);
        this.onJoinResultCallback = cb;
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

    public void InflateView(int state, String message, View.OnClickListener clickListener, int orientation) {
        this.mClickListener = clickListener;
        if (this.mCurTelecom == 2 || this.mCurTelecom == 3) {
            setContentView(this.mGUIParser.Start("/xml_kt_lg/commonPopupJoin_", message, clickListener, orientation));
        } else {
            setContentView(this.mGUIParser.Start("/xml/commonPopupJoin_", message, clickListener, orientation));
        }
        if (state == 107) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupJoinDialog.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupJoinDialog.this.onJoinResultCallback.onJoinDialogCancelButtonClick();
                }
            });
        }
    }

    public void ShowPopupJoinDialog() {
        show();
    }

    public void ClosePopupJoinDialog() {
        dismiss();
    }
}
