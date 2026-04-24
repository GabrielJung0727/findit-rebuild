package com.kt.olleh.inapp.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import com.feelingk.iap.util.Defines;
import com.findit.battle.GameView;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.Purchase;
import com.kt.olleh.inapp.util.UIParser;
import com.sec.android.iap.sample.helper.SamsungIapHelper;

/* JADX INFO: loaded from: classes.dex */
public class DialogLogin extends Dialog {
    public static int config = -1;
    private Context mContext;
    private DialogOnClickListener[] mListener;
    UIParser mParser;
    private RadioButton radioBtn1;
    private RadioButton radioBtn2;

    public DialogLogin(Context context) {
        super(context, android.R.style.Theme_Translucent_NoTitleBar);
        this.mListener = null;
        this.radioBtn1 = null;
        this.radioBtn2 = null;
        this.mContext = context;
        this.mListener = new DialogOnClickListener[2];
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
        if (this.mListener != null) {
            for (int i = 0; i < this.mListener.length; i++) {
                this.mListener[i] = null;
            }
            this.mListener = null;
        }
    }

    private View showMy(String path) {
        this.mParser = new UIParser(this.mContext);
        return this.mParser.Start(path);
    }

    private void checkLayout() {
        if (this.mContext.getResources().getConfiguration().orientation == 1) {
            switch (Config.densityDpi) {
                case Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG /* 120 */:
                    setContentView(showMy("/layout-ldpi/dialog_login.xml"));
                    break;
                case 160:
                    setContentView(showMy("/layout-mdpi/dialog_login.xml"));
                    break;
                case 240:
                    setContentView(showMy("/layout-hdpi/dialog_login.xml"));
                    break;
                case 320:
                    setContentView(showMy("/layout-xhdpi/dialog_login.xml"));
                    break;
                default:
                    setContentView(showMy("/layout-hdpi/dialog_login.xml"));
                    break;
            }
        }
        if (this.mContext.getResources().getConfiguration().orientation == 2) {
            switch (Config.densityDpi) {
                case Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG /* 120 */:
                    setContentView(showMy("/layout-ldpi/dialog_login.xml"));
                    break;
                case 160:
                    setContentView(showMy("/layout-mdpi/dialog_login.xml"));
                    break;
                case 240:
                    setContentView(showMy("/layout-hdpi/dialog_login.xml"));
                    break;
                case 320:
                    setContentView(showMy("/layout-xhdpi/dialog_login.xml"));
                    break;
                default:
                    setContentView(showMy("/layout-hdpi/dialog_login.xml"));
                    break;
            }
        }
        switch (Config.densityDpi) {
            case Defines.DIALOG_STATE.DLG_OCB_REG_DIALOG /* 120 */:
                setContentView(showMy("/layout-ldpi/dialog_login.xml"));
                break;
            case 160:
                setContentView(showMy("/layout-mdpi/dialog_login.xml"));
                break;
            case 240:
                setContentView(showMy("/layout-hdpi/dialog_login.xml"));
                break;
            case 320:
                setContentView(showMy("/layout-xhdpi/dialog_login.xml"));
                break;
            default:
                setContentView(showMy("/layout-hdpi/dialog_login.xml"));
                break;
        }
    }

    private void createDialog() {
        checkLayout();
        config = this.mContext.getResources().getConfiguration().orientation;
        WindowManager.LayoutParams lp = getWindow().getAttributes();
        lp.dimAmount = 0.7f;
        getWindow().setAttributes(lp);
        getWindow().addFlags(2);
        EditText idEdit = (EditText) findViewById(this.mParser.getID("login_id"));
        idEdit.setText(GameView.CHARACTER_AI);
        EditText passEdit = (EditText) findViewById(this.mParser.getID("login_password"));
        passEdit.setTag(GameView.CHARACTER_AI);
        Button[] DialogButton = new Button[2];
        String[] ButtonID = new String[3];
        ButtonID[0] = "Button_1";
        ButtonID[1] = "Button_2";
        for (int i = 0; i < DialogButton.length; i++) {
            DialogButton[i] = (Button) findViewById(this.mParser.getID(ButtonID[i]));
        }
        if (this.mListener != null) {
            for (int i2 = 0; i2 < this.mListener.length; i2++) {
                DialogButton[i2].setOnClickListener(this.mListener[i2]);
            }
        }
    }

    public String getIdType() {
        if (this.radioBtn1.isChecked()) {
            return SamsungIapHelper.ITEM_TYPE_NON_CONSUMABLE;
        }
        return SamsungIapHelper.ITEM_TYPE_SUBSCRIPTION;
    }

    public RadioButton getRadioBtn1() {
        return this.radioBtn1;
    }

    public RadioButton getRadioBtn2() {
        return this.radioBtn2;
    }

    public void setButton(int idx, DialogOnClickListener listener) {
        if (this.mListener != null && this.mListener.length > idx && idx >= 0) {
            this.mListener[idx] = listener;
        }
    }

    public String getID() {
        EditText idEdit = (EditText) findViewById(this.mParser.getID("login_id"));
        return idEdit.getText().toString();
    }

    public String getPassword() {
        EditText pwEdit = (EditText) findViewById(this.mParser.getID("login_password"));
        return pwEdit.getText().toString();
    }
}
