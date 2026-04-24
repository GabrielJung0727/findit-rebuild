package com.kt.olleh.inapp.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.findit.battle.GameView;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.Purchase;
import com.kt.olleh.inapp.util.UIParser;

/* JADX INFO: loaded from: classes.dex */
public class DialogAlert extends Dialog {
    private int buttonCount;
    private DialogOnClickListener[] buttonOCLs;
    private String[] buttonTexts;
    private Context mContext;
    UIParser mParser;
    private String message;
    private String title;

    public DialogAlert(Context context, int buttonCount) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.buttonCount = -1;
        this.title = null;
        this.message = null;
        this.buttonTexts = null;
        this.buttonOCLs = null;
        this.mContext = context;
        this.buttonCount = buttonCount;
        if (this.buttonCount > 0) {
            this.buttonTexts = new String[this.buttonCount];
            this.buttonOCLs = new DialogOnClickListener[this.buttonCount];
        }
    }

    public void close() {
        super.dismiss();
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
        if (this.buttonTexts != null) {
            for (int i = 0; i < this.buttonTexts.length; i++) {
                this.buttonTexts[i] = null;
            }
            this.buttonTexts = null;
        }
        if (this.buttonOCLs != null) {
            for (int i2 = 0; i2 < this.buttonOCLs.length; i2++) {
                this.buttonOCLs[i2] = null;
            }
            this.buttonOCLs = null;
        }
    }

    private View showMy(String path) {
        this.mParser = new UIParser(this.mContext);
        return this.mParser.Start(path);
    }

    private void checkLayout() {
        if (this.mContext.getResources().getConfiguration().orientation == 1) {
            int i = Config.densityDpi;
            setContentView(showMy("/layout-hdpi/dialog_alert.xml"));
        } else if (this.mContext.getResources().getConfiguration().orientation == 2) {
            int i2 = Config.densityDpi;
            setContentView(showMy("/layout-hdpi/dialog_alert.xml"));
        } else {
            int i3 = Config.densityDpi;
            setContentView(showMy("/layout-hdpi/dialog_alert.xml"));
        }
    }

    private void create() {
        checkLayout();
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        lp.dimAmount = 0.7f;
        getWindow().setAttributes(lp);
        getWindow().addFlags(2);
        LinearLayout titleLayout = (LinearLayout) findViewById(this.mParser.getID("dialog_Title"));
        TextView titleTextView = (TextView) findViewById(this.mParser.getID("dialogAlertTitleTextView"));
        titleTextView.setText(this.title);
        if (this.title == null || this.title.equals(GameView.CHARACTER_AI)) {
            titleLayout.setVisibility(8);
        }
        TextView messageTextView = (TextView) findViewById(this.mParser.getID("dialog_MessageTextView"));
        if (this.message != null && this.message != GameView.CHARACTER_AI) {
            messageTextView.setText(this.message);
        }
        if (this.buttonCount > 0) {
            LinearLayout ButtonLayout = (LinearLayout) findViewById(this.mParser.getID("Button_Layout"));
            ButtonLayout.setVisibility(0);
            Button[] DialogButton = new Button[this.buttonCount];
            String[] ButtonID = {"Button_1", "Button_2", "Button_3"};
            for (int i = 0; i < DialogButton.length; i++) {
                DialogButton[i] = (Button) findViewById(this.mParser.getID(ButtonID[i]));
            }
            if (this.buttonTexts != null) {
                for (int i2 = 0; i2 < this.buttonCount; i2++) {
                    DialogButton[i2].setVisibility(0);
                    DialogButton[i2].setText(this.buttonTexts[i2]);
                }
            }
            if (this.buttonOCLs != null) {
                for (int i3 = 0; i3 < this.buttonCount; i3++) {
                    DialogButton[i3].setOnClickListener(this.buttonOCLs[i3]);
                }
            }
        }
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence title) {
        this.title = (String) title;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setButton(int idx, String buttonText, DialogOnClickListener buttonOCL) {
        setButtonText(idx, buttonText);
        setButtonOCL(idx, buttonOCL);
    }

    private void setButtonText(int idx, String buttonText) {
        if (this.buttonTexts != null && this.buttonTexts.length > idx && idx >= 0) {
            this.buttonTexts[idx] = buttonText;
        }
    }

    private void setButtonOCL(int idx, DialogOnClickListener buttonOCL) {
        if (this.buttonOCLs != null && this.buttonOCLs.length > idx && idx >= 0) {
            this.buttonOCLs[idx] = buttonOCL;
        }
    }
}
