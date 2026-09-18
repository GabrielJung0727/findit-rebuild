package com.kt.olleh.inapp.dialog;

import android.app.Dialog;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class DialogOnClickListener implements View.OnClickListener {
    private Dialog mDialog;

    public DialogOnClickListener(Dialog dialog) {
        this.mDialog = dialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
        }
    }

    public Dialog getDialog() {
        return this.mDialog;
    }
}
