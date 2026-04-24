package com.kt.olleh.inapp.dialog;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
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
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class DialogPay extends Dialog {
    public static int config = -1;
    private int buttonCount;
    private DialogOnClickListener[] buttonOCLs;
    private String[] buttonTexts;
    private boolean isBgChange;
    private boolean isPayInformation;
    private boolean isPayMessage;
    private boolean isPayNameTitle;
    private boolean isPwdOn;
    private String lmtPrice;
    private Context mContext;
    UIParser mParser;
    private String mXML;
    private String message;
    private TextView modifyTextView;
    private String payMoney;
    private String payName1;
    private String payName2;
    private String payType;
    private String pin;
    private Purchase purchase;
    private boolean purchaseEnd;
    private EditText pwdEditText;
    private String title;

    public void changeConfig(int config2) {
        config = config2;
        if (this.pwdEditText != null) {
            this.pin = this.pwdEditText.getText().toString();
        }
        close();
        show();
    }

    public DialogPay(Context context, int buttonCount, int config2, Purchase purchase) {
        super(context, android.R.style.Theme_Translucent_NoTitleBar);
        this.buttonCount = -1;
        this.title = null;
        this.message = null;
        this.buttonTexts = null;
        this.buttonOCLs = null;
        this.isPayNameTitle = false;
        this.payName1 = null;
        this.payName2 = null;
        this.payMoney = null;
        this.payType = null;
        this.isPayInformation = false;
        this.isPayMessage = false;
        this.isBgChange = false;
        this.pwdEditText = null;
        this.pin = GameView.CHARACTER_AI;
        this.isPwdOn = false;
        this.modifyTextView = null;
        this.purchase = null;
        this.purchaseEnd = false;
        this.lmtPrice = null;
        this.mContext = context;
        this.buttonCount = buttonCount;
        config = config2;
        this.purchase = purchase;
        if (this.buttonCount > 0) {
            this.buttonTexts = new String[this.buttonCount];
            this.buttonOCLs = new DialogOnClickListener[this.buttonCount];
        }
    }

    public void purchaseEnd(boolean arg0) {
        this.purchaseEnd = arg0;
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
                    setContentView(showMy("/layout-port-mdpi/dialog_pay.xml"));
                    break;
                case 320:
                    setContentView(showMy("/layout-port-xhdpi/dialog_pay.xml"));
                    break;
                default:
                    setContentView(showMy("/layout-port-hdpi/dialog_pay.xml"));
                    break;
            }
        }
        if (this.mContext.getResources().getConfiguration().orientation == 2) {
            if (this.purchaseEnd || Config.isTimerRunning) {
                switch (Config.densityDpi) {
                    case 160:
                        setContentView(showMy("/layout-port-mdpi/dialog_pay.xml"));
                        break;
                    case 320:
                        setContentView(showMy("/layout-port-xhdpi/dialog_pay.xml"));
                        break;
                    default:
                        setContentView(showMy("/layout-port-hdpi/dialog_pay.xml"));
                        break;
                }
            }
            switch (Config.densityDpi) {
                case 160:
                    setContentView(showMy("/layout-land-mdpi/dialog_pay.xml"));
                    break;
                case 320:
                    setContentView(showMy("/layout-land-xhdpi/dialog_pay.xml"));
                    break;
                default:
                    setContentView(showMy("/layout-land-hdpi/dialog_pay.xml"));
                    break;
            }
        }
        switch (Config.densityDpi) {
            case 160:
                setContentView(showMy("/layout-port-mdpi/dialog_pay.xml"));
                break;
            case 320:
                setContentView(showMy("/layout-port-xhdpi/dialog_pay.xml"));
                break;
            default:
                setContentView(showMy("/layout-port-hdpi/dialog_pay.xml"));
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
        if (Config.isTimerRunning) {
            LinearLayout mainLayout = (LinearLayout) findViewById(this.mParser.getID("mainLayout"));
            InputStream is = this.mParser.openFile("@drawable/inapp_popup_03");
            mainLayout.setBackgroundDrawable(Drawable.createFromStream(is, "@drawable/inapp_popup_03"));
        }
        if (this.purchaseEnd) {
            LinearLayout mainLayout2 = (LinearLayout) findViewById(this.mParser.getID("mainLayout"));
            InputStream is2 = this.mParser.openFile("@drawable/inapp_popup_04");
            mainLayout2.setBackgroundDrawable(Drawable.createFromStream(is2, "@drawable/inapp_popup_04"));
        }
        LinearLayout titleLayout = (LinearLayout) findViewById(this.mParser.getID("dialog_Title"));
        TextView titleTextView = (TextView) findViewById(this.mParser.getID("dialogAlertTitleTextView"));
        titleTextView.setText(this.title);
        if (this.title == null || this.title.equals(GameView.CHARACTER_AI)) {
            titleLayout.setVisibility(8);
        }
        TextView messageTextView = (TextView) findViewById(this.mParser.getID("dialog_MessageTextView"));
        if (this.message != null && this.message != GameView.CHARACTER_AI) {
            messageTextView.setText(Html.fromHtml(this.message));
        }
        if (!Config.isTimerRunning || Config.mPin == null || GameView.CHARACTER_AI.equals(Config.mPin)) {
            this.modifyTextView = (TextView) findViewById(this.mParser.getID("dialog_ModifyTextView"));
            this.modifyTextView.setText(Html.fromHtml("<u>보안번호 해제/변경</u>"));
            this.modifyTextView.setVisibility(0);
            LinearLayout pwdLayout = (LinearLayout) findViewById(this.mParser.getID("pwdLayout1"));
            pwdLayout.setVisibility(0);
            LinearLayout pwdLayout2 = (LinearLayout) findViewById(this.mParser.getID("pwdLayout2"));
            pwdLayout2.setVisibility(0);
            PasswordTransformationMethod PassWtm = new PasswordTransformationMethod();
            this.pwdEditText = (EditText) findViewById(this.mParser.getID("dialog_pwdEditText"));
            this.pwdEditText.setTransformationMethod(PassWtm);
            if (this.pin != null && !GameView.CHARACTER_AI.equals(this.pin)) {
                this.pwdEditText.setText(this.pin);
            }
            this.purchase.setModifyText();
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
        if (this.isPayMessage) {
            TextView dialog_PayNameTitleTextView = (TextView) findViewById(this.mParser.getID("dialog_PayNameTitle"));
            if (!this.isPayNameTitle) {
                dialog_PayNameTitleTextView.setVisibility(8);
            } else {
                dialog_PayNameTitleTextView.setVisibility(0);
            }
            if (this.payName1 != null) {
                String str = dialog_PayNameTitleTextView.getText().toString();
                dialog_PayNameTitleTextView.setText(String.valueOf(str) + this.payName1);
            }
            if (this.payName2 != null) {
                String str2 = dialog_PayNameTitleTextView.getText().toString();
                dialog_PayNameTitleTextView.setText(String.valueOf(str2) + this.payName2);
            }
            TextView dialog_PayMoneyTextView1 = (TextView) findViewById(this.mParser.getID("dialog_PayMoney"));
            if (this.payMoney != null) {
                dialog_PayMoneyTextView1.setText(this.payMoney);
            } else {
                dialog_PayMoneyTextView1.setVisibility(8);
            }
            TextView dialog_PayTypeTextView1 = (TextView) findViewById(this.mParser.getID("dialog_PayType"));
            TextView payTypeTextView = (TextView) findViewById(this.mParser.getID("payType"));
            TextView payDesc = (TextView) findViewById(this.mParser.getID("payDesc"));
            if (Config.tCCodeKT.equals(Config.tCompanyCode)) {
                dialog_PayTypeTextView1.setText("결제방식:휴대전화");
                payTypeTextView.setText("휴대전화");
                payDesc.setText("* 휴대전화 결제는 다음 달 요금 고지서에 합산되어 청구됩니다.(청구항목:olleh마켓)");
            } else {
                dialog_PayTypeTextView1.setText("결제방식:소액결제");
                payTypeTextView.setText("소액결제");
                payDesc.setText("* 소액결제는 100원 이상 30만원 이내에서 가능하며, 소액결제 금액은 다음달 요금 고지서에 합산되어 청구됩니다.\n* 결제 취소 가능 기간\n - 소액결제 : 결제 승인 당월만 가능");
            }
            if (this.purchaseEnd) {
                LinearLayout payType1 = (LinearLayout) findViewById(this.mParser.getID("layout_payType1"));
                LinearLayout payType2 = (LinearLayout) findViewById(this.mParser.getID("layout_payType2"));
                TextView text1 = (TextView) findViewById(this.mParser.getID("text1"));
                payType1.setVisibility(0);
                payType2.setVisibility(8);
                text1.setVisibility(8);
                payDesc.setVisibility(8);
            }
            LinearLayout dialog_PayInformation = (LinearLayout) findViewById(this.mParser.getID("dialog_PayMessage"));
            dialog_PayInformation.setVisibility(0);
            return;
        }
        LinearLayout dialog_PayInformation2 = (LinearLayout) findViewById(this.mParser.getID("dialog_PayMessage"));
        dialog_PayInformation2.setVisibility(8);
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

    public void setPayNameTitle(boolean isPayNameTitle) {
        this.isPayNameTitle = isPayNameTitle;
    }

    public void setPayInformation(boolean isPayInformation) {
        this.isPayInformation = isPayInformation;
    }

    public void setPayMessage(boolean isPayMessage) {
        this.isPayMessage = isPayMessage;
    }

    public void setBgColor(boolean isBgChange) {
        this.isBgChange = isBgChange;
    }

    public void setPwdOn(boolean isPwdOn) {
        this.isPwdOn = isPwdOn;
    }

    public String getPwd() {
        this.pin = this.pwdEditText.getText().toString();
        return this.pin;
    }

    public void setPwd(String pwd) {
        this.pin = pwd;
    }

    public TextView getModifyTextView() {
        return this.modifyTextView;
    }

    public String getLmtPrice() {
        return this.lmtPrice;
    }

    public void setLmtPrice(String lmtPrice) {
        this.lmtPrice = lmtPrice;
    }
}
