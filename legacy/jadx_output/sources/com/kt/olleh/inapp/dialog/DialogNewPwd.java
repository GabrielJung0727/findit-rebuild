package com.kt.olleh.inapp.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.text.Html;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.findit.battle.GameView;
import com.kt.olleh.inapp.Config.Config;
import com.kt.olleh.inapp.Purchase;
import com.kt.olleh.inapp.util.UIParser;

/* JADX INFO: loaded from: classes.dex */
public class DialogNewPwd extends Dialog {
    public static int config = -1;
    private int buttonCount;
    private DialogOnClickListener[] buttonOCLs;
    private String[] buttonTexts;
    private boolean isBgChange;
    private Context mContext;
    UIParser mParser;
    private String message;
    private String payMoney;
    private String payName1;
    private String payName2;
    private String payType;
    private String pwd1;
    private String pwd2;
    private EditText pwdEditText1;
    private EditText pwdEditText2;
    private String title;

    public void changeConfig(int config2) {
        config = config2;
        this.pwd1 = this.pwdEditText1.getText().toString();
        this.pwd2 = this.pwdEditText2.getText().toString();
        close();
        show();
    }

    public DialogNewPwd(Context context, int buttonCount) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.buttonCount = -1;
        this.title = null;
        this.message = null;
        this.buttonTexts = null;
        this.pwdEditText1 = null;
        this.pwdEditText2 = null;
        this.pwd1 = GameView.CHARACTER_AI;
        this.pwd2 = GameView.CHARACTER_AI;
        this.payName1 = null;
        this.payName2 = null;
        this.payMoney = null;
        this.payType = null;
        this.isBgChange = false;
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
            switch (Config.densityDpi) {
                case 160:
                    setContentView(showMy("/layout-port-mdpi/dialog_new_pwd.xml"));
                    break;
                default:
                    setContentView(showMy("/layout-port-hdpi/dialog_new_pwd.xml"));
                    break;
            }
        }
        if (this.mContext.getResources().getConfiguration().orientation == 2) {
            switch (Config.densityDpi) {
                case 160:
                    setContentView(showMy("/layout-land-mdpi/dialog_new_pwd.xml"));
                    break;
                default:
                    setContentView(showMy("/layout-land-hdpi/dialog_new_pwd.xml"));
                    break;
            }
        }
        switch (Config.densityDpi) {
            case 160:
                setContentView(showMy("/layout-port-mdpi/dialog_new_pwd.xml"));
                break;
            default:
                setContentView(showMy("/layout-port-hdpi/dialog_new_pwd.xml"));
                break;
        }
    }

    private void create() {
        checkLayout();
        config = this.mContext.getResources().getConfiguration().orientation;
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
        this.pwdEditText1 = (EditText) findViewById(this.mParser.getID("pwdEditText"));
        this.pwdEditText1.setText(GameView.CHARACTER_AI);
        this.pwdEditText1.setTransformationMethod(new PasswordTransformationMethod());
        this.pwdEditText1.setText(this.pwd1);
        this.pwdEditText2 = (EditText) findViewById(this.mParser.getID("pwdEditText2"));
        this.pwdEditText2.setText(GameView.CHARACTER_AI);
        this.pwdEditText2.setTransformationMethod(new PasswordTransformationMethod());
        this.pwdEditText2.setText(this.pwd2);
        TextView messageTextView = (TextView) findViewById(this.mParser.getID("dialog_MessageTextView"));
        if (this.message != null && this.message != GameView.CHARACTER_AI) {
            messageTextView.setText(Html.fromHtml(this.message));
        }
        if (this.buttonCount > 0) {
            LinearLayout ButtonLayout = (LinearLayout) findViewById(this.mParser.getID("Button_Layout"));
            ButtonLayout.setVisibility(0);
            Button[] DialogButton = new Button[this.buttonCount];
            String[] ButtonID = new String[3];
            ButtonID[0] = "Button_1";
            ButtonID[1] = "Button_2";
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

    public EditText getPwdEditText1() {
        return this.pwdEditText1;
    }

    public void setPwdEditText1(EditText pwdEditText1) {
        this.pwdEditText1 = pwdEditText1;
    }

    public EditText getPwdEditText2() {
        return this.pwdEditText2;
    }

    public void setPwdEditText2(EditText pwdEditText2) {
        this.pwdEditText2 = pwdEditText2;
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

    public void setPayNameMessage(int line, String itemname) {
        switch (line) {
            case 1:
                this.payName1 = itemname;
                break;
            case 2:
                this.payName2 = itemname;
                break;
        }
    }

    public void setPayMoneyMessage(String message) {
        this.payMoney = message;
    }

    public void setPayTypeMessage(String message) {
        this.payType = message;
    }

    public void setBgColor(boolean isBgChange) {
        this.isBgChange = isBgChange;
    }
}
