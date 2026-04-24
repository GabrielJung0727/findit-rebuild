package com.findit.battle;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import com.findit.battle.finals.LOG;

/* JADX INFO: loaded from: classes.dex */
public class CommonDialog {
    private Dialog mLoadingDlg;
    private Dialog mNoticeDlg;
    private TextView mNoticeMsgTextView;
    private Dialog mProgressDlg;

    public CommonDialog(Context context) {
        LOG.verbose(">> CommonDialog() ");
        this.mNoticeDlg = createNoticeDlg(context);
        this.mNoticeMsgTextView = (TextView) this.mNoticeDlg.findViewById(R.id.MessageTextView);
        this.mProgressDlg = createProgressDlg(context);
        this.mLoadingDlg = createLoadingDlg(context);
    }

    public void showNoticeDlg(int id) {
        LOG.verbose(">> showNoticeDlg() ");
        this.mNoticeMsgTextView.setText(id);
        this.mNoticeDlg.show();
    }

    public void showNoticeDlg(Context context, int id, String text) {
        LOG.verbose(">> showNoticeDlg() ");
        this.mNoticeMsgTextView.setText(String.valueOf(context.getResources().getString(id)) + text);
        this.mNoticeDlg.show();
    }

    public void showNoticeDlg(Context context, String text, int id) {
        LOG.verbose(">> showNoticeDlg() ");
        this.mNoticeMsgTextView.setText(String.valueOf(text) + context.getResources().getString(id));
        this.mNoticeDlg.show();
    }

    public void showProgressDlg() {
        LOG.verbose(">> showProgressDlg() ");
        this.mProgressDlg.show();
    }

    public void cancelProgressDlg() {
        LOG.verbose(">> cancelProgressDlg() ");
        this.mProgressDlg.cancel();
    }

    public Dialog getProgressDlg() {
        LOG.verbose(">> getProgressDlg() ");
        return this.mProgressDlg;
    }

    public void showLoadingDlg() {
        LOG.verbose(">> showLoadingDlg() ");
        this.mLoadingDlg.show();
    }

    public void cancelLoadingDlg() {
        LOG.verbose(">> cancelLoadingDlg() ");
        this.mLoadingDlg.cancel();
    }

    public Dialog getLoadingDlg() {
        LOG.verbose(">> getLoadingDlg() ");
        return this.mLoadingDlg;
    }

    private Dialog createNoticeDlg(Context context) {
        LOG.verbose(">> createNoticeDlg() ");
        Dialog dialog = new Dialog(context);
        Window window = dialog.getWindow();
        window.requestFeature(1);
        window.setFlags(2, 2);
        window.setBackgroundDrawableResource(R.drawable.popup_0);
        dialog.setContentView(R.layout.oknotice);
        Button button = (Button) dialog.findViewById(R.id.OkButton);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.findit.battle.CommonDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View arg0) {
                LOG.verbose(">> () ");
                CommonDialog.this.mNoticeDlg.cancel();
            }
        });
        return dialog;
    }

    private Dialog createProgressDlg(Context context) {
        LOG.verbose(">> createProgressDlg() ");
        Dialog dialog = new Dialog(context);
        Window window = dialog.getWindow();
        window.setFlags(2, 2);
        window.setBackgroundDrawable(new ColorDrawable(0));
        dialog.setContentView(R.layout.progress);
        dialog.setCancelable(false);
        return dialog;
    }

    private Dialog createLoadingDlg(Context context) {
        LOG.verbose(">> createLoadingDlg() ");
        Dialog dialog = new Dialog(context);
        Window window = dialog.getWindow();
        window.setFlags(2, 2);
        window.setBackgroundDrawable(new ColorDrawable(0));
        dialog.setContentView(R.layout.loading);
        dialog.setCancelable(false);
        return dialog;
    }
}
