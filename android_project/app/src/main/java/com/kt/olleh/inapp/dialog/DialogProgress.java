package com.kt.olleh.inapp.dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class DialogProgress {
    private Dialog dialog;

    public DialogProgress(Context context, String message) {
        this.dialog = null;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        LinearLayout dialogLayout = new LinearLayout(context);
        dialogLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        TextView tv = new TextView(context);
        tv.setGravity(17);
        tv.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        tv.setTextColor(-1);
        tv.setTextSize(16.0f);
        tv.setPadding(10, 10, 10, 10);
        tv.setText(message);
        ProgressBar pgBar = new ProgressBar(context);
        pgBar.setPadding(10, 10, 10, 10);
        dialogLayout.addView(pgBar);
        dialogLayout.addView(tv);
        builder.setView(dialogLayout);
        this.dialog = builder.create();
        WindowManager.LayoutParams lp = this.dialog.getWindow().getAttributes();
        lp.dimAmount = 0.7f;
        this.dialog.getWindow().setAttributes(lp);
        this.dialog.getWindow().addFlags(2);
    }

    public void setOnKeyListener(DialogInterface.OnKeyListener listener) {
        this.dialog.setOnKeyListener(listener);
    }

    public void show() {
        try {
            this.dialog.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void dismiss() {
        try {
            this.dialog.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
