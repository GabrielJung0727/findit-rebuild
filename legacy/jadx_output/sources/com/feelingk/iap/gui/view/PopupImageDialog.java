package com.feelingk.iap.gui.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.feelingk.iap.gui.parser.ParserXML;
import com.feelingk.iap.util.CommonF;

/* JADX INFO: loaded from: classes.dex */
public class PopupImageDialog extends Dialog {
    private View.OnClickListener mClickListener;
    private int mCurTelecom;
    private ParserXML mGUIParser;

    public PopupImageDialog(Context context, ParserXML.ParserImageResultCallback cb, int themeStyle) {
        super(context, themeStyle);
        this.mGUIParser = null;
        this.mClickListener = null;
        this.mCurTelecom = 0;
        this.mCurTelecom = CommonF.getCarrier(context);
        this.mGUIParser = new ParserXML(context, cb, 0, "PermissionPopup", true);
    }

    public void InflateView(int state, String message, View.OnClickListener clickListener) {
        this.mClickListener = clickListener;
        if (this.mCurTelecom == 2 || this.mCurTelecom == 3) {
            setContentView(this.mGUIParser.Start("/xml_kt_lg/commonPopupImage.xml", message, clickListener));
        } else {
            setContentView(this.mGUIParser.Start("/xml/commonPopupImage.xml", message, clickListener));
        }
        if (state == 105) {
            setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.feelingk.iap.gui.view.PopupImageDialog.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialog) {
                    PopupImageDialog.this.mClickListener.onClick(null);
                }
            });
        }
    }

    public void ShowPopupImageDialog() {
        show();
    }

    public void ClosePopupImageDialog() {
        dismiss();
    }
}
