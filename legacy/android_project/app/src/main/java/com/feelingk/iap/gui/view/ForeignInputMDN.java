package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class ForeignInputMDN extends Dialog {
    private View.OnClickListener mClickListener;
    private ParserXML mGUIParser;
    private ParserXML.ParserForeignInputMDNResultCallback onParserPopupDlgResultCallback;

    public ForeignInputMDN(Context context, ParserXML.ParserForeignInputMDNResultCallback cb, int themeStyle, boolean isDeviceTab) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mClickListener = null;
        this.onParserPopupDlgResultCallback = null;
        this.mGUIParser = new ParserXML(context, cb);
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

    public void InflateView(int mRotaion) {
        if (mRotaion == 0 || mRotaion == 2) {
            setContentView(this.mGUIParser.Start("/xml/foreign_inputmdn_w.xml", (String) null, (Object) null));
        } else {
            setContentView(this.mGUIParser.Start("/xml/foreign_inputmdn_h.xml", (String) null, (Object) null));
        }
    }

    public void ShowPopupDialog() {
        show();
    }

    public void ClosePopupDialog() {
        dismiss();
    }
}
