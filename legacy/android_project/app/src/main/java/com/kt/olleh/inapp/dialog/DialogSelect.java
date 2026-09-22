package com.kt.olleh.inapp.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.kt.olleh.inapp.Purchase;
import com.kt.olleh.inapp.net.InAppError;
import com.kt.olleh.inapp.util.UIParser;

/* JADX INFO: loaded from: classes.dex */
public class DialogSelect extends Dialog {
    private Context mContext;
    private DialogOnClickListener mItemListener;
    private DialogOnClickListener mListener;
    UIParser mParser;

    public DialogSelect(Context context) {
        super(context, android.R.style.Theme_Translucent_NoTitleBar);
        this.mListener = null;
        this.mItemListener = null;
        this.mContext = context;
        this.mListener = null;
        this.mItemListener = null;
    }

    @Override // android.app.Dialog
    public void show() {
        create();
        super.show();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        unBind();
        Purchase.Dialog_Mode = -1;
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }

    public void unBind() {
        if (this.mListener != null) {
            this.mListener = null;
        }
        if (this.mParser != null) {
            this.mParser.clear();
            this.mParser = null;
        }
        this.mItemListener = null;
    }

    private View showMy(String path) {
        this.mParser = new UIParser(this.mContext);
        return this.mParser.Start(path);
    }

    private void createDialog() {
        setContentView(showMy("/layout-hdpi/dialog_select.xml"));
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        lp.dimAmount = 0.7f;
        getWindow().setAttributes(lp);
        getWindow().addFlags(2);
        TextView btn1 = (TextView) findViewById(this.mParser.getID("btn_select_1"));
        btn1.setClickable(true);
        btn1.setTag(InAppError.FAILED);
        btn1.setOnClickListener(this.mItemListener);
        TextView btn2 = (TextView) findViewById(this.mParser.getID("btn_select_2"));
        btn2.setClickable(true);
        btn2.setTag("2");
        btn2.setOnClickListener(this.mItemListener);
        Button dialogButton = (Button) findViewById(this.mParser.getID("btn_ok"));
        dialogButton.setOnClickListener(this.mListener);
    }

    public void setOnCancelListener(DialogOnClickListener listener) {
        this.mListener = listener;
    }

    public void setOnItemClickListener(DialogOnClickListener listener) {
        this.mItemListener = listener;
    }
}
