package com.feelingk.iap.gui.view;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import com.feelingk.iap.gui.data.PurchaseItem;
import com.feelingk.iap.gui.data.SingletonCounter;
import com.feelingk.iap.gui.parser.ParserXML;

/* JADX INFO: loaded from: classes.dex */
public class PurchaseDialog extends Dialog {
    private ParserXML mGUIParser;
    private ParserXML.ParserResultCallback mRetCallback;

    public PurchaseDialog(Context context, ParserXML.ParserResultCallback callback) {
        super(context, android.R.style.Theme_Translucent_NoTitleBar);
        this.mGUIParser = null;
        this.mRetCallback = null;
        this.mGUIParser = new ParserXML(context, callback);
        this.mRetCallback = callback;
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PurchaseDialog.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                PurchaseDialog.this.mRetCallback.onPurchaseCancelButtonClick();
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

    public PurchaseDialog(Context context, int themeStyle, ParserXML.ParserResultCallback callback, boolean bIsDeviceTab) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mRetCallback = null;
        this.mGUIParser = new ParserXML(context, callback, 0, bIsDeviceTab);
        this.mRetCallback = callback;
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PurchaseDialog.2
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                SingletonCounter.getInstance().clear();
                PurchaseDialog.this.mRetCallback.onPurchaseCancelButtonClick();
            }
        });
    }

    public void InflateParserDialog(int orientation, PurchaseItem itemInfo) {
        View view = this.mGUIParser.Start(orientation, itemInfo);
        setContentView(view);
    }

    public void ShowPurchaseDialog() {
        show();
    }

    public void ClosePurchaseDialog() {
        dismiss();
    }
}
